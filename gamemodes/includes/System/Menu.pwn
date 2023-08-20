#include <a_samp>
#include <YSI\y_hooks>


CMD:huongdannewbie(playerid, params[])
{
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
	format(str1, sizeof(str), "{FFFFFF}Chao mung ban da tham gia may chu | {00ff00}%s{FFFFFF}", GetPlayerNameEx(playerid));
    format(str2, sizeof(str), "{FFFFFF}Sau day la mot so huong dan cho ban:");
    format(str3, sizeof(str), "{FFFFFF}   1. Lan dau tham gia may chu ban se nhan duoc {ff0000}50,000{FFFFFF} khoi nghiep.");
    format(str4, sizeof(str), "{FFFFFF}   2. Ban hay su dung {00ffff}/timvieclam{FFFFFF} de tim mot cong viec giup ban kiem tien.");
    format(str5, sizeof(str), "{FFFFFF}   3. Neu ban chua biet duong di ban co the su dung {ffff1a}/dichvu taxi.");
    format(str6, sizeof(str), "{FFFFFF}   4. Neu ban gap kho khan hay nhung van de ma khong co ai ho tro ban co the su dung {66ffc2}/newb{FFFFFF} hoac {ff3300}/baocao{FFFFFF}.");
    format(str7, sizeof(str), "{FFFFFF}   5. Ban co the giao luu voi moi nguoi bang cach su dung {00ffff}/tanso [id]{FFFFFF} | {1ab2ff}/pr{FFFFFF}.");
    format(str8, sizeof(str), "{FFFFFF}   6. Ban se phai tu minh sam va mua nhung thu can thiet cho ban than minh nhu : {ff00ff}Vehicle{FFFFFF} | {ff9900}Dien thoai{FFFFFF}.", PlayerInfo[playerid][pDanhBa8], PlayerInfo[playerid][pSDT8]);
    format(str9, sizeof(str), "{FFFFFF}   7. Va cuoi cung , hay tan huong va choi cung nhau tao ra mot san choi lanh manh va giup cho may chu phat trien <3");
    format(str, sizeof(str), "%s\n\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "HUONG DAN NEWBIE | SA-RP.NET");
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "");
	return 1;
}

CMD:menu(playerid, params[])
{
    if(GetPVarInt(playerid, "MENU_") == 0)
    {
        for(new i = 0; i < 27; i++)
        {
        	PlayerTextDrawShow(playerid, TD_MENU[playerid][i]);
		}
        PlayerPlaySound(playerid, 1135, 0,0,0);
        SetPVarInt(playerid, "MENU_", 1);
    	SelectTextDraw(playerid, -1);
    	return 1;
    }
    else
        ExitMenu(playerid);
	return 1;
}

ExitMenu(playerid) {
    CancelSelectTextDraw(playerid);
	PlayerPlaySound(playerid, 1135, 0,0,0);
	SetPVarInt(playerid, "MENU_", 0);

	for(new i = 0; i < 27; i++)
    {
    	PlayerTextDrawHide(playerid, TD_MENU[playerid][i]);
	}
	return 1;
}

hook OnPlayerConnect(playerid) {
	ShowTDMenu(playerid);
	return 1;
}

