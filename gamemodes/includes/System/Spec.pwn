#include <a_samp>
#include <YSI\y_hooks>

new SpecID[MAX_PLAYERS];
new PlayerText:TD_Spec[MAX_PLAYERS][9];

CMD:spec(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] < 2 && PlayerInfo[playerid][pHelper] < 3 && !GetPVarType(playerid, "pWatchdogWatching"))
	{
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong duoc phep su dung lenh nay.");
		return 1;
	}

	if(strcmp(params, "off", true) == 0)
	{
		if(Spectating[playerid] > 0 && PlayerInfo[playerid][pAdmin] >= 2 || PlayerInfo[playerid][pHelper] >= 3 && Spectating[playerid] > 0)
		{
		    if(GetPVarType(playerid, "pWatchdogWatching"))
			{
			    SendClientMessage(playerid, COLOR_WHITE, "You have stopped DM Watching.");
				DeletePVar(playerid, "pWatchdogWatching");
			}
			GettingSpectated[Spectate[playerid]] = INVALID_PLAYER_ID;
			Spectating[playerid] = 0;
			Spectate[playerid] = INVALID_PLAYER_ID;
			SetPVarInt(playerid, "SpecOff", 1);
			TogglePlayerSpectating(playerid, false);
			SetCameraBehindPlayer(playerid);

			PlayerTextDrawHide(playerid, TD_Spec[playerid][0]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][1]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][2]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][3]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][4]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][5]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][6]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][7]);
			PlayerTextDrawHide(playerid, TD_Spec[playerid][8]);

			SpecID[playerid] = 0;
			return 1;
		}
		else
		{
			SendClientMessageEx(playerid, COLOR_GREY, "You're not spectating anyone.");
			return 1;
		}
	}

	new giveplayerid;
	if(sscanf(params, "u", giveplayerid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /spec (playerid/off)");
	if(IsPlayerConnected(giveplayerid))
	{
	    if((PlayerInfo[playerid][pHelper] >= 3 && !(2 <= PlayerInfo[giveplayerid][pHelper] <= 4)) && !GetPVarType(playerid, "pWatchdogWatching"))
	    {
	        SendClientMessageEx(playerid, COLOR_GREY, "You can only spectate other advisors");
			return 1;
		}
		if(GetPVarType(playerid, "pWatchdogWatching") && (GetPVarInt(playerid, "pWatchdogWatching") != giveplayerid))
		{
		    SendClientMessageEx(playerid, COLOR_GREY, "You can only spectate the person you are DM Watching.");
			return 1;
		}
		if(PlayerInfo[giveplayerid][pAdmin] == 7 && !GetPVarType(giveplayerid, "EASpecable")) return SendClientMessageEx(playerid, COLOR_WHITE, "You cannot spectate this person.");
		if(PlayerInfo[playerid][pAdmin] >= 4 && Spectate[giveplayerid] != INVALID_PLAYER_ID && Spectating[giveplayerid] == 1)
		{
			new string[128];
			format(string, sizeof(string), "Admin %s is speccing %s", GetPlayerNameEx(giveplayerid), GetPlayerNameEx(Spectate[giveplayerid]));
			SendClientMessageEx(playerid, COLOR_GREEN, string);
			return 1;
		}
		PlayerTextDrawShow(playerid, TD_Spec[playerid][0]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][1]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][2]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][3]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][4]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][5]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][6]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][7]);
		PlayerTextDrawShow(playerid, TD_Spec[playerid][8]);

		SpecID[playerid] = giveplayerid;
		UpdateSpec(playerid, giveplayerid);

		SpectatePlayer(playerid, giveplayerid);
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_WHITE, "Target is not available.");
	}
	return 1;
}

