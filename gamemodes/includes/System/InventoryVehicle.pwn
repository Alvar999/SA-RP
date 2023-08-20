#include <a_samp>
#include <YSI\y_hooks>


#define 				DIALOG_VEHICLE_LAY			(8233)
#define 				DIALOG_VEHICLE_CAT			(8234)

#define 				DIALOG_CAT_POT				(8235)
#define 				DIALOG_CAT_CRACK			(8236)

#define 				DIALOG_LAY_POT				(8237)
#define 				DIALOG_LAY_CRACK			(8238)

new MaxInvCatSung[MAX_PLAYERS];

CMD:copxe(playerid, params[]) {
    new choice[32];
    new Float: fVehPos[3];
	if(IsPlayerInAnyVehicle(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "[VEHICLE] Ban khong the lam dieu nay khi dang o trong phuong tien.");
	else if(GetPVarInt(playerid, "IsInArena") >= 0) return SendClientMessageEx(playerid, COLOR_WHITE, "[VEHICLE] Ban khong the lam dieu nay bay gio, ban dang ben trong Arena.");
	else if(GetPVarInt( playerid, "EventToken") != 0) return SendClientMessageEx(playerid, COLOR_GREY, "[VEHICLE] Ban khong the lam dieu nay khi dang o trong su kien.");
	else if(PlayerInfo[playerid][pConnectHours] < 2) return SendClientMessageEx(playerid, COLOR_GRAD2, "[VEHICLE] Ban hien tai dang bi gioi han vu khi.");
	if(sscanf(params, "s[32]", choice)) {
        SendClientMessageEx(playerid, COLOR_GRAD2, "[USE] /copxe (lay, cat).");
        return 1;
    }
	if(strcmp(choice, "lay", true) == 0) {
		for(new d = 0 ; d < MAX_PLAYERVEHICLES; d++) {
			if(PlayerVehicleInfo[playerid][d][pvId] != INVALID_PLAYER_VEHICLE_ID) {
				GetVehiclePos(PlayerVehicleInfo[playerid][d][pvId], fVehPos[0], fVehPos[1], fVehPos[2]);
				new engine, lights, alarm, doors, bonnet, boot, objective;
				GetVehicleParamsEx(PlayerVehicleInfo[playerid][d][pvId], engine, lights, alarm, doors, bonnet, boot, objective);
				if(IsPlayerInRangeOfPoint(playerid, 4.0, fVehPos[0], fVehPos[1], fVehPos[2])) {

					if(boot == VEHICLE_PARAMS_OFF || boot == VEHICLE_PARAMS_UNSET) {
						SendClientMessageEx(playerid, COLOR_GRAD3, "[VEHICLE] Hien tai cop xe cua phuong tien chua duoc mo, ban vui long mo cop xe (/car trunk).");
						return 1;
					}
					SetPVarInt(playerid, "CopXeID", d);
					ShowCopXeLay(playerid, d);
				}
				else {
					SendClientMessageEx(playerid,COLOR_GREY,"[VEHICLE] Ban khong o gan phuong tien cua ban.");
					return 1;
				}
			}
		}
    }	
    if(strcmp(choice, "cat", true) == 0) {
		for(new d = 0 ; d < MAX_PLAYERVEHICLES; d++) {
			if(PlayerVehicleInfo[playerid][d][pvId] != INVALID_PLAYER_VEHICLE_ID) {
				GetVehiclePos(PlayerVehicleInfo[playerid][d][pvId], fVehPos[0], fVehPos[1], fVehPos[2]);
				new engine, lights, alarm, doors, bonnet, boot, objective;
				GetVehicleParamsEx(PlayerVehicleInfo[playerid][d][pvId], engine, lights, alarm, doors, bonnet, boot, objective);
				if(IsPlayerInRangeOfPoint(playerid, 4.0, fVehPos[0], fVehPos[1], fVehPos[2])) {

					if(boot == VEHICLE_PARAMS_OFF || boot == VEHICLE_PARAMS_UNSET) {
						SendClientMessageEx(playerid, COLOR_GRAD3, "[VEHICLE] Hien tai cop xe cua phuong tien chua duoc mo, ban vui long mo cop xe (/car trunk).");
						return 1;
					}
					if(PlayerVehicleInfo[playerid][d][pvWeapons][0] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][1] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][2] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][3] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][4] > 0 &&
			    	PlayerVehicleInfo[playerid][d][pvWeapons][5] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][6] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][1] > 7 && PlayerVehicleInfo[playerid][d][pvWeapons][8] > 0 && PlayerVehicleInfo[playerid][d][pvWeapons][9] > 0) {
			    		SendClientMessageEx(playerid,COLOR_GREY,"Cop xe cua ban da day, khong the cat them duoc nua.");
			    		return 1;
			    	}
					SetPVarInt(playerid, "CopXeID", d);
					ShowCopXeCat(playerid);
				}
				else {
					SendClientMessageEx(playerid,COLOR_GREY,"[VEHICLE] Ban khong o gan phuong tien cua ban.");
					return 1;
				}
			}
		}
    }
	return 1;	
}

