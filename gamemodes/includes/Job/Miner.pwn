#include <YSI\y_hooks>


#define 			JOB_DaoDa  			(5503)
#define 			DIALOG_BANDA		(5504)
#define 			DIALOG_SELL_SIVLER	(5505)
#define 			DIALOG_SELL_GOLD	(5506)
#define 			DIALOG_SELL_DIAMOND	(5507)
#define             DIALOG_SELL_DAVUN   (5508)

#define 			MAX_KHOANGSAN		50

new JobDaoDaID = 23;
new SoLuongDa;
new MinerCar[MAX_PLAYERS];
new Text3D:MinerCarText[MAX_PLAYERS];
new MinerString[1280];

new Float:ObjectKhoangSan[][3] = {
    {-411.1857,-1467.3818,25.7266},
	{-417.8569,-1466.8500,25.4340},
	{-424.9477,-1459.5649,24.3033},
	{-433.3703,-1457.7072,23.0931},
	{-432.9249,-1469.3264,23.1265},
	{-427.1945,-1481.0928,23.4793},
	{-421.5373,-1487.5669,24.0721},
	{-409.1850,-1494.7061,24.4645},
	{-415.5611,-1500.4547,23.9723},
	{-431.4102,-1500.1289,21.8119},
	{-443.3401,-1495.1908,19.8863},
	{-450.4606,-1487.7058,18.8145},
	{-457.0146,-1477.5504,18.1122},
	{-455.5051,-1465.0206,18.8067},
	{-446.2864,-1455.7161,20.5978},
	{-440.0107,-1444.5178,21.7972},
	{-449.2471,-1437.4719,20.1485},
	{-461.7569,-1445.0005,18.5334},
	{-468.9556,-1458.7562,17.1768},
	{-464.6526,-1471.8452,17.4640},
	{-466.9008,-1488.3853,16.3806},
	{-463.6316,-1501.7335,16.0891},
	{-452.2802,-1510.9028,17.4937},
	{-452.1818,-1522.7736,16.9021},
	{-434.5176,-1524.5543,20.1853},
	{-476.7804,-1495.3556,14.8021},
	{-475.7920,-1475.6102,15.8776},
	{-483.0977,-1462.6230,14.9513},
	{-488.8728,-1450.0985,14.1802},
	{-491.7072,-1469.1848,13.5147},
	{-489.0596,-1488.2201,13.3183},
	{-486.1954,-1502.5199,13.2005},
	{-485.0748,-1519.2783,12.4192},
	{-473.7021,-1532.6277,12.8073},
	{-461.1573,-1542.7761,13.7847},
	{-448.6500,-1548.9490,16.2273},
	{-435.4565,-1536.8096,19.4309},
	{-419.3409,-1534.9694,22.1749},
	{-408.8004,-1528.4971,22.7939},
	{-400.9860,-1521.6046,23.3941},
	{-388.4422,-1518.0254,23.4236},
	{-380.8402,-1529.4275,21.9573},
	{-382.8644,-1543.9257,22.1332},
	{-374.6580,-1556.3363,21.4546},
	{-380.9958,-1568.2872,21.8936},
	{-401.4369,-1573.2644,22.0324},
	{-426.9321,-1580.1409,19.0947},
	{-444.0395,-1578.8074,15.6704},
	{-457.9728,-1571.9531,12.5244},
	{-474.2834,-1560.9503,10.6261}
};

new DavunGia, DavunGiaOld, SilverGia, SilverGiaOld, GoldGia, GoldGiaOld, DiamondGia, DiamondGiaOld;
new GiaTienRDRock[4];

enum KhoangSanInfo {
	ObjectKS_ID,
	ObjectKS,
	Float:PosKS[3],
	PlayerKhaiThac,
}
new PlayerKS[MAX_KHOANGSAN][KhoangSanInfo];
new DangDaoDa[MAX_PLAYERS];

stock LoadObjectDaoDa()
{
	GiaTienRDRock[3] = 40; // 1k2 -> 2k6
	GiaTienRDRock[0] = 100; // 1k2 -> 2k6
	GiaTienRDRock[1] = 500; // 3k1 -> 4k1
	GiaTienRDRock[2] = 25; // 1 cre -> 11 cre
	
    SoLuongDa = 50;
    
	RandomGiaSilver();
	RandomGiaGold();
	RandomGiaDiamond();
	return 1;
}

