#include <YSI\y_hooks>


#define 			JOB_PizzaBoy  					(6307)
#define         	DIALOG_CONGVIEC_PIZZA           (9661)

new JobPizzaBoyID = 21;

new PizzaCar[MAX_PLAYERS];
new Text3D:PizzaCarText[MAX_PLAYERS];
new PizzaString[1280];

new Float:PointPizza[16][4] = {
	{2135.827880, -1315.667114, 24.518321, 1.903822},
	{2193.490722, -1278.601928, 24.661674, 226.960525},
	{2389.240722, -1294.757202, 25.353956, 124.418472},
	{2468.093750, -1296.399658, 29.828996, 90.264846},
	{2501.791259, -1495.318359, 24.000000, 178.016220},
	{1888.010986, -1116.735961, 25.273437, 221.610534},
	{1921.934448, -1118.140502, 26.085937, 184.950180},
	{2000.363403, -1117.590454, 26.781250, 180.458435},
	{2087.926513, -1169.126586, 25.489664, 100.004165},
	{2526.426513, -1034.539306, 69.578582, 178.369964},
	{2671.776123, -1238.646850, 55.710636, 270.908569},
	{1894.233276, -2135.854003, 15.162654, 180.957580},
	{1781.306762, -2103.170654, 13.546875, 179.681015},
	{1674.955200, -2120.784423, 13.546875, 313.870208},
	{1667.535034, -2109.478759, 13.546875, 201.486984},
	{1869.145263, -2037.077392, 13.546875, 277.314392}
};
new ActorPizza[MAX_PLAYERS];

stock LoadPizza(){
    /*PizzaVehicles[0] = CreateVehicle(448, 2099.7402, -1784.7384, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[1] = CreateVehicle(448, 2099.8984, -1783.5631, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[2] = CreateVehicle(448, 2100.0835, -1782.2697, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[3] = CreateVehicle(448, 2100.3015, -1780.7307, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[4] = CreateVehicle(448, 2100.6184, -1778.9744, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[5] = CreateVehicle(448, 2100.8181, -1777.4076, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[6] = CreateVehicle(448, 2101.0286, -1775.7502, 12.8994, -96.6001, -1, -1, 100,0);
	PizzaVehicles[7] = CreateVehicle(448, 2101.3599, -1773.8984, 12.8994, -99.7202, -1, -1, 100,0);
	PizzaVehicles[8] = CreateVehicle(448, 2102.1587,-1770.1469,12.9922,260.0194, -1, -1, 100,0);
	PizzaVehicles[9] = CreateVehicle(448, 2101.7476, -1771.9694, 12.8994, -99.7202, -1, -1, 100,0);*/
    CreateDynamic3DTextLabel("{99cc00}Pizza boy - Khu vuc lay banh{FFFFFF}\nSu dung : {ffff00}Y{8c8c8c}.",COLOR_RED, 2095.614501, -1797.154174, 13.382812,30.0);
    CreateDynamicPickup(1239, 23, 2095.614501, -1797.154174, 13.382812);
	return 1;
}

stock ShowJOB_PizzaBoy(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	} 
	
	new name[1280];
	if(PlayerInfo[playerid][pJob] == JobPizzaBoyID || PlayerInfo[playerid][pJob2] == JobPizzaBoyID)
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} Lay phuong tien.\n{ffff00}=>{FFFFFF} Tra phuong tien.");
	else 
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	ShowPlayerDialog(playerid, JOB_PizzaBoy, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;
}

