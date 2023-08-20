#include <YSI\y_hooks>



#define 			JOB_BocVac  				(6310)
#define         LAYHANG_BOCVAC                  (6876)

new JobBocVacID = 26;
new Text3D:TextBV[5];
new DaLayHangBV[MAX_PLAYERS];

enum BocVac{
	thunghang1,
	thunghang2,
	thunghang3,
	thunghang4,
	thunghang5,
};
new PlayerBV[BocVac];

stock LoadBocVac(){
    PlayerBV[thunghang1] = 10;
    PlayerBV[thunghang2] = 10;
    PlayerBV[thunghang3] = 10;
    PlayerBV[thunghang4] = 10;
    PlayerBV[thunghang5] = 10;
    
    new text1[1280], text2[1280], text3[1280], text4[1280], text5[1280];
    format(text1, sizeof(text1), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang1]);
    format(text2, sizeof(text2), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang2]);
    format(text3, sizeof(text3), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang3]);
    format(text4, sizeof(text4), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang4]);
    format(text5, sizeof(text5), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang5]);
    
    TextBV[0] = CreateDynamic3DTextLabel(text1,-1, 2022.88330+0.5, -1958.32104, 13.87688,30.0);
    TextBV[1] = CreateDynamic3DTextLabel(text2,-1, 2031.04419+0.5, -1958.32104, 13.87688,30.0);
    TextBV[2] = CreateDynamic3DTextLabel(text3,-1, 2039.11450+0.5, -1958.32104, 13.87688,30.0);
    TextBV[3] = CreateDynamic3DTextLabel(text4,-1, 2047.16638+0.5, -1958.32104, 13.87688,30.0);
    TextBV[4] = CreateDynamic3DTextLabel(text5,-1, 2055.20654+0.5, -1958.32104, 13.87688,30.0);

    CreateDynamic3DTextLabel("Khu vuc giao thung hang\n\nSu dung /giaothung de chat thung hang vao ben trong",COLOR_YELLOW,2011.833129, -1996.255004, 13.546875+0.5,6.0);
 	CreateDynamicPickup(1271, 23, 2011.833129, -1996.255004, 13.546875, -1);
	return 1;
}

stock ShowJOB_BocVac(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	}
	new name[1280];
    format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	ShowPlayerDialog(playerid, JOB_BocVac, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[10])) return ShowJOB_BocVac(playerid);

		cmd_layhangbocvac(playerid, "");
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == JOB_BocVac && response == 1) {
		if(listitem == 0) {

		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobBocVacID;
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
					PlayerInfo[playerid][pJob] = JobBocVacID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobBocVacID;
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
	}
	return 1;
}

CMD:giaothung(playerid, params[]) {
	if(GetPVarInt(playerid, "GiaoHangBocVac") == 1) {
		if(IsPlayerInRangeOfPoint(playerid, 3.0, 2011.833129, -1996.255004, 13.546875)) {

	        new money = 500+random(500);
	        PlayerInfo[playerid][pCash] += money;

	        new rand = random(100);
	        if(rand >= 0 && rand <= 30) {
	        	PlayerInfo[playerid][pXP] += 10;
	        }

	        new string[1280];
	        format(string, sizeof(string), "> Ban da giao mot thung hang den nha kho thanh cong va nhan duoc %s$", number_format(money));
			SendClientMessageEx(playerid, COLOR_YELLOW, string);

			RemovePlayerAttachedObject(playerid, 1);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
			
			ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);

			DaLayHangBV[playerid] = 0;
			DeletePVar(playerid,"GiaoHangBocVac");
			DisablePlayerCheckpoint(playerid);
			return 1;
		}
	}else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "> Ban chua lay thung hang.");
	return 1;
}

