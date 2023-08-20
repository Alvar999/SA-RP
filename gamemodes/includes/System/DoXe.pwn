#include <a_samp>
#include <YSI\y_hooks>


#define         DOXEPAINT           (8117)
#define         DIALOG_GARAGE           (8117)

CMD:fixdoxe72ey(playerid, params[]) {
	new iPaintID;
	if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban dang khong o trong mot chiec xe.");
	if(sscanf(params, "i", iPaintID))
	if(!(0 <= iPaintID <= 3)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Cong viec son xe phai tu giua 0 va 6.");

	for(new i = 0; i < MAX_PLAYERVEHICLES; i++)
	{
		if(IsPlayerInVehicle(playerid, PlayerVehicleInfo[playerid][i][pvId]))
		{
		    ShowTune(playerid);
			PlayerVehicleInfo[playerid][i][pvPaintJob] = iPaintID;
			ChangeVehiclePaintjob(PlayerVehicleInfo[playerid][i][pvId], iPaintID);
			g_mysql_SaveVehicle(playerid, i);
			return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban da ap dung thanh cong mot viec son xe cua ban.");
		}
	}
	for(new i = 0; i < sizeof(VIPVehicles); i++)
	{
		if(IsPlayerInVehicle(playerid, VIPVehicles[i]))
		{
		    ShowTune(playerid);
			ChangeVehiclePaintjob(VIPVehicles[i], iPaintID);
			return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban da ap dung thanh cong mot viec son xe nay.");
		}
	}
	for(new i = 0; i < sizeof(FamedVehicles); i++)
	{
		if(IsPlayerInVehicle(playerid, FamedVehicles[i]))
		{
			ChangeVehiclePaintjob(FamedVehicles[i], iPaintID);
			return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban da ap dung thanh cong mot viec son xe nay.");
		}
	}
	ShowTune(playerid);
	SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the phun xe cua nguoi khac.");
	return 1;
}

CMD:vaodoxe(playerid, params[])
{
	for(new i; i < sizeof(GarageInfo); i++)
	{
	    if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER && IsPlayerInRangeOfPoint(playerid, 3.0, GarageInfo[i][garageX], GarageInfo[i][garageY], GarageInfo[i][garageZ]))
	    {
	        if(!GetPlayerInterior(playerid) && !GetPlayerVirtualWorld(playerid)) // player's interior & virtual world must be both zero
	        {
	            if(garageInUse[i])
	                return SendClientMessage(playerid, -1, "* Nha de xe hien dang duoc su dung boi mot nguoi choi khac, vui long doi.");

	            GetTmpTune(playerid, GetPlayerVehicleID(playerid));
	            ////////////////////////////////////////////////////////////////
	            foreach(Player, a)
	            {
	                if(a != playerid)
	                {
		                if(IsPlayerInVehicle(a, GetPlayerVehicleID(playerid)))
		                {
	            			SetPVarInt(playerid, "garage_Vehicle", GetPlayerVehicleID(playerid));
	            			SetPVarInt(playerid, "garage_Passenger", GetPlayerVehicleSeat(playerid));
	                        SetPlayerInterior(a, 1);
	                        SetPlayerVirtualWorld(a, (MAX_GARAGES + i + playerid)); // must be the same virtual world of the driver's
	                        TogglePlayerSpectating(playerid, true);
	                        PlayerSpectateVehicle(a, GetPlayerVehicleID(playerid));
						}
					}
				}
				////////////////////////////////////////////////////////////////
	            /*SetPlayerInterior(playerid, 1);
				SetPlayerVirtualWorld(playerid, (MAX_GARAGES + i + playerid));
				LinkVehicleToInterior(GetPlayerVehicleID(playerid), 1);
				SetVehicleVirtualWorld(GetPlayerVehicleID(playerid), (MAX_GARAGES + i + playerid));
	            SetVehiclePos(GetPlayerVehicleID(playerid), GarageInfo[i][garageX], GarageInfo[i][garageY], GarageInfo[i][garageZ]);
	            SetVehicleZAngle(GetPlayerVehicleID(playerid), 88.2090);*/

	            garageInUse[i] = true;
	            PlayerInfo[playerid][pInsideGarage] = i;

				ShowTune(playerid);
	        }
	    }
	}
	return 1;
}

