#include <a_samp>
#include <YSI\y_hooks>


#define         	TRADE_MONEY             (5913)

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[28])) return ShowTradeMoney(playerid);
	}
	return 1;
}

stock ShowTradeMoney(playerid) {
	new string[1280];
	format(string, sizeof(string), "\\c SV.SA-RP.NET\nHe thong trao doi tien te may chu.\nGia hien tai : 1,000,000$ / 1.0 USD\nBan vui long nhap so luong ban muon trao doi vao day.");
    ShowPlayerDialog(playerid, TRADE_MONEY, DIALOG_STYLE_INPUT, "Trade Money", string, "Su dung", "Huy Bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == TRADE_MONEY && response == 1) {
		new money = strval(inputtext);
		if(money % 2 != 0) {
		    SendClientMessage(playerid, -1, "Hien tai may chu chi chap nhan so chan, ban vui long nhap lai so tien.");
		    ShowTradeMoney(playerid);
			return 1;
		}else {
			if(money >= 1 && money <= 1000000) {
				new sad = money * 1000000;
				if(PlayerInfo[playerid][pCash] > sad) {
					PlayerInfo[playerid][pUSD] += money;
					PlayerInfo[playerid][pCash] -= sad;

					new string[1280];
					format(string, sizeof(string), "Ban da quy doi thanh cong %s$ thanh %sUSD thanh cong, chuc ban vui ve.", number_format(money), number_format(sad));
					SendClientMessage(playerid, -1, string);
					
					format(string, sizeof(string), "%s da quy doi thanh cong %s$ thanh %sUSD thanh cong, chuc ban vui ve.", GetPlayerNameEx(playerid), number_format(money), number_format(sad));
					Log("logs/hack.log", string);
					return 1;
				}else return SendClientMessage(playerid, -1, "So tien hien tai cua ban khong du de trade sang USD duoc.");
			}
  		}
	}
	return 1;
}
