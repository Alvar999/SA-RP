#include <a_samp>
#include <YSI\y_hooks>


#define         MAX_SHOP_FOOD          (100)
#define         DIALOG_MUATHUCAN       (8201)

enum pFood
{
	 Float:Food_PosX,
	 Float:Food_PosY,
	 Float:Food_PosZ,
	 Food_Size,
	 Food_PickupID,
	 Text3D: Food_TextID,
};
new FoodInfo[MAX_SHOP_FOOD][pFood];
new FoodMoney[12] = {1250, 750, 500, 1750, 2500, 2500, 2250, 2000, 4000, 3000, 4500, 5000};

new FoodSucKhoe[12] = {25, 15, 10, 35, 50, 50, 45, 40, 80, 70, 90, 100};

stock ShowKhuVucBanHang(playerid) {
    new string[15000];
	new str[15000];

	for(new i = 0; i < MAX_SHOP_FOOD; i++) {
		if(FoodInfo[i][Food_PosX] !=  0) {
		    new zone[MAX_ZONE_NAME];
			Get3DZone(FoodInfo[i][Food_PosX], FoodInfo[i][Food_PosY], FoodInfo[i][Food_PosZ], zone, sizeof(zone));
			new Float:distance = GetPlayerDistanceFromPoint(playerid, FoodInfo[i][Food_PosX], FoodInfo[i][Food_PosY], FoodInfo[i][Food_PosZ]);
			format(string, sizeof(string), "%s\n{ffb84d}%s (Khoang cach: %.0fm)", string, zone, distance);
		}
	}
    format(str, sizeof(str), "%s", string);
	ShowPlayerDialog(playerid, DIALOG_TIMKHUSUAXE, DIALOG_STYLE_LIST, "BAN THUC AN NHANH", str, "Lua chon", "Huy bo");
	return 1;
}

CMD:suckhoe(playerid, params[])
{
	if(gPlayerLogged{playerid} !=  0) SucKhoe(playerid, playerid);
	return 1;
}

stock SucKhoe(playerid,targetid)
{
	if(IsPlayerConnected(targetid))
	{
		new header[1280], resultline[1280];
		format(header, sizeof(header), "[LS-VN.NET] Suc khoe");
		format(resultline, sizeof(resultline),"Suc khoe hien tai cua ban : %d%", PlayerInfo[targetid][pSucKhoe]);
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, header, resultline, "Dong", "");
	}
	return 1;
}

task UpdateSucKhoe[300000]() {
	foreach(new i: Player) {
	    if(GetPVarInt(i, "Injured") == 0 && PlayerInfo[i][pAdmin] == 0) {
			if(PlayerInfo[i][pSucKhoe] > 0) {
				new rand = 5+random(10);
				PlayerInfo[i][pSucKhoe] -= rand;

				new string[1280];
				format(string, sizeof(string), "Ban hien tai da bi mat %d suc khoe (/suckhoe) de biet them chi tiet", rand);
				SendClientMessage(i, COLOR_YELLOW2, string);
			}
			else {
				TogglePlayerControllable(i, 0);
	            SetTimerEx("LoadPlayerZone", 30000, 0, "d", i);
	            ApplyAnimation(i, "CRACK", "crckdeth2", 4.1, 1, 1, 1, 1, 1, 1);
	            new Float:HP;
	            GetPlayerHealth(i, HP);
	            SetPlayerHealth(i, HP - 10.0);
	            SendClientMessageEx(i, COLOR_YELLOW2, "Ban da bi ngat do doi bung trong 30s, ban se khong the cu dong.");
			 	PlayerInfo[i][pSucKhoe] = 0;
			}
		}
	}
}

forward LoadPlayerZone(playerid);
public LoadPlayerZone(playerid)
{
	TogglePlayerControllable(playerid, true);
	ClearAnimations(playerid);
}

stock SaveFood()
{
	new
		szFileStr[1024],
		File: fHandle = fopen("FoodServer.cfg", io_write);

	for(new iIndex; iIndex < MAX_SHOP_FOOD; iIndex++)
	{
		format(szFileStr, sizeof(szFileStr), "%f|%f|%f|%d|%d\r\n",
		FoodInfo[iIndex][Food_PosX],
		FoodInfo[iIndex][Food_PosY],
		FoodInfo[iIndex][Food_PosZ],
		FoodInfo[iIndex][Food_Size],
		FoodInfo[iIndex][Food_PickupID]);
		fwrite(fHandle, szFileStr);
	}
 	return fclose(fHandle);
}

