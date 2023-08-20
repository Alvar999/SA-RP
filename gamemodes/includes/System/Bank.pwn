#include <a_samp>
#include <YSI\y_hooks>


#define 		DIALOG_BANK					   (5894)
#define 		DIALOG_RUTTIEN				   (5895)
#define 		DIALOG_GUITIEN				   (5896)
#define 		DIALOG_CHUYENTIENBANK		       (5897)
#define 		DIALOG_CHUYENTIENBANK2			   (5898)

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES))
		if(ActorPos(playerid, ActorJob[17])) return ShowBank(playerid);
	return 1;
}

CMD:bank(playerid, params[]) {
    if(ActorPos(playerid, ActorJob[17])) return ShowBank(playerid);
	return 1;
}

stock ShowBank(playerid) {
    if(PlayerInfo[playerid][pSoTaiKhoan] > 0)
    {
		new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], name[1280];
		format(str1, sizeof(str), "{b32d00}HE THONG NGAN HANG - THONG TIN{FFFFFF}", GetPlayerNameEx(playerid));
	    format(str2, sizeof(str), "   + SO TAI KHOAN NGAN HANG : %d", PlayerInfo[playerid][pSoTaiKhoan]);
	    format(str3, sizeof(str), "   + SO DU : %s | SO TIEN HIEN CO : %s", number_format(PlayerInfo[playerid][pAccount]), number_format(PlayerInfo[playerid][pCash]));
	    format(str4, sizeof(str), "{b32d00}NGAN HANG - GIAO DICH{ffffff}.");
	    format(str5, sizeof(str), "> GUI TIEN");
	    format(str6, sizeof(str), "> RUT TIEN");
	    format(str7, sizeof(str), "> CHUYEN TIEN");
	    format(str, sizeof(str), "%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s", str1,str2,str3,str4,str5,str6,str7);
	    format(name, sizeof(name), "BANK");
		ShowPlayerDialog(playerid, DIALOG_BANK, DIALOG_STYLE_LIST, name, str, "Ok", "");
	}else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban chua co dang ky tai khoan ngan hang, vui long dang ky (/dangkybank)");
	return 1;
}