stock LoadKS()
{
    for(new ks = 0; ks < MAX_KHOANGSAN; ks++) {
		if(PlayerKS[ks][ObjectKS] == 0) {
			PlayerKS[ks][PlayerKhaiThac] = INVALID_PLAYER_ID;
			PlayerKS[ks][ObjectKS] = CreateDynamicObject(3931,  ObjectKhoangSan[ks][0],  ObjectKhoangSan[ks][1],  ObjectKhoangSan[ks][2]-0.75, 0, 0, 0, .worldid = 0, .streamdistance = 700);
		}
	}
	return 1;
}

task UpdateReloadCarss[300000] ()
{
	foreach(new playerid: Player)
	{
		if(PlayerInfo[playerid][pJob] == JobDaoDaID || PlayerInfo[playerid][pJob2] == JobDaoDaID)
		{
			if(GetPVarInt(playerid, "DaLayXePizza") == 1)
			{
				if(!IsPlayerInRangeOfVehicle(playerid, MinerCar[playerid], 50))
				{
					DeletePVar(playerid, "DaLayXePizza");
					DestroyVehicle(MinerCar[playerid]);
			    	Delete3DTextLabel(MinerCarText[playerid]);
				}
			}
		}
	}
}

stock TraXeMiner(playerid)
{
	if(GetPVarInt(playerid, "DaLayXePizza") == 1)
	{
		DeletePVar(playerid, "DaLayXePizza");
		DestroyVehicle(MinerCar[playerid]);
	    Delete3DTextLabel(MinerCarText[playerid]);
	}
	return 1;
}

stock LayXeMiner(playerid)
{
	if(PlayerInfo[playerid][pJob] == JobDaoDaID || PlayerInfo[playerid][pJob2] == JobDaoDaID)
	{
		if(GetPVarInt(playerid, "DaLayXePizza") == 0)
		{
			MinerCar[playerid] = CreateVehicle(422, -398.5380,-1436.2457,25.7266 , 3, 3, 1000, 0);
			PutPlayerInVehicle(playerid, MinerCar[playerid] ,0);

			format(MinerString, sizeof MinerString, "{75a3a3}Miner{FFFFFF}\nPhuong tien cua {75a3a3}%s{FFFFFF}.", GetPlayerNameEx(playerid));
			MinerCarText[playerid] = Create3DTextLabel(MinerString, COLOR_WHITE, 0.0, 0.0, 0.0, 50.0, 0, 1);
			Attach3DTextLabelToVehicle(MinerCarText[playerid], MinerCar[playerid], 0.0, 0.0, 0.0);

			SetPVarInt(playerid, "DaLayXePizza", 1);
			SendClientMessage(playerid, -1, "{FFFF00}Miner{FFFFFF}: Ban da nhan phuong tien van chuyen thanh cong.");
			return 1;
		}else SendClientMessage(playerid, -1, "{FFFF00}Miner{FFFFFF}: Ban da lay phuong tien truoc do roi , khong the lay tiep tuc.");
	}
	return 1;
}

task UploadKhoangSan[300000]()
{
    RandomGiaSilver();
	RandomGiaGold();
	RandomGiaDiamond();
	SoLuongDa = 50;
	for(new ks = 0; ks < MAX_KHOANGSAN; ks++) {
		if(PlayerKS[ks][ObjectKS] == 0) {
			PlayerKS[ks][PlayerKhaiThac] = INVALID_PLAYER_ID;
			PlayerKS[ks][ObjectKS] = CreateDynamicObject(3931,  ObjectKhoangSan[ks][0],  ObjectKhoangSan[ks][1],  ObjectKhoangSan[ks][2]-0.75, 0, 0, 0, .worldid = 0, .streamdistance = 700);
		}
	}
	return 1;
}

stock RandomGiaDavun()
{
    DavunGiaOld = DavunGia;
	new rand = 10+random(GiaTienRDRock[3]);
	DavunGia = rand;
	return 1;
}

stock RandomGiaSilver()
{
    SilverGiaOld = SilverGia;
	new rand = 200+random(GiaTienRDRock[0]);
	SilverGia = rand;
	return 1;
}

