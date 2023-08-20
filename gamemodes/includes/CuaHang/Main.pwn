#include <a_samp>
#include <YSI\y_hooks>


#define                 DIALOG_MAIN_SHOPCRE                     (9333)
#define                 DIALOG_SHOP_VEHICLE                     (9334)
#define                 DIALOG_SHOP_VIP                         (9335)
#define                 DIALOG_SHOP_TOYS                        (9336)
#define                 DIALOG_VATPHAM_HOTRO                    (9337)

enum SHOP_CAR_DATA {
    CAR_MODEL_ID,
    CAR_NAME[35],
    CAR_PRICE
};

new const SHOP_CAR[][SHOP_CAR_DATA] = {
    {411, "Infernus", 30000},
    {413, "Pony", 4000},
    {424, "BF Injection", 5000},
    {434, "Hotknife", 6000},
    {451, "Turismo", 12000},
    {471, "Quad", 6000},
    {470, "Patriot", 20000},
    {487, "Rancher", 6000},
    {587, "Euros", 6000},
    {412, "Voodoo", 4000},
    {429, "Hermes", 5000},
    {490, "Hotknife", 20000},
    {494, "Hotring Race", 28000},
    {502, "PHotring Race A", 28000},
    {503, "Hotring Race A", 28000},
    {495, "SandKing", 8000},
    {500, "Mesa", 6000},
    {477, "ZR-350", 8000},
    {506, "Super GT", 10000},
    {507, "Elegant", 6000},
    {545, "Hustler", 8000},
    {437, "Coach", 8000},
    {535, "Slamvan", 6000},
    {539, "Vortex", 6000},
    {541, "Bullet", 12000},
    {560, "Sultan", 20000},
    {571, "Kart", 6000},
    {579, "Huntley", 6000},
    {468, "Sanchez", 8000},
    {461, "PCJ-600", 1000},
    {522, "NRG-500", 25000},
    {510, "Mountain Bike", 8000},
    {586, "Wayfarer", 10000},
    {452, "Speeder", 15000},
    {446, "Squalo", 12000},
    {454, "Tropic", 18000},
    {417, "Leviathan", 30000},
    {469, "Sparrow", 40000},
    {487, "Mave Rick", 25000},
    {513, "Stuntplane", 25000},
    {519, "Shamal", 20000},
    {596, "Police Car (LSPD)", 9999999}
};

enum SHOP_TOYS_DATA {
    TOYS_MODEL_ID,
    TOYS_PRICE
};

CMD:shopcre(playerid, params[]) {
    ShowPlayerDialog(playerid, DIALOG_MAIN_SHOPCRE, DIALOG_STYLE_LIST, "CUA HANG", "{cc3300}>{FFFFFF} Phuong tien\n{ffff00}>{FFFFFF} VIP\n{00ffff}>{FFFFFF} Do choi (Toys) (Het Hang)\n{ff9933}>{FFFFFF} Vat pham\n{ff6600}>{FFFFFF} Vat pham ho tro", "Dong y", "Huy bo");
    return 1;
}

