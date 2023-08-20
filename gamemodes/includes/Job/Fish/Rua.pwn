#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_3 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_Rua(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_Rua(playerid);
		}

  		new rua = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][2] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][2] >= rua)
		    {
		        if(rua > 999999 || rua < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(rua > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", rua);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {
		            PlayerInfo[playerid][pCash] += rua * RuaGia;

                    new str[1280];
					format(str, sizeof(str), "Ban vua ban' thanh cong %d {ff6600}RUA`{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", rua, rua * RuaGia);
					SendClientMessage(playerid, -1, str);
					Log("logs/SELL_RUA.log", str);
					
					PlayerInfo[playerid][pPlayTogether][2] -= rua;
					
					RuaGiaOld = RuaGia;
				    RandomGiaRua();
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ff6600}RUA`{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ff6600}RUA`{FFFFFF} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_1 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_1, DIALOG_STYLE_INPUT, "{ff6600}RUA`{FFFFFF}", "Ban co dong y ban' mot so con {ff6600}RUA`{FFFFFF} cua ban khong??\nGia : 300,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_1, DIALOG_STYLE_INPUT, "{ff6600}RUA`{FFFFFF}", "Ban co dong y ban' mot so con {ff6600}RUA`{FFFFFF} cua ban khong??\nGia : 300,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		new rua = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][2] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][2] >= rua)
		    {
		        if(rua > 999999 || rua < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(rua > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug $ tu viec ban' ca' voi so luong %d", rua);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {
		            new kiemtra = PlayerInfo[playerid][pCash] + rua * 300000;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
		            PlayerInfo[playerid][pCash] += rua * 300000;

		            if(PlayerInfo[playerid][pAdmin] == 0)
					{
			            new str[1280];
						format(str, sizeof(str), "%s vua ban' thanh cong %d {ff6600}RUA`{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), rua, rua * 300000);
						SendClientMessage(playerid, -1, str);
						Log("logs/ruamoney.log", str);
					}

					PlayerInfo[playerid][pPlayTogether][2] -= rua;
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ff6600}RUA`{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ff6600}RUA`{FFFFFF} nao het (( /tuica ))");
	}
	return 1;
}
