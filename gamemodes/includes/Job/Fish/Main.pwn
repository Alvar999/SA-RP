#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//
#define         			MAX_FISH          				(100)
#define                 DIALOG_TUICA                    (6048)
#define                 DIALOG_CAUCA                    (6049)

#define         		DIALOG_TUICA_1              	(6198)
#define         		DIALOG_TUICA_2              	(6199)
#define         		DIALOG_TUICA_3              	(6200)
#define         		DIALOG_TUICA_4              	(6201)
#define         		DIALOG_TUICA_5              	(6202)
#define         		DIALOG_TUICA_6              	(6203)
#define         		DIALOG_TUICA_7              	(6204)
#define         		DIALOG_TUICA_8              	(6205)
#define         		DIALOG_TUICA_9              	(6206)
#define         		DIALOG_TUICA_10              	(6211)
#define                 DIALOG_TUICA_11                 (7210)

new DangCauCa[MAX_PLAYERS];
new CayCanCau[MAX_PLAYERS];
new TogCauCa[MAX_PLAYERS];
new BuffCauCaVNS;
new AntiCleoFish[MAX_PLAYERS];
new KC_BuyFish = 5000;
new GiaTienRD[11];

enum pFishVN {
	 Float:Fish_PosX,
	 Float:Fish_PosY,
	 Float:Fish_PosZ,
};
new FishInfo[MAX_FISH][pFishVN];

stock SaveFish()
{
	new
		szFileStr[1024],
		File: fHandle = fopen("FishServer.cfg", io_write);

	for(new iIndex; iIndex < MAX_FISH; iIndex++)
	{
		format(szFileStr, sizeof(szFileStr), "%f|%f|%f\r\n", FishInfo[iIndex][Fish_PosX], FishInfo[iIndex][Fish_PosY], FishInfo[iIndex][Fish_PosZ]);
		fwrite(fHandle, szFileStr);
	}
 	return fclose(fHandle);
}

stock LoadFish()
{
    if(!fexist("FishServer.cfg")) return 1;

	new szFileStr[128],
  		File: iFileHandle = fopen("FishServer.cfg", io_read),
  		iIndex;

	while(iIndex < sizeof(FishInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fff", FishInfo[iIndex][Fish_PosX], FishInfo[iIndex][Fish_PosY], FishInfo[iIndex][Fish_PosZ]);
  		++iIndex;
	}
 	return fclose(iFileHandle);
}

CMD:fishedit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
 	{
		new string[1280], choice[32], szid;
		if(sscanf(params, "s[32]dd", choice, szid))
		{
			SendClientMessage(playerid, -1, "USAGE: /Fishedit [name] [ID Fish (0 > 100)]");
			SendClientMessage(playerid, -1, "Name: create, delete");
			return 1;
		}
		if(strcmp(choice, "create", true) == 0)
		{
		    if(FishInfo[szid][Fish_PosX] != 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay da duoc edit truoc do roi khong the tiep tuc." );
				return 1;
			}

			GetPlayerPos(playerid, FishInfo[szid][Fish_PosX], FishInfo[szid][Fish_PosY], FishInfo[szid][Fish_PosZ]);
			SendClientMessage( playerid, -1, "Ban da tao mot cua hang ban do an nhanh thanh cong!" );
			SaveFish();
		    return 1;
		}
		else if(strcmp(choice, "delete", true) == 0) {
            if(FishInfo[szid][Fish_PosX] == 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay chua duoc edit nen khong the xoa." );
				return 1;
			}

			FishInfo[szid][Fish_PosX] = 0;
			FishInfo[szid][Fish_PosY] = 0;
		 	FishInfo[szid][Fish_PosZ] = 0;
		 	SaveFish();
		 	format(string, sizeof(string), "Ban da xoa thanh cong cua hang Fish (ID %d).", szid);
		 	SendClientMessage(playerid, -1, string);
		 	return 1;
		}
		SaveFish();
	}
 	return 1;
}

CMD:opencaucavip(playerid, params[]){
	if(PlayerInfo[playerid][pAdmin] == 99999){
	    //------
	    if(BuffCauCaVNS == 0){
		    new thongbao[1280];
		    format(thongbao,sizeof(thongbao),"Admin {ff0000}%s{FFFFFF} da mo ty le {00ff00}VANG{00FFFF} CAU CA{ffffff}.", GetPlayerNameEx(playerid));
			SendClientMessageToAll(COLOR_WHITE, thongbao);
			BuffCauCaVNS = 1;
		}
		else{
			new thongbao[1280];
		    format(thongbao,sizeof(thongbao),"Admin {ff0000}%s{FFFFFF} da tat ty le {00ff00}VANG{00FFFF} CAU CA{ffffff}.", GetPlayerNameEx(playerid));
			SendClientMessageToAll(COLOR_WHITE, thongbao);
			BuffCauCaVNS = 0;
		}
	    //------
	}else SendClientMessageEx(playerid, -1, "Ban khong the su dung lenh nay.");
	return 1;
}