CMD:laybanh(playerid, params[]){
    if(IsPlayerInRangeOfPoint(playerid, 3.0, 2095.614501, -1797.154174, 13.382812)){
        if(PlayerInfo[playerid][pJob] == JobPizzaBoyID || PlayerInfo[playerid][pJob2] == JobPizzaBoyID){
            if(PlayerInfo[playerid][pSLPizza] == 200) {
            
            	SendClientMessageEx(playerid, COLOR_GREEN, "{FFFF00}Pizza Delivery{FFFFFF}: So lan van chuyen banh hoi nay da dat toi da.");
				return 1;
			}
		    if(GetPlayerVehicleID(playerid) == PizzaCar[playerid] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
    			//----------
		        RandomPizza(playerid);
				//----------
		    }else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong o tren phuong tien giao pizza cua cua hang.");
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban chua nhan cong viec giao pizza.");
    }
	return 1;
}

task UpdateReloadCar[300000] ()
{
	foreach(new playerid: Player) 
	{ 
		if(PlayerInfo[playerid][pJob] == JobPizzaBoyID || PlayerInfo[playerid][pJob2] == JobPizzaBoyID) 
		{
			if(GetPVarInt(playerid, "DaLayXePizza") == 1) 
			{
				if(!IsPlayerInRangeOfVehicle(playerid, PizzaCar[playerid], 50)) 
				{
					DeletePVar(playerid, "DaLayXePizza");
					DestroyVehicle(PizzaCar[playerid]);
			    	Delete3DTextLabel(PizzaCarText[playerid]);
				}
			}
		}
	}
}

stock TraXePizza(playerid) {
	if(GetPVarInt(playerid, "DaLayXePizza") == 1) 
	{
		DeletePVar(playerid, "DaLayXePizza");
		DestroyVehicle(PizzaCar[playerid]);
	    Delete3DTextLabel(PizzaCarText[playerid]);
	}
	return 1;
}

stock LayXePizza(playerid)
{
	if(PlayerInfo[playerid][pJob] == JobPizzaBoyID || PlayerInfo[playerid][pJob2] == JobPizzaBoyID) {
		if(GetPVarInt(playerid, "DaLayXePizza") == 0) 
		{
			PizzaCar[playerid] = CreateVehicle(448, 2088.8037,-1807.8640,13.1453,358.9295 , 3, 3, 1000, 0);
			PutPlayerInVehicle(playerid, PizzaCar[playerid] ,0);

			format(PizzaString, sizeof PizzaString, "{FFFF00}Pizza Delivery{FFFFFF}\nPhuong tien cua {FFFF00}%s{FFFFFF}.", GetPlayerNameEx(playerid));
			PizzaCarText[playerid] = Create3DTextLabel(PizzaString, COLOR_WHITE, 0.0, 0.0, 0.0, 50.0, 0, 1);
			Attach3DTextLabelToVehicle(PizzaCarText[playerid], PizzaCar[playerid], 0.0, 0.0, 0.0);

			SetPVarInt(playerid, "DaLayXePizza", 1);
			SendClientMessage(playerid, -1, "{FFFF00}Pizza Delivery{FFFFFF}: Ban da nhan phuong tien van chuyen thanh cong.");
			return 1;
		}else SendClientMessage(playerid, -1, "{FFFF00}Pizza Delivery{FFFFFF}: Ban da lay phuong tien truoc do roi , khong the lay tiep tuc.");
	}
	return 1;
}

stock RandomPizza(playerid){
	if(GetPVarInt(playerid, "GiaoPizzaNe") == 0){
		new rand = random(sizeof(PointPizza));
		new skin = random(311);
		
        ActorPizza[playerid] = CreateActor(skin, PointPizza[rand][0], PointPizza[rand][1], PointPizza[rand][2], PointPizza[rand][3]);
		SetPlayerCheckpoint(playerid, PointPizza[rand][0], PointPizza[rand][1], PointPizza[rand][2], 4.0);
		ApplyActorAnimation(ActorPizza[playerid], "PED", "IDLE_CHAT", 4.1, 0, 0, 0, 0, 0);
		
		new zone[MAX_ZONE_NAME];
		Get3DZone(PointPizza[rand][0], PointPizza[rand][1], PointPizza[rand][2], zone, sizeof(zone));
		new thongbao[1280];
		format(thongbao, sizeof(thongbao), "{FFFF00}Pizza Delivery{FFFFFF}: Da danh dau diem can giao tai %s.(%0.2fm)", zone,GetPlayerDistanceFromPoint(playerid, PointPizza[rand][0], PointPizza[rand][1], PointPizza[rand][2]));
		SendClientMessageEx(playerid, COLOR_YELLOW, thongbao);
		
		SetPVarInt(playerid, "FloatPizza", rand);
		SetPVarInt(playerid, "GiaoPizzaNe", 1);
		return 1;
	}
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid){
    if(GetPVarInt(playerid, "GiaoPizzaNe") == 1){
	    if(IsPlayerInRangeOfPoint(playerid, 4, PointPizza[GetPVarInt(playerid, "FloatPizza")][0], PointPizza[GetPVarInt(playerid, "FloatPizza")][1], PointPizza[GetPVarInt(playerid, "FloatPizza")][2])){
			if(GetPVarInt(playerid, "LayBanhDuaTao") == 1){
                new string[1280];
			    new money = 500 + random(500);
			    PlayerInfo[playerid][pCash] += money;

			    PlayerInfo[playerid][pXP] += 10;

			    format(string, sizeof(string), "{FFFF00}Pizza Delivery{FFFFFF}: Ban da giao thanh cong don hang va nhan duoc ($%s).", number_format(money));
			    SendClientMessageEx(playerid, COLOR_YELLOW, string);

			    DestroyActor(ActorPizza[playerid]);
			    DeletePVar(playerid, "FloatPizza");
			    DeletePVar(playerid, "GiaoPizzaNe");
			    DeletePVar(playerid, "LayBanhDuaTao");
			    DisablePlayerCheckpoint(playerid);

			    RemovePlayerAttachedObject(playerid,0);
	        	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

	        	CheckNV_Pizza(playerid);
	        	return 1;
			}else SendClientMessageEx(playerid, COLOR_YELLOW, "{FFFF00}Pizza Delivery{FFFFFF}: Ban vui long quay lai phuong tien va su dung {00ff00}Y{ffff00} de lay banh.");
		}
	}
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DestroyActor(ActorPizza[playerid]);
    DeletePVar(playerid, "FloatPizza");
    DeletePVar(playerid, "GiaoPizzaNe");
    DeletePVar(playerid, "LayBanhDuaTao");
    DeletePVar(playerid, "DaLayXePizza");
    DisablePlayerCheckpoint(playerid);
    TraXePizza(playerid);

    RemovePlayerAttachedObject(playerid,0);
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[7])) return ShowJOB_PizzaBoy(playerid);
		cmd_laybanh(playerid, "");
	}

	if(PRESSED(KEY_YES)) {
        if(IsPlayerInRangeOfPoint(playerid, 20, PointPizza[GetPVarInt(playerid, "FloatPizza")][0], PointPizza[GetPVarInt(playerid, "FloatPizza")][1], PointPizza[GetPVarInt(playerid, "FloatPizza")][2])) {
	        if(PlayerInfo[playerid][pJob] == JobPizzaBoyID || PlayerInfo[playerid][pJob2] == JobPizzaBoyID) {
	            if(IsPlayerInRangeOfVehicle(playerid, PizzaCar[playerid], 5) && GetPlayerState(playerid) != PLAYER_STATE_DRIVER)
	            {
			        if(GetPVarInt(playerid, "LayBanhDuaTao") == 0){
			            SetPlayerAttachedObject( playerid, 0, 1582, 1, 0.002953, 0.469660, -0.009797, 269.851104, 88.443557, 0.000000, 0.804894, 1.000000, 0.822361 );
	        			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
	        			SetPVarInt(playerid, "LayBanhDuaTao", 1);
	        			SendClientMessageEx(playerid, COLOR_GREEN, "Ban da lay thanh cong mot chiec banh Pizza , hay giao cho khach hang.");
	        			return 1;
			        }else SendClientMessageEx(playerid, COLOR_GREEN, "Ban da lay banh pizza truoc do roi , khong the lay tiep tuc.");
			    }else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong o gan phuong tien giao Pizza cua ban.");
			}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban chua nhan cong viec giao pizza.");
		}
    }
	return 1;
}


hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == JOB_PizzaBoy && response == 1) {
		if(listitem == 0) {

		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobPizzaBoyID;
					SetPlayerSkin(playerid, 155);
					PlayerInfo[playerid][pModel] = 155;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s{ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else {
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban hien dang lam cong viec {99cc00}%s{ffff00}, nen khong the xin them cong viec nay duoc (/nghiviec).", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}
			}else {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobPizzaBoyID;
					SetPlayerSkin(playerid, 155);
					PlayerInfo[playerid][pModel] = 155;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobPizzaBoyID;
					SetPlayerSkin(playerid, 155);
					PlayerInfo[playerid][pModel] = 155;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (2){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob2]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else {
					SendClientMessage(playerid, -1, "{ffff00}Ban da nhan viec truoc do het roi, khong the xin viec tiep tuc.");
					return 1;
				}
			}
		}
		if(listitem == 2) {
			ShowNghiViec(playerid);
		}
		if(listitem == 3) {
			LayXePizza(playerid);
		}
		if(listitem == 4) 
		{
			TraXePizza(playerid);
			SendClientMessage(playerid, -1, "> Ban da tra phuong tien van chuyen banh thanh cong.");
		}
	}
	return 1;
}
