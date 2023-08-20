#include <a_samp>
#include <YSI\y_hooks>


#define DIALOG_LUCSOAT              (9171)
#define DIALOG_KIEMTRA_COPXE        (9172)

new Text3D:veicolo_callsign_testo[MAX_VEHICLES];
new veicolo_callsign_status[MAX_VEHICLES];
new BeanbagID[MAX_VEHICLES];
new CheckInv[MAX_PLAYERS];

/*CMD:kiemtrahang(playerid, params[]) {
    if(IsACop(playerid)) {
        new playa;
        if(sscanf(params, "u", playa)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /kiemtrahang [Player]");
        if(IsPlayerConnected(playa)) {
            if(playa != INVALID_PLAYER_ID) {
                //--------------------------------------------------------------
                ShowXemHang(playa, playerid);
                //--------------------------------------------------------------
            }
		}
	}else SendClientMessageEx(playerid, -1, " Ban khong the su dung lenh nay..");
	return 1;
}*/

CMD:kiemtracopxe(playerid, params[])
{
    if(IsACop(playerid))
    {
        new vehicleid ,  iVehType, iVehIndex, iTargetOwner;
        if(sscanf(params, "d", vehicleid)) return SendClientMessageEx(playerid, -1, " /kiemtracopxe [vehicleid]");
        
        if(IsPlayerInAnyVehicle(playerid))
        {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay, ban dang trong xe.");
            return 1;
        }
        if(GetPVarInt(playerid, "IsInArena") >= 0)
        {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay bay gio, ban dang trong arena!");
            return 1;
        }
        if(GetPVarInt( playerid, "EventToken") != 0)
        {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay khi dang tham gia su kien.");
            return 1;
        }
        if(PlayerCuffedTime[playerid] > 0)
        {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay bay gio.");
            return 1;
        }
        if(GetPVarInt(playerid, "Injured") == 1)
        {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay bay gio.");
            return 1;
        }
        if(PlayerInfo[playerid][pJailTime] > 0)
        {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay trong tu.");
            return 1;
        }
        if(PlayerCuffed[playerid] >= 1) {
            SendClientMessageEx(playerid, -1, " Ban khong the lam dieu nay bay gio.");
            return 1;
        }

        if(!IsPlayerInRangeOfVehicle(playerid, vehicleid, 5)) return SendClientMessageEx(playerid, -1, " Ban khong dung gan chiec xe do.");
        foreach(new i: Player)
        {
            iVehIndex = GetPlayerVehicle(i, vehicleid);
            if(iVehIndex != -1)
            {
                iVehType = 1;
                iTargetOwner = i;
                break;
            }
        }
        if(iVehType == 1)
        {
            new name[1280];
            new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280];

            new info_wp1[1280], info_wp2[1280], info_wp3[1280], info_wp4[1280], info_wp5[1280], info_wp6[1280], info_wp7[1280], info_wp8[1280], info_wp9[1280], info_wp10[1280];
            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][0] > 0) 
            {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][0] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][0], WeaponName, sizeof(WeaponName));
                    format(info_wp1, sizeof(info_wp1), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][0]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][0] == 100) {
                        format(info_wp1, sizeof(info_wp1), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][0]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][0] == 101) {
                        format(info_wp1, sizeof(info_wp1), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][0]);
                    }
                }
            }else format(info_wp1, sizeof(info_wp1), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][1] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][1] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][1], WeaponName, sizeof(WeaponName));
                    format(info_wp2, sizeof(info_wp2), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][1]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][1] == 100) {
                        format(info_wp2, sizeof(info_wp2), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][1]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][1] == 101) {
                        format(info_wp2, sizeof(info_wp2), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][1]);
                    }
                }
            }else format(info_wp2, sizeof(info_wp2), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][2] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][2] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][2], WeaponName, sizeof(WeaponName));
                    format(info_wp3, sizeof(info_wp3), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][2]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][2] == 100) {
                        format(info_wp3, sizeof(info_wp3), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][2]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][2] == 101) {
                        format(info_wp3, sizeof(info_wp3), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][2]);
                    }
                }
            }else format(info_wp3, sizeof(info_wp3), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][3] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][3] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][3], WeaponName, sizeof(WeaponName));
                    format(info_wp4, sizeof(info_wp4), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][3]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][3] == 100) {
                        format(info_wp4, sizeof(info_wp4), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][3]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][3] == 101) {
                        format(info_wp4, sizeof(info_wp4), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][3]);
                    }
                }
            }else format(info_wp4, sizeof(info_wp4), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][4] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][4] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][4], WeaponName, sizeof(WeaponName));
                    format(info_wp5, sizeof(info_wp5), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][4]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][4] == 100) {
                        format(info_wp5, sizeof(info_wp5), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][4]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][4] == 101) {
                        format(info_wp5, sizeof(info_wp5), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][4]);
                    }
                }
            }else format(info_wp5, sizeof(info_wp5), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][5] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][5] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][5], WeaponName, sizeof(WeaponName));
                    format(info_wp6, sizeof(info_wp6), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][5]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][5] == 100) {
                        format(info_wp6, sizeof(info_wp6), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][5]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][5] == 101) {
                        format(info_wp6, sizeof(info_wp6), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][5]);
                    }
                }
            }else format(info_wp6, sizeof(info_wp6), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][6] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][6] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][6], WeaponName, sizeof(WeaponName));
                    format(info_wp7, sizeof(info_wp7), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][6]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][6] == 100) {
                        format(info_wp7, sizeof(info_wp7), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][6]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][6] == 101) {
                        format(info_wp7, sizeof(info_wp7), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][6]);
                    }
                }
            }else format(info_wp7, sizeof(info_wp7), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][7] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][7] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][7], WeaponName, sizeof(WeaponName));
                    format(info_wp8, sizeof(info_wp8), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][7]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][7] == 100) {
                        format(info_wp8, sizeof(info_wp8), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][7]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][7] == 101) {
                        format(info_wp8, sizeof(info_wp8), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][7]);
                    }
                }
            }else format(info_wp8, sizeof(info_wp8), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][8] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][8] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][8], WeaponName, sizeof(WeaponName));
                    format(info_wp9, sizeof(info_wp9), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][8]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][8] == 100) {
                        format(info_wp9, sizeof(info_wp9), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][8]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][8] == 101) {
                        format(info_wp9, sizeof(info_wp9), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][8]);
                    }
                }
            }else format(info_wp9, sizeof(info_wp9), "%s\t%d", "Null", 0);

            if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][9] > 0) {
                if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][9] < 100) {
                    new WeaponName[32];
                    GetWeaponName(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][9], WeaponName, sizeof(WeaponName));
                    format(info_wp10, sizeof(info_wp10), "%s\t%d", WeaponName, PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][9]);
                }else {
                    if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][9] == 100) {
                        format(info_wp10, sizeof(info_wp10), "%s\t%d", "Pot", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][9]);
                    }else if(PlayerVehicleInfo[iTargetOwner][iVehIndex][pvWeapons][9] == 101) {
                        format(info_wp10, sizeof(info_wp10), "%s\t%d", "Crack", PlayerVehicleInfo[iTargetOwner][iVehIndex][pvAmmo][9]);
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
            format(name, sizeof(name), "{ffffff}COP XE | KIEM TRA");
            ShowPlayerDialog(playerid, DIALOG_KIEMTRA_COPXE, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Su dung", "Huy Bo");
            return 1;
        }
        else {
            SendClientMessageEx(playerid, -1, " Phuong tien khong co chu so huu hop le.");
        }
    }
    else {
        SendClientMessageEx(playerid, -1, " Ban khong phai canh sat.");
    }
    return 1;
}

