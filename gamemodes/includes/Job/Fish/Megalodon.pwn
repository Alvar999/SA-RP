#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_10 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Megalodon(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Megalodon(playerid);
		}

  		new megalodon = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][10] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][10] >= megalodon)
		    {
		        if(megalodon > 99999 || megalodon < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(megalodon > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", megalodon);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pCash] += megalodon * MegalodonGia;
				    
                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {ff3300}Megalodon{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), megalodon, megalodon * MegalodonGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_MEGALODON.log", str);
					
					PlayerInfo[playerid][pPlayTogether][10] -= megalodon;
					
					MegalodonOld = MegalodonGia;
				    RandomGiaMegalodon();
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ff3300}Megalodon{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ff3300}Megalodon{ffffff} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_9 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_9, DIALOG_STYLE_INPUT, "{ff3300}Megalodon{ffffff}", "Ban co dong y ban' mot so con {ff3300}Megalodon{ffffff} cua ban khong??\nGia : 399,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_9, DIALOG_STYLE_INPUT, "{ff3300}Megalodon{ffffff}", "Ban co dong y ban' mot so con {ff3300}Megalodon{ffffff} cua ban khong??\nGia : 399,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new megalodon = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][10] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][10] >= megalodon)
		    {
		        if(megalodon > 99999 || megalodon < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(megalodon > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", megalodon);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    new kiemtra = PlayerInfo[playerid][pCash] + megalodon * 399999999;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
				    PlayerInfo[playerid][pCash] += megalodon * 399999999;
                    if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "%s vua ban' thanh cong %d {ff3300}Megalodon{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), megalodon, megalodon * 399999999);
						SendClientMessage(playerid, -1, str);
						Log("logs/camegalodonmoney.log", str);
					}
					PlayerInfo[playerid][pPlayTogether][10] -= megalodon;
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ff3300}Megalodon{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ff3300}Megalodon{ffffff} nao het (( /tuica ))");
	}
	return 1;
}