stock RandomGiaGold()
{
    GoldGiaOld = GoldGia;
	new rand = 500+random(GiaTienRDRock[1]);
	GoldGia = rand;
	return 1;
}

stock RandomGiaDiamond()
{
    DiamondGiaOld = DiamondGia;
	new rand = 5+random(GiaTienRDRock[2]);
	DiamondGia = rand;
	return 1;
}

CMD:rsks(playerid, params[])
{
    SoLuongDa = 50;
	if(PlayerInfo[playerid][pLevel] >= 1) {
		for(new ks = 0; ks < MAX_KHOANGSAN; ks++) {
			if(PlayerKS[ks][ObjectKS] == 0) {
				PlayerKS[ks][PlayerKhaiThac] = INVALID_PLAYER_ID;
				PlayerKS[ks][ObjectKS] = CreateDynamicObject(3931,  ObjectKhoangSan[ks][0],  ObjectKhoangSan[ks][1],  ObjectKhoangSan[ks][2]-0.75, 0, 0, 0, .worldid = 0, .streamdistance = 700);
			}
		}
	}
	return 1;
}

stock ShowBanDa(playerid)
{
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	} 
	new string[1280];
	format(string, sizeof(string), "{75a3a3}Da vun : %s\n{ffffff}Silver : %s\n{ffff00}Gold : %s\n{00cc66}Diamond : %s", number_format(PlayerInfo[playerid][KSSARP][3]), number_format(PlayerInfo[playerid][KSSARP][0]), number_format(PlayerInfo[playerid][KSSARP][1]), number_format(PlayerInfo[playerid][KSSARP][2]));
	ShowPlayerDialog(playerid, DIALOG_BANDA, DIALOG_STYLE_LIST, "{00ff00}Ban muon ban da'?{FFFFFF}", string, "Ban ngay", "Huy bo");
	return 1;
}

GetDate_VMiner(&day, &month, &year)
{
   getdate(year, month, day);
}

forward ResetDaoDa(playerid);
public ResetDaoDa(playerid)
{
	new d, m, y;
	GetDate_VMiner(d, m, y);
	if(d != PlayerInfo[playerid][pDateNV])
	{
		PlayerInfo[playerid][pDateNV] = d;
		PlayerInfo[playerid][pNV][0] = 0;
		PlayerInfo[playerid][pNV][1] = 0;
		PlayerInfo[playerid][pNV][2] = 0;
		PlayerInfo[playerid][pNV_Pizza] = 0;
		PlayerInfo[playerid][pNV_Trucker] = 0;
		PlayerInfo[playerid][pNV_DaoDa] = 0;
		SendClientMessage(playerid, COLOR_YELLOW, "[NHIEM VU HANG NGAY] Nhiem vu hom nay cua ban da duoc tro lai trang thai nhu ban dau.");
	}
	return 1;
}

CMD:daodaasdadad(playerid, params[])
{
	if(PlayerInfo[playerid][pJob] == JobDaoDaID || PlayerInfo[playerid][pJob2] == JobDaoDaID) {
		if(PlayerInfo[playerid][pSLDaoda] == 200) {
			SendClientMessageEx(playerid, COLOR_GREEN, "> So lan dao da cua ban trong hom nay da het.");
			return 1;
		}
		for(new ks = 0; ks < MAX_KHOANGSAN; ks++) {
			new Float:Pos[3];
			GetDynamicObjectPos(PlayerKS[ks][ObjectKS], Pos[0], Pos[1], Pos[2]);
			if(IsPlayerInRangeOfPoint(playerid, 3.0, Pos[0], Pos[1], Pos[2])) {
				if(PlayerKS[ks][PlayerKhaiThac] == INVALID_PLAYER_ID) {
					if(DangDaoDa[playerid] == 0)
			        {
			        	PlayerKS[ks][PlayerKhaiThac] = playerid;
			        	SetPVarInt(playerid, "KhoangSanID", ks);
                        ApplyAnimation(playerid, "BASEBALL", "Bat_4", 4.1, 1, 0, 0, 1, 0, 1);
    					SetPlayerAttachedObject(playerid, 6, 19631, 6, 0.053999, 0.016, 0.171, -88.3, -91.8, 0, 1.191, 1.5, 1.5);
						TogglePlayerControllable(playerid, 0);
						SetPlayerArmedWeapon(playerid, 0);
						
						new time = 10;
						DangDaoDa[playerid] = 1;
						SetPVarInt(playerid, "DaoDaTime_", time);
						SetTimerEx("DaoDa_", 1000, 0, "d", playerid);
						return 1;
					}else return SendClientMessageEx(playerid, COLOR_GREEN, "Ban dang dao da' vui long doi.");
				}else return SendClientMessageEx(playerid, COLOR_GREEN, "Khoang san nay dang co nguoi khai thac roi , ban hay tim den khoang san khac.");
			}
		}
	}
	return 1;
}

