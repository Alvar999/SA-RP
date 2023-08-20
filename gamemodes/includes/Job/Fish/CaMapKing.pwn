#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_6 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_CaMapKing(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_CaMapKing(playerid);
		}

  		new camapking = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][5] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][5] >= camapking)
		    {
		        if(camapking > 99999 || camapking < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(camapking > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", camapking);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {
		            PlayerInfo[playerid][pCash] += camapking * CaMapKingGia;
                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {cc33ff}CA' MAP KING{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), camapking, camapking * CaMapKingGia);
					SendClientMessage(playerid, -1, str);
					
					Log("logs/SELL_CAMAPKING.log", str);
					PlayerInfo[playerid][pPlayTogether][5] -= camapking;
					
					CaMapKingOld = CaMapKingGia;
				    RandomGiaCaMapKing();
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {cc33ff}CA' MAP KING{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {cc33ff}CA' MAP KING{FFFFFF} nao het (( /tuica ))");
	}
	
	if(dialogid == BANCA_MONEY_4 && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_4, DIALOG_STYLE_INPUT, "{cc33ff}CA' MAP KING{FFFFFF}", "Ban co dong y ban' mot so con {cc33ff}CA' MAP KING{FFFFFF} cua ban khong??\nGia : 50,000,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, BANCA_MONEY_4, DIALOG_STYLE_INPUT, "{cc33ff}CA' MAP KING{FFFFFF}", "Ban co dong y ban' mot so con {cc33ff}CA' MAP KING{FFFFFF} cua ban khong??\nGia : 50,000,000$ / 1 don vi", "Ban ngay", "Huy bo");
		}

  		new camap = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][5] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][5] >= camap)
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
		            new kiemtra = PlayerInfo[playerid][pCash] + camap * 50000000;
					if(kiemtra > 2000000000) {
					    SendClientMessage(playerid, -1, "Neu ban so ca nhu ban nhap , thi se xay ra (-Sad), vui long sell it ca' lai!");
					    return 1;
					}
		            PlayerInfo[playerid][pCash] += camap * 50000000;
                    new str[1280];
					format(str, sizeof(str), "%s vua ban' thanh cong %d {f2f2f2}CA' MAP{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", GetPlayerNameEx(playerid), camap, camap * 50000000);
					SendClientMessage(playerid, -1, str);
					Log("logs/camapkingmoney.log", str);
					PlayerInfo[playerid][pPlayTogether][5] -= camap;
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {f2f2f2}CA' MAP{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {f2f2f2}CA' MAP{FFFFFF} nao het (( /tuica ))");
	}
	return 1;
}
