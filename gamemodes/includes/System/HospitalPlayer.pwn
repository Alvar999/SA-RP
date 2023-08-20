#include <a_samp>
#include <YSI\y_hooks>


#define             THANHTOAN_VIENPHI               (9741)
#define             DANGKY_BAOHIEMYTE               (9742)

new TienDKBaoHiem = 10000;

stock HospitalPlayer(playerid){
	new rand = random(sizeof(HospitalSpawnPlayer));
	SetPVarInt(playerid, "RandHospital", rand);
	
	SetPlayerFacingAngle(playerid, HospitalSpawnPlayer[rand][3]);
	SetPlayerPos(playerid, HospitalSpawnPlayer[rand][0], HospitalSpawnPlayer[rand][1], HospitalSpawnPlayer[rand][2]);
	//Player_StreamPrep(playerid, HospitalSpawnPlayer[rand][0], HospitalSpawnPlayer[rand][1], HospitalSpawnPlayer[rand][2], FREEZE_TIME);
	
	new pl = CreatePlayerObject(playerid, 19300, HospitalSpawnPlayer[rand][0], HospitalSpawnPlayer[rand][1]-3, HospitalSpawnPlayer[rand][2], HospitalSpawnPlayer[rand][3], 0.000000, 0.000000, 200.00);
    SetCameraBehindPlayer(playerid);
    ApplyAnimation(playerid,"CRACK", "crckdeth2",4.0,0,0,0,0,0,1);
    TogglePlayerControllable(playerid, 0);
	AttachCameraToPlayerObject(playerid, pl);
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys){
    if(PRESSED(KEY_YES)){
        if(IsPlayerInRangeOfPoint(playerid, 5.0, 1582.656494, -1245.885986, 3353.424316)){ // TRA TIEN VIEN PHI
        
            new thongtinbaohiem[1280];
            if(PlayerInfo[playerid][pInsurance] != 2) thongtinbaohiem = "Chua dang ky";
            else thongtinbaohiem = "Da dang ky bao hiem";
            
            new giamvienphi[1280], tienvienphi;
            if(PlayerInfo[playerid][pInsurance] > 0){
                tienvienphi = (PlayerInfo[playerid][pTienVienPhi] / 2);
                format(giamvienphi, sizeof(giamvienphi), "%d$", tienvienphi);
			}
			else format(giamvienphi, sizeof(giamvienphi), "%d$", 0);
			    
			new tongtienvienphi[1280];
			if(PlayerInfo[playerid][pInsurance] > 0)
			    format(tongtienvienphi, sizeof(tongtienvienphi), "%d$", (PlayerInfo[playerid][pTienVienPhi] / 2));
			else
			    format(tongtienvienphi, sizeof(tongtienvienphi), "%d$", PlayerInfo[playerid][pTienVienPhi]);
        
            new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
		    format(str1, sizeof(str), "\\c {ff3300}Fire Department of San Andreas");
		    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------");
		    format(str3, sizeof(str), "{ffffff}Quay thanh toan tien vien phi:");
		    format(str4, sizeof(str), "{ffffff}    + Bao hiem y te : %s.", thongtinbaohiem);
		    format(str5, sizeof(str), "{ffffff}    + So tien con thieu : {ff0000}%d$.", PlayerInfo[playerid][pTienVienPhi]);
		    format(str6, sizeof(str), "{ffffff}    + So tien vien phi duoc giam (bao hiem) : {ff0000}%s.", giamvienphi);
		    format(str7, sizeof(str), "{ffffff}    + Tong so tien vien phi can thanh toan : {ff0000}%s", tongtienvienphi);
		    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
		    format(str9, sizeof(str), "Ban vui long nhap so tien ban muon thanh toan vien phi vao o ben duoi");
		    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
		    format(name, sizeof(name), "{00ff00}Thanh toan tien vien phi{FFFFFF}");
			ShowPlayerDialog(playerid, THANHTOAN_VIENPHI, DIALOG_STYLE_INPUT, name, str, "Thanh toan", "Huy Bo");
        }
	}
	
	if(PRESSED(KEY_YES)){
        if(IsPlayerInRangeOfPoint(playerid, 5.0, 1586.610717, -1266.657104, 3353.429443)){ // DANG KY BAO HIEM Y TE
            new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
		    format(str1, sizeof(str), "\\c {ff3300}Fire Department of San Andreas");
		    format(str2, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------");
		    format(str3, sizeof(str), "{ffffff}Quay dang ky bao hiem y te:");
		    format(str4, sizeof(str), "{ffffff}    + Bao hiem y te : Los Santos.");
		    format(str5, sizeof(str), "{ffffff}    + So tien dang ky bao hiem : {ff0000}%d$.", TienDKBaoHiem);
		    format(str6, sizeof(str), "{ffffff}    + Thoi han : 1 nam");
		    format(str7, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------");
		    format(str8, sizeof(str), "Neu ban muon dang ky bao hiem y te vui long nhan 'Dong y'.");
		    format(str9, sizeof(str), "");
		    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
		    format(name, sizeof(name), "{00ff00}Dang ky bao hiem y te{FFFFFF}");
			ShowPlayerDialog(playerid, DANGKY_BAOHIEMYTE, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
        }
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == THANHTOAN_VIENPHI && response == 1){
		new tienvienphi = strval(inputtext);
		
		if(PlayerInfo[playerid][pInsurance] > 0){
		    new tongtien = (PlayerInfo[playerid][pTienVienPhi] / 2);
		    if(tienvienphi > 0){
		        if(tienvienphi <= tongtien){
		        
		            new tinhtien;
		            tinhtien = tongtien - tienvienphi;
		            PlayerInfo[playerid][pTienVienPhi] = tinhtien;
		            
		            new thongbao[1280];
		            format(thongbao, sizeof(thongbao), "Ban da tra tien vien phi thanh cong so tien da tra %d$ , so tien ban con no la : %d$", tienvienphi, PlayerInfo[playerid][pTienVienPhi]);
		            SendClientMessage(playerid, TEAM_CYAN_COLOR, thongbao);
		            return 1;
		        }else SendClientMessage(playerid, TEAM_CYAN_COLOR, "So tien ban nhap da lon hon so tien ban can phai tra.");
		    }else SendClientMessage(playerid, TEAM_CYAN_COLOR, "So tien tra vien phi cua ban phai lon hon 0$.");
		}
		else{
		    new tongtien = PlayerInfo[playerid][pTienVienPhi];
		    if(tienvienphi > 0){
		        if(tienvienphi <= tongtien){

		            PlayerInfo[playerid][pTienVienPhi] -= tienvienphi;

		            new thongbao[1280];
		            format(thongbao, sizeof(thongbao), "Ban da tra tien vien phi thanh cong so tien da tra %d$ , so tien ban con no la : %d$", tienvienphi, PlayerInfo[playerid][pTienVienPhi]);
		            SendClientMessage(playerid, TEAM_CYAN_COLOR, thongbao);
					return 1;
		        }else SendClientMessage(playerid, TEAM_CYAN_COLOR, "So tien ban nhap da lon hon so tien ban can phai tra.");
		    }else SendClientMessage(playerid, TEAM_CYAN_COLOR, "So tien tra vien phi cua ban phai lon hon 0$.");
		}
	}
	
	if(dialogid == DANGKY_BAOHIEMYTE && response == 1){
	    if(PlayerInfo[playerid][pInsurance] == 0){
			if(PlayerInfo[playerid][pCash] >= TienDKBaoHiem){
			    PlayerInfo[playerid][pInsurance] = 2;
	            PlayerInfo[playerid][pCash] -= TienDKBaoHiem;
	            SendClientMessage(playerid, TEAM_CYAN_COLOR, "Ban da dang ky bao hiem y te thanh cong.");
	            return 1;
			}else SendClientMessage(playerid, TEAM_CYAN_COLOR, "Ban khong du tien de dang ky bao hiem y te.");
		}else SendClientMessage(playerid, TEAM_CYAN_COLOR, "Ban da dang ky bao hiem y te truoc do roi , khong the dang ky tiep tuc.");
	}
	return 1;
}