CMD:shopcar(playerid, params[]) {
	ShopCarMobile(playerid);
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == DIALOG_MAIN_SHOPCRE && response == 1) {
        if(listitem == 0) {
            ShopCarMobile(playerid);
        }
        if(listitem == 1) {
            ShopVip(playerid);
        }
        if(listitem == 2) {
            //ShowModelSelectionMenu(playerid, ToyList2, "Toy Shop");
            SendClientMessageEx(playerid, COLOR_WHITE, "Hien tai da het hang.");
        }

        if(listitem == 3) {
            new szDialog[512];
            format(szDialog, sizeof(szDialog), "Ban Poker (Credits: {FFD700}%s{A9C4E4})\nBoombox (Credits: {FFD700}%s{A9C4E4})\n100 Paintball Tokens (Credits: {FFD700}%s{A9C4E4})\nEXP Token (Credits: {FFD700}%s{A9C4E4})\nFireworks x5 (Credits: {FFD700}%s{A9C4E4})\nBien so xe (Credits: {FFD700}%s{A9C4E4})" \
            "\nHunger Games Voucher (Credits: {FFD700}%s{A9C4E4})",
            number_format(ShopItems[6][sItemPrice]), number_format(ShopItems[7][sItemPrice]), number_format(ShopItems[8][sItemPrice]), number_format(ShopItems[9][sItemPrice]),
            number_format(ShopItems[10][sItemPrice]), number_format(ShopItems[22][sItemPrice]), number_format(ShopItems[29][sItemPrice]));
            ShowPlayerDialog(playerid, DIALOG_MISCSHOP, DIALOG_STYLE_LIST, "Misc Shop", szDialog, "Lua chon", "Huy bo");
        }
        
        if(listitem == 4) {
            ShowPlayerDialog(playerid, DIALOG_VATPHAM_HOTRO, DIALOG_STYLE_LIST, "Vat pham ho tro", "Rimkits (50,000,000$ / 1 don vi)\nThe reset Wanted (1,000Cre)", "Lua chon", "Huy bo");
        }
    }
    
    if(dialogid == DIALOG_VATPHAM_HOTRO && response == 1) {
        if(listitem == 0) {
            if(PlayerInfo[playerid][pCash] > 50000000) {
                /*PlayerInfo[playerid][pCash] -= 50000000;
                PlayerInfo[playerid][pRimMod] += 1;*/
                //SendClientMessageEx(playerid, COLOR_WHITE, "Ban da mua thanh cong +1Rimkits (/userimkits).");
                SendClientMessageEx(playerid, COLOR_WHITE, "Hien tai da het hang.");
			}else SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong du tien de mua vat pham ho tro nay.");
        }
        if(listitem == 1) {
            if(PlayerInfo[playerid][pnDP] > 1000) {
	            PlayerInfo[playerid][pnDP] -= 1000;
                SendClientMessageEx(playerid, COLOR_WHITE, "Ban da reset toan bo wanted thanh cong.");
                PlayerInfo[playerid][pWantedLevel] = 0;
                PlayerTextDrawHide(playerid, WantedPlayer[playerid][0]);
            }else SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong du Cre de mua vat pham ho tro nay.");
        }
	}

    if(dialogid == DIALOG_SHOP_VEHICLE && response == 1) {
        for (new i; i < sizeof(SHOP_CAR); i++) {
            if(listitem == i) {
                if(PlayerInfo[playerid][pnDP] >= SHOP_CAR[i][CAR_PRICE]) {
                    PlayerInfo[playerid][pnDP] -= SHOP_CAR[i][CAR_PRICE];

                    new Float: arr_fPlayerPos[4], szMessage[1280];

                    GetPlayerPos(playerid, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2]);
                    GetPlayerFacingAngle(playerid, arr_fPlayerPos[3]);
                    CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), SHOP_CAR[i][CAR_MODEL_ID], arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], 211, 211, 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
                    
                    format(szMessage, sizeof(szMessage), "Ban da mua thanh cong %s tu cua hang thanh cong.", SHOP_CAR[i][CAR_NAME]);
                    SendClientMessageEx(playerid, COLOR_WHITE, szMessage);

                    format(szMessage, sizeof(szMessage), "%s buy car %s (%i) gia %s.", GetPlayerNameEx(playerid), SHOP_CAR[i][CAR_NAME], SHOP_CAR[i][CAR_MODEL_ID], number_format(SHOP_CAR[i][CAR_PRICE]));
                    Log("logs/buycarshop.log", szMessage);
                    // -------------------------- //
                }else {
                    new string[1280];
                    format(string, sizeof string, "{cc3300}> SHOP VEHICLE <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(SHOP_CAR[i][CAR_PRICE] - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }
        }
    }

    if(dialogid == DIALOG_SHOP_VIP && response == 1) {
        if(listitem == 0) {
            /*if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pnDP] >= 2500) {
                    PlayerInfo[playerid][pnDP] -= 2500;
                    
                    PlayerInfo[playerid][pDonateRank] = 2;
                    PlayerInfo[playerid][pTempVIP] = 0;
                    PlayerInfo[playerid][pBuddyInvited] = 0;
                    PlayerInfo[playerid][pVIPExpire] = gettime()+259200*1;
                    if(PlayerInfo[playerid][pVIPM] == 0)
                    {
                        PlayerInfo[playerid][pVIPM] = VIPM;
                        VIPM++;
                    }
                    LoadPlayerDisabledVehicles(playerid);
                    new playerip[32];
                    GetPlayerIp(playerid, playerip, sizeof(playerip));
                    new string[1280];
                    format(string, sizeof(string), "AdmCmd: %s da mua VIP Silver 3 Ngay tu cua hang VIP.", GetPlayerNameEx(playerid));
                    ABroadCast(COLOR_LIGHTRED, string, 4);

                    format(string, sizeof(string), "Ban da mua thanh cong VIP Silver 3 Days tu cua hang thanh cong (/vipdate) de kiem tra.");
                    SendClientMessageEx(playerid, COLOR_CYAN, string);

                    format(string, sizeof(string), "AdmCmd: %s (IP : %s) da mua VIP SILVER 3 Ngay tu cua hang VIP", GetPlayerNameEx(playerid), playerip);
                    Log("logs/buyvipshop.log", string);
                    OnPlayerStatsUpdate(playerid);
                    return 1;
                }else {
                    new string[1280];
                    format(string, sizeof string, "{ffff00}> SHOP VIP <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(2500 - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }else SendClientMessage(playerid, COLOR_YELLOW2, "Ban dang so huu VIP roi , khong the mua tiep tuc (/vipdate) de xem thoi gian con lai cua VIP.");*/
        }
        if(listitem == 1) {
            /*if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pnDP] >= 4000) {
                    PlayerInfo[playerid][pnDP] -= 4000;
                    
                    PlayerInfo[playerid][pDonateRank] = 2;
                    PlayerInfo[playerid][pTempVIP] = 0;
                    PlayerInfo[playerid][pBuddyInvited] = 0;
                    PlayerInfo[playerid][pVIPExpire] = gettime()+432000*1;
                    if(PlayerInfo[playerid][pVIPM] == 0)
                    {
                        PlayerInfo[playerid][pVIPM] = VIPM;
                        VIPM++;
                    }
                    LoadPlayerDisabledVehicles(playerid);
                    new playerip[32];
                    GetPlayerIp(playerid, playerip, sizeof(playerip));
                    new string[1280];
                    format(string, sizeof(string), "AdmCmd: %s da mua VIP Silver 5 Ngay tu cua hang VIP.", GetPlayerNameEx(playerid));
                    ABroadCast(COLOR_LIGHTRED, string, 4);

                    format(string, sizeof(string), "Ban da mua thanh cong VIP Silver 5 Days tu cua hang thanh cong (/vipdate) de kiem tra.");
                    SendClientMessageEx(playerid, COLOR_CYAN, string);

                    format(string, sizeof(string), "AdmCmd: %s (IP : %s) da mua VIP SILVER 5 Ngay tu cua hang VIP", GetPlayerNameEx(playerid), playerip);
                    Log("logs/buyvipshop.log", string);
                    OnPlayerStatsUpdate(playerid);
                    return 1;
                }else {
                    new string[1280];
                    format(string, sizeof string, "{ffff00}> SHOP VIP <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(4000 - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }else SendClientMessage(playerid, COLOR_YELLOW2, "Ban dang so huu VIP roi , khong the mua tiep tuc (/vipdate) de xem thoi gian con lai cua VIP.");*/
        }
        if(listitem == 2) {
            /*if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pnDP] >= 6500) {
                    PlayerInfo[playerid][pnDP] -= 6500;
                    
                    PlayerInfo[playerid][pDonateRank] = 2;
                    PlayerInfo[playerid][pTempVIP] = 0;
                    PlayerInfo[playerid][pBuddyInvited] = 0;
                    PlayerInfo[playerid][pVIPExpire] = gettime()+604800*1;
                    if(PlayerInfo[playerid][pVIPM] == 0)
                    {
                        PlayerInfo[playerid][pVIPM] = VIPM;
                        VIPM++;
                    }
                    LoadPlayerDisabledVehicles(playerid);
                    new playerip[32];
                    GetPlayerIp(playerid, playerip, sizeof(playerip));
                    new string[1280];
                    format(string, sizeof(string), "AdmCmd: %s da mua VIP Silver 7 Ngay tu cua hang VIP.", GetPlayerNameEx(playerid));
                    ABroadCast(COLOR_LIGHTRED, string, 4);

                    format(string, sizeof(string), "Ban da mua thanh cong VIP Silver 7 Days tu cua hang thanh cong (/vipdate) de kiem tra.");
                    SendClientMessageEx(playerid, COLOR_CYAN, string);

                    format(string, sizeof(string), "AdmCmd: %s (IP : %s) da mua VIP SILVER 7 Ngay tu cua hang VIP", GetPlayerNameEx(playerid), playerip);
                    Log("logs/buyvipshop.log", string);
                    OnPlayerStatsUpdate(playerid);
                    return 1;
                }else {
                    new string[1280];
                    format(string, sizeof string, "{ffff00}> SHOP VIP <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(6500 - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }else SendClientMessage(playerid, COLOR_YELLOW2, "Ban dang so huu VIP roi , khong the mua tiep tuc (/vipdate) de xem thoi gian con lai cua VIP.");*/
        }
        if(listitem == 3) {
            if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pnDP] >= 5000) {
                    PlayerInfo[playerid][pnDP] -= 5000;
                    
                    PlayerInfo[playerid][pDonateRank] = 2;
                    PlayerInfo[playerid][pTempVIP] = 0;
                    PlayerInfo[playerid][pBuddyInvited] = 0;
                    PlayerInfo[playerid][pVIPExpire] = gettime()+2592000*1;
                    if(PlayerInfo[playerid][pVIPM] == 0)
                    {
                        PlayerInfo[playerid][pVIPM] = VIPM;
                        VIPM++;
                    }
                    LoadPlayerDisabledVehicles(playerid);
                    new playerip[32];
                    GetPlayerIp(playerid, playerip, sizeof(playerip));
                    new string[1280];
                    format(string, sizeof(string), "AdmCmd: %s da mua VIP Silver 30 Ngay tu cua hang VIP.", GetPlayerNameEx(playerid));
                    ABroadCast(COLOR_LIGHTRED, string, 4);

                    format(string, sizeof(string), "Ban da mua thanh cong VIP Silver 30 Days tu cua hang thanh cong (/vipdate) de kiem tra.");
                    SendClientMessageEx(playerid, COLOR_CYAN, string);

                    format(string, sizeof(string), "AdmCmd: %s (IP : %s) da mua VIP SILVER 30 Ngay tu cua hang VIP", GetPlayerNameEx(playerid), playerip);
                    Log("logs/buyvipshop.log", string);
                    OnPlayerStatsUpdate(playerid);
                    return 1;
                }else {
                    new string[1280];
                    format(string, sizeof string, "{ffff00}> SHOP VIP <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(9500 - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }else SendClientMessage(playerid, COLOR_YELLOW2, "Ban dang so huu VIP roi , khong the mua tiep tuc (/vipdate) de xem thoi gian con lai cua VIP.");
        }
        if(listitem == 4) {
            /*if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pnDP] >= 5000) {
                    PlayerInfo[playerid][pnDP] -= 5000;
                    
                    PlayerInfo[playerid][pDonateRank] = 3;
                    PlayerInfo[playerid][pTempVIP] = 0;
                    PlayerInfo[playerid][pBuddyInvited] = 0;
                    PlayerInfo[playerid][pVIPExpire] = gettime()+604800*1;
                    if(PlayerInfo[playerid][pVIPM] == 0)
                    {
                        PlayerInfo[playerid][pVIPM] = VIPM;
                        VIPM++;
                    }
                    LoadPlayerDisabledVehicles(playerid);
                    new playerip[32];
                    GetPlayerIp(playerid, playerip, sizeof(playerip));
                    new string[1280];
                    format(string, sizeof(string), "AdmCmd: %s da mua VIP Gold 7 Ngay tu cua hang VIP.", GetPlayerNameEx(playerid));
                    ABroadCast(COLOR_LIGHTRED, string, 4);

                    format(string, sizeof(string), "Ban da mua thanh cong VIP Gold 7 Days tu cua hang thanh cong (/vipdate) de kiem tra.");
                    SendClientMessageEx(playerid, COLOR_CYAN, string);

                    format(string, sizeof(string), "AdmCmd: %s (IP : %s) da mua VIP Gold 7 Ngay tu cua hang VIP", GetPlayerNameEx(playerid), playerip);
                    Log("logs/buyvipshop.log", string);
                    OnPlayerStatsUpdate(playerid);
                    return 1;
                }else {
                    new string[1280];
                    format(string, sizeof string, "{ffff00}> SHOP VIP <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(5000 - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }else SendClientMessage(playerid, COLOR_YELLOW2, "Ban dang so huu VIP roi , khong the mua tiep tuc (/vipdate) de xem thoi gian con lai cua VIP.");*/
        }
        if(listitem == 5) {
            if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pnDP] >= 10000) {
                    PlayerInfo[playerid][pnDP] -= 10000;
                    
                    PlayerInfo[playerid][pDonateRank] = 3;
                    PlayerInfo[playerid][pTempVIP] = 0;
                    PlayerInfo[playerid][pBuddyInvited] = 0;
                    PlayerInfo[playerid][pVIPExpire] = gettime()+2592000*1;
                    if(PlayerInfo[playerid][pVIPM] == 0)
                    {
                        PlayerInfo[playerid][pVIPM] = VIPM;
                        VIPM++;
                    }
                    LoadPlayerDisabledVehicles(playerid);
                    new playerip[32];
                    GetPlayerIp(playerid, playerip, sizeof(playerip));
                    new string[1280];
                    format(string, sizeof(string), "AdmCmd: %s da mua VIP Gold 30 Ngay tu cua hang VIP.", GetPlayerNameEx(playerid));
                    ABroadCast(COLOR_LIGHTRED, string, 4);

                    format(string, sizeof(string), "Ban da mua thanh cong VIP Gold 30 Days tu cua hang thanh cong (/vipdate) de kiem tra.");
                    SendClientMessageEx(playerid, COLOR_CYAN, string);

                    format(string, sizeof(string), "AdmCmd: %s (IP : %s) da mua VIP Gold 30 Ngay tu cua hang VIP", GetPlayerNameEx(playerid), playerip);
                    Log("logs/buyvipshop.log", string);
                    OnPlayerStatsUpdate(playerid);
                    return 1;
                }else {
                    new string[1280];
                    format(string, sizeof string, "{ffff00}> SHOP VIP <{FFFFFF} Ban con thieu %s Credits de mua phuong tien nay.", number_format(15000 - PlayerInfo[playerid][pnDP]));
                    SendClientMessageEx(playerid, -1, string);
                }
            }else SendClientMessage(playerid, COLOR_YELLOW2, "Ban dang so huu VIP roi , khong the mua tiep tuc (/vipdate) de xem thoi gian con lai cua VIP.");
        }
    }
    return 1;
}