CMD:layhangbocvac(playerid, params[]){
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 2022.88330+0.5, -1958.32104, 13.87688)){
        if(PlayerInfo[playerid][pJob] == JobBocVacID || PlayerInfo[playerid][pJob2] == JobBocVacID) {
            if(PlayerInfo[playerid][pSLBocvac] == 100) {
            	SendClientMessageEx(playerid, COLOR_GREEN, "> So lan boc vac hang hoa hom nay da dat toi da.");
				return 1;
			}
			if(DaLayHangBV[playerid] == 0){
	            if(PlayerBV[thunghang1] > 0){

			        DaLayHangBV[playerid] = 1;
			        ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
			        LoaderStarting(playerid, LAYHANG_BOCVAC, "DANG LAY HANG", 0.5, random(6));
			        PlayerBV[thunghang1] -= 1;
			        UpdateTextBocVac();

		        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Hien tai toa tau nay da het thung hang de lay.");
	        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban da lay hang roi vui long giao truoc khi tiep tuc cong viec.");
		}else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban chua nhan cong viec Boc Vac nen khong the lam viec nay duoc.");
	}
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 2031.04419+0.5, -1958.32104, 13.87688)){
        if(PlayerInfo[playerid][pJob] == JobBocVacID || PlayerInfo[playerid][pJob2] == JobBocVacID) {
            if(PlayerInfo[playerid][pSLBocvac] == 100) {
            	SendClientMessageEx(playerid, COLOR_GREEN, "> So lan boc vac hang hoa hom nay da dat toi da.");
				return 1;
			}
			if(DaLayHangBV[playerid] == 0){
	            if(PlayerBV[thunghang2] > 0){

			        DaLayHangBV[playerid] = 1;
			        ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
			        LoaderStarting(playerid, LAYHANG_BOCVAC, "DANG LAY HANG", 0.5, random(6));
			        PlayerBV[thunghang2] -= 1;
			        UpdateTextBocVac();

		        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Hien tai toa tau nay da het thung hang de lay.");
	        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban da lay hang roi vui long giao truoc khi tiep tuc cong viec.");
        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban chua nhan cong viec Boc Vac nen khong the lam viec nay duoc.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 2039.11450+0.5, -1958.32104, 13.87688)){
        if(PlayerInfo[playerid][pJob] == JobBocVacID || PlayerInfo[playerid][pJob2] == JobBocVacID) {
            if(PlayerInfo[playerid][pSLBocvac] == 100) {
            	SendClientMessageEx(playerid, COLOR_GREEN, "> So lan boc vac hang hoa hom nay da dat toi da.");
				return 1;
			}
	        if(DaLayHangBV[playerid] == 0){
	            if(PlayerBV[thunghang3] > 0){

			        DaLayHangBV[playerid] = 1;
			        ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
			        LoaderStarting(playerid, LAYHANG_BOCVAC, "DANG LAY HANG", 0.5, random(6));
			        PlayerBV[thunghang3] -= 1;
			        UpdateTextBocVac();

		        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Hien tai toa tau nay da het thung hang de lay.");
	        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban da lay hang roi vui long giao truoc khi tiep tuc cong viec.");
        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban chua nhan cong viec Boc Vac nen khong the lam viec nay duoc.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 2047.16638+0.5, -1958.32104, 13.87688)){
        if(PlayerInfo[playerid][pJob] == JobBocVacID || PlayerInfo[playerid][pJob2] == JobBocVacID) {
            if(PlayerInfo[playerid][pSLBocvac] == 100) {
            	SendClientMessageEx(playerid, COLOR_GREEN, "> So lan boc vac hang hoa hom nay da dat toi da.");
				return 1;
			}
	        if(DaLayHangBV[playerid] == 0){
	            if(PlayerBV[thunghang4] > 0){

			        DaLayHangBV[playerid] = 1;
			        ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
			        LoaderStarting(playerid, LAYHANG_BOCVAC, "DANG LAY HANG", 0.5, random(6));
			        PlayerBV[thunghang4] -= 1;
			        UpdateTextBocVac();

		        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Hien tai toa tau nay da het thung hang de lay.");
	        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban da lay hang roi vui long giao truoc khi tiep tuc cong viec.");
        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban chua nhan cong viec Boc Vac nen khong the lam viec nay duoc.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, 2055.20654+0.5, -1958.32104, 13.87688)){
        if(PlayerInfo[playerid][pJob] == JobBocVacID || PlayerInfo[playerid][pJob2] == JobBocVacID) {
            if(PlayerInfo[playerid][pSLBocvac] == 100) {
            	SendClientMessageEx(playerid, COLOR_GREEN, "> So lan boc vac hang hoa hom nay da dat toi da.");
				return 1;
			}
	        if(DaLayHangBV[playerid] == 0){
	            if(PlayerBV[thunghang5] > 0){

			        DaLayHangBV[playerid] = 1;
			        ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
			        LoaderStarting(playerid, LAYHANG_BOCVAC, "DANG LAY HANG", 0.5, random(6));
			        PlayerBV[thunghang5] -= 1;
			        UpdateTextBocVac();

		        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Hien tai toa tau nay da het thung hang de lay.");
	        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban da lay hang roi vui long giao truoc khi tiep tuc cong viec.");
        }else SendClientMessageEx(playerid, COLOR_LIGHTGREEN, "Ban chua nhan cong viec Boc Vac nen khong the lam viec nay duoc.");
    }
	return 1;
}

stock UpdateTextBocVac(){
    new text1[1280], text2[1280], text3[1280], text4[1280], text5[1280];
    format(text1, sizeof(text1), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang1]);
    format(text2, sizeof(text2), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang2]);
    format(text3, sizeof(text3), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang3]);
    format(text4, sizeof(text4), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang4]);
    format(text5, sizeof(text5), "{ff3300}KHU VUC NHAN HANG{FFFFFF}\nHien con : {00ffff}%d thung hang{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau cong viec.", PlayerBV[thunghang5]);
    
	UpdateDynamic3DTextLabelText(TextBV[0], -1, text1);
	UpdateDynamic3DTextLabelText(TextBV[1], -1, text2);
	UpdateDynamic3DTextLabelText(TextBV[2], -1, text3);
	UpdateDynamic3DTextLabelText(TextBV[3], -1, text4);
	UpdateDynamic3DTextLabelText(TextBV[4], -1, text5);
	return 1;
}

task ResetBocVac[1800000](){

    PlayerBV[thunghang1] = 10;
	PlayerBV[thunghang2] = 10;
	PlayerBV[thunghang3] = 10;
	PlayerBV[thunghang4] = 10;
	PlayerBV[thunghang5] = 10;

	UpdateTextBocVac();
}

hook OnPlayerEnterCheckpoint(playerid){
    return 1;
}

hook OnPlayerDisconnect(playerid, reason){
    DaLayHangBV[playerid] = 0;
	DeletePVar(playerid,"GiaoHangBocVac");
	return 1;
}
