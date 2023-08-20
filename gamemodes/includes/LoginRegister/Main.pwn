#include <a_samp>
#include <YSI\y_hooks>



stock SetPlayerJoinCamera(playerid) {
	SetPlayerVirtualWorld(playerid, 0);
	SetPlayerInterior(playerid, 0);
	
	SetPlayerPos(playerid, 2533.1382,-1674.4160,1015.4986);
	SetPlayerFacingAngle(playerid, 270.8787);

	SetPlayerInterior(playerid, 1);
	SetPlayerVirtualWorld(playerid, playerid + MAX_PLAYERS);
	
	InterpolateCameraPos(playerid, 2550.974121, -1664.531738, 16.615615, 2186.334716, -1653.106933, 14.849622, 30000);
	InterpolateCameraLookAt(playerid, 2545.977050, -1664.520996, 16.447679, 2188.319091, -1657.573486, 15.904144, 15000);
	return 1;
}

stock ShowDangNhap(playerid) {
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
    format(str1, sizeof(str), "\\c {ffff00}{ff9900}Los {ff0000}Santos {ffffff}City");
    format(str2, sizeof(str), "{ffffff} -> IP: {ff9900}SA-RP.NET");
    format(str4, sizeof(str), "{ffffff} -> Forum: {993300}SA-RP.NET");
    format(str5, sizeof(str), "{ffffff} -> Discord: {3399ff}dsc.gg/lscity");
    format(str6, sizeof(str), "{ffffff}Ban vui long dang nhap mat khau de dang nhap vao ben trong:");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6);
    format(name, sizeof(name), "DANG NHAP - {00ffff}%s", GetPlayerNameEx(playerid));
	ShowPlayerDialog(playerid, MAINMENU, DIALOG_STYLE_PASSWORD, name, str, "Dong y", "Huy Bo");
	
	return 1;
}