stock ShowCopXeCat(playerid) {
	new myweapons[13][2], weaponname[50], string[1280];
	MaxInvCatSung[playerid] = 0;
	for (new i = 0; i < 13; i++)
	{
		GetPlayerWeaponData(playerid, i, myweapons[i][0], myweapons[i][1]);
		if(myweapons[i][0] > 0)
		{
			if(PlayerInfo[playerid][pGuns][i] == myweapons[i][0])
			{
				GetWeaponName(myweapons[i][0], weaponname, sizeof(weaponname));
				format(string, sizeof(string), "%s\n%s (%d)", string, weaponname, myweapons[i][0]);
				MaxInvCatSung[playerid] += 1;
			}
		}
	}
	new main_put[15000];
	format(main_put, sizeof(main_put), "%s\n{ff3300}>{FFFFFF} Pot\n{ff3300}>{FFFFFF} Crack", string);
	ShowPlayerDialog(playerid, DIALOG_VEHICLE_CAT, DIALOG_STYLE_LIST, "COP XE | CAT", main_put, "Cat ngay", "Huy Bo");
	return 1;
}

stock ShowCopXeLay(playerid, veh) {
	new name[1280];
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280];

	new info_wp1[1280], info_wp2[1280], info_wp3[1280], info_wp4[1280], info_wp5[1280], info_wp6[1280], info_wp7[1280], info_wp8[1280], info_wp9[1280], info_wp10[1280];
	if(PlayerVehicleInfo[playerid][veh][pvWeapons][0] > 0) 
	{
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][0] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][0], WeaponName, sizeof(WeaponName));
			format(info_wp1, sizeof(info_wp1), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][0]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][0] == 100) {
				format(info_wp1, sizeof(info_wp1), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][0]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][0] == 101) {
				format(info_wp1, sizeof(info_wp1), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][0]);
			}
		}
	}else format(info_wp1, sizeof(info_wp1), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][1] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][1] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][1], WeaponName, sizeof(WeaponName));
			format(info_wp2, sizeof(info_wp2), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][1]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][1] == 100) {
				format(info_wp2, sizeof(info_wp2), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][1]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][1] == 101) {
				format(info_wp2, sizeof(info_wp2), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][1]);
			}
		}
	}else format(info_wp2, sizeof(info_wp2), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][2] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][2] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][2], WeaponName, sizeof(WeaponName));
			format(info_wp3, sizeof(info_wp3), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][2]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][2] == 100) {
				format(info_wp3, sizeof(info_wp3), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][2]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][2] == 101) {
				format(info_wp3, sizeof(info_wp3), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][2]);
			}
		}
	}else format(info_wp3, sizeof(info_wp3), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][3] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][3] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][3], WeaponName, sizeof(WeaponName));
			format(info_wp4, sizeof(info_wp4), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][3]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][3] == 100) {
				format(info_wp4, sizeof(info_wp4), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][3]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][3] == 101) {
				format(info_wp4, sizeof(info_wp4), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][3]);
			}
		}
	}else format(info_wp4, sizeof(info_wp4), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][4] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][4] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][4], WeaponName, sizeof(WeaponName));
			format(info_wp5, sizeof(info_wp5), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][4]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][4] == 100) {
				format(info_wp5, sizeof(info_wp5), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][4]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][4] == 101) {
				format(info_wp5, sizeof(info_wp5), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][4]);
			}
		}
	}else format(info_wp5, sizeof(info_wp5), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][5] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][5] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][5], WeaponName, sizeof(WeaponName));
			format(info_wp6, sizeof(info_wp6), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][5]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][5] == 100) {
				format(info_wp6, sizeof(info_wp6), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][5]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][5] == 101) {
				format(info_wp6, sizeof(info_wp6), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][5]);
			}
		}
	}else format(info_wp6, sizeof(info_wp6), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][6] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][6] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][6], WeaponName, sizeof(WeaponName));
			format(info_wp7, sizeof(info_wp7), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][6]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][6] == 100) {
				format(info_wp7, sizeof(info_wp7), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][6]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][6] == 101) {
				format(info_wp7, sizeof(info_wp7), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][6]);
			}
		}
	}else format(info_wp7, sizeof(info_wp7), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][7] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][7] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][7], WeaponName, sizeof(WeaponName));
			format(info_wp8, sizeof(info_wp8), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][7]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][7] == 100) {
				format(info_wp8, sizeof(info_wp8), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][7]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][7] == 101) {
				format(info_wp8, sizeof(info_wp8), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][7]);
			}
		}
	}else format(info_wp8, sizeof(info_wp8), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][8] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][8] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][8], WeaponName, sizeof(WeaponName));
			format(info_wp9, sizeof(info_wp9), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][8]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][8] == 100) {
				format(info_wp9, sizeof(info_wp9), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][8]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][8] == 101) {
				format(info_wp9, sizeof(info_wp9), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][8]);
			}
		}
	}else format(info_wp9, sizeof(info_wp9), "%s\t%d", "Null", 0);

	if(PlayerVehicleInfo[playerid][veh][pvWeapons][9] > 0) {
		if(PlayerVehicleInfo[playerid][veh][pvWeapons][9] < 100) {
			new WeaponName[32];
			GetWeaponName(PlayerVehicleInfo[playerid][veh][pvWeapons][9], WeaponName, sizeof(WeaponName));
			format(info_wp10, sizeof(info_wp10), "%s\t%d", WeaponName, PlayerVehicleInfo[playerid][veh][pvAmmo][9]);
		}else {
			if(PlayerVehicleInfo[playerid][veh][pvWeapons][9] == 100) {
				format(info_wp10, sizeof(info_wp10), "%s\t%d", "Pot", PlayerVehicleInfo[playerid][veh][pvAmmo][9]);
			}else if(PlayerVehicleInfo[playerid][veh][pvWeapons][9] == 101) {
				format(info_wp10, sizeof(info_wp10), "%s\t%d", "Crack", PlayerVehicleInfo[playerid][veh][pvAmmo][9]);
			}
		}
	}else format(info_wp10, sizeof(info_wp10), "%s\t%d", "Null", 0);

    format(str1, sizeof(str), "1\t%s", info_wp1);
    format(str2, sizeof(str), "2\t%s", info_wp2);
    format(str3, sizeof(str), "3\t%s", info_wp3);
    format(str4, sizeof(str), "4\t%s", info_wp4);
    format(str5, sizeof(str), "5\t%s", info_wp5);
    format(str6, sizeof(str), "6\t%s", info_wp6);
    format(str7, sizeof(str), "7\t%s", info_wp7);
    format(str8, sizeof(str), "8\t%s", info_wp8);
    format(str9, sizeof(str), "9\t%s", info_wp9);
    format(str10, sizeof(str), "10\t%s", info_wp10);

    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", "ID\tTen vat pham\tAmmo", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10);
    format(name, sizeof(name), "{ffffff}COP XE | LAY");
	ShowPlayerDialog(playerid, DIALOG_VEHICLE_LAY, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Su dung", "Huy Bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_VEHICLE_LAY && response == 1){
		new d = GetPVarInt(playerid,"CopXeID");
		for(new w = 0; w < MAX_INVENTORY_CAR; w++) {
			if(listitem == w) {
				SetPVarInt(playerid, "SlotLayInv", w);
				if(PlayerVehicleInfo[playerid][d][pvWeapons][w] > 0) {
					if(PlayerVehicleInfo[playerid][d][pvWeapons][w] < 100) {
						new szWeapon[16], szMessage[128];

						GetWeaponName(PlayerVehicleInfo[playerid][d][pvWeapons][w], szWeapon, sizeof(szWeapon));
						GivePlayerValidWeapon(playerid, PlayerVehicleInfo[playerid][d][pvWeapons][w], PlayerVehicleInfo[playerid][d][pvAmmo][w]);
						PlayerVehicleInfo[playerid][d][pvWeapons][w] = -1;
						g_mysql_SaveVehicle(playerid, d);

						format(szMessage, sizeof(szMessage), "Ban da lay %s ra khoi cop xe thanh cong.", szWeapon);
						SendClientMessageEx(playerid, COLOR_WHITE, szMessage);

						format(szMessage, sizeof(szMessage), "* %s da lay %s ra khoi cop xe.", GetPlayerNameEx(playerid), szWeapon);
						return ProxDetector(30.0, playerid, szMessage, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
					}else {
						if(PlayerVehicleInfo[playerid][d][pvWeapons][w] == 100) {
							new string[1280];
							format(string, sizeof(string), "Ban hay nhap so luong #POT ban muon lay ra khoi phuong tien: \nTong so pot tren phuong tien cua ban la : %s pot.", number_format(PlayerVehicleInfo[playerid][d][pvAmmo][w]));
							ShowPlayerDialog(playerid, DIALOG_LAY_POT, DIALOG_STYLE_INPUT, "COP XE | LAY", string, "Lay ngay", "Huy bo");
							return 1;
						}else if(PlayerVehicleInfo[playerid][d][pvWeapons][w] == 101) {
							new string[1280];
							format(string, sizeof(string), "Ban hay nhap so luong #CRACK ban muon lay ra khoi phuong tien: \nTong so crack tren phuong tien cua ban la : %s crack.", number_format(PlayerVehicleInfo[playerid][d][pvAmmo][w]));
							ShowPlayerDialog(playerid, DIALOG_LAY_CRACK, DIALOG_STYLE_INPUT, "COP XE | LAY", string, "Lay ngay", "Huy bo");
							return 1;
						}
					}
				}
			}
		}
		return 1;
	}
	if(dialogid == DIALOG_LAY_POT && response == 1) {
		new d = GetPVarInt(playerid,"CopXeID");
		new w = GetPVarInt(playerid,"SlotLayInv");
		new amount = strval(inputtext);
		if(amount > 0 && amount <= PlayerVehicleInfo[playerid][d][pvAmmo][w])  {
			PlayerVehicleInfo[playerid][d][pvAmmo][w] -= amount;
			if(PlayerVehicleInfo[playerid][d][pvAmmo][w] == 0) {
				PlayerVehicleInfo[playerid][d][pvWeapons][w] = -1;
			}
			PlayerInfo[playerid][pPot] += amount;
			new string[1280];
			format(string, sizeof(string), "Ban da lay %s pot ra khoi phuong tien thanh cong.", number_format(amount));
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string); 

			format(string,sizeof(string), "* %s da lay mot thu gi do ra khoi phuong tien thanh cong.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			g_mysql_SaveVehicle(playerid, d);
			return 1;
		}else {
			SendClientMessageEx(playerid, COLOR_WHITE, "So luong ban nhap da lon hon so voi so luong ban dang co (/copxe) de kiem tra."); 
			return 1;
		} 
	}
	if(dialogid == DIALOG_LAY_CRACK && response == 1) {
		new d = GetPVarInt(playerid,"CopXeID");
		new w = GetPVarInt(playerid,"SlotLayInv");
		new amount = strval(inputtext);
		if(amount > 0 && amount <= PlayerVehicleInfo[playerid][d][pvAmmo][w])  {
			PlayerVehicleInfo[playerid][d][pvAmmo][w] -= amount;
			if(PlayerVehicleInfo[playerid][d][pvAmmo][w] == 0) {
				PlayerVehicleInfo[playerid][d][pvWeapons][w] = -1;
			}
			PlayerInfo[playerid][pCrack] += amount;
			new string[1280];
			format(string, sizeof(string), "Ban da lay %s crack ra khoi phuong tien thanh cong.", number_format(amount));
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string); 

			format(string,sizeof(string), "* %s da lay mot thu gi do ra khoi phuong tien thanh cong.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			g_mysql_SaveVehicle(playerid, d);
			return 1;
		}else {
			SendClientMessageEx(playerid, COLOR_WHITE, "So luong ban nhap da lon hon so voi so luong ban dang co (/copxe) de kiem tra."); 
			return 1;
		} 
	}
	if(dialogid == DIALOG_VEHICLE_CAT && response == 1) {
	    if(GetPVarInt(playerid, "IsInArena") >= 0)
		{
			SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the lam dieu nay bay gio, you are in a arena!");
			return 1;
		}
		if(GetPVarInt( playerid, "EventToken") != 0)
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You can't use this while you're in an event.");
			return 1;
		}
		if(IsPlayerInAnyVehicle(playerid)) { SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong the lam dieu nay khi dang trong xe!"); return 1; }
		if(GetPVarInt(playerid, "EMSAttempt") != 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong the su dung lenh nay!");
		
		if(MaxInvCatSung[playerid] == 0) {
			if(listitem == 0) {
				new string[1280];
				format(string, sizeof(string), "Ban hay nhap so luong #POT ban muon cat vao cop xe: \nBan hien dang co %s pot.", number_format(PlayerInfo[playerid][pPot]));
				ShowPlayerDialog(playerid, DIALOG_CAT_POT, DIALOG_STYLE_INPUT, "COP XE | CAT", string, "Cat ngay", "Huy bo");
				return 1;
			}
			if(listitem == 1) {
				new string[1280];
				format(string, sizeof(string), "Ban hay nhap so luong #CRACK ban muon cat vao cop xe: \nBan hien dang co %s crack.", number_format(PlayerInfo[playerid][pCrack]));
				ShowPlayerDialog(playerid, DIALOG_CAT_CRACK, DIALOG_STYLE_INPUT, "COP XE | CAT", string, "Cat ngay", "Huy bo");
				return 1;
			}
		}else {
			new string[1280];
			if(listitem <  MaxInvCatSung[playerid]) {
				for(new i = 0; i < MaxInvCatSung[playerid]; i++) {
					if(listitem == i) {
					    TrunkPut(playerid, inputtext);	        
		                return 1;
					}
				}
			}
			if(listitem == MaxInvCatSung[playerid]) {
				format(string, sizeof(string), "Ban hay nhap so luong #POT ban muon cat vao cop xe: \nBan hien dang co %s pot.", number_format(PlayerInfo[playerid][pPot]));
				ShowPlayerDialog(playerid, DIALOG_CAT_POT, DIALOG_STYLE_INPUT, "COP XE | CAT", string, "Cat ngay", "Huy bo");
				return 1;
			}
			if(listitem == MaxInvCatSung[playerid] + 1) {
				format(string, sizeof(string), "Ban hay nhap so luong #CRACK ban muon cat vao cop xe: \nBan hien dang co %s crack.", number_format(PlayerInfo[playerid][pCrack]));
				ShowPlayerDialog(playerid, DIALOG_CAT_CRACK, DIALOG_STYLE_INPUT, "COP XE | CAT", string, "Cat ngay", "Huy bo");
				return 1;
			}				
		}
	}

	if(dialogid == DIALOG_CAT_POT && response == 1) {
		new amount = strval(inputtext);
		new pvid = GetPVarInt(playerid,"CopXeID");
		if(amount > 0 && amount <= PlayerInfo[playerid][pPot]) {
			PlayerInfo[playerid][pPot] -= amount;

			new string[1280];
			format(string, sizeof(string), "Ban da bo %s pot vao cop xe phuong tien thanh cong.", number_format(amount));
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string); 

			format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);

			AddItemCar(playerid, pvid, 100, amount);
			g_mysql_SaveVehicle(playerid, pvid);
			return 1;
		}else {
			SendClientMessageEx(playerid, COLOR_WHITE, "So luong ban nhap da lon hon so voi so luong ban dang co (/tuido) de kiem tra."); 
			return 1;
		}
	}
	if(dialogid == DIALOG_CAT_CRACK && response == 1) {
		new amount = strval(inputtext);
		new pvid = GetPVarInt(playerid,"CopXeID");
		if(amount > 0 && amount <= PlayerInfo[playerid][pCrack]) {
			PlayerInfo[playerid][pCrack] -= amount;

			new string[1280];
			format(string, sizeof(string), "Ban da bo %s crack vao cop xe phuong tien thanh cong.", number_format(amount));
			SendClientMessageEx(playerid, COLOR_LIGHTBLUE, string); 

			format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);

			AddItemCar(playerid, pvid, 101, amount);
			g_mysql_SaveVehicle(playerid, pvid);
			return 1;
		}else {
			SendClientMessageEx(playerid, COLOR_WHITE, "So luong ban nhap da lon hon so voi so luong ban dang co (/tuido) de kiem tra."); 
			return 1;
		}
	}
	return 1;
}