CMD:dangkybank(playerid, params[])
{
	if(PlayerInfo[playerid][pSoTaiKhoan] == 0)
	{
	    if(IsPlayerInRangeOfPoint(playerid, 5.0, 2941.5071,-1774.9292,1191.0657))
	    {
	        if(PlayerInfo[playerid][pCash] >= 50000)
	        {
			    new string[1280], str[1280];
			    new rand = Random(100000000, 999999999);
			    PlayerInfo[playerid][pSoTaiKhoan] = rand;

			    format(string, sizeof(string), "{C2A2DA}%s , da dang ky tao mot the ngan hang", GetPlayerNameEx(playerid));
				ProxDetectorWrap(playerid, string, 92, 30.0, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE, COLOR_PURPLE);

				format(str, sizeof(str), "[!] Ban dang ky thanh cong mot the ngan hang, ID : %d", PlayerInfo[playerid][pSoTaiKhoan]);
				SendClientMessageEx(playerid ,COLOR_WHITE, str);

				SendClientMessage(playerid, -1, "* SO TIEN DANG KY TAI KHOAN NGAN HANG : 50,000$.");

			}else SendClientMessage(playerid, -1, "Ban khong co du 50,000$ de mo mot tai khoan ngan hang.");
		}else SendClientMessage(playerid, -1, "Ban khong o noi dang ky the ngan hang.");

	}else SendClientMessage(playerid, -1, "Ban da dang ky tai khoan ngan hang roi, khong the dang ky tiep tuc.");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == DIALOG_BANK)
    {
		if(response)
	    {
	        if(listitem == 0)
	        {
	        }
	        if(listitem == 1)
	        {
	        }
	        if(listitem == 2)
	        {
	        }
	        if(listitem == 3)
	        {
	        }
	        if(listitem == 4)
	        {
	            new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
				format(str1, sizeof(str), "{b32d00}HE THONG NGAN HANG - THONG TIN{FFFFFF}", GetPlayerNameEx(playerid));
			    format(str2, sizeof(str), "   + SO TAI KHOAN NGAN HANG : %d", PlayerInfo[playerid][pSoTaiKhoan]);
			    format(str3, sizeof(str), "   + SO DU : %s | SO TIEN HIEN CO : %s", number_format(PlayerInfo[playerid][pAccount]), number_format(PlayerInfo[playerid][pCash]));
			    format(str4, sizeof(str), "{b32d00}NGAN HANG - GIAO DICH{ffffff}.");
			    format(str5, sizeof(str), "Nhap so tien ban muon gui : ");
			    format(str, sizeof(str), "%s\n%s\n%s\n\n%s\n%s", str1,str2,str3,str4,str5);
			    format(name, sizeof(name), "BANK");
				ShowPlayerDialog(playerid, DIALOG_GUITIEN, DIALOG_STYLE_INPUT, name, str, "Ok", "");
	        }
			if(listitem == 5)
   			{
	            new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
				format(str1, sizeof(str), "{b32d00}HE THONG NGAN HANG - THONG TIN{FFFFFF}", GetPlayerNameEx(playerid));
			    format(str2, sizeof(str), "   + SO TAI KHOAN NGAN HANG : %d", PlayerInfo[playerid][pSoTaiKhoan]);
			    format(str3, sizeof(str), "   + SO DU : %s | SO TIEN HIEN CO : %s", number_format(PlayerInfo[playerid][pAccount]), number_format(PlayerInfo[playerid][pCash]));
			    format(str4, sizeof(str), "{b32d00}NGAN HANG - GIAO DICH{ffffff}.");
			    format(str5, sizeof(str), "Nhap so tien ban muon rut : ");
			    format(str, sizeof(str), "%s\n%s\n%s\n\n%s\n%s", str1,str2,str3,str4,str5);
			    format(name, sizeof(name), "BANK");
				ShowPlayerDialog(playerid, DIALOG_RUTTIEN, DIALOG_STYLE_INPUT, name, str, "Ok", "");
			}
			if(listitem == 6)
			{
			    /*new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
				format(str1, sizeof(str), "{b32d00}HE THONG NGAN HANG - THONG TIN{FFFFFF}", GetPlayerNameEx(playerid));
			    format(str2, sizeof(str), "   + SO TAI KHOAN NGAN HANG : %d", PlayerInfo[playerid][pSoTaiKhoan]);
			    format(str3, sizeof(str), "   + SO DU : %d", PlayerInfo[playerid][pAccount]);
			    format(str4, sizeof(str), "{b32d00}NGAN HANG - GIAO DICH{ffffff}.");
			    format(str5, sizeof(str), "Nhap nguoi ban can chuyen khoan : ");
			    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5);
			    format(name, sizeof(name), "BANK");
				ShowPlayerDialog(playerid, DIALOG_CHUYENTIENBANK, DIALOG_STYLE_INPUT, name, str, "Ok", "");*/
				ShowChuyenTienHihi(playerid);
			}
		}
	}
	if(dialogid == DIALOG_CHUYENTIENBANK)
	{
		if(response)
        {
            /*new giveplayerid = strval(inputtext);
            if(!IsPlayerConnected(giveplayerid)) return SendClientMessage(playerid, COLOR_RED, "Loi: ID nguoi choi khong hop le!");
            SetPVarInt(playerid, "PlayerSelected", giveplayerid);
            ShowPlayerDialog(playerid, DIALOG_CHUYENTIENBANK2, DIALOG_STYLE_INPUT, "Chuyen khoan", "Nhap so tien ban muon chuyen", "Dong y", "Huy bo");*/
            ShowChuyenTienHihi(playerid);
        }
	}
	if(dialogid == DIALOG_CHUYENTIENBANK2)
    {
        if(response)
        {
            new amount = strval(inputtext);
            new giveplayerid = GetPVarInt(playerid, "PlayerSelected");
            new playermoney = PlayerInfo[playerid][pAccount] ;

            if (amount < 1 && playermoney < amount) return SendClientMessageEx(playerid, COLOR_GRAD1, "Vui long nhap dung , so tien khong duoc duoi 1$.");
			if(amount < 0 || amount > 1000000000) {
			    SendClientMessageEx(playerid, COLOR_GRAD1, "Vui long nhap dung , so tien.");
				return 1;
			}
			if(PlayerInfo[playerid][pAccount] < amount) {
			    SendClientMessageEx(playerid, COLOR_GRAD1, "Vui long nhap dung , so tien.");
				return 1;
			}
			GivePlayerCashEx(playerid, TYPE_BANK, -amount);
            GivePlayerCashEx(giveplayerid, TYPE_BANK, amount);

            PlayerInfo[playerid][pAccount] -= amount;
            PlayerInfo[giveplayerid][pAccount] += amount;

			new string[1280];
            format(string, sizeof(string), "Ban da chuyen $%s cho %s", number_format(amount), GetPlayerNameEx(giveplayerid),giveplayerid);
            PlayerPlaySound(playerid, 1052, 0.0, 0.0, 0.0);
            SendClientMessageEx(playerid, COLOR_GRAD1, string);
            format(string, sizeof(string), "Ban dan nhan duoc $%s vao tai khoan cua ban %s.", number_format(amount), GetPlayerNameEx(playerid), playerid);
            SendClientMessageEx(giveplayerid, COLOR_GRAD1, string);
            new ip[32], ipex[32];
            GetPlayerIp(playerid, ip, sizeof(ip));
            GetPlayerIp(giveplayerid, ipex, sizeof(ipex));
            format(string, sizeof(string), "[NGAN HANG] %s (IP:%s) da chuyen $%s den %s (IP:%s).", GetPlayerNameEx(playerid), ip, number_format(amount), GetPlayerNameEx(giveplayerid), ipex);

            if(amount >= 500000)
            {
                ABroadCast(COLOR_YELLOW,string,2);
            }
            Log("logs/pay.log", string);
            PlayerPlaySound(giveplayerid, 1052, 0.0, 0.0, 0.0);
            SetPVarInt(playerid, "LastTransaction", gettime());
            return 1;
        }
    }
	if(dialogid == DIALOG_RUTTIEN && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, DIALOG_RUTTIEN, DIALOG_STYLE_INPUT, "Rut Tien","Nhap so tien ban muon rut.","Dong y","Huy");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, DIALOG_RUTTIEN, DIALOG_STYLE_INPUT, "Rut Tien","Nhap so tien ban muon rut.","Dong y","Huy");
		}
		new amount = strval(inputtext);
		if (amount > PlayerInfo[playerid][pAccount] || amount < 1)
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co du tien!");
			return 1;
		}
		if(amount < 0 || amount > 1000000000) {
		    SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co du tien!");
			return 1;
		}
		else {
			if(gettime()-GetPVarInt(playerid, "LastTransaction") < 10) return SendClientMessageEx(playerid, COLOR_GRAD2, "Vui long cho 10 giay moi co the giao dich lai!");
			SetPVarInt(playerid, "LastTransaction", gettime());
			PlayerInfo[playerid][pAccount]=PlayerInfo[playerid][pAccount]-amount;
			GivePlayerCash(playerid,amount);
			new string[1280];
			format(string, sizeof(string), "Ban da rut $%s tu ngan hang | Tai khoan con: $%s ", number_format(amount), number_format(PlayerInfo[playerid][pAccount]));
			SendClientMessageEx(playerid, COLOR_YELLOW, string);
			OnPlayerStatsUpdate(playerid);
		}
	}
	if(dialogid == DIALOG_GUITIEN && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return ShowPlayerDialog(playerid, DIALOG_GUITIEN, DIALOG_STYLE_INPUT, "Gui Tien","Nhap so tien ban muon gui.","Dong y","Huy");
		}
		if(strfind(inputtext, "c", true) != -1) {
			return ShowPlayerDialog(playerid, DIALOG_GUITIEN, DIALOG_STYLE_INPUT, "Gui Tien","Nhap so tien ban muon gui.","Dong y","Huy");
		}
		new amount = strval(inputtext);
		if (amount > GetPlayerCash(playerid) || amount < 1)
		{
			SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co du tien.");
			return 1;
		}
		if(amount < 0 || amount > 1000000000) {
		    SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co du tien!");
			return 1;
		}
		else {
			if(gettime()-GetPVarInt(playerid, "LastTransaction") < 10) return SendClientMessageEx(playerid, COLOR_GRAD2, "Vui long cho 10 giay moi co the giao dich lai!");
			SetPVarInt(playerid, "LastTransaction", gettime());

			PlayerInfo[playerid][pCash] -= amount;
 			new string[1280];
			PlayerInfo[playerid][pAccount]=amount+PlayerInfo[playerid][pAccount];
		    SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
			format(string, sizeof(string), "So Tien vua gui: $%s | Tai Khoan : $%s", number_format(amount), number_format(PlayerInfo[playerid][pAccount]));
			SendClientMessageEx(playerid, COLOR_GRAD4, string);
		    SendClientMessageEx(playerid, COLOR_GREEN,"_______________________________________");
			OnPlayerStatsUpdate(playerid);
		}
	}
	return 1;
}
