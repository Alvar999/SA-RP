#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_4 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_CaHeo(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_CaHeo(playerid);
		}

  		new caheo = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][3] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][3] >= caheo)
		    {
		        if(caheo > 99999 || caheo < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(caheo > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", caheo);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {

		            PlayerInfo[playerid][pCash] += caheo * CaHeoGia;
		            
                    new str[1280];
					format(str, sizeof(str), "Ban vua ban' thanh cong %d {6b6b47}CA' HEO{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", caheo, caheo * CaHeoGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_CAHEO.log", str);
					
					PlayerInfo[playerid][pPlayTogether][3] -= caheo;
					
					CaHeoGiaOld = CaHeoGia;
				    RandomGiaCaHeo();
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {6b6b47}CA' HEO{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {6b6b47}CA' HEO{FFFFFF} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_2 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_2, DIALOG_STYLE_INPUT, "{ff6600}CA' HEO{FFFFFF}", "Ban co dong y ban' mot so con {ff6600}CA' HEO{FFFFFF} cua ban khong??\nGia : 500,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_2, DIALOG_STYLE_INPUT, "{ff6600}CA' HEO{FFFFFF}", "Ban co dong y ban' mot so con {ff6600}CA' HEO{FFFFFF} cua ban khong??\nGia : 500,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new caheo = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][3] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][3] >= caheo)
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
		        {   new kiemtra = PlayerInfo[playerid][pCash] + caheo * 500000;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
		            PlayerInfo[playerid][pCash] += caheo * 500000;

                    if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "Ban vua ban' thanh cong %d {6b6b47}CA' HEO{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", caheo, caheo * 500000);
						SendClientMessage(playerid, -1, str);
						Log("logs/caheomoney.log", str);
					}
					PlayerInfo[playerid][pPlayTogether][3] -= caheo;
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {6b6b47}CA' HEO{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {6b6b47}CA' HEO{FFFFFF} nao het (( /tuica ))");
	}
	return 1;
}
