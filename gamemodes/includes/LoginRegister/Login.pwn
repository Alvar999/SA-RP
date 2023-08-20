#include <a_samp>
#include <YSI\y_hooks>

forward ShowLogin(playerid);
public ShowLogin(playerid) {
    SelectTextDraw(playerid, COLOR_LIGHTRED);
    
    new name[1280];
    format(name, sizeof(name), "%s", GetPlayerNameEx(playerid));
    PlayerTextDrawSetString(playerid, LV_Login[playerid][5], name);
    
	for(new i = 0; i < 9; i++) {
    	PlayerTextDrawShow(playerid, LV_Login[playerid][i]);
    }
	return 1;
}

forward ThongBaoPassword(playerid);
public ThongBaoPassword(playerid) {
    PlayerTextDrawHide(playerid, LV_Login[playerid][9]);
    PlayerTextDrawHide(playerid, LV_Login[playerid][10]);
	return 1;
}

stock HideLoginPlayer(playerid) {
    CancelSelectTextDraw(playerid);
    for(new i = 0; i < 11; i++) {
    	PlayerTextDrawHide(playerid, LV_Login[playerid][i]);
    }
	return 1;
}

stock CheckPassLogin(playerid){
    if(!isnull(PLogin[playerid][PasswordLogin]) && strlen(PLogin[playerid][PasswordLogin]) < 64){
		SetPVarString(playerid, "PassAuth", PLogin[playerid][PasswordLogin]);
		g_mysql_AccountLoginCheck(playerid);
		SetPVarInt(playerid, "DangNhapMatKhau", 0);
	}
	else{
	    format(PLogin[playerid][PasswordLogin], 256, "");
		SendClientMessage(playerid, COLOR_RED, "Mat khau cua ban da sai , vui long dien lai mat khau!.");
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == MAINMENU){
        if(response == 0){
			SendClientMessage(playerid, COLOR_RED, "Ban da bi kick do sai dang nhap.");
			SetTimerEx("KickEx", 1000, 0, "i", playerid);
			format(PLogin[playerid][PasswordLogin], 256, "");
		}
		else{
		    new password[1280];
			format(PLogin[playerid][PasswordLogin], 256, "%s", inputtext);
			PasswordEncode(password, strlen(inputtext));
   			PlayerTextDrawSetString(playerid, LV_Login[playerid][6], password);
			SetPVarInt(playerid, "DangNhapMatKhau", 1);
		}
	}
	return 1;
}

PasswordEncode(string[], size)
{
	for(new s; s <= size; s++)
	{
	    if(size >= 36) format(string,34,"]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]]");
	    else
	    {
			if(s ^ size) string[s] = ']';
			else string[s] = EOS;
		}
	}
	return 1;
}

hook OnPlayerConnect(playerid) {
    LV_Login[playerid][0] = CreatePlayerTextDraw(playerid, 322.999969, 119.896369, "LAS_VENTURAS");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][0], 0.547666, 1.861334);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][0], 2);
	PlayerTextDrawColor(playerid, LV_Login[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][0], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][0], 0);

	LV_Login[playerid][1] = CreatePlayerTextDraw(playerid, 188.666641, 142.970443, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][1], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Login[playerid][1], 263.000000, 130.000000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][1], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][1], 220);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][1], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][1], 0);

	LV_Login[playerid][2] = CreatePlayerTextDraw(playerid, 188.666641, 118.911094, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][2], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Login[playerid][2], 263.000000, 21.000000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][2], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][2], -1523963137);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][2], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][2], 0);

	LV_Login[playerid][3] = CreatePlayerTextDraw(playerid, 198.666671, 180.718475, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][3], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Login[playerid][3], 243.000000, 19.000000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][3], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][3], 170);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][3], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][3], 0);

	LV_Login[playerid][4] = CreatePlayerTextDraw(playerid, 198.666671, 206.436798, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][4], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Login[playerid][4], 243.000000, 19.000000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][4], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][4], 170);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][4], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Login[playerid][4], true);

	LV_Login[playerid][5] = CreatePlayerTextDraw(playerid, 324.333251, 182.118515, "BE_PHUONG");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][5], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][5], 2);
	PlayerTextDrawColor(playerid, LV_Login[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][5], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][5], 0);

	LV_Login[playerid][6] = CreatePlayerTextDraw(playerid, 321.333190, 208.251770, "mat_khau");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][6], 0.259333, 1.529481);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][6], 2);
	PlayerTextDrawColor(playerid, LV_Login[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][6], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][6], 0);

	LV_Login[playerid][7] = CreatePlayerTextDraw(playerid, 274.666778, 237.547912, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][7], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Login[playerid][7], 92.000000, 19.000000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][7], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][7], 170);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][7], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Login[playerid][7], true);

	LV_Login[playerid][8] = CreatePlayerTextDraw(playerid, 320.333160, 240.192535, ">______dang_nhap______<");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][8], 0.195666, 1.562666);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][8], 2);
	PlayerTextDrawColor(playerid, LV_Login[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][8], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][8], 0);

	LV_Login[playerid][9] = CreatePlayerTextDraw(playerid, 188.666763, 274.466430, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][9], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Login[playerid][9], 263.000000, 12.000000);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][9], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][9], 170);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][9], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][9], 0);

	LV_Login[playerid][10] = CreatePlayerTextDraw(playerid, 190.333328, 274.207366, "(!)_sai_mat_khau_ban_vui_long_thu_lai.");
	PlayerTextDrawLetterSize(playerid, LV_Login[playerid][10], 0.229999, 1.247407);
	PlayerTextDrawAlignment(playerid, LV_Login[playerid][10], 1);
	PlayerTextDrawColor(playerid, LV_Login[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, LV_Login[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Login[playerid][10], 255);
	PlayerTextDrawFont(playerid, LV_Login[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, LV_Login[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, LV_Login[playerid][10], 0);
	return 1;
}