stock ShowTDMenu(playerid) {
	TD_MENU[playerid][0] = CreatePlayerTextDraw(playerid, 165.333389, 137.733383, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][0], 0.000000, 17.833341);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][0], 487.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][0], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][0], 150);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][0], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][0], 0);

	TD_MENU[playerid][1] = CreatePlayerTextDraw(playerid, 331.999938, 131.925964, "MENU_-_SA-RP");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][1], 0.517333, 2.172444);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][1], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][1], 16777215);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][1], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][1], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][1], 0);

	TD_MENU[playerid][2] = CreatePlayerTextDraw(playerid, 258.999969, 152.251831, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][2], 0.000000, -0.166666);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][2], 406.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][2], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][2], -5963521);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][2], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][2], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][2], 0);

	TD_MENU[playerid][3] = CreatePlayerTextDraw(playerid, 176.000015, 163.866714, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][3], 0.000000, 6.100000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][3], 244.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][3], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][3], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][3], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][3], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][3], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][3], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][3], 0);

	TD_MENU[playerid][4] = CreatePlayerTextDraw(playerid, 163.666732, 140.066696, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][4], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][4], 91.000000, 91.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][4], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][4], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][4], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][4], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][4], 1581);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][4], 0.000000, 0.000000, 180.000000, 1.000000);

	TD_MENU[playerid][5] = CreatePlayerTextDraw(playerid, 209.666595, 204.518432, "thong_tin");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][5], 0.389666, 1.587555);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][5], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][5], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][5], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][5], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][5], 0);

	TD_MENU[playerid][6] = CreatePlayerTextDraw(playerid, 256.666809, 163.451858, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][6], 0.000000, 6.133333);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][6], 322.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][6], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][6], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][6], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][6], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][6], -16776961);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][6], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][6], 0);

	TD_MENU[playerid][7] = CreatePlayerTextDraw(playerid, 243.333450, 136.748168, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][7], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][7], 91.000000, 91.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][7], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][7], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][7], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][7], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][7], 1210);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][7], 0.000000, 0.000000, 0.000000, 1.000000);

	TD_MENU[playerid][8] = CreatePlayerTextDraw(playerid, 335.000183, 163.451843, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][8], 0.000000, 6.133333);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][8], 400.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][8], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][8], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][8], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][8], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][8], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][8], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][8], 0);

	TD_MENU[playerid][9] = CreatePlayerTextDraw(playerid, 414.666656, 163.451858, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][9], 0.000000, 6.166666);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][9], 477.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][9], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][9], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][9], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][9], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][9], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][9], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][9], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][9], 0);

	TD_MENU[playerid][10] = CreatePlayerTextDraw(playerid, 289.666503, 204.933258, "TUI_DO");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][10], 0.389666, 1.587555);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][10], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][10], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][10], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][10], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][10], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][10], 0);

	TD_MENU[playerid][11] = CreatePlayerTextDraw(playerid, 320.666778, 137.162994, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][11], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][11], 91.000000, 91.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][11], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][11], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][11], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][11], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][11], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][11], 19592);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][11], 0.000000, 0.000000, 0.000000, 1.000000);

	TD_MENU[playerid][12] = CreatePlayerTextDraw(playerid, 366.666503, 205.348068, "cua_hang");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][12], 0.389666, 1.587555);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][12], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][12], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][12], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][12], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][12], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][12], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][12], 0);

	TD_MENU[playerid][13] = CreatePlayerTextDraw(playerid, 389.666961, 145.459289, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][13], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][13], 112.000000, 79.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][13], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][13], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][13], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][13], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][13], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][13], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][13], 19167);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][13], -90.000000, 0.000000, 0.000000, 1.000000);

	TD_MENU[playerid][14] = CreatePlayerTextDraw(playerid, 444.999847, 205.348068, "map");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][14], 0.389666, 1.587555);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][14], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][14], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][14], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][14], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][14], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][14], 0);

	TD_MENU[playerid][15] = CreatePlayerTextDraw(playerid, 176.000015, 230.651916, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][15], 0.000000, 6.166666);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][15], 244.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][15], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][15], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][15], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][15], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][15], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][15], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][15], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][15], 0);

	TD_MENU[playerid][16] = CreatePlayerTextDraw(playerid, 256.666687, 230.651916, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][16], 0.000000, 6.166666);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][16], 322.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][16], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][16], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][16], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][16], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][16], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][16], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][16], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][16], 0);

	TD_MENU[playerid][17] = CreatePlayerTextDraw(playerid, 334.666656, 229.822265, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][17], 0.000000, 6.166666);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][17], 400.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][17], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][17], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][17], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][17], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][17], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][17], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][17], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][17], 0);

	TD_MENU[playerid][18] = CreatePlayerTextDraw(playerid, 415.000061, 229.822265, "box");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][18], 0.000000, 6.266666);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][18], 477.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][18], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][18], -1);
	PlayerTextDrawUseBox(playerid, TD_MENU[playerid][18], 1);
	PlayerTextDrawBoxColor(playerid, TD_MENU[playerid][18], 100);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][18], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][18], 1);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][18], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][18], 0);

	TD_MENU[playerid][19] = CreatePlayerTextDraw(playerid, 151.000152, 220.125946, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][19], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][19], 86.000000, 68.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][19], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][19], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][19], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][19], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][19], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][19], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][19], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][19], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][19], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][19], 18873);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][19], -90.000000, 0.000000, 180.000000, 1.000000);

	TD_MENU[playerid][20] = CreatePlayerTextDraw(playerid, 209.999786, 272.133331, "dien_thoai");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][20], 0.374666, 1.550222);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][20], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][20], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][20], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][20], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][20], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][20], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][20], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][20], 0);

	TD_MENU[playerid][21] = CreatePlayerTextDraw(playerid, 242.666763, 226.762954, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][21], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][21], 90.000000, 51.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][21], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][21], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][21], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][21], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][21], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][21], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][21], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][21], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][21], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][21], 1239);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][21], 0.000000, 0.000000, 0.000000, 1.000000);

	TD_MENU[playerid][22] = CreatePlayerTextDraw(playerid, 290.999816, 271.718444, "viec_lam");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][22], 0.374666, 1.550222);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][22], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][22], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][22], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][22], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][22], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][22], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][22], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][22], 0);

	TD_MENU[playerid][23] = CreatePlayerTextDraw(playerid, 321.666870, 223.029586, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][23], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][23], 91.000000, 60.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][23], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][23], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][23], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][23], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][23], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][23], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][23], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][23], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][23], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][23], 1314);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][23], 0.000000, 0.000000, 0.000000, 1.000000);

	TD_MENU[playerid][24] = CreatePlayerTextDraw(playerid, 367.333190, 270.473999, "bao_cao");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][24], 0.374666, 1.550222);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][24], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][24], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][24], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][24], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][24], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][24], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][24], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][24], 0);

	TD_MENU[playerid][25] = CreatePlayerTextDraw(playerid, 392.000183, 213.903717, "");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][25], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, TD_MENU[playerid][25], 114.000000, 82.000000);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][25], 1);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][25], -1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][25], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][25], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][25], 0);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][25], 5);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][25], 0);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][25], 0);
	PlayerTextDrawSetSelectable(playerid, TD_MENU[playerid][25], true);
	PlayerTextDrawSetPreviewModel(playerid, TD_MENU[playerid][25], 522);
	PlayerTextDrawSetPreviewRot(playerid, TD_MENU[playerid][25], 0.000000, 0.000000, -40.000000, 1.000000);
	PlayerTextDrawSetPreviewVehCol(playerid, TD_MENU[playerid][25], 1, 1);

	TD_MENU[playerid][26] = CreatePlayerTextDraw(playerid, 445.999908, 270.473999, "vehicle");
	PlayerTextDrawLetterSize(playerid, TD_MENU[playerid][26], 0.374666, 1.550222);
	PlayerTextDrawAlignment(playerid, TD_MENU[playerid][26], 2);
	PlayerTextDrawColor(playerid, TD_MENU[playerid][26], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][26], 0);
	PlayerTextDrawSetOutline(playerid, TD_MENU[playerid][26], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_MENU[playerid][26], 255);
	PlayerTextDrawFont(playerid, TD_MENU[playerid][26], 3);
	PlayerTextDrawSetProportional(playerid, TD_MENU[playerid][26], 1);
	PlayerTextDrawSetShadow(playerid, TD_MENU[playerid][26], 0);
	return 1;
}
