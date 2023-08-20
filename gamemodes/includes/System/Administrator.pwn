#include <a_samp>
#include <YSI\y_hooks>



/*CMD:rp(playerid, params[])
{
	Kick(playerid);
	return 1;
}*/

task PlayerNonRPName[100]() {
    foreach(new playerid: Player) {
        if(gPlayerLogged{playerid} && PlayerInfo[playerid][pAdmin] == 0) {
			if(!IsValidName(playerid))
			{
			    SetPVarString(playerid, "KickNonRP", GetPlayerNameEx(playerid));
			    SetTimerEx("KickNonRP", 100, false, "i", playerid);
			}
		}
	}
}

CMD:vhp(playerid, params[])
{
    if(IsPlayerInAnyVehicle(playerid))
    {
	    new szMessage[1280];
		format(szMessage, sizeof(szMessage), "Nguoi choi %s (ID: %d) , vua su dung cmd {00ff00}/vhp.", GetPlayerNameEx(playerid), playerid);
		ABroadCast(COLOR_RED, szMessage, 2);
	}
	return 1;
}

CMD:chp(playerid, params[])
{
    if(IsPlayerInAnyVehicle(playerid))
    {
	    new szMessage[1280];
		format(szMessage, sizeof(szMessage), "Nguoi choi %s (ID: %d) , vua su dung cmd {00ff00}/chp.", GetPlayerNameEx(playerid), playerid);
		ABroadCast(COLOR_RED, szMessage, 2);
	}
	return 1;
}

/*CMD:fcrash(playerid, params[]) {
    new String[128];
    format( String, sizeof( String ), "[GTAVNS.COM] Nguoi choi %s , da bi banned vinh vien do su dung hacking (Kill All).", GetPlayerNameEx(playerid));
	ABroadCast( COLOR_LIGHTRED, String, 2 );
	SendClientMessage(playerid, COLOR_LIGHTRED, String );
	SetPVarInt(playerid, "_HACK_WARNINGS", 0);
	PlayerInfo[playerid][pBanned] = 3;
	new playerip[32];
	GetPlayerIp(playerid, playerip, sizeof(playerip));
	format( String, sizeof( String ), "AdmCmd: %s (IP:%s) da bi khoa tai khoan, ly do: Hack Kill All", GetPlayerNameEx(playerid), playerip);
	PlayerInfo[playerid][pBanned] = 3;
	Log("logs/ban.log", String);

	new rcon_banip[24], rcon_banned[24];
    GetPlayerIp(playerid, playerip, sizeof(playerip));
	format(rcon_banip, sizeof(rcon_banip),"banip %s", playerip);
	SendRconCommand(rcon_banip);

	format(rcon_banned, sizeof(rcon_banned),"ban %d", playerid);
	SendRconCommand(rcon_banned);

	SystemBan(playerid, "[System] (Hack KillAll)");
	MySQLBan(GetPlayerSQLId(playerid), playerip, "Hack KillAll", 1,"nDPDz");
	SetTimerEx("KickEx", 1000, 0, "i", playerid);
	TotalAutoBan++;
	return 1;
}

CMD:xcrash(playerid, params[]) {
    new String[128];
    format( String, sizeof( String ), "[GTAVNS.COM] Nguoi choi %s , da bi banned vinh vien do su dung hacking (Kill All).", GetPlayerNameEx(playerid));
	ABroadCast( COLOR_LIGHTRED, String, 2 );
	SendClientMessage(playerid, COLOR_LIGHTRED, String );
	SetPVarInt(playerid, "_HACK_WARNINGS", 0);
	PlayerInfo[playerid][pBanned] = 3;
	new playerip[32];
	GetPlayerIp(playerid, playerip, sizeof(playerip));
	format( String, sizeof( String ), "AdmCmd: %s (IP:%s) da bi khoa tai khoan, ly do: Hack Kill All", GetPlayerNameEx(playerid), playerip);
	PlayerInfo[playerid][pBanned] = 3;
	Log("logs/ban.log", String);

	new rcon_banip[24], rcon_banned[24];
    GetPlayerIp(playerid, playerip, sizeof(playerip));
	format(rcon_banip, sizeof(rcon_banip),"banip %s", playerip);
	SendRconCommand(rcon_banip);

	format(rcon_banned, sizeof(rcon_banned),"ban %d", playerid);
	SendRconCommand(rcon_banned);

	SystemBan(playerid, "[System] (Hack KillAll)");
	MySQLBan(GetPlayerSQLId(playerid), playerip, "Hack KillAll", 1,"nDPDz");
	SetTimerEx("KickEx", 1000, 0, "i", playerid);
	TotalAutoBan++;
	return 1;
}*/

