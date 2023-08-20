#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_5 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_CaMap(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_CaMap(playerid);
		}

  		new camap = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][4] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][4] >= camap)
		    {
		        if(camap > 99999 || camap < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(camap > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug $ tu viec ban' ca' voi so luong %d", camap);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {
		            PlayerInfo[playerid][pCash] += camap * CaMapGia;
					PlayerInfo[playerid][pPlayTogether][4] -= camap;
					new str[1280];
					format(str, sizeof(str), "Ban vua ban' thanh cong %d {f2f2f2}CA' MAP{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", camap, camap * CaMapGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_CAMAP.log", str);
					
					CaMapOld = CaMapGia;
				    RandomGiaCaMap();
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {f2f2f2}CA' MAP{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {f2f2f2}CA' MAP{FFFFFF} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_3 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_3, DIALOG_STYLE_INPUT, "{f2f2f2}CA' MAP{FFFFFF}", "Ban co dong y ban' mot so con {f2f2f2}CA' MAP{FFFFFF} cua ban khong??\nGia : 10,000,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_3, DIALOG_STYLE_INPUT, "{f2f2f2}CA' MAP{FFFFFF}", "Ban co dong y ban' mot so con {f2f2f2}CA' MAP{FFFFFF} cua ban khong??\nGia : 10,000,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new caheo = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][4] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][4] >= caheo)
		    {
		        if(caheo > 99999 || caheo < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(caheo > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug $ tu viec ban' ca' voi so luong %d", caheo);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {
		            new kiemtra = PlayerInfo[playerid][pCash] + caheo * 10000000;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
		            /*new szMessage[1280];
					format(szMessage, sizeof(szMessage), "Nguoi choi (%s) vua ban' thanh cong {ff0000}[%d]{ffffff} {6b6b47}CA' HEO{FFFFFF} va nhan duoc (%d) KC.", GetPlayerNameEx(playerid), caheo, caheo * 50);
     				ABroadCast(COLOR_YELLOW, szMessage, 2);*/

		            PlayerInfo[playerid][pCash] += caheo * 10000000;
                    if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "%s vua ban' thanh cong %d {6b6b47}CA' MAP{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), caheo, caheo * 10000000);
						SendClientMessage(playerid, -1, str);
						Log("logs/camapmoney.log", str);
					}
					PlayerInfo[playerid][pPlayTogether][4] -= caheo;
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {6b6b47}CA' MAP{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {6b6b47}CA' MAP{FFFFFF} nao het (( /tuica ))");
	}
	return 1;
}
