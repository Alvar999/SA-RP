#include <a_samp>
#include <YSI\y_hooks>

//new PlayerText:TD_ShopMain[MAX_PLAYERS][11];
//new PlayerText:TD_ShopCar[MAX_PLAYERS][53];

CMD:shopcre(playerid, params[]) {
    if(GetPVarInt(playerid, "OpenShopCre") == 0) {
        SelectTextDraw(playerid, COLOR_LIGHTRED);
        SetPVarInt(playerid, "OpenShopCre", 1);
        for(new i = 0; i < 11; i++) PlayerTextDrawShow(playerid, TD_ShopMain[playerid][i]);
        return 1;
        //-------------------------
    }else {
        ExitShopCre(playerid);
    }
    return 1;
}

ExitShopCre(playerid) {
    CancelSelectTextDraw(playerid);
    SetPVarInt(playerid, "OpenShopCre", 0);
    for(new i = 0; i < 11; i++) PlayerTextDrawHide(playerid, TD_ShopMain[playerid][i]);
    for(new car = 0; car < 53; car++) PlayerTextDrawHide(playerid, TD_ShopCar[playerid][car]);
    return 1;
}

hook OnPlayerConnect(playerid) {
    LoadTDShopCre(playerid);
}

/*hook OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid) {
    if(GetPVarInt(playerid, "OpenShopCre") == 1) {
        if(playertextid == TD_ShopMain[playerid][2]) { // PHUONG TIEN
            for(new i = 0; i < 11; i++) PlayerTextDrawHide(playerid, TD_ShopMain[playerid][i]);
            for(new car = 0; car < 53; car++) PlayerTextDrawShow(playerid, TD_ShopCar[playerid][i]);
        }
        if(playertextid == TD_ShopMain[playerid][3]) { // VIP
            for(new i = 0; i < 11; i++) PlayerTextDrawHide(playerid, TD_ShopMain[playerid][i]);
        }
        if(playertextid == TD_ShopMain[playerid][4]) { // TOYS
            for(new i = 0; i < 11; i++) PlayerTextDrawHide(playerid, TD_ShopMain[playerid][i]);
        }
        if(playertextid == TD_ShopMain[playerid][5]) { // VAT PHAM
            for(new i = 0; i < 11; i++) PlayerTextDrawHide(playerid, TD_ShopMain[playerid][i]);
        }
    }
    return 1;
}*/

