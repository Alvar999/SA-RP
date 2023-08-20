#include <a_samp>
#include <YSI\y_hooks>

#define 		NHAPCODE					(5165)
new LockRefund = 0;

CMD:nhapcode(playerid)
{
	if(gPlayerLogged{playerid} > 0) ShowPlayerDialog(playerid,NHAPCODE,DIALOG_STYLE_INPUT,"Nhap ma code","Vui long nhap code de nhan qua","Nhan qua","Huy");
	else SendClientMessage(playerid,-1, "Ban can dang nhap de nhap code !");
	return 1;
}

CMD:lockrefund(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337) {
		if(LockRefund == 0) {
            LockRefund = 1;
            SendClientMessage(playerid, COLOR_YELLOW, "Ban da khoa chuc nang #Refund thanh cong.");
		}else {
            LockRefund = 0;
            SendClientMessage(playerid, COLOR_YELLOW, "Ban da mo khoa chuc nang #Refund thanh cong.");
		}
	}
	return 1;
}

CMD:refund(playerid, params[])
{
	if(LockRefund == 1) {
	    SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chuc nang nay da bi khoa.");
		return 1;
	}
	if(PlayerInfo[playerid][pQuaTang] < 2)
	{
	    if(PlayerInfo[playerid][pLevel] < 2) {
	        SendClientMessage(playerid, COLOR_YELLOW, "Ban can dat cap do 2 de nhan #Refund nay.");
			return 1;
		}
		PlayerInfo[playerid][pQuaTang] += 1;

		PlayerInfo[playerid][pnDP] += 100;
		SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan duoc quang tang tu may chu thanh cong.");
		SendClientMessage(playerid, COLOR_YELLOW, "Phan thuong: 100 Cre.");
		return 1;
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan qua tang may chu truoc do roi, khong the nhan tiep tuc.");
	return 1;
}

CMD:quatang(playerid) 
{
	if(PlayerInfo[playerid][pQuaTang] < 2)
	{
	    if(PlayerInfo[playerid][pSoLanGiaoTrucker] < 19) {
	        SendClientMessage(playerid, COLOR_YELLOW, "Ban can phai hoan thanh 20 chuyen #Trucker de nhan qua tang.");
			return 1;
		}
		PlayerInfo[playerid][pQuaTang] += 1;

		PlayerInfo[playerid][pCash] += 500000;
		new vehicle = random(5);

		new Float: arr_fPlayerPos[4];
		GetPlayerPos(playerid, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2]);
		GetPlayerFacingAngle(playerid, arr_fPlayerPos[3]);
	
		switch(vehicle) {
			case 0..1: CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), 426, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], random(255), random(255), 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			case 2: CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), 429, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], random(255), random(255), 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			case 3: CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), 436, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], random(255), random(255), 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			case 4: CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), 442, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], random(255), random(255), 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
			case 5: CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), 462, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], random(255), random(255), 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
		}
		SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan duoc quang tang tu may chu thanh cong.");
		SendClientMessage(playerid, COLOR_YELLOW, "Phan thuong: 1,000,000$ va Mot phuong tien mien phi.");
		return 1;
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan qua tang may chu truoc do roi, khong the nhan tiep tuc.");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	new string[15000];
    if(dialogid == NHAPCODE)
	{
	    if(!response) SendClientMessage(playerid, -1, "{FF0000}[!] {FFFFFF}Ban da huy bo thao tac nhap code de nhan qua !");
    	if(response)
		{
			new donate;
	 		new file = ini_openFile("/macode/code.txt");
	 		new file2 = ini_openFile("/macode/dasudung.txt");
			if(ini_getInteger(file, inputtext, donate) == 0)
			{
				if(donate == 1)
				{
			    	if(PlayerInfo[playerid][pConnectHours] < 2)
					{
					    SendClientMessageEx(playerid, COLOR_GREY, "Ban can toi thieu 2 gio choi moi nhap duoc code nay.");
					    return 1;
					}
					if(PlayerInfo[playerid][pGiftTime] > 0)
					{
                        format(string, sizeof(string), "Ban con %d phut tiep theo de nhap code.", PlayerInfo[playerid][pGiftTime]);
                        SendClientMessageEx(playerid, COLOR_GREY, string);
					    return 1;
					}
					else
					{
						switch(random(8))
						{
							case 0,1,2,3,4,5,6,7,8:
							{
		    					new xe[] = {604,605,400,402,404,405, 410,415,421,426,429,445 , 458,463,468,474,480,494,506};
								new namecar[128];
								new randomxe = xe[random(19)];
								switch(randomxe)
								{
									case 604: namecar = "Glendale Shit";
									case 605: namecar = "Sadler Shit";
									case 400: namecar = "Landstalker";
									case 402: namecar = "Buffalo";
									case 404: namecar = "Perenail";
									case 405: namecar = "Sentinel";
									case 410: namecar = "Manana";
									case 415: namecar = "Cheetah";
									case 421: namecar = "Washington";
									case 426: namecar = "Premier";
									case 429: namecar = "Banshee";
									case 445: namecar = "Admiral";
									case 458: namecar = "Solair";
									case 463: namecar = "Freeway";
									case 468: namecar = "Sanchez";
									case 474: namecar = "Hermes";
									case 480: namecar = "Comet";
									case 494: namecar = "Hotring";
									case 506: namecar = "	Super GT";
								}
	 							new Float: arr_fPlayerPos[4];
	        					PlayerInfo[playerid][pVehicleSlot] += 1;
								GetPlayerPos(playerid, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2]);
								GetPlayerFacingAngle(playerid, arr_fPlayerPos[3]);
								format(string, sizeof(string), "SV.SA-RP.NET: {FFFFFF}%s{FF6347} nhan duoc 1 chiec %s va 1 slot xe tu ma code {FFFFFF}%s{FF6347}.", GetPlayerNameEx(playerid), namecar, inputtext);
	                            SendClientMessageToAll(COLOR_LIGHTRED, string);
	                            CreatePlayerVehicle(playerid, GetPlayerFreeVehicleId(playerid), randomxe, arr_fPlayerPos[0], arr_fPlayerPos[1], arr_fPlayerPos[2], arr_fPlayerPos[3], random(255), random(255), 2000000, GetPlayerVirtualWorld(playerid), GetPlayerInterior(playerid));
							}
						}
					}
					PlayerInfo[playerid][pGiftTime] = 300;
  					ini_removeKey(file,inputtext);
					new File:lFile = fopen("/macode/dasudung.txt", io_append), logData[178];
					format(logData, sizeof(logData),"%s = 1\r%s\n", inputtext, GetPlayerNameEx(playerid));
					fwrite(lFile, logData);
					fclose(lFile);
					return 1;
				}
 				if(donate == 2)
				{
			    	if(PlayerInfo[playerid][pConnectHours] < 2)
					{
					    SendClientMessageEx(playerid, COLOR_GREY, "Ban can toi thieu 2 gio choi moi nhap duoc code nay.");
					    return 1;
					}
					if(PlayerInfo[playerid][pGiftTime] > 0)
					{
                        SendClientMessageEx(playerid, COLOR_RED, "Ban da nhan ma code nay roi!");
					    return 1;
					}
					else
					{
						format(string, sizeof(string), "SV.SA-RP.NET: {FFFFFF}%s{FF6347} nhan duoc 1 Car Vouchers tu ma code {FFFFFF}%s{FF6347}.", GetPlayerNameEx(playerid), inputtext);
						SendClientMessageToAll(COLOR_LIGHTRED, string);
                        PlayerInfo[playerid][pGiftTime] = 300;
                        PlayerInfo[playerid][pVehVoucher] += 1;
					}
  					ini_removeKey(file,inputtext);
					new File:lFile = fopen("/macode/dasudung.txt", io_append), logData[178];
					format(logData, sizeof(logData),"%s = 1\r%s\n", inputtext, GetPlayerNameEx(playerid));
					fwrite(lFile, logData);
					fclose(lFile);
					return 1;
				}
				if(donate == 3)
				{
			    	if(PlayerInfo[playerid][pConnectHours] < 4)
					{
					    SendClientMessageEx(playerid, COLOR_GREY, "Ban can toi thieu 4 gio choi moi nhap duoc code nay.");
					    return 1;
					}
					if(PlayerInfo[playerid][pGiftTime] > 0)
					{
                        format(string, sizeof(string), "Ban con %d phut tiep theo de nhap code.", PlayerInfo[playerid][pGiftTime]);
                        SendClientMessageEx(playerid, COLOR_GREY, string);
					    return 1;
					}
					else
					{
					    new credits = random(10000), money = random(5000000);
						PlayerInfo[playerid][pCredits] += credits;
						GivePlayerCash(playerid, money);
						format(string, sizeof(string), "SV.SA-RP.NET: {FFFFFF}%s{FF6347} nhan duoc %s vat lieu va $%s tu ma code {FFFFFF}%s{FF6347}.", GetPlayerNameEx(playerid), number_format(credits), number_format(money), inputtext);
						SendClientMessageToAll(COLOR_LIGHTRED, string);
					}
					PlayerInfo[playerid][pGiftTime] = 300;
  					ini_removeKey(file,inputtext);
					new File:lFile = fopen("/macode/dasudung.txt", io_append), logData[178];
					format(logData, sizeof(logData),"%s = 1\r%s\n", inputtext, GetPlayerNameEx(playerid));
					fwrite(lFile, logData);
					fclose(lFile);
					return 1;
				}
				if(donate >= 5)
				{
					if(ini_getInteger(file2, inputtext, donate) == 0)
					{
		   				if(donate == 1)
						{
                            SendClientMessageEx(playerid, COLOR_RED, "[!] Code da duoc su dung.");
      					}
						if(donate >= 2)
						{
						    SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Code khong hop le !");
						}
					}
					else
					{
						SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Code khong hop le !");
					}
					return 1;
				}
				if(donate == 0)
				{
				    ini_removeKey(file,inputtext);
					if(ini_getInteger(file2, inputtext, donate) == 0)
					{
		   				if(donate == 1)
						{
                            SendClientMessageEx(playerid, COLOR_RED, "[!] Code da duoc su dung.");
      					}
						if(donate >= 2)
						{
						    SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Code khong hop le !");
						}
					}
					else
					{
						SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Code khong hop le !");
					}
					return 1;
				}
			}
			else
			{
			    ini_removeKey(file,inputtext);
				if(ini_getInteger(file2, inputtext, donate) == 0)
				{
	   				if(donate == 1)
					{
                        SendClientMessageEx(playerid, COLOR_RED, "[!] Code da duoc su dung.");
  					}
					if(donate >= 2)
					{
					    SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Code khong hop le !");
					}
				}
				else
				{
					SendClientMessage(playerid,-1,"{FF0000}[!] {FFFFFF}Code khong hop le !");
				}
			}
			ini_closeFile(file);
		}
	}
	return 1;
}