stock UpdateSpec(playerid, giveplayerid)
{
	new tenspec[1280], healthspec[1280], armorspec[1280], speedspec[1280], weaponspec[1280], ipspec[1280];
	format(tenspec, sizeof(tenspec), "%s (ID %d)", GetPlayerNameEx(giveplayerid), giveplayerid);
	PlayerTextDrawSetString(playerid, TD_Spec[playerid][3], tenspec);

	new Float: health;
	GetPlayerHealth(giveplayerid, health);
    format(healthspec, sizeof(healthspec), "Health : %.1f", health);
	PlayerTextDrawSetString(playerid, TD_Spec[playerid][4], healthspec);

	new Float: armor;
	GetPlayerArmour(giveplayerid, armor);
	format(armorspec, sizeof(armorspec), "Armor : %.1f", armor);
	PlayerTextDrawSetString(playerid, TD_Spec[playerid][5], armorspec);

    static Float: fCurrentSpeed;
	fCurrentSpeed = player_get_speed(giveplayerid);

	format(speedspec, sizeof(speedspec), "Speed : %d | Speed Veh : %.0f", GetSpeedPlayer(giveplayerid), fCurrentSpeed);
	PlayerTextDrawSetString(playerid, TD_Spec[playerid][6], speedspec);

	new weaponname[50];
	new weap2 = GetPlayerWeapon(giveplayerid);
	GetWeaponName(weap2, weaponname, sizeof(weaponname));

	format(weaponspec, sizeof(weaponspec), "Vu khi : %s", weaponname);
	PlayerTextDrawSetString(playerid, TD_Spec[playerid][7], weaponspec);

	format(ipspec, sizeof(ipspec), "IP : %s", GetPlayerIpEx(giveplayerid));
	PlayerTextDrawSetString(playerid, TD_Spec[playerid][8], ipspec);
	return 1;
}

hook OnPlayerUpdate(playerid)
{
    UpdateSpec(playerid, SpecID[playerid]);
    return 1;
}

hook OnPlayerConnect(playerid) {
    TD_Spec[playerid][0] = CreatePlayerTextDraw(playerid, 464.666595, 282.918518, "box");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][0], 0.000000, 11.800000);
	PlayerTextDrawTextSize(playerid, TD_Spec[playerid][0], 635.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][0], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, TD_Spec[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, TD_Spec[playerid][0], 100);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][0], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][0], 0);

	TD_Spec[playerid][1] = CreatePlayerTextDraw(playerid, 464.666656, 282.918457, "box");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][1], -0.020666, 1.408592);
	PlayerTextDrawTextSize(playerid, TD_Spec[playerid][1], 635.000000, 0.000000);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][1], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][1], -2139062017);
	PlayerTextDrawUseBox(playerid, TD_Spec[playerid][1], 1);
	PlayerTextDrawBoxColor(playerid, TD_Spec[playerid][1], -2139062017);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][1], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][1], 0);

	TD_Spec[playerid][2] = CreatePlayerTextDraw(playerid, 535.666381, 281.259399, "SPEC");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][2], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][2], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][2], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][2], 3);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][2], 0);

	TD_Spec[playerid][3] = CreatePlayerTextDraw(playerid, 467.666473, 298.681579, "be_phuong");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][3], 0.345333, 1.732741);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][3], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][3], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][3], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][3], 0);

	TD_Spec[playerid][4] = CreatePlayerTextDraw(playerid, 466.999786, 315.689056, "health:");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][4], 0.272333, 1.479704);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][4], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][4], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][4], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][4], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][4], 0);

	TD_Spec[playerid][5] = CreatePlayerTextDraw(playerid, 466.999816, 330.207611, "armor:");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][5], 0.272333, 1.479704);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][5], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][5], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][5], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][5], 0);

	TD_Spec[playerid][6] = CreatePlayerTextDraw(playerid, 467.333190, 343.896484, "speed:");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][6], 0.272333, 1.479704);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][6], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][6], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][6], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][6], 0);

	TD_Spec[playerid][7] = CreatePlayerTextDraw(playerid, 467.333190, 356.755859, "weapon:");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][7], 0.272333, 1.479704);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][7], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][7], -5963521);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][7], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][7], 0);

	TD_Spec[playerid][8] = CreatePlayerTextDraw(playerid, 467.666534, 373.348541, "IP:");
	PlayerTextDrawLetterSize(playerid, TD_Spec[playerid][8], 0.272333, 1.479704);
	PlayerTextDrawAlignment(playerid, TD_Spec[playerid][8], 1);
	PlayerTextDrawColor(playerid, TD_Spec[playerid][8], -16776961);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, TD_Spec[playerid][8], 1);
	PlayerTextDrawBackgroundColor(playerid, TD_Spec[playerid][8], 255);
	PlayerTextDrawFont(playerid, TD_Spec[playerid][8], 2);
	PlayerTextDrawSetProportional(playerid, TD_Spec[playerid][8], 1);
	PlayerTextDrawSetShadow(playerid, TD_Spec[playerid][8], 0);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    SpecID[playerid] = 0;
	return 1;
}
