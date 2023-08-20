#include <YSI\y_hooks>


#define         	DIALOG_BANCANSA         (7544)

new cansa_kimcuong = 3500;

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[18])) return SellCanSa(playerid);
	}
	return 1;
}

stock SellCanSa(playerid)
{
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
    format(str1, sizeof(str), "THONG TIN CHI TIET :");
    format(str2, sizeof(str), "{f2f2f2}    -> Can sa hien co : %d can sa", PlayerInfo[playerid][pCanSa]);
    format(str3, sizeof(str), "{f2f2f2}---------------------------------");
    format(str4, sizeof(str), "{f2f2f2}-> Gia thi truong hien tai : %s$ / 1 can sa", number_format(cansa_kimcuong));
    format(str5, sizeof(str), "{f2f2f2}Neu ban muon ban can sa , vui long nhap so luong ban muon ban vao ben duoi:");
    format(str6, sizeof(str), "------------------------------------------------");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6);
    format(name, sizeof(name), "{ffffff}BAN CAN SA");
	ShowPlayerDialog(playerid, DIALOG_BANCANSA, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_BANCANSA && response == 1)
	{
		if(strfind(inputtext, "%", true) != -1) {
			return SellCanSa(playerid);
		}
		if(strfind(inputtext, "c", true) != -1) {
			return SellCanSa(playerid);
		}

  		new cansa = strval(inputtext);

		if(PlayerInfo[playerid][pCanSa] > 0)
		{
		    if(PlayerInfo[playerid][pCanSa] >= cansa)
		    {
		        if(cansa > 99999 || cansa < -1)
		        {
		            SendClientMessage(playerid, -1, "Loi ban' can sa , vui long thu lai!!!");
		            return 1;
		        }
		        if(cansa > 9999999999999999)
		        {
		            new str[1280];
					format(str, sizeof(str), "Nguoi choi %s dang co the dang bug $ tu viec ban' can sa voi so luong %d", cansa);
					ABroadCast(COLOR_YELLOW, str, 2);
		        }
		        else
		        {
		            PlayerInfo[playerid][pCash] += cansa * cansa_kimcuong;
					PlayerInfo[playerid][pCanSa] -= cansa;

					if(cansa >= 30)
					{
					    PlayerInfo[playerid][pPot] += 1;
					    SendClientMessage(playerid, -1, "Ban nhan duoc 1 pot , tu viec ban can sa!!!");
					}

					new str[1280];
					format(str, sizeof(str), "Ban vua ban' thanh cong %d Can sa va nhan duoc {00ff00}%s${FFFFFF}.", cansa, number_format(cansa * cansa_kimcuong));
					SendClientMessage(playerid, -1, str);
					Log("logs/sellcansa.log", str);
		        }
		    }else SendClientMessage(playerid, -1, "Ban khong co nhieu Can Sa (( /tuido ))");
		}else SendClientMessage(playerid, -1, "Ban chua co mot con Can Sa nao het (( /tuido ))");
	}
	return 1;
}