CMD:tuica(playerid, params[])
{
	if(GetPVarInt(playerid, "Injured") >= 1)
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban dang bi thuong khong the xem tui ca'");
		return 1;
	}
	ShowTuiCa(playerid, playerid);
	return 1;
}

CMD:checktuica(playerid, params[])
{
    new playa;
	if(sscanf(params, "u", playa)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /checktuica [ID]");
	if(PlayerInfo[playerid][pAdmin] >= 2)
	{
	    if(IsPlayerConnected(playa)) {
			if(playa != INVALID_PLAYER_ID){
			    ShowTuiCa(playerid, playa);
			}
		}else SendClientMessageEx(playerid, COLOR_GREY, "Nguoi nay hien khong ton tai trong may");
	}
	return 1;
}

CMD:togcauca(playerid, params[])
{
	if(TogCauCa[playerid] == 0)
	{
	    TogCauCa[playerid] = 1;
	    SendClientMessageEx(playerid, -1, "Ban da {00ff00}Tat{FFFFFF} thong bao cau ca thanh cong.");
	}
	else
	{
	    TogCauCa[playerid] = 0;
	    SendClientMessageEx(playerid, -1, "Ban da {00ff00}Bat{FFFFFF} thong bao cau ca thanh cong.");
	}
	return 1;
}

stock ShowFishing() {

    GiaTienRD[1] = 500; // 50
	GiaTienRD[2] = 1000; // 100
	GiaTienRD[3] = 1500; // 150
	GiaTienRD[4] = 2000; // 250
	GiaTienRD[5] = 2500; // 500
	GiaTienRD[6] = 3000; // 1200
	GiaTienRD[7] = 3500; // 2000
	GiaTienRD[8] = 4000; // 3000
	GiaTienRD[9] = 4500; // 4000
    GiaTienRD[10] = 5000; // 10000
    
	RandomGiaCaRoPhi();
	RandomGiaRua();
	RandomGiaCaHeo();
	RandomGiaCaMap();
	RandomGiaCaMapKing();
	RandomGiaDeinosuchus();
	RandomGiaCaVoiSatThu();
	RandomGiaCaVoiLungGu();
	RandomGiaMegalodon();
	RandomGiaMosasaurus();
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys){
    if(PRESSED(KEY_YES)){
        if(ActorPos(playerid, ActorJob[21]))
		{
			ShowPlayerDialog(playerid, DIALOG_CAUCA, DIALOG_STYLE_LIST, "{00ff00}PLAY TOGETHER{FFFFFF}", "Ban ca'", "Lua chon", "Huy bo");
		}
    }
    
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_CAUCA)
	{
	    if(response){
			if(listitem == 0)
			    ShowBanCa(playerid);
		}
	}
	
	if(dialogid == DIALOG_TUICA)
	{
	    if(response)
	    {
	        if(listitem == 0){}
			if(listitem == 1)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_1, DIALOG_STYLE_MSGBOX, "{ffa31a}CA' RO PHI{FFFFFF}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
            if(listitem == 2)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_2, DIALOG_STYLE_MSGBOX, "{ff6600}RUA`{FFFFFF}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 3)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_3, DIALOG_STYLE_MSGBOX, "{6b6b47}CA' HEO{FFFFFF}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 4)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_4, DIALOG_STYLE_MSGBOX, "{6b6b47}CA' MAP{FFFFFF}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 5)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_5, DIALOG_STYLE_MSGBOX, "{6b6b47}CA' MAP KING{FFFFFF}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 6)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_6, DIALOG_STYLE_MSGBOX, "{ff3300}Deinosuchus{ffffff}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 7)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_7, DIALOG_STYLE_MSGBOX, "{1affff}CA VOI SAT THU{ffffff}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 8)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_8, DIALOG_STYLE_MSGBOX, "{1aa3ff}CA VOI LUNG GU{ffffff}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 9)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_9, DIALOG_STYLE_MSGBOX, "{ff0000}Megalodon{ffffff}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		    if(listitem == 10)
		    {
                ShowPlayerDialog(playerid, DIALOG_TUICA_10, DIALOG_STYLE_MSGBOX, "{9933ff}Mosasaurus{ffffff}", "Ban co muon khoe' con ca nay khong??", "Khoe ngay", "Huy bo");
		    }
		}
	}

    if(dialogid == DIALOG_TUICA_1)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][1] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4006, 1, 0.012, 0.457, 0.231, 0, 102.3, 9.2, 1.000000, 1.000000, 1.000000, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_2)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][2] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, 1609, 1, 0.097999, 0.417999, 0, 0, 90.1, 82.6, 0.299, 0.286999, 0.440999, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_3)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][3] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, 1607, 1, 0.095999, 0.481999, 0.150999, -94.1, 82.4, 4.8, 0.334, 0.193, 0.213, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_4)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][4] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, 1608, 1, 0.124999, 0.429, -0.435999, 95, 88.6, -10.1, 0.214, 0.224, 0.249, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_5)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][5] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4020, 1, 0.622, 0.675999, -0.663999, 0, 93.5, 80.9002, 0.524, 0.317, 0.613, 0, 0);
	            //SetPlayerAttachedObject(playerid, 0, 1608, 1, 0.124999, 0.429, -0.435999, 95, 88.6, -10.1, 0.214, 0.224, 0.249, 0xFFFF00AA, 0xFFFF00AA);
	            //SetPlayerAttachedObject(playerid, 0, 1271, 1, 0, -0.333999, 0, 0, 0, 0, 0.656, 0.562999, 0.703999, 0xFF00FF00);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_6)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][7] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4007, 1, 0.175, 0.539, 0.122999, 0, 95.3, 0, 0.607999, 0.542, 0.796, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_7)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][8] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4008, 1, 0.051999, 0.900999, -0.393, 0, 90.9, 94.9, 0.359999, 0.288, 0.307, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_8)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][9] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4009, 1, 0, 0.779, -1.348, 0, 86.1, 0, 0.465, 0.445, 0.443, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }

    if(dialogid == DIALOG_TUICA_9)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][10] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4015, 1, 0, 1.184, -1.081, 0, 90.5, 0, 0.488999, 0.439999, 0.468999, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }
    
    if(dialogid == DIALOG_TUICA_10)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][11] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            //SetPlayerAttachedObject(playerid, 0, -4019, 1, 0, 1.184, -1.081, 0, 90.5, 0, 0.488999, 0.439999, 0.468999, 0, 0);
	            SetPlayerAttachedObject(playerid, 0, -4019, 1, 0, 0.779, -1.348, 0, 86.1, 0, 0.465, 0.445, 0.443, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }
    
    if(dialogid == DIALOG_TUICA_11)
    {
        if(response)
        {
            if(PlayerInfo[playerid][pPlayTogether][12] > 0)
            {
	            RemovePlayerAttachedObject(playerid, 0);
	            SetPlayerAttachedObject(playerid, 0, -4021, 1, 0, 1.184, -1.081, 0, 90.5, 0, 0.488999, 0.439999, 0.468999, 0, 0);
		        TogglePlayerControllable(playerid, 1);
				ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,1,0,0,1,1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			}else SendClientMessage(playerid, -1, "Ban chua cau duoc con ca' nao het");
        }
    }
	return 1;
}