CMD:daccount(playerid, params[]) {

    if(PlayerInfo[playerid][pAdmin] < 99999) {
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay!");
		return 1;
	}

	new string[1280], playername[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /daccount [player name]");
    new giveplayerid = ReturnUser(playername);
    if(IsPlayerConnected(giveplayerid)) {
        SendClientMessageEx(playerid, COLOR_YELLOW2, "Nguoi choi nay hien dang ton tai trong may chu, khong the #Delete_Account ngay bay gio!");
    }
    else {
	    new query[15000], tmpName[24];
	    mysql_escape_string(playername, tmpName);

		format(query, sizeof(query), "DELETE FROM `accounts` WHERE `Username`='%s'", tmpName);
		mysql_function_query(MainPipeline, query, false, "OnQueryFinish", "ii", SENDDATA_THREAD, tmpName);

		format(string, sizeof(string), "Tai khoan %s da bi %s xoa vinh vien ra khoi may chu!", tmpName, GetPlayerNameEx(playerid));
		SendClientMessageToAllEx(COLOR_LIGHTRED, string);
	}
	return 1;
}

CMD:abug(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2) return 0;

	new playername[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /abug [Player Name]");

    new giveplayerid = ReturnUser(playername);
	if(!IsPlayerConnected(giveplayerid))
	{
	    new query[128], tmpName[24], string[1280];
		mysql_escape_string(playername, tmpName);

		format(query, 2048, "UPDATE `accounts` SET `SPos_x` = '%0.2f', `SPos_y` = '%0.2f', `SPos_z` = '%0.2f', `SPos_r` = '%0.2f' WHERE `Username` = '%s'",1830.9292,-1593.1130,13.5469, 90.7264, tmpName);
		mysql_function_query(MainPipeline, query, false, "OnQueryFinish", "i", SENDDATA_THREAD);

		format(string,sizeof(string),"Ban da fix bug cho account %s...", tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_YELLOW, "Nguoi nay hien dang online trong may chu vui long (/sendto, /duavevip).");
	}
	return 1;
}

CMD:kickallbaotri(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] == 99999)
	{
	    for(new i = 0; i < MAX_PLAYERS; i++){
	        KickWithMessage(i, "Ban vui long /q , may chu dang bao tri!");
			Kick(i);
		}
	}
	return 1;
}

CMD:baotri(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] < 99999) {
        SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong duoc phep su dung lenh nay.");
        return 1;
    }

    SetTimer( "Maintenance", 30000, false );
    SendClientMessageToAllEx(COLOR_LIGHTBLUE, "*SERVER SE NGAT KET NOI SAU 30 GIAY DE BAO TRI, VUI LONG /q");
    foreach(new i: Player)
	{
        GameTextForPlayer(i, "~y~Bao tri may chu", 5000, 6);
    }
    return 1;
}

CMD:catxeall(playerid)
{
	if(PlayerInfo[playerid][pAdmin] <= 2) return 1;
	foreach(new i:Player)
	{
	    for(new a; a < MAX_PLAYERVEHICLES; a++)
	    {
	        if(PlayerVehicleInfo[i][a][pvSpawned] == 1)
	        {
	            new iVehicleID = PlayerVehicleInfo[i][a][pvId];
	            if(!IsPlayerInVehicle(playerid, iVehicleID))
	            {
					--PlayerCars;
					VehicleSpawned[i]--;
					PlayerVehicleInfo[i][a][pvSpawned] = 0;
					PlayerVehicleInfo[i][a][pvFuel] = 100;
					DestroyVehicle(iVehicleID);
					PlayerVehicleInfo[i][a][pvId] = INVALID_PLAYER_VEHICLE_ID;
					g_mysql_SaveVehicle(i, a);
				}
			}
		}
	}
	return 1;
}