stock ShowDangKy(playerid) {
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
    format(str1, sizeof(str), "\\c {ffff00}{ff9900}Los {ff0000}Santos {ffffff}City");
    format(str2, sizeof(str), "{ffffff} -> IP: {ff9900}SA-RP.NET");
    format(str4, sizeof(str), "{ffffff} -> Forum: {993300}FORUM.SA-RP.NET");
    format(str5, sizeof(str), "{ffffff} -> Discord: {3399ff}dsc.gg/lscity");
    format(str6, sizeof(str), "{ffffff}Ban vui long dang nhap mat khau de dang ky vao ben trong:");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6);
    format(name, sizeof(name), "DANG KY - {00ffff}%s", GetPlayerNameEx(playerid));
	ShowPlayerDialog(playerid, MAINMENU2, DIALOG_STYLE_PASSWORD, name, str, "Dong y", "Huy Bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == DIALOG_DANGKY1)
	{
		if(response)
		{
			if(listitem == 0)
			{
				BangTaoNhanVat(playerid);
			}
			if(listitem == 1)
			{
				ShowPlayerDialog(playerid, REGISTERSEX, DIALOG_STYLE_LIST, "{FF0000}Nhan vat cua ban gioi tinh gi?", "Nam\nNu", "Lua chon", "");
			}
			if(listitem == 2)
			{
				ShowPlayerDialog(playerid, REGISTERMONTH, DIALOG_STYLE_LIST, "{FF0000}Nhan vat cua ban duoc sinh ra thang nao?", "Thang 1\nThang 2\nThang 3\nThang 4\nThang 5\nThang 6\nThang 7\nThang 8\nThang 9\nThang 10\nThang 11\nThang 12", "Lua chon", "");
			}
			if(listitem == 3)
			{
				ShowPlayerDialog(playerid, TRANGPHUC, DIALOG_STYLE_INPUT, "Chon trang phuc", "Hay dien ID skin ban thich vao.", "Lua chon", "Huy bo");
			}
			if(listitem == 4)
			{
				BangTaoNhanVat(playerid);
			}
			if(listitem == 5)
			{
				if(GetPVarInt(playerid, "GioiTinh") == 0 || GetPVarInt(playerid, "RegisterDay") == 0 || GetPVarInt(playerid, "RegisterMonth") == 0 || GetPVarInt(playerid, "RegisterYear") == 0)
				{
					SendClientMessageEx(playerid, COLOR_RED, "Ban chua hoan tat tao nhan vat. Xin vui long hoan tat de tien hanh buoc tiep theo");
 					BangTaoNhanVat(playerid);
				}
				else
				{
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
					PlayerInfo[playerid][pCash] = 50000;
					PlayerInfo[playerid][pMats] = 0;
					
					new randphone = 99999 + random(900000);
					new query[128];
					SetPVarInt(playerid, "WantedPh", randphone);
					SetPVarInt(playerid, "CurrentPh", PlayerInfo[playerid][pPnumber]);
					format(query, sizeof(query), "SELECT `Username` FROM `accounts` WHERE `PhoneNr` = '%d'",randphone);
					mysql_function_query(MainPipeline, query, true, "OnPhoneNumberCheck", "ii", playerid, 2);

					PlayerInfo[playerid][pSpeedo] = 0;
					SetCameraBehindPlayer(playerid);
					SetPlayerVirtualWorld(playerid, 0);

					SendClientMessage(playerid, -1, "{00ffff}Hay cung nhau tao ra mot san choi lanh manh nao <3.");

					new string128[128], name[1280];
				    GetPlayerName(playerid,name,24);
				    format(string128,sizeof(string128),"{FFFF00}Luu y: %s (ID: %i) vua dang ky tham gia may chu",name,playerid);
				    ABroadCast(COLOR_YELLOW , string128, 1);

				    SetPlayerPos(playerid, 1757.5959,-1894.0575,13.5562);
					SetPlayerFacingAngle(playerid, 268.1693);
					SetCameraBehindPlayer(playerid);
					SetPlayerVirtualWorld(playerid, 0);
					cmd_saveaccount(playerid, "");
				}
			}
		}
		else return BangTaoNhanVat(playerid);
	}
	if(dialogid == TRANGPHUC)
	{
		if(response)
		{
            new skin = strval(inputtext);
			if(IsTrangPhuc(skin))
			{
				return ShowPlayerDialog(playerid, TRANGPHUC, DIALOG_STYLE_INPUT, "Chon trang phuc", "Skin da chon khong hop le. Vui long chon skin khac.", "Lua chon", "Huy bo");
			}
			PlayerInfo[playerid][pModel] = skin;
			SetPlayerSkin(playerid, PlayerInfo[playerid][pModel]);
			BangTaoNhanVat(playerid);
		}
		else return BangTaoNhanVat(playerid);
	}
    return 1;
}

stock BangTaoNhanVat(playerid)
{
	new string[2048], gioitinh[64];
	new ngay = GetPVarInt(playerid, "RegisterDay");
	new thang = GetPVarInt(playerid, "RegisterMonth");
 	new nam = GetPVarInt(playerid, "RegisterYear");
	if(GetPVarInt(playerid, "GioiTinh") == 0)
	{
		format(gioitinh, sizeof(gioitinh), "Khong xac dinh");
	}
	if(GetPVarInt(playerid, "GioiTinh") == 1)
	{
		format(gioitinh, sizeof(gioitinh), "Nam");
	}
	if(GetPVarInt(playerid, "GioiTinh") == 2)
	{
		format(gioitinh, sizeof(gioitinh), "Nu");
	}
	format(string, sizeof(string), "Ten:\t\t%s\nGioi Tinh:\t\t%s\nNgay-Thang-Nam Sinh:\t\t%d-%d-%d\nTrang Phuc\n-------------------\nHoan tat tao nhan vat.", GetPlayerNameEx(playerid), gioitinh, ngay, thang, nam);
	ShowPlayerDialog(playerid, DIALOG_DANGKY1, DIALOG_STYLE_LIST, "Tao nhan vat", string, "Chon", "");
	return 1;
}

stock IsTrangPhuc(skinid)
{
	switch (skinid)
	{
		case
		0, 74, 165, 265, 266, 267, 274, 275, 276, 277, 278, 279,
		280, 281, 282, 283, 284, 285, 286, 287, 288, 300, 301, 302,
		306, 307, 308, 309, 310, 311: return 1;
	}

	return 0;
}