CMD:giayphep(playerid, params[]) {
    ShowGiayPhep(playerid, playerid);
    return 1;
}

CMD:capgiayphepvukhi(playerid, params[]) {
    if(IsACop(playerid)) {
        new string[1280], playa;
        if(sscanf(params, "u", playa)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /capgiayphepvukhi [Player]"); 
        if(IsPlayerConnected(playa)) {
            if(playa != INVALID_PLAYER_ID) {
                if(PlayerInfo[playa][pWRestricted] == 0) {
                    PlayerInfo[playa][pWRestricted] = 1;

                    format(string, sizeof(string), "Ban da cung cap giay phep su dung vu khi cho %s thanh cong.", GetPlayerNameEx(playa));
                    SendClientMessageEx(playerid, -1, string);

                    format(string, sizeof(string), "Ban da nhan duoc giay phep su dung vu khi tu dong chi %s thanh cong.", GetPlayerNameEx(playerid));
                    SendClientMessageEx(playa, -1, string);

                    format(string, sizeof(string), "{FF8000}* {C2A2DA}%s %s", GetPlayerNameEx(playerid), "da lay giay phep su dung vu khi va dua cho nguoi doi dien.");
                    ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);

                    format(string, sizeof(string), "da cung cap giay phep su dung vu khi cho %s thanh cong.", GetPlayerNameEx(playa));
                    cmd_r(playerid, string);
                    return 1;
                }else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi nay da co giay phep su dung vu khi truoc do roi.");
            }else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong hop le.");
        }else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong hop le.");
    }else SendClientMessage(playerid, -1, "Ban khong the su dung chuc nang nay.");
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
    if(PRESSED(KEY_YES)){
        if(ActorPos(playerid, ActorJob[23])) {
            ShowPlayerDialog(playerid, DIALOG_LICENSE_BUY, DIALOG_STYLE_LIST, "Chon loai giay phep ban muon mua.", "Giay phep lai xe ($5,000)\r\nGiay phep lai thuyen ($20,000)\r\nGiay phep lai may bay ($20,000)\r\nGiay phep lai taxi ($50,000)\r\nChung minh nhan dan(CCCD) ($5,000).", "Mua", "Huy bo");
        }
    }
    return 1;
}

