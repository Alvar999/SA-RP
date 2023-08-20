#include <a_samp>
#include <YSI\y_hooks>



/*task KiemTraDan[1000]() {
	foreach(new playerid: Player) {
		if(GetPVarInt(playerid, "IsInArena") == -1 && GetPVarInt( playerid, "EventToken" ) == 0) { // && PlayerInfo[playerid][pMember] == INVALID_GROUP_ID
	        if(GetPlayerWeapon(playerid) == 22) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][1] + 20) {

	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "9mm", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][1]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			RemovePlayerWeapon(playerid, 22);
	    			//GivePlayerValidWeapon(playerid, 22, PlayerInfo[playerid][pAmmo][1]);
	        	}
	        }
	        else if(GetPlayerWeapon(playerid) == 23) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][1] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "S-9mm", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][1]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 23);
	    			//GivePlayerValidWeapon(playerid, 23, PlayerInfo[playerid][pAmmo][1]);
	        	}
	        }
	        else if(GetPlayerWeapon(playerid) == 24) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][1] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Deagle", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][1]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 24);
	    			//GivePlayerValidWeapon(playerid, 24, PlayerInfo[playerid][pAmmo][1]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 25) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][2] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Shotgun", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][2]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 25);
	    			//GivePlayerValidWeapon(playerid, 25, PlayerInfo[playerid][pAmmo][2]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 27) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][2] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Spas-12", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][2]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 27);
	    			//GivePlayerValidWeapon(playerid, 27, PlayerInfo[playerid][pAmmo][2]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 28) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][3] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Uzi", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][3]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 28);
	    			//GivePlayerValidWeapon(playerid, 28, PlayerInfo[playerid][pAmmo][3]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 29) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][3] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "MP5", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][3]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 29);
	    			//GivePlayerValidWeapon(playerid, 29, PlayerInfo[playerid][pAmmo][3]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 32) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][3] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Uzi", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][3]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 32);
	    			//GivePlayerValidWeapon(playerid, 32, PlayerInfo[playerid][pAmmo][3]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 30) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][4] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "AK-47", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][4]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 30);
	    			//GivePlayerValidWeapon(playerid, 30, PlayerInfo[playerid][pAmmo][4]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 31) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][4] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "M4a1", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][4]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 31);
	    			//GivePlayerValidWeapon(playerid, 31, PlayerInfo[playerid][pAmmo][4]);
	        	}
	        }

	        else if(GetPlayerWeapon(playerid) == 33) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][5] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Rifle", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][5]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 33);
	    			//GivePlayerValidWeapon(playerid, 33, PlayerInfo[playerid][pAmmo][5]);
	        	}
	        }

	        if(GetPlayerWeapon(playerid) == 34) {
	        	if(GetPlayerAmmo(playerid) > PlayerInfo[playerid][pAmmo][5] + 20) {
	        		new string[1280];
	        		format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s co the dang su dung hack ammo vu khi %s. [%d / %d]", GetPlayerNameEx(playerid), "Sniper", GetPlayerAmmo(playerid), PlayerInfo[playerid][pAmmo][5]);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			//RemovePlayerWeapon(playerid, 34);
	    			//GivePlayerValidWeapon(playerid, 34, PlayerInfo[playerid][pAmmo][5]);
	        	}
	        }
		}	
	}
}
*/

CMD:kiemtradan(playerid, params[]) {
	if (PlayerInfo[playerid][pAdmin] >= 2) {
		new giveplayerid;
		if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /kiemtradan [player]");
		
		new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
	    format(str1, sizeof(str), "DEAGLE / 9MM / S-9mm: %d", PlayerInfo[giveplayerid][pAmmo][1]);
	    format(str2, sizeof(str), "SHOTGUN / SPAS-12 : %d", PlayerInfo[giveplayerid][pAmmo][2]);
	    format(str3, sizeof(str), "MP5 / UZI / TEC-9 : %d", PlayerInfo[giveplayerid][pAmmo][3]);
	    format(str4, sizeof(str), "AK-47 / M4A1 : %d", PlayerInfo[giveplayerid][pAmmo][4]);
	    format(str5, sizeof(str), "RIFLE / SNIPER : %d", PlayerInfo[giveplayerid][pAmmo][5]);
	    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5);
	    format(name, sizeof(name), "KIEM TRA DAN - {00ffff}%s", GetPlayerNameEx(giveplayerid));
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, name, str, "Dong y", "Huy Bo");

	}else {
        new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
	    format(str1, sizeof(str), "DEAGLE / 9MM / S-9mm: %d", PlayerInfo[playerid][pAmmo][1]);
	    format(str2, sizeof(str), "SHOTGUN / SPAS-12 : %d", PlayerInfo[playerid][pAmmo][2]);
	    format(str3, sizeof(str), "MP5 / UZI / TEC-9 : %d", PlayerInfo[playerid][pAmmo][3]);
	    format(str4, sizeof(str), "AK-47 / M4A1 : %d", PlayerInfo[playerid][pAmmo][4]);
	    format(str5, sizeof(str), "RIFLE / SNIPER : %d", PlayerInfo[playerid][pAmmo][5]);
	    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5);
	    format(name, sizeof(name), "KIEM TRA DAN - {00ffff}%s", GetPlayerNameEx(playerid));
		ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, name, str, "Dong y", "Huy Bo");
	}
    return 1;
}

stock PrisonHacking(playerid, lydo[]) {
	new minutes = 120;
    new string[1280];
    ResetPlayerWeaponsEx(playerid);
	format(string, sizeof(string), "[SV.SA-RP.NET - ANTI CHEAT] Nguoi choi %s (ID %d) , da bi dua vao tu boi System , Ly do : %s", GetPlayerNameEx(playerid), playerid, lydo);
	SendClientMessageToAllEx(COLOR_LIGHTRED, string);
	StaffAccountCheck(playerid, GetPlayerIpEx(playerid));
	PhoneOnline[playerid] = 1;
	PlayerInfo[playerid][pJailTime] = minutes*5;
	SetPlayerInterior(playerid, 0);
	SetPlayerHealth(playerid, 0x7FB00000);
	SetPlayerFacingAngle(playerid, 0);
	new rand = random(sizeof(OOCPrisonSpawns));
	SetPlayerPos(playerid, DocPrison[rand][0], DocPrison[rand][1], DocPrison[rand][2]);
	Player_StreamPrep(playerid, DocPrison[rand][0], DocPrison[rand][1], DocPrison[rand][2], FREEZE_TIME);
	PlayerInfo[playerid][pVW] = 0;
	SetPlayerVirtualWorld(playerid, 0);
	format(string, sizeof(string), "Ban da bi dua vao tu %d phut voi , Ly do : %s", minutes, lydo);
	SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string);
	format(PlayerInfo[playerid][pPrisonedBy], 24, "SYSTEM %s", lydo);
	format(PlayerInfo[playerid][pPrisonReason], 128, "[OOC][SJAIL] %s", lydo);
	SetPlayerColor(playerid, TEAM_APRISON_COLOR);
	return 1;
}