stock ShowTune(playerid)
{
	new id = PlayerInfo[playerid][pInsideGarage], Float:Pos[3];
	if(id != -1)
	{
		GetVehicleCameraPos(GetPlayerVehicleID(playerid), Pos[0], Pos[1], Pos[2], 0, 6, 2);
		SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);
		GetVehiclePos(GetPlayerVehicleID(playerid), Pos[0], Pos[1], Pos[2]);
		SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

		ShowPlayerDialog(playerid, DIALOG_GARAGE, DIALOG_STYLE_LIST, "Garage Do xe GSVN", "Color Custom\nThuy luc\nBanh xe\nPo xe\nCan gio\nGam xe\nCang truoc\nCang sau\nRoof\nNitro", "Select", "Exit");
	}
	else
	{
	    ExitTune(playerid);
	}
	return 1;
}

stock ExitTune(playerid)
{
	new garage = PlayerInfo[playerid][pInsideGarage];

    SetPlayerInterior(playerid, 0);
    SetPlayerVirtualWorld(playerid, 0);
    if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
    {
        SetPlayerPos(playerid, GarageInfo[garage][garageX], GarageInfo[garage][garageY],  GarageInfo[garage][garageZ]);
    }
    else
    {
        LinkVehicleToInterior(GetPlayerVehicleID(playerid), 0);
        SetVehicleVirtualWorld(GetPlayerVehicleID(playerid), 0);
        SetVehiclePos(GetPlayerVehicleID(playerid), GarageInfo[garage][garageEX], GarageInfo[garage][garageEY], GarageInfo[garage][garageEZ]);
        SetVehicleZAngle(GetPlayerVehicleID(playerid),  GarageInfo[garage][garageEA]);
	}
	////////////////////////////////////////////////////////////////////////////

	foreach(Player, a)
	{
        if(a != playerid)
        {
            if(GetPVarInt(a, "garage_Vehicle"))
            {
			    PlayerSpectateVehicle(playerid, INVALID_VEHICLE_ID);
			    TogglePlayerSpectating(playerid, false);
			    SetPlayerInterior(a, 0);
			    SetPlayerVirtualWorld(a, 0);
			    PutPlayerInVehicle(a, GetPVarInt(a, "garage_Vehicle"), GetPVarInt(a, "garage_Passenger"));
			    SetCameraBehindPlayer(a);

			    DeletePVar(a, "garage_Vehicle");
			    DeletePVar(a, "garage_Passenger");
            }
		}
	}
	////////////////////////////////////////////////////////////////////////////
	SetCameraBehindPlayer(playerid);
	garageInUse[garage] = false;
	PlayerInfo[playerid][pInsideGarage] = -1;
	return 1;
}

stock GetTmpTune(playerid, carid) // Gets all the tuning information on the current vehicle, saving it on a temporary var later to be used.
{
	if(!carid)
	    return 0;
	for(new i; i < 14; i++)
	{
		TPInfo[playerid][tvMods][i] = GetVehicleComponentInSlot(carid, i);
	}
	return 1;
}

stock SetTune(playerid, carid) // Sets back to old tune when player cancel (TEMPORARY VARS are used)
{
	if(!carid)
	    return 0;

	for(new i; i < 14; i++)
	{
		if(TPInfo[playerid][tvMods][i]) AddVehicleComponent(carid, TPInfo[playerid][tvMods][i]);
		TPInfo[playerid][tvMods][i] = 0;
	}
	return 1;
}

stock AddComponentToVehicle(vehicleid, componentid)
    return AddVehicleComponent(vehicleid, componentid);

stock ResetTuningInfo(playerid)
{
	TPInfo[playerid][tID] = -1;
	TPInfo[playerid][tType] = -1;
	TPInfo[playerid][tPaintjob] = false;
	TPInfo[playerid][tNeon] = false;
	TPInfo[playerid][tNeonLight] = 0;
	TPInfo[playerid][PJColor] = -1;
	for(new i; i < 14; i++)
	{
	    TPInfo[playerid][tvMods][i] = 0;
	}
}