stock LucSoat(playerid, giveplayerid) {
    SetPVarInt(playerid, "IDLucSoat", giveplayerid);
    new string[1280];
    new myweapons[13][2], weaponname[50];
    CheckInv[playerid] = 0;
    for (new i = 0; i < 13; i++)
    {
        GetPlayerWeaponData(giveplayerid, i, myweapons[i][0], myweapons[i][1]);
        if(myweapons[i][0] > 0)
        {
            if(PlayerInfo[giveplayerid][pGuns][i] == myweapons[i][0])
            {
                GetWeaponName(myweapons[i][0], weaponname, sizeof(weaponname));
                format(string, sizeof(string), "%s\n{0099cc}>{FFFFFF} %s (%d)", string, weaponname, myweapons[i][0]);
                CheckInv[playerid] += 1;
            }
        }
    }
    new main_put[15000];
    new str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
    format(str1, sizeof(main_put), "{ff3300}>{FFFFFF} Pot : %s", number_format(PlayerInfo[giveplayerid][pPot]));
    format(str2, sizeof(main_put), "{ff3300}>{FFFFFF} Crack : %s", number_format(PlayerInfo[giveplayerid][pCrack]));
    format(str3, sizeof(main_put), "{ff3300}>{FFFFFF} Hat can sa : %s", number_format(PlayerInfo[giveplayerid][pCrack]));
    format(str4, sizeof(main_put), "{ff3300}>{FFFFFF} Vat lieu : %s", number_format(PlayerInfo[giveplayerid][pMats]));
    format(str5, sizeof(main_put), "{ff3300}>{FFFFFF} Heroin : %s", number_format(PlayerInfo[giveplayerid][pHeroin]));
    format(str6, sizeof(main_put), "{00ffff}>{FFFFFF} Wanted : %s*", number_format(PlayerInfo[giveplayerid][pWantedLevel]));
    format(main_put, sizeof(main_put), "%s\n%s\n%s\n%s\n%s\n%s\n%s", string, str1,str2,str3,str4,str5,str6);

    format(name, sizeof(name), "LUC SOAT | %s", GetPlayerNameEx(giveplayerid));
    ShowPlayerDialog(playerid, DIALOG_LUCSOAT, DIALOG_STYLE_LIST, name, main_put, "Tiep tuc", "Huy Bo");
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == DIALOG_LUCSOAT) {
        if(response == 1) {
            if(CheckInv[playerid] == 0) {
                if(listitem == 0) { // POT
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s pot", number_format(PlayerInfo[giveplayerid][pPot]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == 1) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s crack", number_format(PlayerInfo[giveplayerid][pCrack]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == 2) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s hat can sa", number_format(PlayerInfo[giveplayerid][pCrack]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == 3) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s vat lieu", number_format(PlayerInfo[giveplayerid][pMats]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == 4) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s heroin", number_format(PlayerInfo[giveplayerid][pHeroin]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
            }else {
                if(listitem <  CheckInv[playerid]) {
                    new text[1280];
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    for(new i = 0; i < CheckInv[playerid]; i++) {
                        if(listitem == i) {
                            format(text, sizeof(text), "da tim thay vu khi %s", inputtext);
                            cmd_do(playerid, text);
                            LucSoat(playerid, giveplayerid);         
                            return 1;
                        }
                    }
                }
                if(listitem == CheckInv[playerid]) { // POT
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s pot", number_format(PlayerInfo[giveplayerid][pPot]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == CheckInv[playerid] + 1) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s crack", number_format(PlayerInfo[giveplayerid][pCrack]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == CheckInv[playerid] + 2) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s hat can sa", number_format(PlayerInfo[giveplayerid][pCrack]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == CheckInv[playerid] + 3) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s vat lieu", number_format(PlayerInfo[giveplayerid][pMats]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                }
                if(listitem == CheckInv[playerid] + 4) {
                    new giveplayerid = GetPVarInt(playerid, "IDLucSoat");
                    new text[1280];
                    format(text, sizeof(text), "da tim thay %s heroin", number_format(PlayerInfo[giveplayerid][pHeroin]));
                    cmd_do(playerid, text);
                    LucSoat(playerid, giveplayerid);
                    return 1;
                } 
            }      
        }
    }
    return 1;
}

stock ShowGiayPhep(playerid, giveplayerid) {

    new sext[20];
    if(PlayerInfo[playerid][pSex] == 1) { 
        sext = "Nam"; 
    } else { 
        sext = "Nu"; 
    }
                
    new text1[20], text2[20];
    if(PlayerInfo[playerid][pCarLic]) { text1 = "Da so huu"; } else { text1 = "Chua co bang lai"; }
    if(PlayerInfo[playerid][pWRestricted]) { text2 = "Da so huu"; } else { text2 = "Chua co"; }

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], name[1280];
    format(str1, sizeof(str), "{ff9900}* * * * * * * *{FFFFFF}");
    format(str2, sizeof(str), "{f2f2f2}- Ten: %s", GetPlayerNameEx(playerid));
    format(str3, sizeof(str), "{f2f2f2}- Quoc tich: Los Santos");
    format(str4, sizeof(str), "{f2f2f2}- Gioi tinh: %s", sext);
    format(str5, sizeof(str), "{f2f2f2}- CMND: {00ff00}%d{FFFFFF}", PlayerInfo[playerid][pCMND]);
    format(str6, sizeof(str), "{f2f2f2}- Bang lai xe: %s", text1);
    format(str7, sizeof(str), "{f2f2f2}- Giay phep vu khi: %s", text2);
    format(str8, sizeof(str), "{ff9900}* * * * * * * *{FFFFFF}");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7, str8);
    format(name, sizeof(name), "{ffffff}GIAY PHEP");
    ShowPlayerDialog(giveplayerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, name, str, "Dong y", "");

    if(giveplayerid != playerid) {
        new string[1280];
        format(string, sizeof(string), "Ban da dua giay phep cua minh cho %s xem.", GetPlayerNameEx(giveplayerid));
        SendClientMessage(playerid, -1, string);

        format(string, sizeof(string), "{FF8000}* {C2A2DA}%s %s", GetPlayerNameEx(playerid), "da lay giay phep trong nguoi ra va dua cho nguoi doi dien");
        ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);
    }
    return 1;
}