CMD:xemkhoangsan(playerid, params[]) {
	new string[1280];
	format(string, sizeof(string), "{75a3a3}Da vun : %s\n{ffffff}Silver : %s\n{ffff00}Gold : %s\n{00cc66}Diamond : %s", number_format(PlayerInfo[playerid][KSSARP][3]),number_format(PlayerInfo[playerid][KSSARP][0]), number_format(PlayerInfo[playerid][KSSARP][1]), number_format(PlayerInfo[playerid][KSSARP][2]));
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, "Khoang san cua ban", string, "Dong y", "Huy bo");
	return 1;
}

CMD:checkkhoangsan(playerid, params[]) {
    new playa;
	if(sscanf(params, "u", playa)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /checkkhoangsan [ID]");
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
	    if(IsPlayerConnected(playa)) {
			if(playa != INVALID_PLAYER_ID){
			    new string[1280];
				format(string, sizeof(string), "{75a3a3}Da vun : %s\n{ffffff}Silver : %s\n{ffff00}Gold : %s\n{00cc66}Diamond : %s", number_format(PlayerInfo[playa][KSSARP][3]),number_format(PlayerInfo[playa][KSSARP][0]), number_format(PlayerInfo[playa][KSSARP][1]), number_format(PlayerInfo[playa][KSSARP][2]));
				ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, "Khoang san", string, "Dong y", "Huy bo");
			}
		}else SendClientMessageEx(playerid, COLOR_GREY, "Nguoi nay hien khong ton tai trong may");
	}
	return 1;
}

