#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//
new PlayerText:Loader[MAX_PLAYERS][3];

forward LoadingProgress(playerid,loadingid,speed);
forward OnLoadingFinish(playerid,loadingid);
static
        Loading_Progess[MAX_PLAYERS],
        TimerLoading[MAX_PLAYERS];

stock LoaderStarting(playerid, loadingid, const LoaderInfo[], Float:speed, color) {
	if(GetPVarInt(playerid, "is_loading") == 1) return 1;
    switch(color) {
    	case 0: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
        case 1: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
        case 2: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -202218806);
        case 3: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 1960470730);
        case 4: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 2021902794);
        case 5: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -943949110);
        case 6: PlayerTextDrawBoxColor(playerid, Loader[playerid][2], -948405558);
    }
    PlayerTextDrawColor(playerid, Loader[playerid][2], color);
	new str[60];
	format(str, sizeof str, "%s", LoaderInfo);
	PlayerTextDrawSetString(playerid, Loader[playerid][1], str);
    PlayerTextDrawShow(playerid, Loader[playerid][0]);
    PlayerTextDrawShow(playerid, Loader[playerid][1]);
    TimerLoading[playerid] = SetTimerEx("LoadingProgress", 50, true, "iii", playerid,loadingid,floatround(speed));
    SetPVarInt(playerid, "is_loading", 1);
    return 1;
}

public LoadingProgress(playerid,loadingid,speed) {
    new Float:loading_bar;
    Loading_Progess[playerid] += 1 * speed;
    loading_bar = ( Loading_Progess[playerid] *  1.27 );
    
    switch(loadingid) {
		//case HAICANSA: ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
		case LAYHANG_BOCVAC: ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	}
    
    PlayerTextDrawTextSize(playerid, Loader[playerid][2], 257.000000 + loading_bar, 0.000000);
    PlayerTextDrawShow(playerid, Loader[playerid][2]);
    if(Loading_Progess[playerid] >= 100) {
        KillTimer(TimerLoading[playerid]);
        DeletePVar(playerid, "is_loading");
        Loading_Progess[playerid] = 0;
        OnLoadingFinish(playerid,loadingid);
        PlayerTextDrawHide(playerid, Loader[playerid][0]);
        PlayerTextDrawHide(playerid, Loader[playerid][1]);
        PlayerTextDrawHide(playerid, Loader[playerid][2]);
    }
}

hook OnPlayerConnect(playerid) {
    CreateLoading(playerid);
}
CreateLoading(playerid) {
	Loader[playerid][0] = CreatePlayerTextDraw(playerid, 260.309265, 396.149841, "box");
	PlayerTextDrawLetterSize(playerid, Loader[playerid][0], 0.000000, 1.098096);
	PlayerTextDrawTextSize(playerid, Loader[playerid][0], 385.300018, 0.000000);
	PlayerTextDrawAlignment(playerid, Loader[playerid][0], 1);
	PlayerTextDrawColor(playerid, Loader[playerid][0], -1);
	PlayerTextDrawUseBox(playerid, Loader[playerid][0], 1);
	PlayerTextDrawBoxColor(playerid, Loader[playerid][0], 228);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, Loader[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, Loader[playerid][0], 255);
	PlayerTextDrawFont(playerid, Loader[playerid][0], 1);
	PlayerTextDrawSetProportional(playerid, Loader[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][0], 0);

	Loader[playerid][2] = CreatePlayerTextDraw(playerid, 260.309265, 396.149841, "box");
	PlayerTextDrawLetterSize(playerid, Loader[playerid][2], 0.000000, 1.098096);
	PlayerTextDrawTextSize(playerid, Loader[playerid][2], 385.300018, 0.000000);
	PlayerTextDrawAlignment(playerid, Loader[playerid][2], 1);
	PlayerTextDrawColor(playerid, Loader[playerid][2], -1);
	PlayerTextDrawUseBox(playerid, Loader[playerid][2], 1);
	PlayerTextDrawBoxColor(playerid, Loader[playerid][2], 65443);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, Loader[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, Loader[playerid][2], 255);
	PlayerTextDrawFont(playerid, Loader[playerid][2], 1);
	PlayerTextDrawSetProportional(playerid, Loader[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][2], 0);

	Loader[playerid][1] = CreatePlayerTextDraw(playerid, 321.385589, 395.916687, "");
	PlayerTextDrawLetterSize(playerid, Loader[playerid][1], 0.178857, 1.127499);
	PlayerTextDrawAlignment(playerid, Loader[playerid][1], 2);
	PlayerTextDrawColor(playerid, Loader[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, Loader[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, Loader[playerid][1], 255);
	PlayerTextDrawFont(playerid, Loader[playerid][1], 1);
	PlayerTextDrawSetProportional(playerid, Loader[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, Loader[playerid][1], 0);
}

public OnLoadingFinish(playerid,loadingid) {
	switch(loadingid) {
	    /*case HAICANSA:{
		    if(DangHaiCanSa[playerid] == 1)
			{
		        TogglePlayerControllable(playerid, 1);
		        ClearAnimations(playerid);

		        DangHaiCanSa[playerid] = 0;
		        PlayerInfo[playerid][pHatCanSa] += 1;

		        UpdateTextCanSa();

		        new str[1280];
			    format(str, sizeof(str), "%s da hai thanh cong mot cay can sa o day.", GetPlayerNameEx(playerid));
				ProxDetector(30.0, playerid, str, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
		    }
		}*/
		
		case LAYHANG_BOCVAC: {
		    if(DaLayHangBV[playerid] == 1)
			{
		    	TogglePlayerControllable(playerid, 1);
		        ClearAnimations(playerid);

				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
				SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);

				SendClientMessage(playerid, -1, "> Vi tri giao hang da duoc danh dau.");

				SetPVarInt(playerid,"GiaoHangBocVac",1);
				SetPlayerCheckpoint(playerid, 2011.833129, -1996.255004, 13.546875, 2.0);
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
            	CP[playerid] = 252000;
            	return 1;
			}
		}
	}
	return 1;
}