CMD:beanbag(playerid, params[]) {
    new string[128];
    format(string,sizeof(string), "%d, %s", GetPlayerState(playerid), GetPlayerState(playerid));
    SendClientMessage(playerid,COLOR_WHITE,string);

    if(IsACop(playerid)) {
        if(BeanbagID[playerid] == 0) {
            SendClientMessage(playerid, -1, "Ban da bat chuc nang BeanBag thanh cong.");
            BeanbagID[playerid] = 1;
        }else {
            BeanbagID[playerid] = 0;
            SendClientMessage(playerid, -1, "Ban da tat chuc nang BeanBag thanh cong.");
        }
    }else SendClientMessage(playerid, -1, "Ban khong the su dung chuc nang nay.");
    return 1;
}

CMD:handcuff1(playerid, params[])
{
    if(IsACop(playerid))
    {
        if(!FixLoi(playerid))return 1;
        if(PlayerInfo[playerid][pHasCuff] < 1)
        {
            SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong co chiec cong tay nao.");
            return 1;
        }
        new string[128], giveplayerid;
        if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "SU DUNG:{FFFFFF} /handcuff1 [playerid]");
        if(IsPlayerConnected(giveplayerid))
        {
            if (ProxDetectorS(8.0, playerid, giveplayerid))
            {
                if(giveplayerid == playerid) return 1;
                if(HandCuff[giveplayerid] == 2) return SendClientMessageEx(playerid, -1, "Nguoi choi nay da bi cong tay");
                if(IsPlayerInAnyVehicle(giveplayerid) == 1) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong the cong khi nguoi choi dang o tren xe.");
                new Float:HP;
                GetPlayerHealth(playerid, HP);
                if(HP >= 1)
                {
                    format(string, sizeof(string), "[CONG TAY] {FFFFFF}Ban da cong tay %s, hay su dung '{FF6347}/unhandcuff{FFFFFF}' de thao cong.", GetPlayerNameEx(giveplayerid));
                    SendClientMessageEx(playerid, COLOR_LIGHTRED, string);
                    format(string, sizeof(string), "* %s da keo hai tay %s ve sau siet chat va cong lai.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));   
                    SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 10.0, 4000);
                    GameTextForPlayer(giveplayerid, "~r~Hand Cuff", 2500, 3);
                    ClearAnimations(giveplayerid);
                    SetPlayerSpecialAction(giveplayerid, SPECIAL_ACTION_CUFFED);
                    SetPlayerAttachedObject(giveplayerid, 7, 19418, 6, -0.011, 0.028, -0.022, -15.600012, -33.699977, -81.700035, 1.0, 1.0, 1.0);
                    HandCuff[giveplayerid] = 2;
                    PlayerCuffed[giveplayerid] = 2;
					SetPVarInt(giveplayerid, "PlayerCuffed", 2);
					PlayerCuffedTime[giveplayerid] = 300;
                    DeletePVar(giveplayerid, "IsFrozen");
                    ApplyAnimation(giveplayerid, "ped", "FLOOR_hit_f", 4.0, 0, 1, 1, 1, 0, 1);
                }
            }
            else return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong dung gan nguoi choi.");
        }
    }
    return 1;
}

