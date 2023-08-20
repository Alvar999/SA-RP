#include <a_samp>
#include <YSI\y_hooks>


new PlayerText:TDSpeedo[MAX_PLAYERS][3];

//-------------------------------
stock GetVehicleSpeed(vehicleid)
{
    new
        Float:vel[3],
        Float:tempspeed;
    GetVehicleVelocity(vehicleid, vel[0], vel[1], vel[2]);
    tempspeed = floatsqroot((vel[0] * vel[0]) + (vel[1] * vel[1]) + (vel[2] * vel[2])) * 136.666667;
    return floatround(tempspeed, floatround_round);
}
//-------------------------------

hook OnPlayerUpdate(playerid)
{
    if (IsPlayerInAnyVehicle(playerid))
    {
        new speed[1280], fuelcc[1280];
        
        new vspeed;
        vspeed = GetVehicleSpeed(GetPlayerVehicleID(playerid));

        format(speed, sizeof(speed), "%d", vspeed);
        PlayerTextDrawSetString(playerid, TDSpeedo[playerid][0], speed);
        
        new iVehicleID = GetPlayerVehicleID(playerid);
        new Float:health;
        GetVehicleHealth(iVehicleID, health);
        format(fuelcc, sizeof(fuelcc), "Health: %.0f", health);
        PlayerTextDrawSetString(playerid, TDSpeedo[playerid][2], fuelcc);
    }
    return 1;
}

hook OnPlayerStateChange(playerid, newstate, oldstate)
{
    if (GetPlayerState(playerid) == PLAYER_STATE_DRIVER)
    {
        PlayerTextDrawShow(playerid, TDSpeedo[playerid][0]);
        PlayerTextDrawShow(playerid, TDSpeedo[playerid][1]);
        PlayerTextDrawShow(playerid, TDSpeedo[playerid][2]);
    }else{
        PlayerTextDrawHide(playerid, TDSpeedo[playerid][0]);
	    PlayerTextDrawHide(playerid, TDSpeedo[playerid][1]);
	    PlayerTextDrawHide(playerid, TDSpeedo[playerid][2]);
    }
    return 1;
}

hook OnPlayerConnect(playerid) {
    TDSpeedo[playerid][0] = CreatePlayerTextDraw(playerid, 423.666687, 328.962982, "100");
	PlayerTextDrawLetterSize(playerid, TDSpeedo[playerid][0], 0.534666, 2.222222);
	PlayerTextDrawAlignment(playerid, TDSpeedo[playerid][0], 2);
	PlayerTextDrawColor(playerid, TDSpeedo[playerid][0], -1523963137);
	PlayerTextDrawSetShadow(playerid, TDSpeedo[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, TDSpeedo[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, TDSpeedo[playerid][0], 255);
	PlayerTextDrawFont(playerid, TDSpeedo[playerid][0], 3);
	PlayerTextDrawSetProportional(playerid, TDSpeedo[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, TDSpeedo[playerid][0], 0);

	TDSpeedo[playerid][1] = CreatePlayerTextDraw(playerid, 439.000030, 337.674194, "Km/h");
	PlayerTextDrawLetterSize(playerid, TDSpeedo[playerid][1], 0.255666, 1.168592);
	PlayerTextDrawAlignment(playerid, TDSpeedo[playerid][1], 1);
	PlayerTextDrawColor(playerid, TDSpeedo[playerid][1], -1523963137);
	PlayerTextDrawSetShadow(playerid, TDSpeedo[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, TDSpeedo[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, TDSpeedo[playerid][1], 255);
	PlayerTextDrawFont(playerid, TDSpeedo[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, TDSpeedo[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, TDSpeedo[playerid][1], 0);

	TDSpeedo[playerid][2] = CreatePlayerTextDraw(playerid, 435.000061, 345.555450, "FUEL:_1000l");
	PlayerTextDrawLetterSize(playerid, TDSpeedo[playerid][2], 0.220333, 1.064889);
	PlayerTextDrawAlignment(playerid, TDSpeedo[playerid][2], 2);
	PlayerTextDrawColor(playerid, TDSpeedo[playerid][2], -2147483393);
	PlayerTextDrawSetShadow(playerid, TDSpeedo[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, TDSpeedo[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, TDSpeedo[playerid][2], 255);
	PlayerTextDrawFont(playerid, TDSpeedo[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, TDSpeedo[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, TDSpeedo[playerid][2], 0);

	return 1;
}

hook OnPlayerExitVehicle(playerid, vehicleid)
{
    PlayerTextDrawShow(playerid, TDSpeedo[playerid][0]);
    PlayerTextDrawShow(playerid, TDSpeedo[playerid][1]);
    PlayerTextDrawShow(playerid, TDSpeedo[playerid][2]);
    return 1;
}
