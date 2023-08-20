#include <a_samp>
#include <YSI\y_hooks>

#define 			DIALOG_DOC_LAODONG 			(5097)
#define 			DIALOG_DOC_SOLAN 			(5098)
#define 			DIALOG_DOC_SOPHUT 			(5099)

new Float:NhoCoPoint[][5] = {
    {1849.5742,467.5392,19.3233},
	{1841.5308,471.8481,19.4231},
	{1840.4575,465.6784,19.3783},
	{1834.0421,466.5586,19.4147},
	{1834.3279,471.5420,19.4231},
	{1829.0558,470.7085,19.4267},
	{1822.4219,467.4109,19.4251},
	{1819.8663,472.5383,19.4197},
	{1813.9534,469.6368,19.4153},
	{1809.9810,472.4704,19.4142},
	{1802.9727,475.6384,19.4202},
	{1796.9847,471.3867,19.4110},
	{1791.8879,474.8546,19.4175},
	{1785.7372,472.8283,19.4124},
	{1784.6444,478.8658,19.4075},
	{1779.0216,477.8407,19.4086},
	{1772.2471,473.8009,19.4023},
	{1772.0311,480.5590,19.4027},
	{1778.1884,484.7225,19.3636},
	{1776.9867,490.3899,19.3142},
	{1775.0287,495.9407,19.2608},
	{1782.0428,495.7227,19.2596},
	{1786.2260,490.8771,19.3036},
	{1791.7103,493.6233,19.2791},
	{1794.9716,491.0927,19.2993},
	{1798.4297,495.5708,19.2630},
	{1800.7648,492.0504,19.2850},
	{1806.3256,493.3134,19.2770},
	{1811.0845,490.1003,19.3007},
	{1815.6277,492.5160,19.2783},
	{1821.3223,489.2357,19.3010},
	{1825.9919,491.2238,19.2841},
	{1832.0896,489.0272,19.3013},
	{1837.5651,490.1121,19.2843},
	{1842.2937,486.8599,19.3067},
	{1852.7509,485.2425,19.2808},
	{1857.9698,483.4163,19.2532},
	{1855.3240,475.3925,19.2677}
};

new BatDauNhoCo[MAX_PLAYERS];
new SoPhutGiam[MAX_PLAYERS];

CMD:laodong(playerid, params[]) {
	new playa;
	if(sscanf(params, "u", playa)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /laodong [Player]");
	if(IsACop(playerid)) {
		if(PlayerInfo[playerid][pDuty] == 0) {
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban chua #On-duty , khong the su dung chuc nang nay.");
			return 1;
		}
		if(IsPlayerConnected(playa)) {
			if(playa != INVALID_PLAYER_ID) {
				if(!ProxDetectorS(15.0, playerid, playa)) {
		   	        SendClientMessageEx(playerid, COLOR_GREY, "Ban khong o gan nguoi nay, khong the /laodong duoc.");
		   	        return 1;
		        }
				if(PlayerInfo[playa][pJailTime] > 0) {
					SetPVarInt(playerid, "LaoDong_GivePlayer", playa);
					ShowPlayerDialog(playerid, DIALOG_DOC_LAODONG, DIALOG_STYLE_LIST, "Ban vui long chon hinh thuc lao dong?", "Nho co~\nLao ban ghe", "Dong y", "Huy bo");
				}else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi nay khong phai la tu nhan.");
			}
		}
		else return SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong hop le.");
	}
	else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_DOC_LAODONG && response ==  1) {
		if(listitem == 0) {
			ShowPlayerDialog(playerid, DIALOG_DOC_SOLAN, DIALOG_STYLE_INPUT, "D.O.C", "Ban vui long nhap so lan nho co~: ", "Dong y", "Huy bo");
		}
		if(listitem == 1) {
			SendClientMessageEx(playerid, COLOR_GRAD1, "Hien dang cap nhat.");
			return 1;
		}
	}

	if(dialogid == DIALOG_DOC_SOLAN && response ==  1) {
		new amount = strval(inputtext);
		if(amount > 0 && amount < 500) {
			SetPVarInt(playerid, "LaoDong_SoLan", amount);
			ShowPlayerDialog(playerid, DIALOG_DOC_SOPHUT, DIALOG_STYLE_INPUT, "D.O.C", "Ban vui long nhap so phut duoc giam sau khi nguoi nay hoan thanh cong viec nho co~: ", "Dong y", "Huy bo");
		}else return SendClientMessageEx(playerid, COLOR_GRAD1, "So lan nho co khong duoc < 0 lan va > 100 lan.");
	}

	if(dialogid == DIALOG_DOC_SOPHUT && response ==  1) 
	{
		new amount = strval(inputtext);
		new giveplayer = GetPVarInt(playerid, "LaoDong_GivePlayer");
		new time = PlayerInfo[giveplayer][pJailTime];

		new solan = GetPVarInt(playerid, "LaoDong_SoLan");

		if(amount > time) {
			ShowPlayerDialog(playerid, DIALOG_DOC_SOPHUT, DIALOG_STYLE_INPUT, "D.O.C", "Loi, vui long nhap lai so phut duoc giam~.\nBan vui long nhap so phut duoc giam sau khi nguoi nay hoan thanh cong viec nho co~: ", "Dong y", "Huy bo");
		}

		else 
		{
			SetPVarInt(giveplayer, "SoLanNhoCoLuu", solan);
			BatDauNhoCo[giveplayer] = solan;
			SoPhutGiam[giveplayer] = amount;

			new rand = random(sizeof(NhoCoPoint));
		    SetPlayerCheckpoint(giveplayer, NhoCoPoint[rand][0], NhoCoPoint[rand][1], NhoCoPoint[rand][2], 1);
		    SetPVarInt(giveplayer, "FloatNhoCo", rand);

			new string[1280];
		    format(string, sizeof(string), "Ban da duoc si quan %s giao nhiem vu nho co voi  so lan (%d lan).", GetPlayerNameEx(playerid), solan);
		    SendClientMessageEx(giveplayer, COLOR_LIGHTRED, string);

		    format(string, sizeof(string), "Neu hoan thanh cong viec that tot, ban se giam duoc %d phut di tu`.", amount);
		    SendClientMessageEx(giveplayer, COLOR_LIGHTRED, string);

			foreach(new i: Player)
			{
				if(PlayerInfo[i][pMember] == PlayerInfo[playerid][pMember]) {
					format(string, sizeof(string), "%s da yeu cau doi tuong %s bat dau lao dong (nho co~) , so lan (%d lan) giam (%d phut).", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayer), solan, amount);
					SendClientMessageEx(i, COLOR_LIGHTRED, string);
				}

			}
		}
	}
	return 1;
}


