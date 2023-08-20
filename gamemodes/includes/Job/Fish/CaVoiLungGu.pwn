#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_9 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_CaVoiLungGu(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_CaVoiLungGu(playerid);
		}

  		new cavoilunggu = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][9] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][9] >= cavoilunggu)
		    {
		        if(cavoilunggu > 99999 || cavoilunggu < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(cavoilunggu > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", cavoilunggu);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pCash] += cavoilunggu * CaVoiLungGuGia;
				    
                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {1aa3ff}CA VOI LUNG GU{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), cavoilunggu, cavoilunggu * CaVoiLungGuGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_CAVOILUNGGU.log", str);
					
					PlayerInfo[playerid][pPlayTogether][9] -= cavoilunggu;
					
					CaVoiLungGuOld = CaVoiLungGuGia;
				    RandomGiaCaVoiLungGu();
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {1aa3ff}CA VOI LUNG GU{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {1aa3ff}CA VOI LUNG GU{ffffff} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_8 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_8, DIALOG_STYLE_INPUT, "{1aa3ff}CA VOI LUNG GU{ffffff}", "Ban co dong y ban' mot so con {1aa3ff}CA VOI LUNG GU{ffffff} cua ban khong??\nGia : 299,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_8, DIALOG_STYLE_INPUT, "{1aa3ff}CA VOI LUNG GU{ffffff}", "Ban co dong y ban' mot so con {1aa3ff}CA VOI LUNG GU{ffffff} cua ban khong??\nGia : 299,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new cavoilunggu = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][9] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][9] >= cavoilunggu)
		    {
		        if(cavoilunggu > 99999 || cavoilunggu < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(cavoilunggu > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", cavoilunggu);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    new kiemtra = PlayerInfo[playerid][pCash] + cavoilunggu * 299999999;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
				    PlayerInfo[playerid][pCash] += cavoilunggu * 299999999;
                    if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "%s vua ban' thanh cong %d {1aa3ff}CA VOI LUNG GU{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), cavoilunggu, cavoilunggu * 299999999);
						SendClientMessage(playerid, -1, str);
						Log("logs/cavoilunggumoney.log", str);
					}
					PlayerInfo[playerid][pPlayTogether][9] -= cavoilunggu;
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {1aa3ff}CA VOI LUNG GU{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {1aa3ff}CA VOI LUNG GU{ffffff} nao het (( /tuica ))");
	}
	return 1;
}
