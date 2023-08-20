#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_7 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Deinosuchus(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Deinosuchus(playerid);
		}

  		new Deinosuchus = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][7] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][7] >= Deinosuchus)
		    {
		        if(Deinosuchus > 99999 || Deinosuchus < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(Deinosuchus > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", Deinosuchus);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pCash] += Deinosuchus * DeinosuchusGia;
					PlayerInfo[playerid][pPlayTogether][7] -= Deinosuchus;
					
				    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {ff3300}Deinosuchus{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), Deinosuchus, Deinosuchus * DeinosuchusGia);
					SendClientMessage(playerid, -1, str);
					
					Log("logs/SELL_Deinosuchus.log", str);
					
					DeinosuchusOld = DeinosuchusGia;
				    RandomGiaDeinosuchus();
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ff3300}Deinosuchus{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ff3300}Deinosuchus{ffffff} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_5 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_5, DIALOG_STYLE_INPUT, "{ff3300}Deinosuchus{ffffff}", "Ban co dong y ban' mot so con {ff3300}Deinosuchus{ffffff} cua ban khong??\nGia : 99,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_5, DIALOG_STYLE_INPUT, "{ff3300}Deinosuchus{ffffff}", "Ban co dong y ban' mot so con {ff3300}Deinosuchus{ffffff} cua ban khong??\nGia : 99,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new Deinosuchus = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][7] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][7] >= Deinosuchus)
		    {
		        if(Deinosuchus > 99999 || Deinosuchus < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(Deinosuchus > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", Deinosuchus);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    new kiemtra = PlayerInfo[playerid][pCash] + Deinosuchus * 99999999;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
				    PlayerInfo[playerid][pCash] += Deinosuchus * 99999999;
                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {ff3300}Deinosuchus{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), Deinosuchus, Deinosuchus * 99999999);
					SendClientMessage(playerid, -1, str);
					Log("logs/Deinosuchusmoney.log", str);
					PlayerInfo[playerid][pPlayTogether][7] -= Deinosuchus;
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ff3300}Deinosuchus{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ff3300}Deinosuchus{ffffff} nao het (( /tuica ))");
	}
	return 1;
}