stock AddItemCar(playerid, d, itemid, ammo) {
	new slotadd = -1;
	for(new i = 0; i < MAX_INVENTORY_CAR; i++) {
	    if(PlayerVehicleInfo[playerid][d][pvWeapons][i] == -1) {
            slotadd = i;
            break;
		}
	}
	PlayerVehicleInfo[playerid][d][pvWeapons][slotadd] = itemid;
	PlayerVehicleInfo[playerid][d][pvAmmo][slotadd] = ammo;
	g_mysql_SaveVehicle(playerid, d);
	return 1;
}

stock TrunkPut(playerid, weaponchoice[]) {
    new pvid = -1, Float: x, Float: y, Float: z;
    for(new d = 0 ; d < MAX_PLAYERVEHICLES; d++)
	{
		if(PlayerVehicleInfo[playerid][d][pvId] != INVALID_PLAYER_VEHICLE_ID) GetVehiclePos(PlayerVehicleInfo[playerid][d][pvId], x, y, z);
		if(IsPlayerInRangeOfPoint(playerid, 3.0, x, y, z))
		{
			pvid = d;
			break;
		}
	}
	
	if(pvid == -1) return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong o gan phuong tien cua ban.");
	new Float: Health;
	new string[1280];
	GetPlayerHealth(playerid, Health);
	if(Health < 50.0) return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong the cat sung, khi mau cua ban < 50.");
	if (GetPVarInt(playerid, "GiveWeaponTimer") > 0)
	{
		format(string, sizeof(string), "	Ban can phai doi %d giay de tiep tuc cat sung.", GetPVarInt(playerid, "GiveWeaponTimer"));
		SendClientMessageEx(playerid,COLOR_GREY,string);
		return 1;
	}
	
	new weapon, ammowp;
	if(strcmp(weaponchoice, "Silenced Pistol (23)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a silenced pistol into your car gun locker.");
		weapon = 23;
		ammowp = PlayerInfo[playerid][pAmmo][1];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Colt 45 (22)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a Colt 45 into your car gun locker.");
		weapon = 22;
		ammowp = PlayerInfo[playerid][pAmmo][1];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Desert Eagle (24)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a Desert Eagle into your car gun locker.");
		weapon = 24;
		ammowp = PlayerInfo[playerid][pAmmo][1];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Shotgun (25)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a shotgun in your car gun locker.");
		weapon = 25;
		ammowp = PlayerInfo[playerid][pAmmo][2];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Combat Shotgun (27)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a combat shotgun in your car gun locker.");
		weapon = 27;
		ammowp = PlayerInfo[playerid][pAmmo][2];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "MP5 (29)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited an MP5 in your car gun locker.");
		weapon = 29;
		ammowp = PlayerInfo[playerid][pAmmo][3];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "UZI (28)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited an Uzi in your car gun locker.");
		weapon = 28;
		ammowp = PlayerInfo[playerid][pAmmo][3];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Tec9 (32)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited an Tec9 in your car gun locker.");
		weapon = 32;
		ammowp = PlayerInfo[playerid][pAmmo][3];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}

	else if(strcmp(weaponchoice, "AK47 (30)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited an AK-47 in your car gun locker.");
		weapon = 30;
		ammowp = PlayerInfo[playerid][pAmmo][4];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "M4 (31)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited an M4 in your car gun locker.");
		weapon = 31;
		ammowp = PlayerInfo[playerid][pAmmo][4];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Rifle (33)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a rifle in your car gun locker.");
		weapon = 33;
		ammowp = PlayerInfo[playerid][pAmmo][5];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Sniper Rifle (34)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a sniper rifle in your car gun locker.");
		weapon = 34;
		ammowp = PlayerInfo[playerid][pAmmo][5];
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "golfclub", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a golf club in your car gun locker.");
		weapon = 2;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Baseball Bat (5)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a baseball bat in your car gun locker.");
		weapon = 5;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Shovel (6)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a shovel in your car gun locker.");
		weapon = 6;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Pool Cue (7)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a pool cue in your car gun locker.");
		weapon = 7;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "Katana (8)", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a katana in your car gun locker.");
		weapon = 8;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "cane", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a cane in your car gun locker.");
		weapon = 15;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "flowers", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited flowers in your car gun locker.");
		weapon = 14;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "parachute", true, strlen(weaponchoice)) == 0)
	{
  		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a parachute in your car gun locker.");
		weapon = 46;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	else if(strcmp(weaponchoice, "dildo", true, strlen(weaponchoice)) == 0)
	{
		SendClientMessageEx(playerid, COLOR_LIGHTBLUE, "You have deposited a dildo in your car gun locker.");
		weapon = 11;
		ammowp = 1;
		format(string,sizeof(string), "* %s da cat mot thu gi do vao cop xe.", GetPlayerNameEx(playerid));
		ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		SetPVarInt(playerid, "GiveWeaponTimer", 3); SetTimerEx("OtherTimerEx", 1000, false, "ii", playerid, TYPE_GIVEWEAPONTIMER);
	}
	if(weapon == 0) return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co vu khi nao het.");
	new ddd = GetPVarInt(playerid,"CopXeID");
    AddItemCar(playerid, ddd, weapon, ammowp);
    RemovePlayerWeapon(playerid, weapon);
	g_mysql_SaveVehicle(playerid, ddd);
	return 1;
}

CMD:trunkput(playerid, params[])
{
    SendClientMessageEx(playerid, COLOR_WHITE, "Ban vui long su dung (/copxe).");
	return 1;
}