hook OnPlayerEnterCheckpoint(playerid) {
	if(IsPlayerInRangeOfPoint(playerid, 3, NhoCoPoint[GetPVarInt(playerid, "FloatNhoCo")][0], NhoCoPoint[GetPVarInt(playerid, "FloatNhoCo")][1], NhoCoPoint[GetPVarInt(playerid, "FloatNhoCo")][2]) && PlayerInfo[playerid][pJailTime] > 0)
	{
		DisablePlayerCheckpoint(playerid);
		new time = 5+random(5);
		SetPVarInt(playerid, "NhoCoTime", time);
  		SetTimerEx("NhoCo", 1000, 0, "d", playerid);
	}
	return 1;
}

forward NhoCo(playerid);
public NhoCo(playerid)
{
    SetPVarInt(playerid, "NhoCoTime", GetPVarInt(playerid, "NhoCoTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "NhoCoTime"));
    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 3.0, 1, 1, 0, 0, 0);
    GameTextForPlayer(playerid, string, 1100, 3);
    if(GetPVarInt(playerid, "NhoCoTime") > 0) SetTimerEx("NhoCo", 1000, 0, "d", playerid);
    if(GetPVarInt(playerid, "NhoCoTime") <= 0)
    {
        DeletePVar(playerid, "NhoCoTime");
        DeletePVar(playerid, "NhoCo");
        
        RemovePlayerAttachedObject(playerid, 0);
        TogglePlayerControllable(playerid, 1);
    	ClearAnimations(playerid);

    	if(BatDauNhoCo[playerid] > 0) {
			new rand = random(sizeof(NhoCoPoint));
		    SetPlayerCheckpoint(playerid, NhoCoPoint[rand][0], NhoCoPoint[rand][1], NhoCoPoint[rand][2], 1);
		    SetPVarInt(playerid, "FloatNhoCo", rand);

		    BatDauNhoCo[playerid] -= 1;

		    format(string, sizeof(string), "Ban da nho co thanh cong hien con lai (%d / %d).", BatDauNhoCo[playerid]+1, GetPVarInt(playerid, "SoLanNhoCoLuu"));
		    SendClientMessageEx(playerid, COLOR_LIGHTRED, string);
    	}
    	else 
    	{
    		PlayerInfo[playerid][pJailTime] -= SoPhutGiam[playerid]*60;
		    format(string, sizeof(string), "Ban da giam duoc %d phut, khi hoan thanh cong viec nho co.", SoPhutGiam[playerid]);
		    SendClientMessageEx(playerid, COLOR_LIGHTRED, string);
		    SoPhutGiam[playerid] = 0;
    	}
	}
	return 1;
}
