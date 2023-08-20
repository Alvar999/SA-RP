#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_11 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Mosasaurus(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Mosasaurus(playerid);
		}

  		new Mosasaurus = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][11] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][11] >= Mosasaurus)
		    {
		        if(Mosasaurus > 99999 || Mosasaurus < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(Mosasaurus > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", Mosasaurus);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pCash] += Mosasaurus * MosasaurusGia;

                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {9933ff}Mosasaurus{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), Mosasaurus, Mosasaurus * MosasaurusGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_Mosasaurus.log", str);

					PlayerInfo[playerid][pPlayTogether][11] -= Mosasaurus;

					MosasaurusOld = MosasaurusGia;
				    RandomGiaMosasaurus();
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {9933ff}Mosasaurus{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {9933ff}Mosasaurus{ffffff} nao het (( /tuica ))");
	}

	if(dialogid == BANCA_MONEY_10 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_10, DIALOG_STYLE_INPUT, "{9933ff}Mosasaurus{ffffff}", "Ban co dong y ban' mot so con {9933ff}Mosasaurus{ffffff} cua ban khong??\nGia : 399,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_10, DIALOG_STYLE_INPUT, "{9933ff}Mosasaurus{ffffff}", "Ban co dong y ban' mot so con {9933ff}Mosasaurus{ffffff} cua ban khong??\nGia : 399,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new Mosasaurus = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][11] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][11] >= Mosasaurus)
		    {
		        if(Mosasaurus > 99999 || Mosasaurus < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(Mosasaurus > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", Mosasaurus);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    new kiemtra = PlayerInfo[playerid][pCash] + Mosasaurus * 399999999;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
				    PlayerInfo[playerid][pCash] += Mosasaurus * 399999999;
                    if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "%s vua ban' thanh cong %d {9933ff}Mosasaurus{ffffff} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), Mosasaurus, Mosasaurus * 399999999);
						SendClientMessage(playerid, -1, str);
						Log("logs/caMosasaurusmoney.log", str);
					}
					PlayerInfo[playerid][pPlayTogether][11] -= Mosasaurus;
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {9933ff}Mosasaurus{ffffff} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {9933ff}Mosasaurus{ffffff} nao het (( /tuica ))");
	}
	return 1;
}