CMD:atakeoff(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 9999) return 0;

	new string[128], playername[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /atakeoff [Player Name]");

    new giveplayerid = ReturnUser(playername);
	if(IsPlayerConnected(giveplayerid))
	{
	    if(PlayerInfo[giveplayerid][pAdmin] <= 4)
	    {
			new playerip[32];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "[Take Offline]: %s Da Remove Account Administrator %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			Log("logs/atakeoff.log", string);
			SendClientMessageEx(playerid, COLOR_WHITE, "Nguoi choi nay dang online !");
			format(string, sizeof(string), "[Take Offline]: %s Da Remove Account Administrator %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			PlayerInfo[giveplayerid][pAdmin] = 0;
		}else SendClientMessageToAllEx(COLOR_LIGHTRED, "Lam dung a con dy~");
	}
	else
	{
		new query[128], tmpName[24];

		mysql_escape_string(playername, tmpName);
		format(query, sizeof(query), "UPDATE `accounts` SET `AdminLevel`=0 WHERE `Username`='%s'", tmpName);
		mysql_function_query(MainPipeline, query, false, "OfflineTake", "i", playerid);

        SetPVarString(playerid, "OfflineTake", tmpName);

		format(string,sizeof(string),"He Thong Dang Tai Du Lieu Account %s...", tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	return 1;
}

CMD:dsadmin(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2) return 0;
	new Cache:Result,LastLogin[255],pNameget[60],vzstr[15000];
	new count,NameAdmin[500];
	Result = mysql_query(MainPipeline, "SELECT `LastLogin`, `Username`, `AdminLevel` FROM `accounts` WHERE `AdminLevel` >= 2");
	if(cache_num_rows())
	{
		for(new i = 0; i < cache_num_rows(); i++)
		{
			cache_get_field_content(i, "Username", pNameget);
			cache_get_field_content(i, "LastLogin", LastLogin);
			count = cache_get_field_content_int(i, "AdminLevel");
			if(count == 2) format(NameAdmin, 500, "Admin 2");
			else if(count == 3) format(NameAdmin, 500, "Admin 3");
			else if(count == 4) format(NameAdmin, 500, "Admin 4");
			else if(count == 1337) format(NameAdmin, 500, "Admin 1337");
			else if(count == 1338) format(NameAdmin, 500, "Admin 1338");
			else if(count == 1339) format(NameAdmin, 500, "Admin 1339");
			else if(count == 9999) format(NameAdmin, 500, "Admin 9999");
			else if(count == 99999) format(NameAdmin, 500, "BOSS");
			format(vzstr, 15000, "%s\n%d. Ten: %s\t%s\tLast Login: %s", vzstr,i,pNameget,NameAdmin,LastLogin);
		}
	}
	else
	{
		return SendClientMessage(playerid, COLOR_WHITE, "Khong xu ly duoc du lieu");
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, "List Admin", vzstr, "Thoat", "");
	return 1;
}

CMD:thanhvien(playerid,params[])
{
	if(PlayerInfo[playerid][pLeader] == INVALID_GROUP_ID) return 0;
	new Cache:Result,LastLogin[255],pNameget[60],vzstr[15000];
	Result = mysql_query(MainPipeline, "SELECT `LastLogin`, `Username`, `Member` FROM `accounts` WHERE `Member` >= 0");
	new count;
	if(cache_num_rows())
	{
		for(new i = 0; i < cache_num_rows(); i++)
		{
			cache_get_field_content(i, "Username", pNameget);
			cache_get_field_content(i, "LastLogin", LastLogin);
			count = cache_get_field_content_int(i, "Member");
			if(count == PlayerInfo[playerid][pLeader])	{
				format(vzstr, 15000, "%s\n%d. Ten: %s\tLast Login: %s", vzstr,i,pNameget,LastLogin);
			}
		}
	}
	else
	{
		return SendClientMessage(playerid, COLOR_WHITE, "Khong xu ly duoc du lieu");
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, "List Member Faction", vzstr, "Thoat", "");
	return 1;
}

CMD:dsadvisor(playerid,params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2) return 0;
	new Cache:Result,LastLogin[255],pNameget[60],vzstr[15000];
	new count,NameAdmin[500];
	Result = mysql_query(MainPipeline, "SELECT `LastLogin`, `Username`, `Helper` FROM `accounts` WHERE `Helper` >= 2");
	if(cache_num_rows())
	{
		for(new i = 0; i < cache_num_rows(); i++)
		{
			cache_get_field_content(i, "Username", pNameget);
			cache_get_field_content(i, "LastLogin", LastLogin);
			count = cache_get_field_content_int(i, "Helper");
			if(count == 2) format(NameAdmin, 500, "Advisor");
			else if(count == 3) format(NameAdmin, 500, "S.A Advisor");
			else if(count == 4) format(NameAdmin, 500, "Chief Advisor");
			format(vzstr, 15000, "%s\n%d. Ten: %s\t%s\tLast Login: %s", vzstr,i,pNameget,NameAdmin,LastLogin);
		}
	}
	else
	{
		return SendClientMessage(playerid, COLOR_WHITE, "Khong xu ly duoc du lieu");
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_LIST, "List Advisor", vzstr, "Thoat", "");
	return 1;
}

CMD:facbanoff(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] == 0) return 0;

	new string[128], playername[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /fackick [Player Name]");

    new giveplayerid = ReturnUser(playername);
	if(IsPlayerConnected(giveplayerid))
	{
	    if(PlayerInfo[playerid][pAdmin] >= 1337)
	    {
			new playerip[32];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "[Take Offline]: %s da banned groups %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			Log("logs/atakeoff.log", string);
			SendClientMessageEx(playerid, COLOR_WHITE, "Nguoi choi nay dang online !");

			PlayerInfo[giveplayerid][pCSFBanned] = 1;
			format(string, sizeof(string), "You have been group-banned, by %s, from ALL Civil Service Groups.", GetPlayerNameEx( playerid ));
			SendClientMessageEx(giveplayerid, COLOR_LIGHTBLUE, string);
			PlayerInfo[giveplayerid][pMember] = INVALID_GROUP_ID;
			PlayerInfo[giveplayerid][pLeader] = INVALID_GROUP_ID;
			PlayerInfo[giveplayerid][pDivision] = INVALID_DIVISION;
			PlayerInfo[giveplayerid][pRank] = INVALID_RANK;
			PlayerInfo[giveplayerid][pDuty] = 0;
			PlayerInfo[giveplayerid][pModel] = NOOB_SKIN;
			SetPlayerToTeamColor(giveplayerid);
			SetPlayerSkin(giveplayerid, NOOB_SKIN);
			format(string, sizeof(string), "You have faction-banned %s from all CSF groups.", GetPlayerNameEx(giveplayerid));
			SendClientMessageEx(playerid, COLOR_WHITE, string);
				
		}else SendClientMessageToAllEx(COLOR_LIGHTRED, "Lam dung a con dy~");
	}
	else
	{
		new query[128], tmpName[24];

		mysql_escape_string(playername, tmpName);
		
		format(query, sizeof(query), "UPDATE `accounts` SET `Member`=-1,`Leader`=-1 WHERE `Username`='%s'", tmpName);
		mysql_function_query(MainPipeline, query, false, "OfflineTake", "i", playerid);

		format(string,sizeof(string),"INSERT INTO `groupbans` (`PlayerID`, `GroupBan`, `BanReason`, `BanDate`) VALUES (%d, %d, '%s', NOW())", GetPlayerSQLId(giveplayerid), PlayerInfo[giveplayerid][pMember], "Banned Offline");
		mysql_function_query(MainPipeline, string, false, "Group_QueryFinish", "ii", GROUP_QUERY_ADDBAN, playerid);
        SetPVarString(playerid, "OfflineTake", tmpName);
        
		format(string,sizeof(string),"He Thong Dang Tai Du Lieu Account %s...", tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	return 1;
}

CMD:fackickoff(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] == 0) return 0;

	new string[128], playername[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /fackick [Player Name]");

    new giveplayerid = ReturnUser(playername);
	if(IsPlayerConnected(giveplayerid))
	{
	    if(PlayerInfo[playerid][pAdmin] >= 1337)
	    {
			new playerip[32];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "[Take Offline]: %s Da Remove Account Faction %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			Log("logs/atakeoff.log", string);
			SendClientMessageEx(playerid, COLOR_WHITE, "Nguoi choi nay dang online !");
			
			PlayerInfo[giveplayerid][pDuty] = 0;
			PlayerInfo[giveplayerid][pMember] = INVALID_GROUP_ID;
			PlayerInfo[giveplayerid][pRank] = INVALID_RANK;
			PlayerInfo[giveplayerid][pLeader] = INVALID_GROUP_ID;
			PlayerInfo[giveplayerid][pDivision] = INVALID_DIVISION;
			if(!IsValidSkin(GetPlayerSkin(giveplayerid)))
			{
				new rand = random(sizeof(CIV));
				SetPlayerSkin(giveplayerid,CIV[rand]);
				PlayerInfo[giveplayerid][pModel] = CIV[rand];
			}
			player_remove_vip_toys(giveplayerid);
			pTazer{giveplayerid} = 0;
			SetPlayerToTeamColor(giveplayerid);
		}else SendClientMessageToAllEx(COLOR_LIGHTRED, "Lam dung a con dy~");
	}
	else
	{
		new query[128], tmpName[24];

		mysql_escape_string(playername, tmpName);
		format(query, sizeof(query), "UPDATE `accounts` SET `Member`=-1,`Leader`=-1 WHERE `Username`='%s'", tmpName);
		mysql_function_query(MainPipeline, query, false, "OfflineTake", "i", playerid);

        SetPVarString(playerid, "OfflineTake", tmpName);

		format(string,sizeof(string),"He Thong Dang Tai Du Lieu Account %s...", tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	return 1;
}

CMD:catakeoff(playerid, params[])
{
	if(PlayerInfo[playerid][pPR] == 0) return 0;

	new string[128], playername[MAX_PLAYER_NAME];
	if(sscanf(params, "s[24]", playername)) return SendClientMessageEx(playerid, COLOR_WHITE, "SU DUNG: /catakeoff [Player Name]");

    new giveplayerid = ReturnUser(playername);
	if(IsPlayerConnected(giveplayerid))
	{
	    if(PlayerInfo[playerid][pPR] == 1)
	    {
			new playerip[32];
			GetPlayerIp(giveplayerid, playerip, sizeof(playerip));
			format(string, sizeof(string), "[Take Offline]: %s Da Remove Account Advisor %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			Log("logs/atakeoff.log", string);
			SendClientMessageEx(playerid, COLOR_WHITE, "Nguoi choi nay dang online !");
			format(string, sizeof(string), "[Take Offline]: %s Da Remove Account Advisor %s", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid));
			SendClientMessageToAllEx(COLOR_LIGHTRED, string);
			PlayerInfo[giveplayerid][pHelper] = 0;
		}else SendClientMessageToAllEx(COLOR_LIGHTRED, "Lam dung a con dy~");
	}
	else
	{
		new query[128], tmpName[24];

		mysql_escape_string(playername, tmpName);
		format(query, sizeof(query), "UPDATE `accounts` SET `Helper`=0 WHERE `Username`='%s'", tmpName);
		mysql_function_query(MainPipeline, query, false, "OfflineTake", "i", playerid);

        SetPVarString(playerid, "OfflineTake", tmpName);

		format(string,sizeof(string),"He Thong Dang Tai Du Lieu Account %s...", tmpName);
		SendClientMessageEx(playerid, COLOR_YELLOW, string);
	}
	return 1;
}

CMD:finekimcuong(playerid, params[])
{
	new string[128], giveplayerid, amount, reason[64];
	if(sscanf(params, "uds[64]", giveplayerid, amount, reason)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /finekimcuong [player] [amount] [reason]");

	if (PlayerInfo[playerid][pAdmin] >= 4)
	{
		if(IsPlayerConnected(giveplayerid))
		{
			if (amount < 1)
			{
				SendClientMessageEx(playerid, COLOR_GRAD2, "Amount must be greater than 0");
				return 1;
			}

			if(amount > 1000000000)
			{
			    SendClientMessageEx(playerid, COLOR_GRAD2, "Bug con cac ba may!!!");
				return 1;
			}
			else{
				format(string, sizeof(string), "AdmCmd: %s da bi tru %s Credits boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
				Log("logs/admin.log", string);
				format(string, sizeof(string), "AdmCmd: %s da bi tru %s Credits boi %s, ly do: %s", GetPlayerNameEx(giveplayerid), number_format(amount), GetPlayerNameEx(playerid), reason);
				SendClientMessageToAllEx(COLOR_LIGHTRED, string);
				StaffAccountCheck(giveplayerid, GetPlayerIpEx(giveplayerid));
				PlayerInfo[giveplayerid][pnDP] -= amount;
				OnPlayerStatsUpdate(giveplayerid);
			}
		}
		else SendClientMessageEx(playerid, COLOR_GRAD1, "Nguoi choi khong hop le.");
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "You're not a level three admin.");
	}
	return 1;
}

CMD:tichthucredits(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallcredits [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So credits khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da tich thu {68FF33}%d Credits{ffffff} cua moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pnDP]-=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:giveallcredits(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallcredits [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So credits khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da phat {68FF33}%d Credits{ffffff} cho tat ca moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pnDP]+=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:tichthumoney(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallcredits [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So credits khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da tich thu {68FF33}%d money{ffffff} cua moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pCash]-=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:giveallmoney(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallmoney [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So tien khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da phat {68FF33}%d $(Money){ffffff} cho tat ca moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pCash]+=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:tichthuvatlieu(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallcredits [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So credits khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da tich thu {68FF33}%d Vatlieu{ffffff} cua moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pMats]-=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:giveallmatn(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallmoney [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So tien khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da phat {68FF33}%d (Vat Lieu){ffffff} cho tat ca moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pMats]+=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
} // pGoldBoxTokens
CMD:giveallgoldbox(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallmoney [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So tien khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da phat {68FF33}%d (Tokens Nhan Hop Qua Vang){ffffff} cho tat ca moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pGoldBoxTokens]+=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:tichthufacveh(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallcredits [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So credits khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da tich thu {68FF33}%d Phieu Xe Faction{ffffff} cua moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pCarVoucher]-=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:giveallfacveh(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallmoney [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So tien khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da phat {68FF33}%d (Phieu Xe Faction){ffffff} cho tat ca moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pCarVoucher]+=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:tichthuveh(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallcredits [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So credits khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da tich thu {68FF33}%d Credits{ffffff} cua moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pVehVoucher]-=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
CMD:giveallveh(playerid,params[])
{
 	if(PlayerInfo[playerid][pAdmin]>=99999)
	{
	    //if(!DaDangNhap(playerid)) return  SendClientMessage(playerid,0xFF000FF,"Ban chua dang nhap!");
		if(isnull(params)) return SendClientMessage(playerid,0xFF000FF,"Su dung : /giveallmoney [so luong]");
		if(strval(params)<=0) return SendClientMessage(playerid,0xFF000FF,"So tien khong hop le");
		new str[128];
		format(str,128,"{ff0000}%s{ffffff} da phat {68FF33}%d (Phieu Xe Vouchers){ffffff} cho tat ca moi nguoi trong server",GetPlayerNameExt(playerid),strval(params));
		SendClientMessageToAll(0xFFF000FF,str);
		for(new i; i<MAX_PLAYERS;i++)
		{
			if(IsPlayerConnected(i))//Neu tat ca nguoi choi trong so MAX_PLAYERS dang online moi tiep tuc vong lap
			{
			    PlayerInfo[i][pVehVoucher]+=strval(params); //Chuyen du lieu string sang so nguyen de give credits
			}
		}
 	}
	return 1;
}
