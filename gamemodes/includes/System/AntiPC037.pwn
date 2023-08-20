#include <a_samp>
#include <YSI\y_hooks>


new PlayerPC[MAX_PLAYERS];

stock Player037(playerid){
    if(PlayerPC[playerid] == 1)
	{
	    if(pFPS[playerid] > 0)
		{
		    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], sss[1280];
			format(str1, sizeof(str), "\\c {ff0000}---------------------- SV.SA-RP.NET ----------------------");
		    format(str2, sizeof(str), "{ff0000}Ban da bi {00ff00}Kick{ff0000} do su dung sai phien ban cho phep.");
		    format(str3, sizeof(str), "{ff0000}Ban vui long su dung phien ban {00ff00}0.3DL-R1{ff0000} de tham gia bang {ff0000}PC{FFFFFF}.");
		    format(str4, sizeof(str), "{ff0000}Ban co the su dung {00FFFF}SAMP Launcher{ff0000} de tham gia bang {ff0000}MOBILE{FFFFFF}.");
		    format(str5, sizeof(str), "\\c {ff0000}--------------------------------------------------------");
		    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5);
		    format(sss, sizeof(sss), "THONG BAO");
			ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, sss, str, "Dong y", "");
			Kick(playerid);
		}
	}
	return 1;
}

stock KiemTraClientConnect(playerid){
    if(PlayerPC[playerid] == 0)
    {
        new string[1280], version[1280];
		GetPlayerVersion(playerid, version, sizeof(version));
        if(strcmp(version, "0.3.7") == 0 || strcmp(version, "0.3.7-R2") == 0 || strcmp(version, "0.3.7-R3") == 0 || strcmp(version, "0.3.7-R4") == 0)
		{
		   format(string, sizeof(string), "{ff9900}%s{ffffff} ket noi vao may chu co the dang su dung SAMPFUNC.", GetPlayerNameEx(playerid));
		   ABroadCast(COLOR_CYAN,string,2);
     	   PlayerPC[playerid] = 1;
		}
    }
    return 1;
}

hook OnPlayerDisconnect(playerid, reason){
    PlayerPC[playerid] = 0;
	return 1;
}

hook OnPlayerSpawn(playerid){
    Player037(playerid);
	return 1;
}
