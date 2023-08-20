#include <a_samp>
#include <YSI\y_hooks>

#define         TAISANGUILD                 (6096)

#define         DIALOG_MONEYGUILD           (6097)
#define         DIALOG_MATSGUILD            (6098)
#define         DIALOG_KCGUILD              (6099)
#define         DIALOG_POTGUILD             (6100)
#define         DIALOG_CRACKGUILD           (6101)
#define			TAISAN_MONEY                (6102)
#define         DIALOG_TS_RUTMONEY          (6103)
#define         DIALOG_TS_GUIMONEY          (6104)
#define			TAISAN_VATLIEU              (6105)
#define         DIALOG_TS_RUTVL          	(6106)
#define         DIALOG_TS_GUIVL          	(6107)
#define			TAISAN_CREDITS              (6108)
#define         DIALOG_TS_RUTKC          	(6109)
#define         DIALOG_TS_GUIKC          	(6110)
#define         TAISAN_POT                  (6111)
#define         DIALOG_TS_RUTPOT          	(6112)
#define         DIALOG_TS_GUIPOT          	(6113)
#define         TAISAN_CRACK                (6114)
#define         DIALOG_TS_RUTCRACK          (6115)
#define         DIALOG_TS_GUICRACK          (6116)


stock ShowTaiSanGuild(playerid){
    ShowPlayerDialog(playerid, TAISANGUILD, DIALOG_STYLE_LIST, "TAI SAN GUILD","Money\nVat lieu\nCredits\nPot\nCrack.", "Lua chon", "Huy bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == TAISANGUILD)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
                case 0: // MONEY
	  			{
	  			    if(PlayerInfo[playerid][pAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 99999)
					{
						SendClientMessageEx(playerid, COLOR_GREY, "Ban hien la Administrator khong duoc phep tham gia IC.");
						return 1;
					}
	  			    ShowPlayerDialog(playerid, TAISAN_MONEY, DIALOG_STYLE_LIST, "TAI SAN GUILD | MONEY","Xem\nRut\nGui", "Lua chon", "Huy bo");
	  			}
	  			case 1: // Vat Lieu
	  			{
	  			    if(PlayerInfo[playerid][pAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 99999)
					{
						SendClientMessageEx(playerid, COLOR_GREY, "Ban hien la Administrator khong duoc phep tham gia IC.");
						return 1;
					}
	  			    ShowPlayerDialog(playerid, TAISAN_VATLIEU, DIALOG_STYLE_LIST, "TAI SAN GUILD | VAT LIEU","Xem\nRut\nGui", "Lua chon", "Huy bo");
	  			}
	  			case 2: // Credits
	  			{
	  			    if(PlayerInfo[playerid][pAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 99999)
					{
						SendClientMessageEx(playerid, COLOR_GREY, "Ban hien la Administrator khong duoc phep tham gia IC.");
						return 1;
					}
	  			    ShowPlayerDialog(playerid, TAISAN_CREDITS, DIALOG_STYLE_LIST, "TAI SAN GUILD | CREDITS","Xem\nRut\nGui", "Lua chon", "Huy bo");
	  			}
	  			case 3: // Pot
	  			{
	  			    if(PlayerInfo[playerid][pAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 99999)
					{
						SendClientMessageEx(playerid, COLOR_GREY, "Ban hien la Administrator khong duoc phep tham gia IC.");
						return 1;
					}
	  			    ShowPlayerDialog(playerid, TAISAN_POT, DIALOG_STYLE_LIST, "TAI SAN GUILD | POT","Xem\nRut\nGui", "Lua chon", "Huy bo");
	  			}
	  			case 4: // Crack
	  			{
	  			    if(PlayerInfo[playerid][pAdmin] > 0 && PlayerInfo[playerid][pAdmin] < 99999)
					{
						SendClientMessageEx(playerid, COLOR_GREY, "Ban hien la Administrator khong duoc phep tham gia IC.");
						return 1;
					}
	  			    ShowPlayerDialog(playerid, TAISAN_CRACK, DIALOG_STYLE_LIST, "TAI SAN GUILD | CRACK","Xem\nRut\nGui", "Lua chon", "Huy bo");
	  			}
			}
		}
	}

	if(dialogid == TAISAN_CRACK)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
                case 0: // MONEY
	  			{
				    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || CRACK");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so crack dang co : {00ffff}%d.", arrGroupData[iGroupID][TS_Crack]);
				    format(str, sizeof(str), "%s\n%s\n%s", str1,str2,str3);
				    format(name, sizeof(name), "TAI SAN GUILD | CRACK");
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	  			}
	  			case 1: // RUT TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || CRACK");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so crack dang co : {00ff00}%d.", arrGroupData[iGroupID][TS_Crack]);
				    format(str4, sizeof(str), "Neu ban muon rut crack , ban vui long nhap so crack ban muon rut: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | CRACK");
					ShowPlayerDialog(playerid, DIALOG_TS_RUTCRACK, DIALOG_STYLE_INPUT, name, str, "Rut ngay", "Huy Bo");
	  			}
	  			case 2: // GUI  TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || CRACK");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so crack dang co : {ff0000}%d.", arrGroupData[iGroupID][TS_Crack]);
				    format(str4, sizeof(str), "Neu ban muon gui crack , ban vui long nhap so crack ban muon dong gop cho guild: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | CRACK");
					ShowPlayerDialog(playerid, DIALOG_TS_GUICRACK, DIALOG_STYLE_INPUT, name, str, "Gui ngay", "Huy Bo");
	  			}
			}
		}
	}

	if(dialogid == DIALOG_TS_RUTCRACK && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new ruttien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

	    if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(arrGroupData[iGroupID][TS_Crack] > 0)
		{
		    if(arrGroupData[iGroupID][TS_Crack] >= ruttien)
		    {
		        if(ruttien > 1900000000 || ruttien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(ruttien < 0 && ruttien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(PlayerInfo[playerid][pLeader] > 0)
				    {
			            new str[1280];
						format(str, sizeof(str), "Ban vua rut thanh cong {00ff00}[%d CRACK]{FFFFFF} trong tu do va tong so CRACK con lai la {00ff00}[%d CRACK]{FFFFFF}.", ruttien, (arrGroupData[iGroupID][TS_Crack] - ruttien));
						SendClientMessage(playerid, -1, str);

	                    new ruttiencc[1280];
	                    format(ruttiencc, sizeof(ruttiencc), "{ffffff}vua rut [%d CRACK] trong tu do va tong so credits con lai la {00ff00}[%d CRACK].", ruttien, (arrGroupData[iGroupID][TS_Crack] - ruttien));
						cmd_g(playerid, ruttiencc);

						arrGroupData[iGroupID][TS_Crack] -= ruttien;
						PlayerInfo[playerid][pCrack] += ruttien;

						new logruttien[1280];
                        format(logruttien, sizeof(logruttien), "%s vua rut [%d CRACK] trong tu do va tong so credits con lai la [%d CRACK].", GetPlayerNameEx(playerid), ruttien, (arrGroupData[iGroupID][TS_Crack] - ruttien));
						Log("logs/rutcrackguild.log", logruttien);
					}
				}
		    }else SendClientMessage(playerid, -1, "Guild ban khong co nhieu crack nhu so crack ban nhap de rut!");
		}else SendClientMessage(playerid, -1, "Hien tai guild ban chua co crack de rut!");
	}

	if(dialogid == DIALOG_TS_GUICRACK && response == 1)
	{
	    if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new guitien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

		if(PlayerInfo[playerid][pCrack] > 0)
		{
		    if(PlayerInfo[playerid][pCrack] >= guitien)
		    {
		        if(guitien > 1900000000 || guitien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(guitien < 0 && guitien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(arrGroupData[iGroupID][TS_Pot] < 1900000000)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua gui thanh cong {ff0000}[%d CRACK]{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], guitien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua gui thanh cong {00ff00}[%d CRACK]{FFFFFF} vao trong tu do guild tong so tien la {00ffff}[%d CRACK]{FFFFFF}.", guitien, (arrGroupData[iGroupID][TS_Crack] + guitien));
						SendClientMessage(playerid, -1, str);

						new guitiencc[1280];
	                    format(guitiencc, sizeof(guitiencc), "vua gui [%d CRACK] vao tu do va tong so tien con lai la {00ff00}[%d CRACK].", guitien, (arrGroupData[iGroupID][TS_Crack] + guitien));
						cmd_g(playerid, guitiencc);

						arrGroupData[iGroupID][TS_Crack] += guitien;
						PlayerInfo[playerid][pCrack] -= guitien;

                        new logruttien[1280];
                        format(logruttien, sizeof(logruttien), "%s vua gui [%d CRACK] vao tu do va tong so tien con lai la {00ff00}[%d CRACK].", GetPlayerNameEx(playerid), guitien, (arrGroupData[iGroupID][TS_Crack] + guitien));
						Log("logs/guipotguild.log", logruttien);
					}else SendClientMessage(playerid, -1, "Gui cua ban da day crack khong the bo them duoc nua~");
				}
		    }else SendClientMessage(playerid, -1, "So crack ban hien co khong du so voi so crack ban nhap");
		}else SendClientMessage(playerid, -1, "So crack ban hien co khong du so voi so crack ban nhap");
	}

	//_____________________________---------------------------------------------------------------------------

	if(dialogid == TAISAN_POT)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
                case 0: // MONEY
	  			{
				    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || POT");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so pot dang co : {00ffff}%d.", arrGroupData[iGroupID][TS_Pot]);
				    format(str, sizeof(str), "%s\n%s\n%s", str1,str2,str3);
				    format(name, sizeof(name), "TAI SAN GUILD | POT");
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	  			}
	  			case 1: // RUT TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || POT");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so pot dang co : {00ff00}%d.", arrGroupData[iGroupID][TS_Pot]);
				    format(str4, sizeof(str), "Neu ban muon rut pot , ban vui long nhap so pot ban muon rut: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | POT");
					ShowPlayerDialog(playerid, DIALOG_TS_RUTPOT, DIALOG_STYLE_INPUT, name, str, "Rut ngay", "Huy Bo");
	  			}
	  			case 2: // GUI  TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || POT");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so pot dang co : {ff0000}%d.", arrGroupData[iGroupID][TS_Pot]);
				    format(str4, sizeof(str), "Neu ban muon gui pot , ban vui long nhap so pot ban muon dong gop cho guild: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | POT");
					ShowPlayerDialog(playerid, DIALOG_TS_GUIPOT, DIALOG_STYLE_INPUT, name, str, "Gui ngay", "Huy Bo");
	  			}
			}
		}
	}

	if(dialogid == DIALOG_TS_RUTPOT && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new ruttien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

    	if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(arrGroupData[iGroupID][TS_Pot] > 0)
		{
		    if(arrGroupData[iGroupID][TS_Pot] >= ruttien)
		    {
		        if(ruttien > 1900000000 || ruttien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(ruttien < 0 && ruttien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(PlayerInfo[playerid][pLeader] > 0)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua rut thanh cong {ff0000}[%d] POT{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], ruttien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua rut thanh cong {00ff00}[%d POT]{FFFFFF} trong tu do va tong so POT con lai la {00ff00}[%d POT]{FFFFFF}.", ruttien, (arrGroupData[iGroupID][TS_Pot] - ruttien));
						SendClientMessage(playerid, -1, str);

	                    new ruttiencc[1280];
	                    format(ruttiencc, sizeof(ruttiencc), "{ffffff}vua rut [%d POT] trong tu do va tong so credits con lai la {00ff00}[%d POT].", ruttien, (arrGroupData[iGroupID][TS_Pot] - ruttien));
						cmd_g(playerid, ruttiencc);

						arrGroupData[iGroupID][TS_Pot] -= ruttien;
						PlayerInfo[playerid][pPot] += ruttien;

                        new logruttien[1280];
                        format(logruttien, sizeof(logruttien), "%s vua rut [%d POT] trong tu do va tong so credits con lai la [%d POT].", GetPlayerNameEx(playerid), ruttien, (arrGroupData[iGroupID][TS_Pot] - ruttien));
						Log("logs/rutpotguild.log", logruttien);
					}else SendClientMessage(playerid, -1, "Ban khong the su dung chuc nang nay , chi co leader!");
				}
		    }else SendClientMessage(playerid, -1, "Guild ban khong co nhieu pot nhu so pot ban nhap de rut!");
		}else SendClientMessage(playerid, -1, "Hien tai guild ban chua co pot de rut!");
	}

	if(dialogid == DIALOG_TS_GUIPOT && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new guitien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

        if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(PlayerInfo[playerid][pPot] > 0)
		{
		    if(PlayerInfo[playerid][pPot] >= guitien)
		    {
		        if(guitien > 1900000000 || guitien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(guitien < 0 && guitien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(arrGroupData[iGroupID][TS_Pot] < 1900000000)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua gui thanh cong {ff0000}[%d POT]{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], guitien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua gui thanh cong {00ff00}[%d POT]{FFFFFF} vao trong tu do guild tong so tien la {00ffff}[%d POT]{FFFFFF}.", guitien, (arrGroupData[iGroupID][TS_Pot] + guitien));
						SendClientMessage(playerid, -1, str);

						new guitiencc[1280];
	                    format(guitiencc, sizeof(guitiencc), "vua gui [%d POT] vao tu do va tong so tien con lai la {00ff00}[%d POT].", guitien, (arrGroupData[iGroupID][TS_Pot] + guitien));
						cmd_g(playerid, guitiencc);

						arrGroupData[iGroupID][TS_Pot] += guitien;
						PlayerInfo[playerid][pPot] -= guitien;
						
                        new logruttien[1280];
                        format(logruttien, sizeof(logruttien), "%s vua gui [%d POT] vao tu do va tong so tien con lai la [%d POT].", GetPlayerNameEx(playerid), guitien, (arrGroupData[iGroupID][TS_Pot] + guitien));
						Log("logs/guipotguild.log", logruttien);
					}else SendClientMessage(playerid, -1, "Gui cua ban da day pot khong the bo them duoc nua~");
				}
		    }else SendClientMessage(playerid, -1, "So pot ban hien co khong du so voi so pot ban nhap");
		}else SendClientMessage(playerid, -1, "So pot ban hien co khong du so voi so pot ban nhap");
	}

	//_____________________________---------------------------------------------------------------------------

	if(dialogid == TAISAN_CREDITS)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
                case 0: // MONEY
	  			{
				    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || CREDITS");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so credits dang co : {00ffff}%d.", arrGroupData[iGroupID][TS_Credits]);
				    format(str, sizeof(str), "%s\n%s\n%s", str1,str2,str3);
				    format(name, sizeof(name), "TAI SAN GUILD | CREDITS");
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	  			}
	  			case 1: // RUT TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || CREDITS");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so credits dang co : {00ff00}%d.", arrGroupData[iGroupID][TS_Credits]);
				    format(str4, sizeof(str), "Neu ban muon rut credits , ban vui long nhap so credits ban muon rut: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | CREDITS");
					ShowPlayerDialog(playerid, DIALOG_TS_RUTKC, DIALOG_STYLE_INPUT, name, str, "Rut ngay", "Huy Bo");
	  			}
	  			case 2: // GUI  TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || CREDITS");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so credits dang co : {ff0000}%d.", arrGroupData[iGroupID][TS_Credits]);
				    format(str4, sizeof(str), "Neu ban muon gui credits , ban vui long nhap so credits ban muon dong gop cho guild: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | CREDITS");
					ShowPlayerDialog(playerid, DIALOG_TS_GUIKC, DIALOG_STYLE_INPUT, name, str, "Gui ngay", "Huy Bo");
	  			}
			}
		}
	}

	if(dialogid == DIALOG_TS_RUTKC && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new ruttien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

        if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(arrGroupData[iGroupID][TS_Credits] > 0)
		{
		    if(arrGroupData[iGroupID][TS_Credits] >= ruttien)
		    {
		        if(ruttien > 1900000000 || ruttien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(ruttien < 0 && ruttien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(PlayerInfo[playerid][pLeader] > 0)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua rut thanh cong {ff0000}[%d] credits{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], ruttien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua rut thanh cong {00ff00}[%d credits]{FFFFFF} trong tu do va tong so credits con lai la {00ff00}[%d credits]{FFFFFF}.", ruttien, (arrGroupData[iGroupID][TS_Credits] - ruttien));
						SendClientMessage(playerid, -1, str);

	                    new ruttiencc[1280];
	                    format(ruttiencc, sizeof(ruttiencc), "{ffffff}vua rut [%d credits] trong tu do va tong so credits con lai la {00ff00}[%d credits].", ruttien, (arrGroupData[iGroupID][TS_Credits] - ruttien));
						cmd_g(playerid, ruttiencc);

						arrGroupData[iGroupID][TS_Credits] -= ruttien;
						PlayerInfo[playerid][pnDP] += ruttien;

	                    format(ruttiencc, sizeof(ruttiencc), "%s {ffffff}vua rut [%d credits] trong tu do va tong so credits con lai la {00ff00}[%d credits].", ruttien, (arrGroupData[iGroupID][TS_Credits] - ruttien));

						new logruttien[1280];
                        format(logruttien, sizeof(logruttien), "%s vua rut [%d credits] trong tu do va tong so credits con lai la [%d credits].", GetPlayerNameEx(playerid), ruttien, (arrGroupData[iGroupID][TS_Credits] - ruttien));
						Log("logs/rutcreditsguild.log", logruttien);
					}else SendClientMessage(playerid, -1, "Ban khong the su dung chuc nang nay , chi co leader!");
				}
		    }else SendClientMessage(playerid, -1, "Guild ban khong co nhieu credits nhu so credits ban nhap de rut!");
		}else SendClientMessage(playerid, -1, "Hien tai guild ban chua co credits de rut!");
	}

	if(dialogid == DIALOG_TS_GUIKC && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new guitien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

        if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(PlayerInfo[playerid][pnDP] > 0)
		{
		    if(PlayerInfo[playerid][pnDP] >= guitien)
		    {
		        if(guitien > 1900000000 || guitien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(guitien < 0 && guitien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(arrGroupData[iGroupID][TS_Credits] < 1900000000)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua gui thanh cong {ff0000}[%d credits]{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], guitien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua gui thanh cong {00ff00}[%d credits]{FFFFFF} vao trong tu do guild tong so tien la {00ffff}[%d credits]{FFFFFF}.", guitien, (arrGroupData[iGroupID][TS_Credits] + guitien));
						SendClientMessage(playerid, -1, str);

						new guitiencc[1280];
	                    format(guitiencc, sizeof(guitiencc), "vua gui [%d credits] vao tu do va tong so tien con lai la {00ff00}[%d credits].", guitien, (arrGroupData[iGroupID][TS_Credits] + guitien));
						cmd_g(playerid, guitiencc);

						arrGroupData[iGroupID][TS_Credits] += guitien;
						PlayerInfo[playerid][pnDP] -= guitien;
						
                        new logruttien[1280];
                        format(logruttien, sizeof(logruttien), "%s vua gui [%d credits] vao tu do va tong so tien con lai la [%d credits].", GetPlayerNameEx(playerid), guitien, (arrGroupData[iGroupID][TS_Credits] + guitien));
						Log("logs/guicreditsguild.log", logruttien);
					}else SendClientMessage(playerid, -1, "Gui cua ban da day credits khong the bo them duoc nua~");
				}
		    }else SendClientMessage(playerid, -1, "So credits ban hien co khong du so voi so credits ban nhap");
		}else SendClientMessage(playerid, -1, "So credits ban hien co khong du so voi so credits ban nhap");
	}

	//_____________________________---------------------------------------------------------------------------

	if(dialogid == TAISAN_VATLIEU)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
                case 0: // MONEY
	  			{
				    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || VAT LIEU");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so vat lieu dang co : {00ffff}%d.", arrGroupData[iGroupID][TS_VatLieu]);
				    format(str, sizeof(str), "%s\n%s\n%s", str1,str2,str3);
				    format(name, sizeof(name), "TAI SAN GUILD | VAT LIEU");
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	  			}
	  			case 1: // RUT TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || VAT LIEU");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so vat lieu dang co : {00ff00}%d.", arrGroupData[iGroupID][TS_VatLieu]);
				    format(str4, sizeof(str), "Neu ban muon rut vat lieu , ban vui long nhap so vat lieu ban muon rut: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | VAT LIEU");
					ShowPlayerDialog(playerid, DIALOG_TS_RUTVL, DIALOG_STYLE_INPUT, name, str, "Rut ngay", "Huy Bo");
	  			}
	  			case 2: // GUI  TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || VAT LIEU");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so vat lieu dang co : {ff0000}%d.", arrGroupData[iGroupID][TS_VatLieu]);
				    format(str4, sizeof(str), "Neu ban muon gui vat lieu , ban vui long nhap so vat lieu ban muon dong gop cho guild: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | VAT LIEU");
					ShowPlayerDialog(playerid, DIALOG_TS_GUIVL, DIALOG_STYLE_INPUT, name, str, "Gui ngay", "Huy Bo");
	  			}
			}
		}
	}

	if(dialogid == DIALOG_TS_RUTVL && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new ruttien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

        if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(arrGroupData[iGroupID][TS_VatLieu] > 0)
		{
		    if(arrGroupData[iGroupID][TS_VatLieu] >= ruttien)
		    {
		        if(ruttien > 1900000000 || ruttien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
          		if(ruttien < 0 && ruttien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(PlayerInfo[playerid][pLeader] > 0)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua rut thanh cong {ff0000}[%d] vat lieu{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], ruttien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua rut thanh cong {00ff00}[%d vat lieu]{FFFFFF} trong tu do va tong so vat lieu con lai la {00ff00}[%d vat lieu]{FFFFFF}.", ruttien, (arrGroupData[iGroupID][TS_VatLieu] - ruttien));
						SendClientMessage(playerid, -1, str);

	                    new ruttiencc[1280];
	                    format(ruttiencc, sizeof(ruttiencc), "{ffffff}vua rut [%d vat lieu] trong tu do va tong so vat lieu con lai la {00ff00}[%d vat lieu].", ruttien, (arrGroupData[iGroupID][TS_VatLieu] - ruttien));
						cmd_g(playerid, ruttiencc);

						arrGroupData[iGroupID][TS_VatLieu] -= ruttien;
						PlayerInfo[playerid][pMats] += ruttien;

	                    format(ruttiencc, sizeof(ruttiencc), "%s {ffffff}vua rut [%d vat lieu] trong tu do va tong so credits con lai la {00ff00}[%d vat lieu].", ruttien, (arrGroupData[iGroupID][TS_Credits] - ruttien));
						Log("logs/rutvatlieuguild.log", ruttiencc);
					}else SendClientMessage(playerid, -1, "Ban khong the su dung chuc nang nay , chi co leader!");
				}
		    }else SendClientMessage(playerid, -1, "Guild ban khong co nhieu vat lieu nhu so vat lieu ban nhap de rut!");
		}else SendClientMessage(playerid, -1, "Hien tai guild ban chua co vat lieu de rut!");
	}

	if(dialogid == DIALOG_TS_GUIVL && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new guitien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];

        if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(PlayerInfo[playerid][pMats] > 0)
		{
		    if(PlayerInfo[playerid][pMats] >= guitien)
		    {
		        if(guitien > 1900000000 || guitien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(guitien < 0 && guitien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(arrGroupData[iGroupID][TS_VatLieu] < 1900000000)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua gui thanh cong {ff0000}[%d vat lieu]{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], guitien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua gui thanh cong {00ff00}[%d vat lieu]{FFFFFF} vao trong tu do guild tong so tien la {00ffff}[%d vat lieu]{FFFFFF}.", guitien, (arrGroupData[iGroupID][TS_VatLieu] + guitien));
						SendClientMessage(playerid, -1, str);

						new guitiencc[1280];
	                    format(guitiencc, sizeof(guitiencc), "vua gui [%d vat lieu] vao tu do va tong so tien con lai la {00ff00}[%d vat lieu].", guitien, (arrGroupData[iGroupID][TS_VatLieu] + guitien));
						cmd_g(playerid, guitiencc);

						arrGroupData[iGroupID][TS_VatLieu] += guitien;
						PlayerInfo[playerid][pMats] -= guitien;
						
						Log("logs/guivatlieuguild.log", guitiencc);
					}else SendClientMessage(playerid, -1, "Gui cua ban da day vat lieu khong the bo them duoc nua~");
				}
		    }else SendClientMessage(playerid, -1, "So vat lieu ban hien co khong du so voi so vat lieu ban nhap");
		}else SendClientMessage(playerid, -1, "So vat lieu ban hien co khong du so voi so vat lieu ban nhap");
	}

	//_____________________________---------------------------------------------------------------------------

	if(dialogid == TAISAN_MONEY)
	{
	    if(response)
	    {
	        switch(listitem)
	        {
                case 0: // MONEY
	  			{
				    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || MONEY");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so tien dang co : {00ffff}%d.", arrGroupData[iGroupID][TS_Money]);
				    format(str, sizeof(str), "%s\n%s\n%s", str1,str2,str3);
				    format(name, sizeof(name), "TAI SAN GUILD | MONEY");
					ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	  			}
	  			case 1: // RUT TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || MONEY");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so tien dang co : {00ff00}%d.", arrGroupData[iGroupID][TS_Money]);
				    format(str4, sizeof(str), "Neu ban muon rut tien , ban vui long nhap so tien ban muon rut: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | MONEY");
					ShowPlayerDialog(playerid, DIALOG_TS_RUTMONEY, DIALOG_STYLE_INPUT, name, str, "Rut ngay", "Huy Bo");
	  			}
	  			case 2: // GUI  TIEN
	  			{
	  			    new iGroupID = PlayerInfo[playerid][pMember];
	  			    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], name[1280];
					format(str1, sizeof(str), "\\c{ffffff}TAI SAN GUILD || MONEY");
				    format(str2, sizeof(str), "{ffffff}GUILD : {00ffff}%s", arrGroupData[iGroupID][g_szGroupName]);
				    format(str3, sizeof(str), "{ffffff}Tong so tien dang co : {ff0000}%d.", arrGroupData[iGroupID][TS_Money]);
				    format(str4, sizeof(str), "Neu ban muon gui tien , ban vui long nhap so tien ban muon dong gop cho guild: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s", str1,str2,str3,str4);
				    format(name, sizeof(name), "TAI SAN GUILD | MONEY");
					ShowPlayerDialog(playerid, DIALOG_TS_GUIMONEY, DIALOG_STYLE_INPUT, name, str, "Gui ngay", "Huy Bo");
	  			}
			}
		}
	}

	if(dialogid == DIALOG_TS_RUTMONEY && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new ruttien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];


        if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(arrGroupData[iGroupID][TS_Money] > 0)
		{
		    if(arrGroupData[iGroupID][TS_Money] >= ruttien)
		    {
		        if(ruttien > 1900000000 || ruttien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(ruttien < 0 && ruttien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(PlayerInfo[playerid][pLeader] > 0)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua rut thanh cong {ff0000}[%d]{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], ruttien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua rut thanh cong {00ff00}[%d$]{FFFFFF} trong tu do va tong so tien con lai la {00ff00}[%d$]{FFFFFF}.", ruttien, (arrGroupData[iGroupID][TS_Money] - ruttien));
						SendClientMessage(playerid, -1, str);

	                    new ruttiencc[1280];
	                    format(ruttiencc, sizeof(ruttiencc), "{ffffff}vua rut [%d$] trong tu do va tong so tien con lai la {00ff00}[%d$].", ruttien, (arrGroupData[iGroupID][TS_Money] - ruttien));
						cmd_g(playerid, ruttiencc);

						arrGroupData[iGroupID][TS_Money] -= ruttien;
						PlayerInfo[playerid][pCash] += ruttien;

						format(ruttiencc, sizeof(ruttiencc), "%s {ffffff}vua rut [%d$] trong tu do va tong so credits con lai la {00ff00}[%d$].", ruttien, (arrGroupData[iGroupID][TS_Credits] - ruttien));

						Log("logs/ruttienguild.log", ruttiencc);
					}else SendClientMessage(playerid, -1, "Ban khong the rut duoc khi ban khong phai la leader!");
				}
		    }else SendClientMessage(playerid, -1, "Guild ban khong co nhieu tien nhu so tien ban nhap de rut!");
		}else SendClientMessage(playerid, -1, "Hien tai guild ban chua co tien de rut!");
	}

	if(dialogid == DIALOG_TS_GUIMONEY && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}
		if(strfind(inputtext, "c", true) != -1) {
			SendClientMessage(playerid, -1, "Ban khong duoc su dung ky tu dac biet!");
		}

  		new guitien = strval(inputtext);
        new iGroupID = PlayerInfo[playerid][pMember];


    	if(PlayerInfo[playerid][pLevel] < 3 && PlayerInfo[playerid][pConnectHours] < 8)
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong phai online 3gio va cap do 8 de su dung lenh nay!!.");
			return 1;
		}
		if(PlayerInfo[playerid][pCash] > 0)
		{
		    if(PlayerInfo[playerid][pCash] >= guitien)
		    {
		        if(guitien > 1900000000 || guitien < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi~ , ban vui long thu lai!");
		            return 1;
		        }
		        if(guitien < 0 && guitien > 2500000000)
		        {
		            Kick(playerid);
		        }
				else
				{
				    if(arrGroupData[iGroupID][TS_Money] < 1900000000)
				    {
					    /*new szMessage[1280];
						format(szMessage, sizeof(szMessage), "Nguoi choi (%s) [GUILD : %s] vua gui thanh cong {ff0000}[%d]{ffffff} .", GetPlayerNameEx(playerid), arrGroupData[iGroupID][g_szGroupName], guitien);
	     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

			            new str[1280];
						format(str, sizeof(str), "Ban vua gui thanh cong {00ff00}[%d$]{FFFFFF} vao trong tu do guild tong so tien la {00ffff}[%d$]{FFFFFF}.", guitien, (arrGroupData[iGroupID][TS_Money] + guitien));
						SendClientMessage(playerid, -1, str);

						new guitiencc[1280];
	                    format(guitiencc, sizeof(guitiencc), "vua gui [%d$] vao tu do va tong so tien con lai la {00ff00}[%d$].", guitien, (arrGroupData[iGroupID][TS_Money] + guitien));
						cmd_g(playerid, guitiencc);

						arrGroupData[iGroupID][TS_Money] += guitien;
						PlayerInfo[playerid][pCash] -= guitien;
						
						Log("logs/guitienguild.log", guitiencc);
					}else SendClientMessage(playerid, -1, "Guild cua ban da gui day tien , khong the gui them nua~");
				}
		    }else SendClientMessage(playerid, -1, "So tien ban hien co khong du so voi so tien ban nhap");
		}else SendClientMessage(playerid, -1, "So tien ban hien co khong du so voi so tien ban nhap");
	}
	return 1;
}