forward DaoDa_(playerid);
public DaoDa_(playerid)
{
    SetPVarInt(playerid, "DaoDaTime_", GetPVarInt(playerid, "DaoDaTime_")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~Dang dao da'...");
    GameTextForPlayer(playerid, string, 1100, 3);
    ApplyAnimation(playerid, "BASEBALL", "Bat_4", 4.1, 1, 0, 0, 1, 0, 1);
	if(GetPVarInt(playerid, "DaoDaTime_") > 0) SetTimerEx("DaoDa_", 1000, 0, "d", playerid);


    if(GetPVarInt(playerid, "DaoDaTime_") <= 0)
    {
        DeletePVar(playerid, "DaoDaTime_");
        DeletePVar(playerid, "DaoDa_");

        TogglePlayerControllable(playerid, 1);
        ClearAnimations(playerid);
        RemovePlayerAttachedObject(playerid, 6);

		if(GetPVarInt(playerid,"giaoda") == 0)
        {          
            RemovePlayerAttachedObject(playerid, 0);
        	RandomKS(playerid);
        	PlayerInfo[playerid][pSLDaoda] += 1;
            CheckNV_DaoDa(playerid);
            
        	DropObjects(playerid);
			DeletePVar(playerid, "giaoda");
			DeletePVar(playerid, "DaoDaTime_");
			DeletePVar(playerid, "DaoDa_");
			DangDaoDa[playerid] = 0;
			
			SoLuongDa -= 1;

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
			DisablePlayerCheckpoint(playerid);
            DestroyDynamicObject(PlayerKS[GetPVarInt(playerid,"KhoangSanID")][ObjectKS]);
            PlayerKS[GetPVarInt(playerid,"KhoangSanID")][ObjectKS] = 0;
            PlayerKS[GetPVarInt(playerid,"KhoangSanID")][PlayerKhaiThac] = INVALID_PLAYER_ID;
            
            if(SoLuongDa == 5) {
				cmd_rsks(playerid, "");
			}
            return 1;
        }
        return 1;
    }
    return 1;
}

stock RandomKS(playerid)
{
	new rand = random(100);
	switch(rand) {
		case 0..50: { // Da vun
			new string[1280];
			format(string, sizeof(string), "Ban vua nhan duoc mot cuc da vun. (/xemkhoangsan)");
			SendClientMessage(playerid, -1, string);
			PlayerInfo[playerid][KSSARP][3] += 1;

			new xp = random(100);
	        if(xp >= 0 && xp <= 30) {
	            PlayerInfo[playerid][pXP] += 10;
	        }
		}
		case 51..90: { // BAC
			new string[1280];
			format(string, sizeof(string), "Ban vua nhan duoc mot cuc da Bac. (/xemkhoangsan)");
			SendClientMessage(playerid, -1, string);
			PlayerInfo[playerid][KSSARP][0] += 1;

			new xp = random(100);
	        if(xp >= 0 && xp <= 30) {
	            PlayerInfo[playerid][pXP] += 10;
	        }
		}
		case 91..105: { // VANG
			new string[1280];
			format(string, sizeof(string), "Ban vua nhan duoc mot cuc da Vang. (/xemkhoangsan)");
			SendClientMessage(playerid, COLOR_YELLOW, string);
			PlayerInfo[playerid][KSSARP][1] += 1;

			new xp = random(100);
	        if(xp >= 0 && xp <= 30) {
	            PlayerInfo[playerid][pXP] += 10;
	        }
		}
		case 106..109: { // BACH KIM
			new string[1280];
			format(string, sizeof(string), "Ban vua nhan duoc mot cuc da Bach Kim. (/xemkhoangsan)");
			SendClientMessage(playerid, COLOR_GREEN, string);
			PlayerInfo[playerid][KSSARP][2] += 1;

			new xp = random(100);
	        if(xp >= 0 && xp <= 30) {
	            PlayerInfo[playerid][pXP] += 10;
	        }
		}
	}
	return 1;
}


forward DropObjects(playerid);
public DropObjects(playerid)
{
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	ApplyAnimation(playerid, "CARRY", "putdwn", 4.1, 0, 1, 1, 0, 0, 1);
    DeletePVar(playerid, "giaoda");
    DeletePVar(playerid, "DaoDaTime_");
	DeletePVar(playerid, "DaoDa_");
    RemovePlayerAttachedObject(playerid, 0);
    RemovePlayerAttachedObject(playerid, 1);
    DangDaoDa[playerid] = 0;
	return 1;
}

stock ShowJOB_DaoDa(playerid) {
	new name[1280];
	if(PlayerInfo[playerid][pJob] == JobDaoDaID || PlayerInfo[playerid][pJob2] == JobDaoDaID){
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} lay phuong tien.\n{ffff00}=>{FFFFFF} tra phuong tien\n{ffff00}=>{FFFFFF} ban da.");
	}else {
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	}
	ShowPlayerDialog(playerid, JOB_DaoDa, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[9])) return ShowJOB_DaoDa(playerid);
		cmd_daodaasdadad(playerid, "");
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == JOB_DaoDa && response == 1) {
		if(listitem == 0) {

		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobDaoDaID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s{ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else {
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban hien dang lam cong viec {99cc00}%s{ffff00}, nen khong the xin them cong viec nay duoc (/nghiviec).", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}
			}else {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobDaoDaID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobDaoDaID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (2){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob2]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else {
					SendClientMessage(playerid, -1, "{ffff00}Ban da nhan viec truoc do het roi, khong the xin viec tiep tuc.");
					return 1;
				}
			}
		}
		if(listitem == 2) {
			ShowNghiViec(playerid);
		}
        if(listitem == 3) {
			LayXeMiner(playerid);
		}
		if(listitem == 4)
		{
			TraXeMiner(playerid);
			SendClientMessage(playerid, -1, "> Ban da tra phuong tien miner thanh cong.");
		}
		if(listitem == 5) {
			ShowBanDa(playerid);
		}
	}
	if(dialogid == DIALOG_BANDA && response == 1) {
		if(listitem == 0) {
			Sell_Davun(playerid);
		}
		if(listitem == 1) {
			Sell_Silver(playerid);
		}
		if(listitem == 2) {
			Sell_Gold(playerid);
		}
		if(listitem == 3) {
			Sell_Diamond(playerid);
		}
	}
	
	if(dialogid == DIALOG_SELL_DAVUN && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Davun(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Davun(playerid);
		}

  		new silver = strval(inputtext);

		if(PlayerInfo[playerid][KSSARP][3] > 0)
		{
		    if(PlayerInfo[playerid][KSSARP][3] >= silver)
		    {
		        if(silver > 99999 || silver < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' da' , vui long thu lai!!!");
		            return 1;
		        }
		        if(silver > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug kim cuong tu viec ban' da' voi so luong %d", silver);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{

				    PlayerInfo[playerid][pCash] += silver * DavunGia;

		            new str[1280];
					format(str, sizeof(str), "Ban vua ban thanh cong %d Rock va nhan duoc %s$ tu viec ban da'.", silver, number_format(silver * DavunGia));
					SendClientMessage(playerid, -1, str);

					Log("logs/SELL_ROCKSILVER.log", str);

					PlayerInfo[playerid][KSSARP][3] -= silver;

					DavunGiaOld = DavunGia;
				    RandomGiaDavun();
				}
		    }else SendClientMessage(playerid, -1, "So luong ban nhap da lon hon so luong ban dang co (/xemkhoangsan).");
		}else SendClientMessage(playerid, -1, "Ban hien tai chua co vien da' nao het su dung (/xemkhoangsan) de xem.");
	}

	if(dialogid == DIALOG_SELL_SIVLER && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Silver(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Silver(playerid);
		}

  		new silver = strval(inputtext);

		if(PlayerInfo[playerid][KSSARP][0] > 0)
		{
		    if(PlayerInfo[playerid][KSSARP][0] >= silver)
		    {
		        if(silver > 99999 || silver < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' da' , vui long thu lai!!!");
		            return 1;
		        }
		        if(silver > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug kim cuong tu viec ban' da' voi so luong %d", silver);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{

				    PlayerInfo[playerid][pCash] += silver * SilverGia;

		            new str[1280];
					format(str, sizeof(str), "Ban vua ban thanh cong %d Rock Silver va nhan duoc %s$ tu viec ban da'.", silver, number_format(silver * SilverGia));
					SendClientMessage(playerid, -1, str);
					
					Log("logs/SELL_ROCKSILVER.log", str);

					PlayerInfo[playerid][KSSARP][0] -= silver;
					
					SilverGiaOld = SilverGia;
				    RandomGiaSilver();
				}
		    }else SendClientMessage(playerid, -1, "So luong ban nhap da lon hon so luong ban dang co (/xemkhoangsan).");
		}else SendClientMessage(playerid, -1, "Ban hien tai chua co vien da' nao het su dung (/xemkhoangsan) de xem.");
	}

	if(dialogid == DIALOG_SELL_GOLD && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Silver(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Silver(playerid);
		}

  		new gold = strval(inputtext);

		if(PlayerInfo[playerid][KSSARP][1] > 0)
		{
		    if(PlayerInfo[playerid][KSSARP][1] >= gold)
		    {
		        if(gold > 99999 || gold < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' da' , vui long thu lai!!!");
		            return 1;
		        }
		        if(gold > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug kim cuong tu viec ban' da' voi so luong %d", gold);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pCash] += gold * GoldGia;

		            new str[1280];
					format(str, sizeof(str), "Ban vua ban thanh cong %d Rock Gold va nhan duoc %s$ tu viec ban da'.", gold, number_format(gold * GoldGia));
					SendClientMessage(playerid, -1, str);
					
					Log("logs/SELL_ROCKGOLD.log", str);

					PlayerInfo[playerid][KSSARP][1] -= gold;
					
					GoldGiaOld = GoldGia;
				    RandomGiaGold();
				}
		    }else SendClientMessage(playerid, -1, "So luong ban nhap da lon hon so luong ban dang co (/xemkhoangsan).");
		}else SendClientMessage(playerid, -1, "Ban hien tai chua co vien da' nao het su dung (/xemkhoangsan) de xem.");
	}

	if(dialogid == DIALOG_SELL_DIAMOND && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Silver(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Silver(playerid);
		}

  		new diamond = strval(inputtext);

		if(PlayerInfo[playerid][KSSARP][2] > 0)
		{
		    if(PlayerInfo[playerid][KSSARP][2] >= diamond)
		    {
		        if(diamond > 99999 || diamond < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' da' , vui long thu lai!!!");
		            return 1;
		        }
		        if(diamond > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug kim cuong tu viec ban' da' voi so luong %d", diamond);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pnDP] += diamond * DiamondGia;

		            new str[1280];
					format(str, sizeof(str), "Ban vua ban thanh cong %d Rock Diamond va nhan duoc %s Cre tu viec ban da'.", diamond, number_format(diamond * DiamondGia));
					SendClientMessage(playerid, -1, str);
					
					Log("logs/SELL_ROCKDIAMOND.log", str);

					PlayerInfo[playerid][KSSARP][2] -= diamond;
					
					DiamondGiaOld = DiamondGia;
				    RandomGiaDiamond();
				}
		    }else SendClientMessage(playerid, -1, "So luong ban nhap da lon hon so luong ban dang co (/xemkhoangsan).");
		}else SendClientMessage(playerid, -1, "Ban hien tai chua co vien da' nao het su dung (/xemkhoangsan) de xem.");
	}
	return 1;
}