CMD:keoday(playerid, params[])
{
    if(IsACop(playerid))
    {
        if(!FixLoi(playerid))return 1;

        new giveplayerid;
        if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "SU DUNG:{FFFFFF} /keoday [playerid]");
        if(IsPlayerConnected(giveplayerid))
        {
            if (ProxDetectorS(8.0, playerid, giveplayerid))
            {
                if(giveplayerid == playerid) return 1;
                if(IsPlayerInAnyVehicle(giveplayerid) == 1) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong the keo day khi nguoi choi dang o tren xe.");
                new Float:HP;
                GetPlayerHealth(playerid, HP);
                if(HP >= 1)
                {
                    ClearAnimations(giveplayerid);
                    DeletePVar(giveplayerid, "IsFrozen");
                    TogglePlayerControllable(giveplayerid, 1);
                }
            }
            else return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong dung gan nguoi choi.");
        }
    }
    return 1;
}

CMD:handcuff2(playerid, params[])
{
    if(IsACop(playerid))
    {
        if(!FixLoi(playerid))return 1;
        if(PlayerInfo[playerid][pHasCuff] < 1)
        {
            SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong co chiec cong tay nao.");
            return 1;
        }

        new string[128], giveplayerid;
        if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "SU DUNG:{FFFFFF} /handcuff2 [Player]");
        if(IsPlayerConnected(giveplayerid))
        {
            if (ProxDetectorS(8.0, playerid, giveplayerid))
            {
                if(giveplayerid == playerid) return 1;
                if(HandCuff[giveplayerid] == 2) return SendClientMessageEx(playerid, -1, "Nguoi choi nay da bi cong tay");
                if(IsPlayerInAnyVehicle(giveplayerid) == 1) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong the cong khi nguoi choi dang o tren xe.");
                new Float:HP;
                GetPlayerHealth(playerid, HP);
                if(HP >= 1)
                {
                    format(string, sizeof(string), "[CONG TAY] {FFFFFF}Ban da cong tay %s, hay su dung '{FF6347}/unhandcuff{FFFFFF}' de thao cong.", GetPlayerNameEx(giveplayerid));
                    SendClientMessageEx(playerid, COLOR_LIGHTRED, string);
                    
                    format(string, sizeof(string), "* %s da keo hai tay %s ve sau siet chat va cong lai.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
                    SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 10.0, 4000);
                    GameTextForPlayer(giveplayerid, "~r~Hand Cuff", 2500, 3);
                    ClearAnimations(giveplayerid);
                    PlayerCuffed[giveplayerid] = 2;
					SetPVarInt(giveplayerid, "PlayerCuffed", 2);
					PlayerCuffedTime[giveplayerid] = 300;
                    SetPlayerSpecialAction(giveplayerid, SPECIAL_ACTION_CUFFED);
                    SetPlayerAttachedObject(giveplayerid, 7, 19418, 6, -0.011, 0.028, -0.022, -15.600012, -33.699977, -81.700035, 1.0, 1.0, 1.0);
                    HandCuff[giveplayerid] = 2;
                    DeletePVar(giveplayerid, "IsFrozen");
                    ApplyAnimation(giveplayerid, "ped", "FLOOR_hit_f", 4.0, 0, 1, 1, 1, 0, 1);
                }
            }
            else return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong dung gan nguoi choi.");
        }
    }
    return 1;
}

