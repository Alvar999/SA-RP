#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_8 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_CaVoiSatThu(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_CaVoiSatThu(playerid);
		}

  		new cavoisatthu = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][8] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][8] >= cavoisatthu)
		    {
		        if(cavoisatthu > 99999 || cavoisatthu < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(cavoisatthu > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", cavoisatthu);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pCash] += cavoisatthu * CaVoiSatThuGia;
				    
                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {1affff}CA VOI SAT THU{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), cavoisatthu, cavoisatthu * CaVoiSatThuGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_CAVOISATTHU.log", str);
					
					PlayerInfo[playerid][pPlayTogether][8] -= cavoisatthu;
					
					CaVoiSatThuOld = CaVoiSatThuGia;
				    RandomGiaCaVoiSatThu();
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {1affff}CA VOI SAT THU{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {1affff}CA VOI SAT THU{ffffff} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_7 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_7, DIALOG_STYLE_INPUT, "{1affff}CA VOI SAT THU{ffffff}", "Ban co dong y ban' mot so con {1affff}CA VOI SAT THU{ffffff} cua ban khong??\nGia : 199,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_7, DIALOG_STYLE_INPUT, "{1affff}CA VOI SAT THU{ffffff}", "Ban co dong y ban' mot so con {1affff}CA VOI SAT THU{ffffff} cua ban khong??\nGia : 199,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new cavoisatthu = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][8] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][8] >= cavoisatthu)
		    {
		        if(cavoisatthu > 99999 || cavoisatthu < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(cavoisatthu > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", cavoisatthu);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    new kiemtra = PlayerInfo[playerid][pCash] + cavoisatthu * 199999999;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
				    PlayerInfo[playerid][pCash] += cavoisatthu * 199999999;
                    if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "%s vua ban' thanh cong %d {1affff}CA VOI SAT THU{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), cavoisatthu, cavoisatthu * 199999999);
						SendClientMessage(playerid, -1, str);
						Log("logs/cavoisatthumoney.log", str);
					}
					PlayerInfo[playerid][pPlayTogether][8] -= cavoisatthu;
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {1affff}CA VOI SAT THU{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {1affff}CA VOI SAT THU{ffffff} nao het (( /tuica ))");
	}
	return 1;
}
