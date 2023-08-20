#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_2 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_CaRoPhi(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_CaRoPhi(playerid);
		}

  		new carophi = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][1] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][1] >= carophi)
		    {
		        if(carophi > 99999 || carophi < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(carophi > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug kim cuong tu viec ban' ca' voi so luong %d", carophi);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{

				    PlayerInfo[playerid][pCash] += carophi * CaRoPhiGia;

		            new str[1280];
					format(str, sizeof(str), "Ban vua ban' thanh cong %d {ffa31a}CA' RO PHI{FFFFFF} va nhan duoc {00ff00}%d${FFFFFF}.", carophi, carophi * CaRoPhiGia);
					SendClientMessage(playerid, -1, str);
					
					Log("logs/SELL_CAROPHI.log", str);

					PlayerInfo[playerid][pPlayTogether][1] -= carophi;
					
					CaRoPhiGiaOld = CaRoPhiGia;
				    RandomGiaCaRoPhi();
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {ffa31a}CA' RO PHI{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {ffa31a}CA' RO PHI{FFFFFF} nao het (( /tuica ))");
	}
	return 1;
}
