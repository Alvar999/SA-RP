#include <a_samp>
#include <YSI\y_hooks>

stock ShowRegister(playerid){
    SelectTextDraw(playerid, COLOR_LIGHTRED);

    new name[1280];
    format(name, sizeof(name), "%s", GetPlayerNameEx(playerid));
    PlayerTextDrawSetString(playerid, LV_Register[playerid][5], name);

	for(new i = 0; i < 15; i++) {
    	PlayerTextDrawShow(playerid, LV_Register[playerid][i]);
    }
	return 1;
}

stock HideRegisterPlayer(playerid) {
    CancelSelectTextDraw(playerid);
    for(new i = 0; i < 15; i++) {
    	PlayerTextDrawHide(playerid, LV_Register[playerid][i]);
    }
	return 1;
}

stock CheckPassRegister(playerid){

    if(!isnull(PLogin[playerid][PasswordRegister]) && strlen(PLogin[playerid][PasswordRegister]) < 64)
	{
	    if(strlen(PLogin[playerid][PasswordRegister]) > 6 && strlen(PLogin[playerid][PasswordRegister]) < 64){
			SetPVarString(playerid, "PassAuth", PLogin[playerid][PasswordRegister]);
			g_mysql_CreateAccount(playerid, PLogin[playerid][PasswordRegister]);
		}else{
		    SendClientMessage(playerid, COLOR_WHITE, "Mat khau qua yeu , ban vui long nhap lai mat khau bao gom > 6 ky tu.");
		    SetPVarInt(playerid, "DienMatKhau", 0);
		}
	}
	return 1;
}

stock ConnectRegister(playerid){
    HideTutGUIBox(playerid);
	HideTutGUIFrame(playerid, 23);
	DeletePVar(playerid, "pTutTime");
	TutStep[playerid] = 0;

	PlayerInfo[playerid][pTut] = 1;
	gOoc[playerid] = 0; gNews[playerid] = 0; gFam[playerid] = 0;
	TogglePlayerControllable(playerid, 1);
	SetCamBack(playerid);
	DeletePVar(playerid, "MedicBill");
	SetPlayerColor(playerid,TEAM_HIT_COLOR);
	SetPlayerInterior(playerid,0);

	PlayerInfo[playerid][pTempVIP] = 0;
	PlayerInfo[playerid][pBuddyInvited] = 0;
	PlayerInfo[playerid][pGVIPVoucher] = 0;
	PlayerInfo[playerid][pConnectHours] = 0;
	PlayerInfo[playerid][pVehVoucher] = 0;
	PlayerInfo[playerid][pCash] = 0;
	PlayerInfo[playerid][pMats] = 0;

	PlayerInfo[playerid][pSpeedo] = 0;
	SetCameraBehindPlayer(playerid);
	SetPlayerVirtualWorld(playerid, 0);

	PlayerInfo[playerid][pModel] = 78;
	SetPlayerSkin(playerid, 78);

	SendClientMessage(playerid, -1, "{00ffff}Hay cung nhau tao ra mot san choi lanh manh nao <3.");
	new string128[128], name[1280];
    GetPlayerName(playerid,name,24);
    format(string128,sizeof(string128),"{FFFF00}Luu y: %s (ID: %i) vua dang ky tham gia may chu",name,playerid);
    ABroadCast(COLOR_YELLOW , string128, 1);

    SetPlayerPos(playerid, 2057.7461,1015.0518,10.9125);
	SetPlayerFacingAngle(playerid, 85.1020);
	SetCameraBehindPlayer(playerid);
	SetPlayerVirtualWorld(playerid, 0);

	HideRegisterPlayer(playerid);
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == MAINMENU2){
        if(response == 0){
			SendClientMessage(playerid, COLOR_RED, "Ban da bi kick do sai dang nhap.");
			SetTimerEx("KickEx", 1000, 0, "i", playerid);
			format(PLogin[playerid][PasswordRegister], 256, "");
		}
		else{
		    new password[1280];
			format(PLogin[playerid][PasswordRegister], 256, "%s", inputtext);
			PasswordEncode(password, strlen(inputtext));
			PlayerTextDrawSetString(playerid, LV_Register[playerid][6], password);
		}
	}

	if(dialogid == GIOITINHPLAYER && response == 1){
		if(listitem == 0){
            GioiTinhPlayer[playerid] = 1;
            SendClientMessage(playerid, COLOR_RED, "Ok, vay gioi tinh cua ban la Nam.");
            new newtext[1280];
            format(newtext, sizeof(newtext), "%s", "Nam");
    		PlayerTextDrawSetString(playerid, LV_Register[playerid][13], newtext);
		}
		if(listitem == 1){
            GioiTinhPlayer[playerid] = 2;
            new newtext[1280];
            format(newtext, sizeof(newtext), "%s", "Nu");
    		PlayerTextDrawSetString(playerid, LV_Register[playerid][13], newtext);
            SendClientMessage(playerid, COLOR_RED, "Ok, vay gioi tinh cua ban la Nu.");
		}
	}

	if(dialogid == AGEPLAYER && response == 1){
	    new age = strval(inputtext);
	    if(age >= 10 && age <= 50){
	        TuoiPlayer[playerid] = age;
	        new string[1280];
	        format(string, sizeof(string), "Ok, vay ban dang %d tuoi.", age);
	        SendClientMessage(playerid, COLOR_RED, string);
	        new newtext[1280];
            format(newtext, sizeof(newtext), "%d", age);
    		PlayerTextDrawSetString(playerid, LV_Register[playerid][14], newtext);
	    }else {
			SendClientMessage(playerid, COLOR_RED, "Do tuoi cua ban khong hop le.");
			SetPVarInt(playerid, "DienDoTuoi", 0);
	    }
	}
	return 1;
}