CMD:unhandcuff(playerid, params[])
{
    if(IsACop(playerid))
    {
        new string[128], giveplayerid;
        if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "SU DUNG:{FFFFFF} /unhandcuff [Player]");

        if(IsPlayerConnected(giveplayerid))
        {
            if (ProxDetectorS(8.0, playerid, giveplayerid))
            {
                if(giveplayerid == playerid) return 1;
                if(IsPlayerInAnyVehicle(giveplayerid) == 1) return SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong the thao cong khi nguoi choi dang o tren xe.");
                if(HandCuff[giveplayerid] > 1)
                {
                    format(string, sizeof(string), "[THAO CONG] {FFFFFF} Ban da duoc thao cong tay boi Officer %s.", GetPlayerNameEx(playerid));
                    SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);
                    format(string, sizeof(string), "[THAO CONG] {FFFFFF} Ban da thao cong tay doi tuong %s.", GetPlayerNameEx(giveplayerid));
                    SendClientMessageEx(playerid, COLOR_LIGHTRED, string);
                    format(string, sizeof(string), "{FF8000}*{C2A2DA} %s da mo khoa va thao cong tay cho %s.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
                    ProxDetector(10.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                    GameTextForPlayer(giveplayerid, "~g~Thao cong", 2500, 3);
                    RemovePlayerAttachedObject(giveplayerid, 7);
                    SetPlayerSpecialAction(giveplayerid, SPECIAL_ACTION_NONE);
                    ClearAnimations(giveplayerid);
                    HandCuff[giveplayerid] = 0;
                    PlayerCuffed[giveplayerid] = 0;
                    PlayerCuffedTime[giveplayerid] = 0;
                    /*SetPlayerHealth(giveplayerid, GetPVarFloat(giveplayerid, "cuffhealth"));
                    SetPlayerArmor(giveplayerid, GetPVarFloat(giveplayerid, "cuffarmor"));
                    DeletePVar(giveplayerid, "cuffhealth");
					DeletePVar(giveplayerid, "PlayerCuffed");*/
                }
            }
            else
            {
                SendClientMessageEx(playerid, COLOR_LIGHTRED, "[ ! ]{FFFFFF} Ban khong dung gan nguoi choi.");
                return 1;
            }
        }
    }
    return 1;
}
stock FixLoi(playerid)
{
    if(HandCuff[playerid] != 0 || GetPVarInt(playerid, "Injured") == 1 || GetPVarInt(playerid, "IsFrozen") == 1 )
    {
        //SendClientMessage(playerid, COLOR_GRAD2, " Ban khong the lam vao thoi diem nay.");
        return 0;
    }
    return 1;
}

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart) {
    if(BeanbagID[playerid] == 1 && weaponid == 29 && IsACop(playerid)) {
        new iGroupID = PlayerInfo[playerid][pMember];
        if(GetPlayerState(damagedid) == PLAYER_STATE_DRIVER) { // NGUOI CHOI DANG O TREN PHUONG TIEN

            RemovePlayerFromVehicle(damagedid);
            ClearAnimations(damagedid), 
            ApplyAnimation(damagedid, "PED", "BIKE_fallR", 4.0, 0, 1, 1, 1, 0, 1);

            BeanbagID[playerid] = 0;

            new string[128];
            format(string,sizeof(string), "[%s] Ban da bi %s ban trung %s va ban da bi te ra khoi phuong tien.", arrGroupData[iGroupID][g_szGroupName], GetPlayerNameEx(playerid), GetBodypartName(bodypart));
            SendClientMessage(damagedid, arrGroupData[iGroupID][g_hRadioColour] * 256 + 255, string);

            format(string,sizeof(string), "[%s] Ban da ban trung %s va nan nhan da bi te ra khoi phuong tien thanh cong.", arrGroupData[iGroupID][g_szGroupName], GetPlayerNameEx(damagedid));
            SendClientMessage(playerid, arrGroupData[iGroupID][g_hRadioColour] * 256 + 255, string);
            return 1;
        }
    }
    return 1;
}

hook OnPlayerDeath(playerid, killerid, reason) {
    new veh = GetPlayerVehicleID(playerid);
    Delete3DTextLabel(veicolo_callsign_testo[veh]);
    veicolo_callsign_status[veh] = 0;
    return 1;
}

hook OnVehicleDeath(vehicleid) { 
    new veh = GetPlayerVehicleID(vehicleid);
    Delete3DTextLabel(veicolo_callsign_testo[veh]);
    veicolo_callsign_status[veh] = 0;
    return 1;
}

