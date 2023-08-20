#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//
#define         TIMDUONG            (7015)
#define         TIMDUONG_MAIN            (7016)
#define 		DIALOG_TIMNHA				(7017)
#define 		DIALOG_TIMCUAHANG				(7018)
#define         DIALOG_TIMKHUSUAXE                  (7019)

CMD:timduong(playerid, params[]) {
	ShowPlayerDialog(playerid, TIMDUONG_MAIN, DIALOG_STYLE_LIST, "Ban muon tim gi?", "Tim duong\nTim nha\nTim khu vuc ban thuc an nhanh", "Dong y", "Huy bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == TIMDUONG_MAIN && response == 1) {
		if(listitem == 0) return ShowPlayerDialog(playerid, TIMDUONG, DIALOG_STYLE_LIST, "Ban muon tim gi?", "Garage Do Xe\nTap Hoa 24/7 (1)\nTap hoa 24/7 (2)\nBenh Vien 1\nBenh Vien 2\nCity Hall\nTru So Canh Sat [LSPD]\nShop Xe Cu~\nShop Xe VIP\nPhong Tap Gym\nNgan Hang\nLay Vat Lieu\nCay Xang (1)\nCay xang (2)\nDMV\nShop Sung\nBinco (cua hang quan ao).", "Dong y", "Huy bo");
		if(listitem == 1) {
			new string[35000];
			new str[35000];
			for(new houseid = 0; houseid < 100; houseid++) {
				if(HouseInfo[houseid][hExteriorX] !=  50000) {
					if(HouseInfo[houseid][hOwned]) {

						if(HouseInfo[houseid][hRentable]) format(string, sizeof(string), "%s\n{00ff99}HOUSE{FFFFFF}\tSo huu: {00FF00}%s{FFFFFF}", string, StripUnderscore(HouseInfo[houseid][hOwnerName]));
						else format(string, sizeof(string), "%s\n{00ff99}HOUSE{FFFFFF}\tSo huu: {00FF00}%s{FFFFFF}", string, StripUnderscore(HouseInfo[houseid][hOwnerName]));
					}
					else format(string, sizeof(string), "%s\n{00ff99}SELL HOUSE - ID: {ff9900}%d{FFFFFF}", string, houseid);
				}
			}
		    format(str, sizeof(str), "%s", string);
			ShowPlayerDialog(playerid, DIALOG_TIMNHA, DIALOG_STYLE_LIST, "TIM NHA", str, "Lua chon", "Huy bo");
		}
		/*if(listitem == 2) {
			new string[15000];
			new str[15000];
			for(new i = 0; i < 100; i++) {
				if(Businesses[i][bExtPos][0] !=  0) {
					format(string, sizeof(string), "%s\n{00ff99}%s{FFFFFF}", string, GetBusinessTypeName(Businesses[i][bType]));
				}
			}
		    format(str, sizeof(str), "%s", string);
			ShowPlayerDialog(playerid, DIALOG_TIMCUAHANG, DIALOG_STYLE_LIST, "TIM CUA HANG", str, "Lua chon", "Huy bo");
		}*/
		if(listitem == 2) {
			ShowKhuVucBanHang(playerid);
		}
	}
	if(dialogid == DIALOG_TIMCUAHANG && response == 1) {
		for(new i = 0; i < 100; i++) {
			if(listitem == i) {
				if(Businesses[i][bExtPos][0] !=  0) {
					PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
					SetPlayerCheckpoint(playerid, Businesses[i][bExtPos][0], Businesses[i][bExtPos][1], Businesses[i][bExtPos][2], 3.0);
	                CP[playerid] = 252000;
	                SendClientMessage(playerid, -1, "[TIM CUA HANG] Vi tri cua hang da duoc danh dau tren ban do.");
	                return 1;
				}
			}
		}
	}
	if(dialogid == DIALOG_TIMNHA && response == 1) {
		for(new houseid = 0; houseid < 100; houseid++) {
			if(listitem == houseid) {
				if(HouseInfo[houseid][hExteriorX] != 50000) {
					PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
					SetPlayerCheckpoint(playerid, HouseInfo[houseid][hExteriorX], HouseInfo[houseid][hExteriorY], HouseInfo[houseid][hExteriorZ], 3.0);
	                CP[playerid] = 252000;
	                SendClientMessage(playerid, -1, "[TIM NHA] Vi tri can nha da duoc danh dau tren ban do.");
	                return 1;
				}
			}
		}
	}
	if(dialogid == TIMDUONG)
	{
	    if(response)
	    {
	       	if(listitem == 0) // Garage Do Xe
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1041.3353,-1026.3264,32.1016, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 1) // Tap Hoa 24/7
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1828.9513,-1843.0455,13.1523, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 2) // Tap Hoa 24/7 (2)
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1000.5936,-919.9193,42.3281, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 3) // Benh Vien1
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 2000.9268,-1446.4191,13.1351, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 4) // Benh Vien2
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1194.7289,-1322.4846,12.9726, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 5) // CityHall
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1488.8085,-1766.8197,13.1211, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			/*if(listitem == 6) // Ban Can Sa
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 655.4564,-499.5324,16.3359, 3.0);
                CP[playerid] = 252000;
				return 1;
			}*/
			if(listitem == 6) // Tru So Canh Sat
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1535.3243,-1675.9125,12.9570, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 7) // Shop Xe [BinhDan]
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1637.5072,-1095.5820,23.9063, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 8) // Shop Xe [TrungCap]
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1786.0482,-1708.0576,13.3732, 3.0);
                CP[playerid] = 252000;
				return 1;
			}

			if(listitem == 9) // Phong Tap Gym
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 2227.139892,-1723.410034,13.552499, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 10) // Ngan Hang
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1464.1567,-1026.1082,23.8281, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 12) // Lay Vat Lieu
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 2391.5669,-2009.7473,13.2192, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 12) // Cay Xang
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1947.7874,-1772.8467,13.5469, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 13) // Cay Xang (2)
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1000.1259,-937.6550,42.3281, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 14) // DMV
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1481.1294,-1762.6952,18.7958, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 15) // Shop Sung
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1363.0603,-1279.0260,13.5469, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 16) // Binco
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1087.6322,-922.4803,43.3906, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			/*if(listitem == 17) // Giao vat lieu
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 901.3557,-1204.0228,16.9832, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 18) // Giao trai cay
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 867.225219, -1203.283569, 16.976562, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 19) // Hai can sa
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, -1090.496704, -1640.435668, 76.367187, 3.0);
                CP[playerid] = 252000;
				return 1;
			}
			if(listitem == 20) // Thi bang lai
		    {
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 2048.5186,-1898.3275,13.5690, 3.0);
                CP[playerid] = 252000;
				return 1;
			}*/
		}
	}
	return 1;
}