hook OnPlayerConnect(playerid) {
    LV_Register[playerid][0] = CreatePlayerTextDraw(playerid, 322.999969, 119.896369, "LAS_VENTURAS");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][0], 0.547666, 1.861333);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][0], 2);
	PlayerTextDrawColor(playerid, LV_Register[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][0], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][0], 0);

	LV_Register[playerid][1] = CreatePlayerTextDraw(playerid, 188.666641, 142.970443, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][1], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][1], 263.000000, 130.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][1], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][1], 220);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][1], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][1], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][1], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][1], 0);

	LV_Register[playerid][2] = CreatePlayerTextDraw(playerid, 188.666641, 118.911094, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][2], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][2], 263.000000, 21.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][2], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][2], -1523963137);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][2], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][2], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][2], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][2], 0);

	LV_Register[playerid][3] = CreatePlayerTextDraw(playerid, 218.666717, 154.585159, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][3], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][3], 208.000000, 17.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][3], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][3], 200);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][3], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][3], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][3], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][3], 0);

	LV_Register[playerid][4] = CreatePlayerTextDraw(playerid, 218.666671, 173.666366, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][4], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][4], 208.000000, 17.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][4], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][4], 200);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][4], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][4], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Register[playerid][4], true);

	LV_Register[playerid][5] = CreatePlayerTextDraw(playerid, 324.000122, 155.155563, "BE_PHUONG");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][5], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][5], 2);
	PlayerTextDrawColor(playerid, LV_Register[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][5], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][5], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][5], 0);

	LV_Register[playerid][6] = CreatePlayerTextDraw(playerid, 322.333221, 174.236938, "mat_khau");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][6], 0.259333, 1.529481);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][6], 2);
	PlayerTextDrawColor(playerid, LV_Register[playerid][6], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][6], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][6], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][6], 0);

	LV_Register[playerid][7] = CreatePlayerTextDraw(playerid, 274.666778, 237.547912, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][7], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][7], 92.000000, 19.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][7], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][7], 170);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][7], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][7], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Register[playerid][7], true);

	LV_Register[playerid][8] = CreatePlayerTextDraw(playerid, 320.333160, 240.192535, ">_______dang_ky_______<");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][8], 0.195666, 1.562666);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][8], 2);
	PlayerTextDrawColor(playerid, LV_Register[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][8], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][8], 0);

	/*LV_Register[playerid][9] = CreatePlayerTextDraw(playerid, 188.666763, 274.466430, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][9], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][9], 263.000000, 12.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][9], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][9], 170);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][9], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][9], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Register[playerid][9], true);

	LV_Register[playerid][10] = CreatePlayerTextDraw(playerid, 190.333328, 274.207366, "(!)_mat_khau_khong_duoc_>_64_ky_tu_va_<_6_ky_tu.");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][10], 0.229999, 1.247406);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][10], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][10], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][10], 1);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][10], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][10], 0);*/

	LV_Register[playerid][11] = CreatePlayerTextDraw(playerid, 218.666717, 192.747680, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][11], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][11], 208.000000, 17.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][11], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][11], 200);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][11], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][11], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Register[playerid][11], true);

	LV_Register[playerid][12] = CreatePlayerTextDraw(playerid, 218.666671, 212.243988, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][12], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, LV_Register[playerid][12], 208.000000, 17.000000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][12], 1);
	PlayerTextDrawColor(playerid, LV_Register[playerid][12], 200);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][12], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][12], 0);
	PlayerTextDrawSetSelectable(playerid, LV_Register[playerid][12], true);

	LV_Register[playerid][13] = CreatePlayerTextDraw(playerid, 321.000244, 192.903701, "gioi_tinh");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][13], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][13], 2);
	PlayerTextDrawColor(playerid, LV_Register[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][13], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][13], 2);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][13], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][13], 0);

	LV_Register[playerid][14] = CreatePlayerTextDraw(playerid, 320.666961, 212.814819, "Tuoi");
	PlayerTextDrawLetterSize(playerid, LV_Register[playerid][14], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, LV_Register[playerid][14], 2);
	PlayerTextDrawColor(playerid, LV_Register[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, LV_Register[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, LV_Register[playerid][14], 255);
	PlayerTextDrawFont(playerid, LV_Register[playerid][14], 2);
	PlayerTextDrawSetProportional(playerid, LV_Register[playerid][14], 1);
	PlayerTextDrawSetShadow(playerid, LV_Register[playerid][14], 0);
	return 1;
}