CMD:makiemsoat(playerid,params[])
{

    new
    veh = GetPlayerVehicleID(playerid);
    if (0 <= PlayerInfo[playerid][pMember] < MAX_GROUPS)
    {
    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
    {
    if(isnull(params)) return SendClientMessage(playerid,COLOR_WHITE,"Su dung: /makiemsoat [noidung]");
    if(!veicolo_callsign_status[veh])
    {

    new string[128];
    format(string,sizeof(string), "%s",params);
    veicolo_callsign_testo[veh] = Create3DTextLabel(string, 0xFFFFFFFF, 0.0, 0.0, 0.0, 50.0, 0, 1);
    format(string, sizeof(string), " %s da su dung ma kiem soat: %s ", GetPlayerNameEx(playerid), string);
    foreach(new i: Player)
    {
    new iRank = PlayerInfo[playerid][pRank];
    if(PlayerInfo[i][pMember] == PlayerInfo[playerid][pMember] && iRank >= arrGroupData[PlayerInfo[playerid][pMember]][g_iRadioAccess]) {
    SendClientMessageEx(i, arrGroupData[PlayerInfo[playerid][pMember]][g_hRadioColour] * 256 + 255, string);
    }
    if(GetPVarInt(i, "BigEar") == 4 && GetPVarInt(i, "BigEarGroup") == PlayerInfo[playerid][pMember]) {
    new szBigEar[128];
    format(szBigEar, sizeof(szBigEar), "(BE) %s", string);
    SendClientMessageEx(i, arrGroupData[PlayerInfo[playerid][pMember]][g_hRadioColour] * 256 + 255, szBigEar);
    }
    }
    Attach3DTextLabelToVehicle( veicolo_callsign_testo[veh], veh, -0.7, -1.9, -0.3);
    veicolo_callsign_status[veh] = 1;
    }
    else
    {
    Delete3DTextLabel(veicolo_callsign_testo[veh]);
    veicolo_callsign_status[veh] = 0;
    return 1;
    }
    }
    else return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong o tren xe de su dung lenh nay");
    }
    else return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong the su dung lenh nay");
    return 1;
}
CMD:xoamakiemsoat(playerid,params[])
{
    new veh = GetPlayerVehicleID(playerid);
    if (0 <= PlayerInfo[playerid][pMember] < MAX_GROUPS)
	{
    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
    {
        if(veicolo_callsign_status[veh])
		{
        new string[128];
        format(string, sizeof(string), " %s Da xoa ma kiem soat ", GetPlayerNameEx(playerid));
        foreach(new i: Player)
					{
                            new iRank = PlayerInfo[playerid][pRank];
							if(PlayerInfo[i][pMember] == PlayerInfo[playerid][pMember] && iRank >= arrGroupData[PlayerInfo[playerid][pMember]][g_iRadioAccess]) {
								SendClientMessageEx(i, arrGroupData[PlayerInfo[playerid][pMember]][g_hRadioColour] * 256 + 255, string);
							}
							if(GetPVarInt(i, "BigEar") == 4 && GetPVarInt(i, "BigEarGroup") == PlayerInfo[playerid][pMember]) {
								new szBigEar[128];
								format(szBigEar, sizeof(szBigEar), "(BE) %s", string);
								SendClientMessageEx(i, arrGroupData[PlayerInfo[playerid][pMember]][g_hRadioColour] * 256 + 255, szBigEar);
							}
					}
        Delete3DTextLabel(veicolo_callsign_testo[veh]);
        veicolo_callsign_status[veh] = 0;
        }
        else return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong su dung ma kiem soat nao");
    }
    else return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong co o tren xe");
    }
    else return SendClientMessageEx(playerid,COLOR_GREY,"Ban khong the su dung lenh nay");
    return 1;
}

CMD:md(playerid, params[])
{
    cmd_me(playerid, "rut khau sung ra va len dan - Chuan bi fire");
    cmd_do(playerid, "Click...Click");
    return 1;
}

CMD:t(playerid, params[])
{
    cmd_me(playerid, "Noi");
    new szMessage[128];

    // Taxi Company Xin Chào Quý Khách m?i Quý KHách lên xe tôi s? ch? di m?i n?o du?ng
    format(szMessage, sizeof(szMessage), "(%s) Taxi Company xin chao quy khach , moi quy khach len xe to se cho di moi neo duong!", GetPlayerNameEx(playerid));
    ProxDetector(30.0, playerid, szMessage, -1, -1, -1, -1, -1,1);
    return 1;
}
CMD:bs(playerid, params[])
{
    cmd_me(playerid, "rut khau sung ra va len dan - Chuan bi fire");
    cmd_do(playerid, "Click...Click");
    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.1, 1, 0, 0, 1, 0, 1);
    return 1;
}

