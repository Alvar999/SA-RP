#include <a_samp>
#include <YSI\y_hooks>

new PlayerText:PlayerHud[MAX_PLAYERS][1];
new PlayerBar:ProBarHud[MAX_PLAYERS][1];
new PlayerText:NamePlayer[MAX_PLAYERS][1];

hook OnPlayerSpawn(playerid) {
    PlayerTextDrawShow(playerid, PlayerHud[playerid][0]);
	ShowPlayerProgressBar(playerid, ProBarHud[playerid][0]);

	new playernametext[1280];
	format(playernametext, sizeof(playernametext), "%s", GetPlayerNameEx(playerid));
	PlayerTextDrawSetString(playerid, NamePlayer[playerid][0], playernametext);
	PlayerTextDrawShow(playerid, NamePlayer[playerid][0]);
	return 1;
}

hook OnPlayerConnect(playerid)
{
	PlayerHud[playerid][0] = CreatePlayerTextDraw(playerid, 534.000000, 0.000000, "HUD:radar_burgershot");
	PlayerTextDrawFont(playerid, PlayerHud[playerid][0], 4);
	PlayerTextDrawLetterSize(playerid, PlayerHud[playerid][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerHud[playerid][0], 11.500000, 10.000000);
	PlayerTextDrawSetOutline(playerid, PlayerHud[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, PlayerHud[playerid][0], 0);
	PlayerTextDrawAlignment(playerid, PlayerHud[playerid][0], 1);
	PlayerTextDrawColor(playerid, PlayerHud[playerid][0], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerHud[playerid][0], 255);
	PlayerTextDrawBoxColor(playerid, PlayerHud[playerid][0], 50);
	PlayerTextDrawUseBox(playerid, PlayerHud[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, PlayerHud[playerid][0], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerHud[playerid][0], 0);

	ProBarHud[playerid][0] = CreatePlayerProgressBar(playerid, 547.000000, 4.000000, 92.000000, 2.500000, 852308735, 100.000000);
	SetPlayerProgressBarValue(playerid, ProBarHud[playerid][0], 100.000000);

	NamePlayer[playerid][0] = CreatePlayerTextDraw(playerid, 636.332458, 10.800016, "Be_PHUONG");
	PlayerTextDrawLetterSize(playerid, NamePlayer[playerid][0], 0.322333, 1.222518);
	PlayerTextDrawAlignment(playerid, NamePlayer[playerid][0], 3);
	PlayerTextDrawColor(playerid, NamePlayer[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, NamePlayer[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, NamePlayer[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, NamePlayer[playerid][0], 255);
	PlayerTextDrawFont(playerid, NamePlayer[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, NamePlayer[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, NamePlayer[playerid][0], 0);
	return 1;
}

task UpdateHud[1000] () {
	foreach(new playerid: Player)
	{
	    SetPlayerProgressBarColor(playerid, ProBarHud[playerid][0], COLOR_YELLOW);
		SetPlayerProgressBarValue(playerid, ProBarHud[playerid][0], PlayerInfo[playerid][pSucKhoe]);
		ShowPlayerProgressBar(playerid, ProBarHud[playerid][0]);
	}
}