/*stock ShopCar(playerid){
    static string[sizeof(SHOP_CAR) * 64];

    if (string[0] == EOS) {
        for (new i; i < sizeof(SHOP_CAR); i++) {
            format(string, sizeof string, "%s%i(0.0, 0.0, -40.0, 0.9)\t%s~n~~g~~h~%s Cre\n", string, SHOP_CAR[i][CAR_MODEL_ID], SHOP_CAR[i][CAR_NAME], number_format(SHOP_CAR[i][CAR_PRICE]));
        }
    }

    ShowPlayerDialog(playerid, DIALOG_SHOP_VEHICLE, DIALOG_STYLE_PREVIEW_MODEL, "CUA HANG PHUONG TIEN", string, "Mua ngay", "Huy bo");
    return 1;
}*/


stock ShopCarMobile(playerid) {
	new string[15000];
	for(new i = 0; i < sizeof(SHOP_CAR); i++) {
		format(string, sizeof string, "%s\n{00ff99}%s (ID: %i){FFFFFF}\tGia : {ffff00}%s{FFFFFF}", string, SHOP_CAR[i][CAR_NAME], SHOP_CAR[i][CAR_MODEL_ID], number_format(SHOP_CAR[i][CAR_PRICE]));
	}
	ShowPlayerDialog(playerid, DIALOG_SHOP_VEHICLE, DIALOG_STYLE_LIST, "CUA HANG PHUONG TIEN - MOBILE", string, "Mua ngay", "Huy bo");
	return 1;
}

stock ShopVip(playerid) {

    new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], name[1280];
    format(str2, sizeof(str), "{ffffff} VIP SILVER (Het hang)\t3 Ngay\tx,xxx Cre");
    format(str3, sizeof(str), "{ffffff} VIP SILVER (Het hang)\t5 Ngay\tx,xxx Cre");
    format(str4, sizeof(str), "{ffffff} VIP SILVER (Het hang)\t7 Ngay\tx,xxx Cre");
    format(str5, sizeof(str), "{ffffff} VIP SILVER\t30 Ngay\t5,000 Cre");
    format(str6, sizeof(str), "{ffff00} VIP GOLD (Het hang)\t7 Ngay\tx,xxx Cre");
    format(str7, sizeof(str), "{ffff00} VIP GOLD\t30 Ngay\t10,000 Cre");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s", "VIP\tThoi gian\tGia",str2,str3,str4,str5,str6,str7);
    format(name, sizeof(name), "{ffff00}> SHOP VIP <{FFFFFF}");
    ShowPlayerDialog(playerid, DIALOG_SHOP_VIP, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Dong y", "Huy Bo");
    return 1;
}