stock ShowTuiCa(playerid, id){
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], str12[1280], name[1280];
    format(str1, sizeof(str), "{00ff00}TUI' RAC{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][0]));
	format(str2, sizeof(str), "{ffa31a}CA' RO PHI{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][1]));
    format(str3, sizeof(str), "{ff6600}RUA`{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][2]));
    format(str4, sizeof(str), "{6b6b47}CA' HEO{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][3]));
    format(str5, sizeof(str), "{f2f2f2}CA' MAP{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][4]));
    format(str6, sizeof(str), "{cc33ff}CA' MAP KING{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][5]));
    format(str7, sizeof(str), "{ff3300}Deinosuchus{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][7]));
    format(str8, sizeof(str), "{1affff}CA VOI SAT THU{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][8]));
    format(str9, sizeof(str), "{1aa3ff}CA VOI LUNG GU{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][9]));
    format(str10, sizeof(str), "{ff0000}Megalodon{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][10]));
    format(str11, sizeof(str), "{9933ff}Mosasaurus{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][11]));
    format(str12, sizeof(str), "{4d004d}Lizzie{ffffff} : %s", number_format(PlayerInfo[id][pPlayTogether][12]));
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12);
    format(name, sizeof(name), "TUI CA'");
	ShowPlayerDialog(playerid, DIALOG_TUICA, DIALOG_STYLE_LIST, name, str, "Dong y", "");
	return 1;
}

stock MuaCanCau(playerid){
	new string[1280];
    if(DangCauCa[playerid] == 0){
        if(CayCanCau[playerid] == 0){
            if(PlayerInfo[playerid][pCash] > KC_BuyFish){
			    new cauca = 100+random(100);
                CayCanCau[playerid] = cauca;
                format(string, sizeof(string), "Ban da mua thanh cong mot cay can cau voi gia {00ffff}5,000 ${FFFFFF} (( Ban co the cau : %d lan )).", cauca);
                SendClientMessageEx(playerid, -1, string);
                PlayerInfo[playerid][pCash] -= KC_BuyFish;
			}
			else SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co du {00ffff}5,000 ${FFFFFF} de mua can cau.");
        }else SendClientMessageEx(playerid, -1, "Ban da co can cau truoc do roi , khong the mau tiep {00ff00}PLAY TOGETHER");
    }else SendClientMessageEx(playerid, -1, "Ban dang cau ca roi khong the mua can cau ngay bay gio duoc {00ff00}PLAY TOGETHER");
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    CayCanCau[playerid] = 0;
	DangCauCa[playerid] = 0;
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
	CayCanCau[playerid] = 0;
	DangCauCa[playerid] = 0;
	AntiCleoFish[playerid] = 0;
	return 1;
}
