#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

CMD:treocauca(playerid, params[]) {
	if(GetPVarInt(playerid, "CauCaLienTuc") == 0) {
		SetPVarInt(playerid, "CauCaLienTuc", 1);
		SendClientMessageEx(playerid, -1, "Ban da bat dau treo cau ca, vui long khong di chuyen");
	}else {
		SetPVarInt(playerid, "CauCaLienTuc", 0);
		SendClientMessageEx(playerid, -1, "Ban da ngung treo cau ca, chuc ban choi game vui ve.");
	}
	return 1;
}
stock CauCaThoiNao(playerid){
    for(new i = 0; i < MAX_FISH; i++) {
		if(IsPlayerInRangeOfPoint(playerid, 3, FishInfo[i][Fish_PosX], FishInfo[i][Fish_PosY], FishInfo[i][Fish_PosZ])) {
		    if(DangCauCa[playerid] == 0){
			    if(CayCanCau[playerid] >= 0){
			        //-----------
			        TogglePlayerControllable(playerid, 0);

		      		ApplyAnimation(playerid, "SAMP", "FishingIdle", 3.0,1,1,0,0,0);
		      		DangCauCa[playerid] = 1;
		      		CayCanCau[playerid] = 0;
		      		SetPVarInt(playerid, "CauCaLienTuc", 1);
		      		new time = 10+random(10);

		      		SetPVarInt(playerid, "CauCaTime", time);
		      		SetTimerEx("CauCa", 1000, 0, "d", playerid);
			    }else SendClientMessageEx(playerid, -1, "Ban chua mua can cau ca' {00ff00}PLAY TOGETHER");
			}else SendClientMessageEx(playerid, -1, "Ban dang cau ca roi khong the cau ngay bay gio duoc {00ff00}PLAY TOGETHER");
		}
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys){
    if(PRESSED(KEY_YES)){
        CauCaThoiNao(playerid);
    }
	return 1;
}

forward CauCa(playerid);
public CauCa(playerid)
{
    SetPVarInt(playerid, "CauCaTime", GetPVarInt(playerid, "CauCaTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "CauCaTime"));
    GameTextForPlayer(playerid, string, 1100, 3);
    if(GetPVarInt(playerid, "CauCaTime") > 0) SetTimerEx("CauCa", 1000, 0, "d", playerid);
    if(GetPVarInt(playerid, "CauCaTime") <= 0)
    {
        DeletePVar(playerid, "CauCaTime");
        DeletePVar(playerid, "CauCa");
        
        //RemovePlayerAttachedObject(playerid, 0);
        TogglePlayerControllable(playerid, 1);
    	ClearAnimations(playerid);
    	DangCauCa[playerid] = 0;
    	if(GetPVarInt(playerid, "CauCaLienTuc") == 1) {
	        CauCaThoiNao(playerid);
	    }

        if(BuffCauCaVNS == 1){
	        new rand = random(102);
	        switch(rand){
	            case 0..20: // TUI RAC - 40%
	            	Fish_TuiRac(playerid);

				case 21..40: // CA RO PHI - 30%
				    Fish_CaRoPhi(playerid);

				case 41..50: // RUA - 20%
				    Fish_Rua(playerid);

	            case 51..60: // CA HEO - 10%
				    Fish_CaHeo(playerid);

	            case 61..70: // CA MAP - 10%
				    Fish_CaMap(playerid);

	            case 71..80: // CA MAP - 6%
				    Fish_CaMapKing(playerid);

	            case 81..86: // Deinosuchus - 5%
				    Fish_Deinosuchus(playerid);

	            case 87..92: // Deinosuchus - 4%
				    Fish_CaVoiSatThu(playerid);

	            case 93..97: // Deinosuchus - 3%
				    Fish_CaVoiLungGu(playerid);

	            case 98..100: // Deinosuchus - 1%
				    Fish_Megalodon(playerid);
				    
                case 101: // Mosasaurus - 1%
				    Fish_Mosasaurus(playerid);
	        }
        }
        else{
            new rand = random(132);
	        switch(rand){
	            case 0..40: // TUI RAC - 40%
	            	Fish_TuiRac(playerid);

				case 41..70: // CA RO PHI - 30%
				    Fish_CaRoPhi(playerid);

				case 71..90: // RUA - 20%
				    Fish_Rua(playerid);

	            case 91..100: // CA HEO - 10%
				    Fish_CaHeo(playerid);

	            case 101..110: // CA MAP - 10%
				    Fish_CaMap(playerid);

	            case 111..117: // CA MAP - 6%
				    Fish_CaMapKing(playerid);

	            case 118..122: // Deinosuchus - 5%
				    Fish_Deinosuchus(playerid);

	            case 123..126: // CaVoiSatThu - 4%
				    Fish_CaVoiSatThu(playerid);

	            case 127..129: // CaVoiLungGu - 3%
				    Fish_CaVoiLungGu(playerid);

	            case 130: // Deinosuchus - 1%
				    Fish_Megalodon(playerid);
				    
                case 131: // Mosasaurus - 1%
				    Fish_Mosasaurus(playerid);
	        }
		}
	}
	return 1;
}

stock Fish_TuiRac(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot bich rac'");
    PlayerInfo[playerid][pCash] += 2;
    PlayerInfo[playerid][pPlayTogether][6] += 1;
	return 1;
}

stock Fish_CaRoPhi(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {ffa31a}CA' RO PHI");
	PlayerInfo[playerid][pCash] += 3;
	PlayerInfo[playerid][pPlayTogether][1] += 1;
	return 1;
}

stock Fish_Rua(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {ff6600}RUA`");
	PlayerInfo[playerid][pCash] += 5;
	PlayerInfo[playerid][pPlayTogether][2] += 1;
	return 1;
}

stock Fish_CaHeo(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {6b6b47}CA' HEO");
	PlayerInfo[playerid][pCash] += 20;
	PlayerInfo[playerid][pPlayTogether][3] += 1;
	return 1;
}

stock Fish_CaMap(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {f2f2f2}CA' MAP");
	PlayerInfo[playerid][pPlayTogether][4] += 1;
	return 1;
}

stock Fish_CaMapKing(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {cc33ff}CA' MAP KING");
	PlayerInfo[playerid][pPlayTogether][5] += 1;
	
	new szmessage[1280];
	format(szmessage, sizeof(szmessage), "Nguoi choi {00ff00}%s{ffffff} vua cau thanh cong mot con {cc33ff}CA' MAP KING.", GetPlayerNameEx(playerid));
	thongbaocauca(-1, szmessage);
	
	new szmessage22[1280];
	format(szmessage22, sizeof(szmessage22), "Nguoi choi %s vua cau thanh cong mot con CA' MAP KING | Tong : %d.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pPlayTogether][5]);
	Log("logs/caucaking.log", szmessage22);
	return 1;
}

stock Fish_Deinosuchus(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {ff3300}Deinosuchus");
	PlayerInfo[playerid][pPlayTogether][7] += 1;
	
	new szmessage[1280];
	format(szmessage, sizeof(szmessage), "Nguoi choi {ff3300}%s{ffffff} vua cau thanh cong mot con {ff3300}Deinosuchus.", GetPlayerNameEx(playerid));
	thongbaocauca(-1, szmessage);

    new szmessage22[1280];
	format(szmessage22, sizeof(szmessage22), "Nguoi choi %s vua cau thanh cong mot con Deinosuchus | Tong : %d.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pPlayTogether][7]);
	Log("logs/caucaDeinosuchus.log", szmessage22);
	return 1;
}

stock Fish_CaVoiSatThu(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {4d4d4d}CA VOI {f2f2f2}SAT THU");
	PlayerInfo[playerid][pPlayTogether][8] += 1;
	
	new szmessage[1280];
	format(szmessage, sizeof(szmessage), "Nguoi choi {ff3300}%s{ffffff} vua cau thanh cong mot con {4d4d4d}CA VOI {f2f2f2}SAT THU.", GetPlayerNameEx(playerid));
	thongbaocauca(-1, szmessage);
	
	new szmessage22[1280];
	format(szmessage22, sizeof(szmessage22), "Nguoi choi %s vua cau thanh cong mot con CA VOI SAT THU | Tong : %d.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pPlayTogether][8]);
	Log("logs/caucasatthu.log", szmessage);
	return 1;
}

stock Fish_CaVoiLungGu(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {1aa3ff}CA VOI LUNG GU");
	PlayerInfo[playerid][pPlayTogether][9] += 1;
	
	new szmessage[1280];
	format(szmessage, sizeof(szmessage), "Nguoi choi {ff3300}%s{ffffff} vua cau thanh cong mot con {1aa3ff}CA VOI LUNG GU.", GetPlayerNameEx(playerid));
	thongbaocauca(-1, szmessage);
	
	new szmessage22[1280];
	format(szmessage22, sizeof(szmessage22), "Nguoi choi %s vua cau thanh cong mot con CA VOI LUNG GU | Tong : %d.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pPlayTogether][9]);
	Log("logs/caucavoilunggu.log", szmessage);
	return 1;
}

stock Fish_Megalodon(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {ff0000}Megalodon{ffffff}");
	PlayerInfo[playerid][pPlayTogether][10] += 1;
	
	new szmessage[1280];
	format(szmessage, sizeof(szmessage), "Nguoi choi {ff3300}%s{ffffff} vua cau thanh cong mot con {ff0000}Megalodon{ffffff}.", GetPlayerNameEx(playerid));
	thongbaocauca(-1, szmessage);
	
    new szmessage22[1280];
	format(szmessage22, sizeof(szmessage22), "Nguoi choi %s vua cau thanh cong mot con Megalodon | Tong : %d.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pPlayTogether][10]);
	Log("logs/caucaMegalodon.log", szmessage);
	return 1;
}

stock Fish_Mosasaurus(playerid){
    SendClientMessageEx(playerid, -1, "Ban da cau dinh' mot con ca {9933ff}Mosasaurus{ffffff}");
	PlayerInfo[playerid][pPlayTogether][11] += 1;

	new szmessage[1280];
	format(szmessage, sizeof(szmessage), "Nguoi choi {ff3300}%s{ffffff} vua cau thanh cong mot con {9933ff}Mosasaurus{ffffff}.", GetPlayerNameEx(playerid));
	thongbaocauca(-1, szmessage);
	
	new szmessage22[1280];
	format(szmessage22, sizeof(szmessage22), "Nguoi choi %s vua cau thanh cong mot con Mosasaurus | Tong : %d.", GetPlayerNameEx(playerid), PlayerInfo[playerid][pPlayTogether][11]);
	Log("logs/caucaMosasaurus.log", szmessage);
	return 1;
}

stock thongbaocauca(hColor, szMessage[]) {
	foreach(new i: Player)
	{
	    if(IsPlayerInRangeOfPoint(i, 100.0, 2127.5442,-104.8636,3.0735)) {
			if(TogCauCa[i] == 0) {
				SendClientMessageEx(i, hColor, szMessage);
			}
		}
	}
	return 1;
}

hook OnPlayerDisconnect(playerid, reason){
	return 1;
}