stock LoadTDShopCre(playerid) {
    TD_ShopMain[playerid][0] = CreatePlayerTextDraw(playerid, 137.333282, 96.511093, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][0], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopMain[playerid][0], 380.000000, 244.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][0], 1);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][0], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][0], 0);

    TD_ShopMain[playerid][1] = CreatePlayerTextDraw(playerid, 331.666656, 95.422225, "cua_hang");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][1], 0.524999, 2.168296);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][1], 2);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][1], -1523963137);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][1], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][1], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][1], 0);

    TD_ShopMain[playerid][2] = CreatePlayerTextDraw(playerid, 152.666687, 123.059249, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][2], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopMain[playerid][2], 79.000000, 17.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][2], 1);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][2], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][2], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][2], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopMain[playerid][2], true);

    TD_ShopMain[playerid][3] = CreatePlayerTextDraw(playerid, 242.333206, 123.474060, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][3], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopMain[playerid][3], 79.000000, 17.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][3], 1);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][3], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][3], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][3], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopMain[playerid][3], true);

    TD_ShopMain[playerid][4] = CreatePlayerTextDraw(playerid, 332.333740, 123.474052, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][4], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopMain[playerid][4], 79.000000, 17.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][4], 1);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][4], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][4], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][4], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][4], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopMain[playerid][4], true);

    TD_ShopMain[playerid][5] = CreatePlayerTextDraw(playerid, 421.000885, 123.888877, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][5], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopMain[playerid][5], 79.000000, 17.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][5], 1);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][5], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][5], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][5], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][5], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopMain[playerid][5], true);

    TD_ShopMain[playerid][6] = CreatePlayerTextDraw(playerid, 191.999984, 123.629623, "PHUONG_TIEN");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][6], 0.278666, 1.575111);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][6], 2);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][6], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][6], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][6], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][6], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][6], 0);

    TD_ShopMain[playerid][7] = CreatePlayerTextDraw(playerid, 281.666809, 124.044441, "VIP");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][7], 0.279666, 1.579259);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][7], 2);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][7], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][7], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][7], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][7], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][7], 0);

    TD_ShopMain[playerid][8] = CreatePlayerTextDraw(playerid, 373.333587, 124.044441, "TOYS");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][8], 0.279666, 1.579259);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][8], 2);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][8], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][8], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][8], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][8], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][8], 0);

    TD_ShopMain[playerid][9] = CreatePlayerTextDraw(playerid, 460.000305, 124.459281, "VAT_PHAM");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][9], 0.279666, 1.579259);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][9], 2);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][9], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][9], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][9], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][9], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][9], 0);

    TD_ShopMain[playerid][10] = CreatePlayerTextDraw(playerid, 496.333374, 97.340751, "LD_BEAT:cross");
    PlayerTextDrawLetterSize(playerid, TD_ShopMain[playerid][10], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopMain[playerid][10], 20.000000, 14.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopMain[playerid][10], 1);
    PlayerTextDrawColor(playerid, TD_ShopMain[playerid][10], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopMain[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopMain[playerid][10], 255);
    PlayerTextDrawFont(playerid, TD_ShopMain[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopMain[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopMain[playerid][10], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopMain[playerid][10], true);

    // VEHICLE
    TD_ShopCar[playerid][0] = CreatePlayerTextDraw(playerid, 137.333282, 96.511093, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][0], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][0], 380.000000, 244.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][0], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][0], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][0], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][0], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][0], 0);

    TD_ShopCar[playerid][1] = CreatePlayerTextDraw(playerid, 331.666656, 95.422225, "cua_hang");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][1], 0.524999, 2.168296);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][1], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][1], -1523963137);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][1], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][1], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][1], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][1], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][1], 0);

    TD_ShopCar[playerid][2] = CreatePlayerTextDraw(playerid, 166.333496, 128.866653, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][2], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][2], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][2], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][2], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][2], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][2], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][2], 0);

    TD_ShopCar[playerid][3] = CreatePlayerTextDraw(playerid, 247.666610, 128.866638, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][3], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][3], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][3], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][3], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][3], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][3], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][3], 0);

    TD_ShopCar[playerid][4] = CreatePlayerTextDraw(playerid, 329.666625, 128.866638, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][4], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][4], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][4], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][4], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][4], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][4], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][4], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][4], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][4], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][4], 0);

    TD_ShopCar[playerid][5] = CreatePlayerTextDraw(playerid, 412.000000, 128.866607, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][5], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][5], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][5], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][5], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][5], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][5], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][5], 0);

    TD_ShopCar[playerid][6] = CreatePlayerTextDraw(playerid, 166.333480, 199.800033, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][6], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][6], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][6], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][6], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][6], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][6], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][6], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][6], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][6], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][6], 0);

    TD_ShopCar[playerid][7] = CreatePlayerTextDraw(playerid, 247.666748, 199.800201, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][7], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][7], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][7], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][7], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][7], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][7], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][7], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][7], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][7], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][7], 0);

    TD_ShopCar[playerid][8] = CreatePlayerTextDraw(playerid, 329.666839, 199.800186, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][8], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][8], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][8], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][8], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][8], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][8], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][8], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][8], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][8], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][8], 0);

    TD_ShopCar[playerid][9] = CreatePlayerTextDraw(playerid, 412.000305, 199.800201, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][9], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][9], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][9], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][9], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][9], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][9], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][9], 0);

    TD_ShopCar[playerid][10] = CreatePlayerTextDraw(playerid, 166.333679, 271.148498, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][10], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][10], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][10], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][10], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][10], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][10], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][10], 0);

    TD_ShopCar[playerid][11] = CreatePlayerTextDraw(playerid, 247.666885, 271.148468, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][11], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][11], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][11], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][11], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][11], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][11], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][11], 0);

    TD_ShopCar[playerid][12] = CreatePlayerTextDraw(playerid, 330.000305, 271.977996, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][12], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][12], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][12], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][12], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][12], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][12], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][12], 0);

    TD_ShopCar[playerid][13] = CreatePlayerTextDraw(playerid, 412.000274, 271.148345, "LD_SPAC:white");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][13], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][13], 74.000000, 65.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][13], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][13], 150);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][13], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][13], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][13], 0);

    TD_ShopCar[playerid][14] = CreatePlayerTextDraw(playerid, 166.666656, 128.192581, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][14], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][14], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][14], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][14], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][14], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][14], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][14], 0);

    TD_ShopCar[playerid][15] = CreatePlayerTextDraw(playerid, 247.999954, 127.777793, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][15], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][15], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][15], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][15], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][15], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][15], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][15], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][15], 0);

    TD_ShopCar[playerid][16] = CreatePlayerTextDraw(playerid, 330.000030, 128.192611, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][16], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][16], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][16], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][16], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][16], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][16], 0);

    TD_ShopCar[playerid][17] = CreatePlayerTextDraw(playerid, 412.666717, 128.192611, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][17], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][17], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][17], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][17], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][17], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][17], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][17], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][17], 0);

    TD_ShopCar[playerid][18] = CreatePlayerTextDraw(playerid, 166.333435, 199.125930, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][18], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][18], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][18], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][18], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][18], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][18], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][18], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][18], 0);

    TD_ShopCar[playerid][19] = CreatePlayerTextDraw(playerid, 248.000122, 199.125930, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][19], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][19], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][19], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][19], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][19], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][19], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][19], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][19], 0);

    TD_ShopCar[playerid][20] = CreatePlayerTextDraw(playerid, 330.000183, 199.125930, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][20], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][20], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][20], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][20], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][20], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][20], 0);

    TD_ShopCar[playerid][21] = CreatePlayerTextDraw(playerid, 412.333618, 199.125930, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][21], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][21], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][21], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][21], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][21], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][21], 0);

    TD_ShopCar[playerid][22] = CreatePlayerTextDraw(playerid, 166.666992, 270.888824, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][22], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][22], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][22], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][22], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][22], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][22], 0);

    TD_ShopCar[playerid][23] = CreatePlayerTextDraw(playerid, 248.000335, 270.473968, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][23], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][23], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][23], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][23], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][23], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][23], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][23], 0);

    TD_ShopCar[playerid][24] = CreatePlayerTextDraw(playerid, 330.666992, 271.303527, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][24], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][24], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][24], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][24], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][24], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][24], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][24], 0);

    TD_ShopCar[playerid][25] = CreatePlayerTextDraw(playerid, 412.333709, 270.473846, "Bobcat_(422)");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][25], 0.218999, 0.890667);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][25], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][25], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][25], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][25], 1);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][25], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][25], 0);

    TD_ShopCar[playerid][26] = CreatePlayerTextDraw(playerid, 154.000015, 116.422264, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][26], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][26], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][26], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][26], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][26], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][26], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][26], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][26], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][26], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][26], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][26], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][26], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][26], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][26], 211, 1);

    TD_ShopCar[playerid][27] = CreatePlayerTextDraw(playerid, 235.333328, 116.837074, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][27], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][27], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][27], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][27], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][27], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][27], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][27], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][27], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][27], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][27], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][27], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][27], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][27], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][27], 211, 1);

    TD_ShopCar[playerid][28] = CreatePlayerTextDraw(playerid, 316.000305, 117.666709, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][28], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][28], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][28], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][28], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][28], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][28], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][28], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][28], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][28], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][28], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][28], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][28], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][28], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][28], 211, 1);

    TD_ShopCar[playerid][29] = CreatePlayerTextDraw(playerid, 400.000244, 117.251884, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][29], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][29], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][29], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][29], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][29], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][29], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][29], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][29], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][29], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][29], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][29], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][29], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][29], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][29], 211, 1);

    TD_ShopCar[playerid][30] = CreatePlayerTextDraw(playerid, 155.333587, 184.037033, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][30], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][30], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][30], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][30], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][30], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][30], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][30], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][30], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][30], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][30], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][30], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][30], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][30], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][30], 211, 1);

    TD_ShopCar[playerid][31] = CreatePlayerTextDraw(playerid, 234.666900, 184.451843, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][31], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][31], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][31], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][31], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][31], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][31], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][31], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][31], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][31], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][31], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][31], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][31], 211, 1);

    TD_ShopCar[playerid][32] = CreatePlayerTextDraw(playerid, 317.333587, 185.281463, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][32], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][32], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][32], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][32], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][32], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][32], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][32], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][32], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][32], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][32], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][32], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][32], 211, 1);

    TD_ShopCar[playerid][33] = CreatePlayerTextDraw(playerid, 399.000213, 185.696273, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][33], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][33], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][33], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][33], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][33], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][33], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][33], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][33], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][33], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][33], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][33], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][33], 211, 1);

    TD_ShopCar[playerid][34] = CreatePlayerTextDraw(playerid, 155.333602, 257.044403, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][34], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][34], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][34], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][34], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][34], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][34], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][34], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][34], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][34], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][34], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][34], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][34], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][34], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][34], 211, 1);

    TD_ShopCar[playerid][35] = CreatePlayerTextDraw(playerid, 232.666915, 255.385131, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][35], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][35], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][35], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][35], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][35], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][35], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][35], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][35], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][35], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][35], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][35], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][35], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][35], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][35], 211, 1);

    TD_ShopCar[playerid][36] = CreatePlayerTextDraw(playerid, 318.000427, 255.385131, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][36], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][36], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][36], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][36], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][36], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][36], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][36], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][36], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][36], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][36], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][36], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][36], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][36], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][36], 211, 1);

    TD_ShopCar[playerid][37] = CreatePlayerTextDraw(playerid, 398.333892, 256.629577, "");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][37], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][37], 90.000000, 90.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][37], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][37], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][37], 0);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][37], 5);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][37], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][37], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][37], true);
    PlayerTextDrawSetPreviewModel(playerid, TD_ShopCar[playerid][37], 422);
    PlayerTextDrawSetPreviewRot(playerid, TD_ShopCar[playerid][37], 0.000000, 0.000000, 40.000000, 1.000000);
    PlayerTextDrawSetPreviewVehCol(playerid, TD_ShopCar[playerid][37], 211, 1);

    TD_ShopCar[playerid][38] = CreatePlayerTextDraw(playerid, 203.666671, 180.873947, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][38], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][38], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][38], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][38], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][38], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][38], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][38], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][38], 0);

    TD_ShopCar[playerid][39] = CreatePlayerTextDraw(playerid, 286.000061, 180.873947, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][39], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][39], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][39], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][39], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][39], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][39], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][39], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][39], 0);

    TD_ShopCar[playerid][40] = CreatePlayerTextDraw(playerid, 365.666870, 181.288772, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][40], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][40], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][40], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][40], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][40], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][40], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][40], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][40], 0);

    TD_ShopCar[playerid][41] = CreatePlayerTextDraw(playerid, 448.666839, 181.288772, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][41], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][41], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][41], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][41], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][41], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][41], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][41], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][41], 0);

    TD_ShopCar[playerid][42] = CreatePlayerTextDraw(playerid, 204.000167, 251.392486, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][42], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][42], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][42], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][42], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][42], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][42], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][42], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][42], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][42], 0);

    TD_ShopCar[playerid][43] = CreatePlayerTextDraw(playerid, 283.000244, 252.222106, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][43], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][43], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][43], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][43], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][43], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][43], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][43], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][43], 0);

    TD_ShopCar[playerid][44] = CreatePlayerTextDraw(playerid, 366.666961, 252.222122, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][44], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][44], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][44], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][44], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][44], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][44], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][44], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][44], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][44], 0);

    TD_ShopCar[playerid][45] = CreatePlayerTextDraw(playerid, 448.000213, 252.222122, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][45], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][45], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][45], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][45], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][45], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][45], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][45], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][45], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][45], 0);

    TD_ShopCar[playerid][46] = CreatePlayerTextDraw(playerid, 202.666839, 323.985137, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][46], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][46], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][46], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][46], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][46], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][46], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][46], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][46], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][46], 0);

    TD_ShopCar[playerid][47] = CreatePlayerTextDraw(playerid, 283.000183, 323.985168, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][47], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][47], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][47], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][47], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][47], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][47], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][47], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][47], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][47], 0);

    TD_ShopCar[playerid][48] = CreatePlayerTextDraw(playerid, 366.666961, 325.644470, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][48], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][48], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][48], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][48], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][48], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][48], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][48], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][48], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][48], 0);

    TD_ShopCar[playerid][49] = CreatePlayerTextDraw(playerid, 448.666992, 325.229583, "10,000_Cre");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][49], 0.207999, 0.749629);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][49], 2);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][49], -5963521);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][49], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][49], 1);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][49], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][49], 2);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][49], 1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][49], 0);

    TD_ShopCar[playerid][50] = CreatePlayerTextDraw(playerid, 430.000396, 110.614814, "LD_BEAT:right");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][50], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][50], 20.000000, 14.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][50], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][50], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][50], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][50], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][50], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][50], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][50], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][50], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][50], true);

    TD_ShopCar[playerid][51] = CreatePlayerTextDraw(playerid, 400.999938, 111.029655, "LD_BEAT:left");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][51], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][51], 20.000000, 14.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][51], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][51], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][51], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][51], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][51], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][51], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][51], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][51], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][51], true);

    TD_ShopCar[playerid][52] = CreatePlayerTextDraw(playerid, 496.333374, 97.340751, "LD_BEAT:cross");
    PlayerTextDrawLetterSize(playerid, TD_ShopCar[playerid][52], 0.000000, 0.000000);
    PlayerTextDrawTextSize(playerid, TD_ShopCar[playerid][52], 20.000000, 14.000000);
    PlayerTextDrawAlignment(playerid, TD_ShopCar[playerid][52], 1);
    PlayerTextDrawColor(playerid, TD_ShopCar[playerid][52], -1);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][52], 0);
    PlayerTextDrawSetOutline(playerid, TD_ShopCar[playerid][52], 0);
    PlayerTextDrawBackgroundColor(playerid, TD_ShopCar[playerid][52], 255);
    PlayerTextDrawFont(playerid, TD_ShopCar[playerid][52], 4);
    PlayerTextDrawSetProportional(playerid, TD_ShopCar[playerid][52], 0);
    PlayerTextDrawSetShadow(playerid, TD_ShopCar[playerid][52], 0);
    PlayerTextDrawSetSelectable(playerid, TD_ShopCar[playerid][52], true);
    return 1;
}