stock Sell_Davun(playerid) {
	new tinhtrang[1280];
    if(SilverGia > SilverGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(DavunGia - DavunGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(DavunGiaOld - DavunGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "");
    format(str2, sizeof(str), "\\c {ffffff}So luong da hien co: {ffff00}%s da'{ffa31a}.", number_format(PlayerInfo[playerid][KSSARP][3]));
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ffa31a}Rock.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %s$ / {ffff00}1 don vi{FFFFFF}.", number_format(DavunGiaOld));
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %s$/ {ffff00}1 don vi{FFFFFF}.\n", number_format(DavunGia));
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}BAN DA'{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_SELL_SIVLER, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Silver(playerid) {
	new tinhtrang[1280];
    if(SilverGia > SilverGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(SilverGia - SilverGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(SilverGiaOld - SilverGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "");
    format(str2, sizeof(str), "\\c {ffffff}So luong da hien co: {ffff00}%s da'{ffa31a}.", number_format(PlayerInfo[playerid][KSSARP][0]));
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ffa31a}Rock Silver.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %s$ / {ffff00}1 don vi{FFFFFF}.", number_format(SilverGiaOld));
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %s$/ {ffff00}1 don vi{FFFFFF}.\n", number_format(SilverGia));
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}BAN DA'{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_SELL_SIVLER, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Gold(playerid) {
	new tinhtrang[1280];
    if(GoldGia > GoldGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(GoldGia - GoldGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(GoldGiaOld - GoldGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "");
    format(str2, sizeof(str), "\\c {ffffff}So luong da hien co: {ffff00}%s da'{ffa31a}.", number_format(PlayerInfo[playerid][KSSARP][1]));
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ffa31a}Rock Gold.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %s$ / {ffff00}1 don vi{FFFFFF}.", number_format(GoldGiaOld));
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %s$/ {ffff00}1 don vi{FFFFFF}.\n", number_format(GoldGia));
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}BAN DA'{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_SELL_GOLD, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Diamond(playerid) {
	new tinhtrang[1280];
    if(DiamondGia > DiamondGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s Cre){FFFFFF}", number_format(DiamondGia - DiamondGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s Cre){FFFFFF}", number_format(DiamondGiaOld - DiamondGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "");
    format(str2, sizeof(str), "\\c {ffffff}So luong da hien co: {ffff00}%s da'{ffa31a}.", number_format(PlayerInfo[playerid][KSSARP][2]));
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ffa31a}Rock Diamond.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %s Cre / {ffff00}1 don vi{FFFFFF}.", number_format(DiamondGiaOld));
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %s Cre/ {ffff00}1 don vi{FFFFFF}.\n", number_format(DiamondGia));
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}BAN DA'{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_SELL_DIAMOND, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(GetPVarInt(playerid, "DaoDaTime_") > 0) {
        PlayerKS[GetPVarInt(playerid,"KhoangSanID")][PlayerKhaiThac] = INVALID_PLAYER_ID;
	}
	DeletePVar(playerid, "giaoda");
    DeletePVar(playerid, "DaoDaTime_");
	DeletePVar(playerid, "DaoDa_");
    DangDaoDa[playerid] = 0;
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    DeletePVar(playerid, "giaoda");
    DeletePVar(playerid, "DaoDaTime_");
	DeletePVar(playerid, "DaoDa_");
    DangDaoDa[playerid] = 0;
	return 1;
}