CMD:1(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Yeu cau day la %s Yeu cau Stop Car Now", arrGroupData[PlayerInfo[playerid][pMember]][g_szGroupName], GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:2(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: %s yeu cau Nguoi ngoi trong xe Buoc Xuong Xe ((/fallover 3)) Now ", arrGroupData[PlayerInfo[playerid][pMember]][g_szGroupName], GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:3(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Yeu cau Dung im Gio hai tay len dau neu khong chung toi se no sung Now", GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:4(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Yeu ca bo vu khi xuong va dau hang anh co 5 giay de lam viec do ", GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:5(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Nguoi khong Phan Su Khong ra khoi Khu vuc Canh sat Dang Lam Viec neu khong se no Sung Now ", GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:6(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Yeu cau nguoi Khong Phan su khong duoc di theo chung toi neu khong nghe Se no Sung", GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:7(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Yeu cau tranh duong , day la truong hop khan cap", GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

CMD:8(playerid, params[])
{
    if(IsACop(playerid) || IsAMedic(playerid) || IsAHitman(playerid) || IsAGovernment(playerid))
    {
        new
            szMessage[128];

        format(szMessage, sizeof(szMessage), "(megaphone) %s: Moi nguoi dan khong lien quan yeu cau tranh ra de chung toi cuu nguoi", GetPlayerNameEx(playerid));
        ProxDetector(60.0, playerid, szMessage, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW, COLOR_YELLOW,1);
    }
    else SendClientMessageEx(playerid, COLOR_GRAD2, "You do not have authority to use the megaphone.");
    return 1;
}

task UpdateRsKBX[600000]() {
	for(new i = 0; i < MAX_VEHICLES; i++) {
        if(CarLock[i] == true) {
            CarLock[i] = false;
		}
	}
}

CMD:khoabanhxe(playerid, params[]) {
    return cmd_mocuaxe(playerid, "");
}
CMD:mocuaxe(playerid, params[]) {
    if(IsACop(playerid))
    {
        new i = checkxe(playerid, 3.5);
        if(i != -1) {
            new
                engine,
                lights,
                alarm,
                doors,
                bonnet,
                boot,
                objective;

            GetVehicleParamsEx(i, engine, lights, alarm, doors, bonnet, boot, objective);
            if(CarLock[i] == true) {
                SetVehicleParamsEx(i, engine, lights, alarm, VEHICLE_PARAMS_OFF, bonnet, boot, objective);
                SendClientMessage(playerid, -1,"[{66ff66}PHUONG TIEN{ffffff}] Xe da duoc mo!");
                CarLock[i] = false;
            }
            else {
                cmd_me(playerid, "cuoi nguoi xuong khoa banh xe");
                SetVehicleParamsEx(i, engine, lights, alarm, VEHICLE_PARAMS_ON, bonnet, boot, objective);
                SetVehicleEngine(i, playerid);
                SendClientMessage(playerid, -1,"[{66ff66}PHUONG TIEN{ffffff}] Xe da duoc khoa!");
                CarLock[i] = true;
            }
        }
        else SendClientMessage(playerid, -1, "Ban khong dung gan xe nao!");
    }else SendClientMessage(playerid, -1, "Ban can phai la nhan vien canh sat moi co the su dung lenh nay");
    return 1;
}

checkxe(playerid, Float:range) {
    new iVeh = 0, Float:X,Float:Y,Float:Z , value = -1;
    for(iVeh = 0 ; iVeh < MAX_VEHICLES ; iVeh ++) {
        GetVehiclePos(iVeh, X,Y,Z);
        if(IsPlayerInRangeOfPoint(playerid, range, X,Y,Z)) {
            printf("debug check %d", iVeh);
            value = iVeh;
            break;
        }
    }
    return value;
}

CMD:toggroup(playerid, params[])
{
    if(GetPVarInt(playerid, "togGroup") == 0)
    {
        SendClientMessageEx(playerid, COLOR_GRAD2, "Group cua ban hien dang tat.");
        SetPVarInt(playerid, "togGroup", 1);
    }
    else {
        SendClientMessageEx(playerid, COLOR_GRAD2, "Ban da bat Group.");
        SetPVarInt(playerid, "togGroup", 0);
    } return 1;
}

CMD:group(playerid, params[])
{
    return cmd_g(playerid, params);
}

CMD:g(playerid, params[]) {

    new
        iGroupID = PlayerInfo[playerid][pMember],
        iRank = PlayerInfo[playerid][pRank];

    if (0 <= iGroupID < MAX_GROUPS) {
        if (iRank >= arrGroupData[iGroupID][g_iRadioAccess]) {
            if(GetPVarInt(playerid, "togGroup") == 0) {
                if(!isnull(params))
                {
                    new string[128], employer[GROUP_MAX_NAME_LEN], rank[GROUP_MAX_RANK_LEN], division[GROUP_MAX_DIV_LEN];
                    //format(string, sizeof(string), "(radio) %s", params);
                    //SetPlayerChatBubble(playerid, string, COLOR_WHITE, 15.0, 5000);
                    GetPlayerGroupInfo(playerid, rank, division, employer);
                    if(arrGroupData[iGroupID][g_iGroupType] == 1) {
                    	format(string, sizeof(string), "{ffff99}(( %s (%s) %s: %s ))", rank, division, GetPlayerNameEx(playerid), params);
                    }else format(string, sizeof(string), "(( %s (%s) %s: %s ))", rank, division, GetPlayerNameEx(playerid), params);
                    foreach(new i: Player)
                    {
                        if(GetPVarInt(i, "togGroup") == 0)
                        {
                            if(PlayerInfo[i][pMember] == iGroupID && iRank >= arrGroupData[iGroupID][g_iRadioAccess]) {
                                SendClientMessageEx(i, arrGroupData[iGroupID][g_hRadioColour] * 256 + 255, string);
                            }
                            if(GetPVarInt(i, "BigEar") == 4 && GetPVarInt(i, "BigEarGroup") == iGroupID) {
                                new szBigEar[128];
                                format(szBigEar, sizeof(szBigEar), "(BE) %s", string);
                                SendClientMessageEx(i, arrGroupData[iGroupID][g_hRadioColour] * 256 + 255, szBigEar);
                            }
                        }
                    }
                }
                else return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: (/g)roup [group chat]");
            }
            else return SendClientMessageEx(playerid, COLOR_GREY, "Kenh group cua ban hien dang tatt, su dung /toggroup de lien lac tro lai.");
        }
        else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong co quyen truy cap tan so group nay.");
    }
    else return SendClientMessageEx(playerid, COLOR_GREY, "Ban khong o trong nhom.");
    return 1;
}