stock IsComponentidCompatible( modelid, componentid ) {
    if(componentid == 1025 || componentid == 1073 || componentid == 1074 || componentid == 1075 || componentid == 1076 ||
		componentid == 1077 || componentid == 1078 || componentid == 1079 || componentid == 1080 || componentid == 1081 ||
        componentid == 1082 || componentid == 1083 || componentid == 1084 || componentid == 1085 || componentid == 1096 ||
        componentid == 1097 || componentid == 1098 || componentid == 1087 || componentid == 1086) {
        return componentid;
	}

    switch(modelid) {
        case 400: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 ) return componentid;
        case 401: if( componentid == 1005 || componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 114 || componentid == 1020 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 402: if( componentid == 1009 || componentid == 1009 || componentid == 1010 ) return componentid;
        case 404: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1002 || componentid == 1016 || componentid == 1000 || componentid == 1017 || componentid == 1007) return componentid;
        case 405: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1014 || componentid == 1023 || componentid == 1000) return componentid;
        case 409: if( componentid == 1009 ) return componentid;
        case 410: if( componentid == 1019 || componentid == 1021 || componentid == 1020 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 411: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 412: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 415: if( componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 418: if( componentid == 1020 || componentid == 1021 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1016) return componentid;
        case 419: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 420: if( componentid == 1005 || componentid == 1004 || componentid == 1021 || componentid == 1019 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1003) return componentid;
        case 421: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1014 || componentid == 1023 || componentid == 1016 || componentid == 1000) return componentid;
        case 422: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1017 || componentid == 1007) return componentid;
        case 426: if( componentid == 1005 || componentid == 1004 || componentid == 1021 || componentid == 1019 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1003) return componentid;
        case 429: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 436: if( componentid == 1020 || componentid == 1021 || componentid == 1022 || componentid == 1019 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 438: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 439: if( componentid == 1003 || componentid == 1023 || componentid == 1001 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1017 || componentid == 1007 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1013) return componentid;
        case 442: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 445: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 451: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 458: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 466: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 467: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 474: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 475: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 477: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1017 || componentid == 1007) return componentid;
        case 478: if( componentid == 1005 || componentid == 1004 || componentid == 1012 || componentid == 1020 || componentid == 1021 || componentid == 1022 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 479: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 480: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 489: if( componentid == 1005 || componentid == 1004 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1016 || componentid == 1000) return componentid;
        case 491: if( componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1014 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 492: if( componentid == 1005 || componentid == 1004 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1016 || componentid == 1000) return componentid;
        case 496: if( componentid == 1006 || componentid == 1017 || componentid == 1007 || componentid == 1011 || componentid == 1019 || componentid == 1023 || componentid == 1001 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1003 || componentid == 1002 || componentid == 1142 || componentid == 1143 || componentid == 1020) return componentid;
        case 500: if( componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1013 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 506: if( componentid == 1009) return componentid;
        case 507: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 516: if( componentid == 1004 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1002 || componentid == 1015 || componentid == 1016 || componentid == 1000 || componentid == 1017 || componentid == 1007) return componentid;
        case 517: if( componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1002 || componentid == 1023 || componentid == 1016 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 518: if( componentid == 1005 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1018 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 526: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 527: if( componentid == 1021 || componentid == 1020 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1014 || componentid == 1015 || componentid == 1017 || componentid == 1007) return componentid;
        case 529: if( componentid == 1012 || componentid == 1011 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 533: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 534: if( componentid == 1126 || componentid == 1127 || componentid == 1179 || componentid == 1185 || componentid == 1100 || componentid == 1123 || componentid == 1125 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1180 || componentid == 1178 || componentid == 1101 || componentid == 1122 || componentid == 1124 || componentid == 1106) return componentid;
        case 535: if( componentid == 1109 || componentid == 1110 || componentid == 1113 || componentid == 1114 || componentid == 1115 || componentid == 1116 || componentid == 1117 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1120 || componentid == 1118 || componentid == 1121 || componentid == 1119) return componentid;
        case 536: if( componentid == 1104 || componentid == 1105 || componentid == 1182 || componentid == 1181 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1184 || componentid == 1183 || componentid == 1128 || componentid == 1103 || componentid == 1107 || componentid == 1108) return componentid;
        case 540: if( componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007) return componentid;
        case 541: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 542: if( componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1014 || componentid == 1015) return componentid;
        case 545: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 546: if( componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1019 || componentid == 1018 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007) return componentid;
        case 547: if( componentid == 1142 || componentid == 1143 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1016 || componentid == 1003 || componentid == 1000) return componentid;
        case 549: if( componentid == 1012 || componentid == 1011 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 550: if( componentid == 1005 || componentid == 1004 || componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003) return componentid;
        case 551: if( componentid == 1005 || componentid == 1020 || componentid == 1021 || componentid == 1019 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1002 || componentid == 1023 || componentid == 1016 || componentid == 1003) return componentid;
        case 555: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 558: if( componentid == 1092 || componentid == 1089 || componentid == 1166 || componentid == 1165 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1168 || componentid == 1167 || componentid == 1088 || componentid == 1091 || componentid == 1164 || componentid == 1163 || componentid == 1094 || componentid == 1090 || componentid == 1095 || componentid == 1093) return componentid;
        case 559: if( componentid == 1065 || componentid == 1066 || componentid == 1160 || componentid == 1173 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1159 || componentid == 1161 || componentid == 1162 || componentid == 1158 || componentid == 1067 || componentid == 1068 || componentid == 1071 || componentid == 1069 || componentid == 1072 || componentid == 1070 || componentid == 1009) return componentid;
        case 560: if( componentid == 1028 || componentid == 1029 || componentid == 1169 || componentid == 1170 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1141 || componentid == 1140 || componentid == 1032 || componentid == 1033 || componentid == 1138 || componentid == 1139 || componentid == 1027 || componentid == 1026 || componentid == 1030 || componentid == 1031) return componentid;
        case 561: if( componentid == 1064 || componentid == 1059 || componentid == 1155 || componentid == 1157 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1154 || componentid == 1156 || componentid == 1055 || componentid == 1061 || componentid == 1058 || componentid == 1060 || componentid == 1062 || componentid == 1056 || componentid == 1063 || componentid == 1057) return componentid;
        case 562: if( componentid == 1034 || componentid == 1037 || componentid == 1171 || componentid == 1172 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1149 || componentid == 1148 || componentid == 1038 || componentid == 1035 || componentid == 1147 || componentid == 1146 || componentid == 1040 || componentid == 1036 || componentid == 1041 || componentid == 1039) return componentid;
        case 565: if( componentid == 1046 || componentid == 1045 || componentid == 1153 || componentid == 1152 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1150 || componentid == 1151 || componentid == 1054 || componentid == 1053 || componentid == 1049 || componentid == 1050 || componentid == 1051 || componentid == 1047 || componentid == 1052 || componentid == 1048) return componentid;
        case 566: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 567: if( componentid == 1129 || componentid == 1132 || componentid == 1189 || componentid == 1188 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1187 || componentid == 1186 || componentid == 1130 || componentid == 1131 || componentid == 1102 || componentid == 1133) return componentid;
        case 575: if( componentid == 1044 || componentid == 1043 || componentid == 1174 || componentid == 1175 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1176 || componentid == 1177 || componentid == 1099 || componentid == 1042) return componentid;
        case 576: if( componentid == 1136 || componentid == 1135 || componentid == 1191 || componentid == 1190 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1192 || componentid == 1193 || componentid == 1137 || componentid == 1134) return componentid;
        case 579: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 580: if( componentid == 1020 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007) return componentid;
        case 585: if( componentid == 1142 || componentid == 1143 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1003 || componentid == 1017 || componentid == 1007) return componentid;
        case 587: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 589: if( componentid == 1005 || componentid == 1004 || componentid == 1144 || componentid == 1145 || componentid == 1020 || componentid == 1018 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1024 || componentid == 1013 || componentid == 1006 || componentid == 1016 || componentid == 1000 || componentid == 1017 || componentid == 1007) return componentid;
        case 600: if( componentid == 1005 || componentid == 1004 || componentid == 1020 || componentid == 1022 || componentid == 1018 || componentid == 1013 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1017 || componentid == 1007) return componentid;
        case 602: if( componentid == 1008 || componentid == 1009 || componentid == 1010) return componentid;
        case 603: if( componentid == 1144 || componentid == 1145 || componentid == 1142 || componentid == 1143 || componentid == 1020 || componentid == 1019 || componentid == 1018 || componentid == 1024 || componentid == 1008 || componentid == 1009 || componentid == 1010 || componentid == 1006 || componentid == 1001 || componentid == 1023 || componentid == 1017 || componentid == 1007) return componentid;
    }
    return 0;
}

stock GetVehicleCameraPos(vehicleid, &Float:x, &Float:y, &Float:z, Float:xoff=0.0, Float:yoff=0.0, Float:zoff=0.0)
{
    new Float:rot;
    GetVehicleZAngle(vehicleid, rot);
    rot = 360 - rot;
    GetVehiclePos(vehicleid, x, y, z);
    x = floatsin(rot, degrees) * yoff + floatcos(rot, degrees) * xoff + x;
    y = floatcos(rot, degrees) * yoff - floatsin(rot, degrees) * xoff + y;
    z = zoff + z;
}

stock TuningTDControl(playerid, bool:show)
{
	switch(show)
	{
	    case true:
	    {
	        for(new i = 0; i < 10; i++)
				PlayerTextDrawShow(playerid, PlayerInfo[playerid][pTuningBuy][i]);
		}
	    case false:
	    {
	        for(new i = 0; i < 10; i++)
				PlayerTextDrawHide(playerid, PlayerInfo[playerid][pTuningBuy][i]);
		}
	}
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == DOXEPAINT)
	{
		if(response)
		{
			if(listitem == 0)
			{
			return   cmd_fixdoxe72ey(playerid, "0");
			}
			if(listitem == 1)
			{
				return    cmd_fixdoxe72ey(playerid, "1");
			}
			if(listitem == 2)
			{
				return   cmd_fixdoxe72ey(playerid, "2");
			}
			if(listitem == 3)
			{
				return   cmd_fixdoxe72ey(playerid, "3");
			}
		}
	}
	new Float:Pos[3];
	new string[1280];
	switch(dialogid)
	{
	    case DIALOG_GARAGE:
	    {
	        if(response)
	        {
	            new vehicleid = GetPlayerVehicleID(playerid);
	            TPInfo[playerid][tID] = -1;
				switch(listitem)
				{
				    case 0: // Paintjob
				    {
				        for(new i = 0; i < NUMBER_TYPE_PAINTJOB; i++)
						{
			                if(pjInfo[i][vehID] == GetVehicleModel(vehicleid))
							{
				            	TPInfo[playerid][tID] = i;
								break;
							}
			           	}
						if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* PaintJob Khong Ho Tro Cho Chiec Xe Cua Ban."), ShowTune(playerid);


						ShowPlayerDialog(playerid, DOXEPAINT, DIALOG_STYLE_LIST, "Ban Mua Loai Nao","Mua Loai 1\nMua Loai 2\nMua Loai 3", "Chon", "Huy Bo");

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 4, 0, 5);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0],Pos[1],Pos[2] );
						SetPlayerCameraLookAt(playerid, Pos[0],Pos[1],Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);

				    }
				    case 1: // Install Hydraulics
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_HYDRAULICS)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}
	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_HYDRAULICS;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 2, 2, 2);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 2: // RIMs
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_WHEELS)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "*Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_WHEELS;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 4, 0, 0.5);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 3: // Exhaust
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_EXHAUST)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_EXHAUST;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], -2, -5, 0);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 4: // Spoilers
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_SPOILER)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_SPOILER;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 0, -6, 2);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 5: // Side Kirts
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_SIDESKIRT)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_SIDESKIRT;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 4, 0, 0.5);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 6: // Front Bumper
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_FRONT_BUMPER)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_FRONT_BUMPER;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 0, 6, 0.5);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 7: // Rear Bumper
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_REAR_BUMPER)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_REAR_BUMPER;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 0, -6, 0.5);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 8: // Roof
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_ROOF)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_ROOF;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 0, 6, 2);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				    case 9: // Nitro
				    {
	                    for(new i = 0; i < MAX_COMPONENTS; i++)
						{
			                if(cInfo[i][cType] == CARMODTYPE_NITRO)
							{
			                    if(cInfo[i][cID] == IsComponentidCompatible(GetVehicleModel(vehicleid), cInfo[i][cID]))
								{
				                    TPInfo[playerid][tID] = i;
									break;
								}
			                }
						}

	                    if(TPInfo[playerid][tID] == -1)
							return SendClientMessage(playerid, -1, "* Thanh phan nay khong tuong thich voi xe cua ban."), ShowTune(playerid);

						new cid = TPInfo[playerid][tID];
						TPInfo[playerid][tType] = CARMODTYPE_NITRO;
						TPInfo[playerid][tPaintjob] = false;
						TPInfo[playerid][tNeon] = false;

	                    TogglePlayerControllable(playerid, false);
	                    TuningTDControl(playerid, true);

	                    format(string, sizeof(string), "%s", cInfo[cid][cName]);
						PlayerTextDrawSetString(playerid, PlayerInfo[playerid][pTuningBuy][2], string);
						format(string, sizeof(string), "Gia_tien: ~w~$%d", cInfo[cid][cPrice]);
						PlayerTextDrawSetString( playerid, PlayerInfo[playerid][pTuningBuy][3], string);

                        AddVehicleComponent(vehicleid, cInfo[cid][cID]);

						GetVehicleCameraPos(vehicleid, Pos[0], Pos[1], Pos[2], 0, 6, 2);
						SetPlayerCameraPos(playerid, Pos[0], Pos[1], Pos[2]);

						GetVehiclePos(vehicleid, Pos[0], Pos[1], Pos[2]);
						SetPlayerCameraLookAt(playerid, Pos[0], Pos[1], Pos[2]);

						SelectTextDraw(playerid, 0xFF6600FF);
				    }
				}
	        }
	        else
	        {
				ExitTune(playerid);
	        }
	    }
	}
	return 1;
}