stock LoadFood()
{
    if(!fexist("FoodServer.cfg")) return 1;

	new string[128],
		szFileStr[128],
  		File: iFileHandle = fopen("FoodServer.cfg", io_read),
  		iIndex;

	while(iIndex < sizeof(FoodInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fffii",
		FoodInfo[iIndex][Food_PosX],
   		FoodInfo[iIndex][Food_PosY],
		FoodInfo[iIndex][Food_PosZ],
		FoodInfo[iIndex][Food_Size],
		FoodInfo[iIndex][Food_PickupID]);

  		format(string, sizeof(string), "{ffb84d}FOOD - CHILL{FFFFFF}\n{00ffff}Khu vuc ban thuc an nhanh (ID: %d){ffffff}\nSu dung : {ffff00}Y{FFFFFF} de mua thuc an nhanh <3",iIndex);

        if(FoodInfo[iIndex][Food_PosX] != 0.0)
  		{
   			FoodInfo[iIndex][Food_PickupID] = CreateDynamicPickup(1342, 23, FoodInfo[iIndex][Food_PosX], FoodInfo[iIndex][Food_PosY], FoodInfo[iIndex][Food_PosZ]);
   			FoodInfo[iIndex][Food_TextID] = CreateDynamic3DTextLabel(string, -1, FoodInfo[iIndex][Food_PosX], FoodInfo[iIndex][Food_PosY], FoodInfo[iIndex][Food_PosZ]+0.5,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
  		}
  		++iIndex;
	}
 	return fclose(iFileHandle);
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		for(new food; food < MAX_SHOP_FOOD; food++) {
			if(IsPlayerInRangeOfPoint(playerid, 3, FoodInfo[food][Food_PosX], FoodInfo[food][Food_PosY], FoodInfo[food][Food_PosZ])) {
				if(PlayerInfo[playerid][pCash] > 0) {
					//ShowPlayerDialog(playerid, DIALOG_MUATHUCAN, DIALOG_STYLE_LIST, "Ban vui long chon mon?", "Cafe 24/7\nSting\nHamberger\nBap xao", "Dong y", "Huy bo");
					ShowFood(playerid);
				}
			}
		}
	}
	return 1;
}

stock ShowFood(playerid) {
	new name[1280];
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], str12[1280]
	, str13[1280];
    format(str1, sizeof(str), "Ten mon an\tGia tien\tHoi phuc");
    format(str2, sizeof(str), "Cafe Viet\t%s$\t%s", number_format(FoodMoney[0]), "25 suc khoe");
    format(str3, sizeof(str), "Cafe 24/7\t%s$\t%s", number_format(FoodMoney[1]), "15 suc khoe");
    format(str4, sizeof(str), "Sting\t%s$\t%s", number_format(FoodMoney[2]), "10 suc khoe");
    format(str5, sizeof(str), "Tra sua tran chau\t%s$\t%s", number_format(FoodMoney[3]), "35 suc khoe");
    format(str6, sizeof(str), "Banh mi\t%s$\t%s", number_format(FoodMoney[4]), "50 suc khoe");
    format(str7, sizeof(str), "Hamberger\t%s$\t%s", number_format(FoodMoney[5]), "50 suc khoe");
    format(str8, sizeof(str), "Bap luoc\t%s$\t%s", number_format(FoodMoney[6]), "45 suc khoe");
    format(str9, sizeof(str), "Xoi ga\t%s$\t%s", number_format(FoodMoney[7]), "40 suc khoe");
    format(str10, sizeof(str), "Com tam sa bi chuong\t%s$\t%s", number_format(FoodMoney[8]), "80 suc khoe");
    format(str11, sizeof(str), "Hu tieu mi\t%s$\t%s", number_format(FoodMoney[9]), "70 suc khoe");
    format(str12, sizeof(str), "Pho bo\t%s$\t%s", number_format(FoodMoney[10]), "90 suc khoe");
    format(str13, sizeof(str), "Lau thai chua cay\t%s$\t%s", number_format(FoodMoney[11]), "100 suc khoe");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13);
    format(name, sizeof(name), "{ffffff}Ban vui long chon thuc an ma ban muon mua: ");
	ShowPlayerDialog(playerid, DIALOG_MUATHUCAN, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Mua ngay", "Huy Bo");
	return 1;
}


hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_MUATHUCAN && response == 1) 
	{
	    new Float:Health;
	    GetPlayerHealth(playerid, Health);
		for(new i = 0; i < 12; i++) {
			if(listitem == i) {
				if(PlayerInfo[playerid][pSucKhoe] < 100) {
					if(PlayerInfo[playerid][pCash] > FoodMoney[i]) {
						PlayerInfo[playerid][pCash] -= FoodMoney[i];
						PlayerInfo[playerid][pSucKhoe] += FoodSucKhoe[i];
						SetPlayerHealth(playerid, Health + 20.0);
						if(Health >= 100) SetPlayerHealth(playerid, 100.0);
						SendClientMessage(playerid, COLOR_YELLOW, "Ban da mua thuc an nay thanh cong, hoi phuc 20 [+HP].");
						return 1;
					}else return SendClientMessage(playerid, COLOR_YELLOW, "Ban khong du $ de mua vat pham nay.");
				}else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai suc khoe ban da day du, khong the mua thuc an tiep  tuc.");
			}
		}
	}
	if(dialogid == DIALOG_TIMKHUSUAXE && response == 1) {
		for(new i = 0; i < MAX_SHOP_FOOD; i++) {
			if(listitem == i) {
				if(FoodInfo[i][Food_PosX] != 0) {
					PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
					SetPlayerCheckpoint(playerid, FoodInfo[i][Food_PosX], FoodInfo[i][Food_PosY], FoodInfo[i][Food_PosZ], 3.0);
	                CP[playerid] = 252000;
	                SendClientMessage(playerid, -1, "[TIM NHA] Vi tri ban hang thuc an nhanh da duoc danh dau.");
	                return 1;
				}
			}
		}
	}
	return 1;
}

CMD:foodedit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
 	{
		new string[1280], choice[32], szid;
		if(sscanf(params, "s[32]dd", choice, szid))
		{
			SendClientMessage(playerid, -1, "USAGE: /foodedit [name] [ID Food (0 > 100)]");
			SendClientMessage(playerid, -1, "Name: create, delete");
			return 1;
		}
		if(strcmp(choice, "create", true) == 0)
		{
		    if(FoodInfo[szid][Food_PosX] != 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay da duoc edit truoc do roi khong the tiep tuc." );
				return 1;
			}
		    
			GetPlayerPos(playerid, FoodInfo[szid][Food_PosX], FoodInfo[szid][Food_PosY], FoodInfo[szid][Food_PosZ]);
			SendClientMessage( playerid, -1, "Ban da tao mot cua hang ban do an nhanh thanh cong!" );
			SaveFood();

			DestroyPickup(FoodInfo[szid][Food_PickupID]);
			DestroyDynamic3DTextLabel(FoodInfo[szid][Food_TextID]);
            format(string, sizeof(string), "{ffb84d}FOOD - CHILL{FFFFFF}\n{00ffff}Khu vuc ban thuc an nhanh (ID: %d){ffffff}\nSu dung : {ffff00}Y{FFFFFF} de mua thuc an nhanh <3",szid);
            
			FoodInfo[szid][Food_PickupID] = CreateDynamicPickup(1342, 23, FoodInfo[szid][Food_PosX], FoodInfo[szid][Food_PosY], FoodInfo[szid][Food_PosZ]);
   			FoodInfo[szid][Food_TextID] = CreateDynamic3DTextLabel(string, -1, FoodInfo[szid][Food_PosX], FoodInfo[szid][Food_PosY], FoodInfo[szid][Food_PosZ]+0.5,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
		    return 1;
		}
		else if(strcmp(choice, "delete", true) == 0) {
            if(FoodInfo[szid][Food_PosX] == 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay chua duoc edit nen khong the xoa." );
				return 1;
			}
			
			FoodInfo[szid][Food_PosX] = 0;
			FoodInfo[szid][Food_PosY] = 0;
		 	FoodInfo[szid][Food_PosZ] = 0;
		 	DestroyDynamicPickup(FoodInfo[szid][Food_PickupID]);
		 	DestroyDynamic3DTextLabel(FoodInfo[szid][Food_TextID]);
		 	SaveFood();
		 	format(string, sizeof(string), "Ban da xoa thanh cong cua hang Food (ID %d).", szid);
		 	SendClientMessage(playerid, -1, string);
		 	return 1;
		}
		SaveFood();
	}
 	return 1;
}
