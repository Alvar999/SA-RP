#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA_1 && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
			return Sell_TuiRac(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return Sell_TuiRac(playerid);
		}

  		new tuirac = strval(inputtext);

		if(PlayerInfo[playerid][pPlayTogether][6] > 0)
		{
		    if(PlayerInfo[playerid][pPlayTogether][6] >= tuirac)
		    {
		        if(tuirac > 99999 || tuirac < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
		            return 1;
		        }
		        if(tuirac > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug kim cuong tu viec ban' ca' voi so luong %d", tuirac);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
				else
				{
				    PlayerInfo[playerid][pMats] += tuirac * 5;
				    
                    new str[1280];
					format(str, sizeof(str), "Ban vua ban' thanh cong %d {00ff00}TUI' RAC'{FFFFFF} va nhan duoc {00ff00}%d Vat lieu{FFFFFF}.", tuirac, tuirac * 50);
					SendClientMessage(playerid, -1, str);

					PlayerInfo[playerid][pPlayTogether][6] -= tuirac;
				}
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu {00ff00}TUI' RAC'{FFFFFF} (( /tuica ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con {00ff00}TUI' RAC'{FFFFFF} nao het (( /tuica ))");
	}
	return 1;
}