stock LoadGaraDoXe() {
    for(new i; i < sizeof(GarageInfo); i++)
	{
		garageIcon[i] = CreateDynamicMapIcon(GarageInfo[i][garageX], GarageInfo[i][garageY], GarageInfo[i][garageZ], 63, -1, 0, 0, .streamdistance = 500);
		garagePickup[i] = CreateDynamicPickup(2485, 1, GarageInfo[i][garageX], GarageInfo[i][garageY], GarageInfo[i][garageZ], 0, 0, .streamdistance = 500);
		garageLabel[i] = CreateDynamic3DTextLabel("Garage Do Xe\nSu dung /vaodoxe de tiep tuc", 0x0F52BAFF, GarageInfo[i][garageX], GarageInfo[i][garageY], GarageInfo[i][garageZ], 20.0, .testlos = 1, .worldid = 0, .interiorid = 0);
	}
	return 1;
}

stock LoadTDDoXe(playerid) {
    PlayerInfo[playerid][pTuningBuy][0] = CreatePlayerTextDraw(playerid, 240.000000, 300.000000, "id_dual:white");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][0], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][0], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][0], 150.000000, 30.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][0], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][0], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][0], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][0], 225);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][0], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][0], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][0], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][0], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][0], 0);

	PlayerInfo[playerid][pTuningBuy][1] = CreatePlayerTextDraw(playerid, 240.000000, 330.000000, "id_dual:white");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][1], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][1], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][1], 150.000000, 5.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][1], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][1], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][1], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][1], -764862751);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][1], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][1], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][1], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][1], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][1], 0);

	PlayerInfo[playerid][pTuningBuy][2] = CreatePlayerTextDraw(playerid, 263.000000, 305.000000, "Shadow_Wheels");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][2], 1);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][2], 0.400000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][2], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][2], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][2], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][2], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][2], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][2], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][2], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][2], 0);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][2], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][2], 0);

	PlayerInfo[playerid][pTuningBuy][3] = CreatePlayerTextDraw(playerid, 240.000000, 332.000000, "Gia_Tien: 100$");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][3], 2);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][3], 0.174998, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][3], 400.000000, 17.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][3], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][3], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][3], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][3], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][3], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][3], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][3], 0);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][3], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][3], 0);

	PlayerInfo[playerid][pTuningBuy][4] = CreatePlayerTextDraw(playerid, 240.000000, 330.000000, "id_dual:white");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][4], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][4], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][4], 150.000000, 5.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][4], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][4], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][4], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][4], -764862751);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][4], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][4], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][4], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][4], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][4], 0);

	PlayerInfo[playerid][pTuningBuy][5] = CreatePlayerTextDraw(playerid, 240.000000, 330.000000, "id_dual:white");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][5], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][5], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][5], 150.000000, 5.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][5], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][5], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][5], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][5], -764862751);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][5], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][5], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][5], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][5], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][5], 0);

	PlayerInfo[playerid][pTuningBuy][6] = CreatePlayerTextDraw(playerid, 530.000000, 211.000000, "ld_beat:right");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][6], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][6], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][6], 70.000000, 70.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][6], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][6], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][6], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][6], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][6], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][6], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][6], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][6], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][6], true);

	PlayerInfo[playerid][pTuningBuy][7] = CreatePlayerTextDraw(playerid, 30.000000, 211.000000, "ld_beat:left");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][7], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][7], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][7], 70.000000, 70.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][7], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][7], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][7], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][7], -1);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][7], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][7], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][7], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][7], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][7], true);

	PlayerInfo[playerid][pTuningBuy][8] = CreatePlayerTextDraw(playerid, 160.000000, 295.000000, "id_grav:playw");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][8], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][8], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][8], 70.000000, 60.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][8], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][8], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][8], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][8], -2016478465);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][8], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][8], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][8], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][8], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][8], true);

	PlayerInfo[playerid][pTuningBuy][9] = CreatePlayerTextDraw(playerid, 400.000000, 290.000000, "id_grav:exitw");
	PlayerTextDrawFont(playerid, PlayerInfo[playerid][pTuningBuy][9], 4);
	PlayerTextDrawLetterSize(playerid, PlayerInfo[playerid][pTuningBuy][9], 0.600000, 2.000000);
	PlayerTextDrawTextSize(playerid, PlayerInfo[playerid][pTuningBuy][9], 70.000000, 60.000000);
	PlayerTextDrawSetOutline(playerid, PlayerInfo[playerid][pTuningBuy][9], 1);
	PlayerTextDrawSetShadow(playerid, PlayerInfo[playerid][pTuningBuy][9], 0);
	PlayerTextDrawAlignment(playerid, PlayerInfo[playerid][pTuningBuy][9], 1);
	PlayerTextDrawColor(playerid, PlayerInfo[playerid][pTuningBuy][9], -16776961);
	PlayerTextDrawBackgroundColor(playerid, PlayerInfo[playerid][pTuningBuy][9], 255);
	PlayerTextDrawBoxColor(playerid, PlayerInfo[playerid][pTuningBuy][9], 50);
	PlayerTextDrawUseBox(playerid, PlayerInfo[playerid][pTuningBuy][9], 1);
	PlayerTextDrawSetProportional(playerid, PlayerInfo[playerid][pTuningBuy][9], 1);
	PlayerTextDrawSetSelectable(playerid, PlayerInfo[playerid][pTuningBuy][9], true);
	
	PlayerInfo[playerid][pInsideGarage] = -1;
	ResetTuningInfo(playerid);
	return 1;
}

hook OnPlayerConnect(playerid) {
    LoadTDDoXe(playerid);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    if(PlayerInfo[playerid][pInsideGarage] > 0)
	{
	    new garage = PlayerInfo[playerid][pInsideGarage];
		garageInUse[garage] = false;
	}
	return 1;
}
