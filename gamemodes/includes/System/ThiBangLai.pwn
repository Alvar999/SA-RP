#include <a_samp>
#include <YSI\iterators>
#include <YSI\y_hooks>



#define DIALOG_THIBANGLAI	(8517)

new Float:PosSpamXeLincese[2][4] = {
	{1798.0737,-1857.4091,13.0723,268.7417}, // _ 1
	{1798.0737,-1857.4091,13.0723,268.7417} // _ 1
};

new Float:CheckPointLincense[20][3] = {
	{1824.2064,-1840.7035,13.0701},
	{1824.2867,-1774.4418,13.0361},
	{1824.2083,-1717.3230,13.0370},
	{1824.0952,-1635.9358,13.0362},
	{1828.4348,-1573.3876,13.0131},
	{1890.4374,-1534.0392,2.8618},
	{1973.7587,-1518.5299,3.0261},
	{2034.8307,-1575.6263,11.2575},
	{2072.4922,-1614.0585,13.0318},
	{2162.2444,-1635.3639,13.7419},
	{2187.3567,-1672.7180,13.9677},
	{2162.8660,-1748.9470,13.0339},
	{2082.8235,-1780.3542,13.0380},
	{2079.1633,-1894.4895,12.9981},
	{2024.3606,-1929.6605,12.9830},
	{1933.2262,-1929.4543,13.0366},
	{1856.0198,-1929.2694,13.0380},
	{1824.5552,-1887.9169,12.9868},
	{1792.4429,-1859.9607,13.1492},
	{1792.4429,-1859.9607,13.1492}

	/*{2045.8689,-1918.6855,13.2022},
	{2066.0859,-1934.6833,13.0487},
	{2084.4683,-1922.0330,13.0232},
	{2084.5613,-1863.4664,13.0384},
	{2087.8054,-1782.8403,13.0370},
	{2059.2593,-1750.0692,13.0410},
	{1941.2651,-1749.7554,13.0368},
	{1851.8275,-1749.9122,13.0369},
	{1824.2891,-1709.3925,13.0359},
	{1824.2821,-1612.3047,13.0360},
	{1885.0049,-1535.7924,3.1760},
	{2026.2034,-1545.6570,4.5810},
	{2085.8286,-1614.7426,13.0275},
	{2209.3933,-1607.1520,18.3306},
	{2215.0393,-1415.3276,23.4822},
	{2157.2410,-1382.0415,23.4832},
	{2110.1887,-1459.2743,23.4871},
	{2110.2605,-1617.7262,22.8564},
	{2091.2727,-1748.0317,13.0581},
	{2078.9387,-1865.6569,13.0324},
	{2068.9307,-1930.0962,13.0167},
	{2056.0825,-1913.6837,13.1998},
	{2056.0825,-1913.6837,13.1998}*/
};
new PlayerLincenseAttemp[MAX_PLAYERS];
new VehicleDrivertest[MAX_PLAYERS];

stock ShowThiBangLai(playerid)
{
	if(PlayerInfo[playerid][pCash] > 15000)
	{
		if(PlayerInfo[playerid][pCarLic] == 0)
		{
		    if(GetPVarInt(playerid, "is_DriverTest") == 0)
		    {
			    SendClientMessageEx(playerid, COLOR_YELLOW, "Ban dang bat dau thi bang lai, hay thuc hien hoan thanh bai kiem tra thuc hanh nhe (15,000$).");
			    SendClientMessageEx(playerid, COLOR_YELLOW, "Dieu kien de hoan thanh: khong vuot qua 60 km/h, phuong tien khong bi hu hong.");

			    PlayerInfo[playerid][pCash] -= 15000;
			    new pos = random(sizeof(PosSpamXeLincese));
			    SetPlayerPos(playerid,PosSpamXeLincese[pos][0],PosSpamXeLincese[pos][1],PosSpamXeLincese[pos][2]);
			    CreatedCars[iIterator] = CreateVehicle(410, PosSpamXeLincese[pos][0],PosSpamXeLincese[pos][1],PosSpamXeLincese[pos][2],PosSpamXeLincese[pos][3], -1);
			    
			    VehicleFuel[CreatedCars[iIterator]] = 100.0;
				Vehicle_ResetData(CreatedCars[iIterator]);
				LinkVehicleToInterior(CreatedCars[iIterator], GetPlayerInterior(playerid));
				SetVehicleVirtualWorld(CreatedCars[iIterator], fVW);
				SetPVarInt(playerid, "KhongHacking", 1);
			    
			    PutPlayerInVehicle(playerid, VehicleDrivertest[playerid], 0);
			    PlayerLincenseAttemp[playerid] = 0;

			    SetPlayerRaceCheckpoint(playerid, 0, CheckPointLincense[PlayerLincenseAttemp[playerid]][0],CheckPointLincense[PlayerLincenseAttemp[playerid]][1],CheckPointLincense[PlayerLincenseAttemp[playerid]][2],CheckPointLincense[PlayerLincenseAttemp[playerid]+1][0],CheckPointLincense[PlayerLincenseAttemp[playerid]+1][1],CheckPointLincense[PlayerLincenseAttemp[playerid]+1][2], 5);
			    SetPVarInt(playerid, "is_DriverTest", 1);
			    GameTextForPlayer(playerid, "Ban da bat dau ~g~thi bang lai~w~ hay di theo ~r~Checkpoint", 5000, 1);
		    }else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban dang thi bang lai roi khong the tiep tuc.");
	    }else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da co bang lai xe roi.");
    }else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong du 1,000$ de dang ky thi bang lai!.");
    return 1;
}

hook OnPlayerUpdate(playerid)
{
    if(GetPVarInt(playerid, "is_DriverTest") == 1)
    {
        new speed = Carspeed(playerid);
        if(speed > 65)
	    {
	        if(GetPVarInt(playerid, "is_DriverTest") == 1)
	        {
				SendClientMessageEx(playerid,COLOR_YELLOW,"Ban da that bai trong bai kiem tra thuc hanh, ban khong duoc nhan bang lai xe.");
        		DestroyVehicle(VehicleDrivertest[playerid]);
        		DeletePVar(playerid, "is_DriverTest");
        		DisablePlayerRaceCheckpoint(playerid);
        		PlayerLincenseAttemp[playerid] = 0;
        		return 1;
			}
		}
    }
	return 1;
}

stock Carspeed(playerid)
{
    new Float:Speed[3];
    GetVehicleVelocity(GetPlayerVehicleID(playerid),Speed[0],Speed[1],Speed[2]);
    return floatround(1.61*floatsqroot(floatpower(floatabs(Speed[0]), 2.0) + floatpower(floatabs(Speed[1]), 2.0) + floatpower(floatabs(Speed[2]), 2.0)) * 99.38);
}

hook OnPlayerEnterRaceCheckpoint(playerid)
{
	if(GetPVarInt(playerid, "is_DriverTest") == 1)
	{
	    PlayerLincenseAttemp[playerid]++;
        if(PlayerLincenseAttemp[playerid] == 22) {
        	new Float:vehhp;
        	GetVehicleHealth(GetPlayerVehicleID(playerid),vehhp);
        	if(vehhp < 900) {
        		SendClientMessageEx(playerid,COLOR_YELLOW,"Ban da that bai trong bai kiem tra thuc hanh, ban khong duoc nhan bang lai xe.");
        		DestroyVehicle(VehicleDrivertest[playerid]);
        		DeletePVar(playerid, "is_DriverTest");
        		DisablePlayerRaceCheckpoint(playerid);
        		PlayerLincenseAttemp[playerid] = 0;
        		return 1;
        	}
        	PlayerInfo[playerid][pCarLic] = 1;
        	DeletePVar(playerid, "is_DriverTest");
            DisablePlayerRaceCheckpoint(playerid);
        	PlayerLincenseAttemp[playerid] = 0;
        	
        	if(IsPlayerInAnyVehicle(playerid)) {
				for(new i = 0; i < sizeof(CreatedCars); ++i) if(CreatedCars[i] == GetPlayerVehicleID(playerid)) {
					DestroyVehicle(CreatedCars[i]);
					CreatedCars[i] = INVALID_VEHICLE_ID;
					return SendClientMessageEx(playerid,COLOR_YELLOW,"Ban da hoan thanh cong thi va nhan duoc bang lai xe");
				}
			}
        	return 1;
        }
        else {
            SetPlayerRaceCheckpoint(playerid, 0, CheckPointLincense[PlayerLincenseAttemp[playerid]][0],CheckPointLincense[PlayerLincenseAttemp[playerid]][1],CheckPointLincense[PlayerLincenseAttemp[playerid]][2],CheckPointLincense[PlayerLincenseAttemp[playerid]+1][0],CheckPointLincense[PlayerLincenseAttemp[playerid]+1][1],CheckPointLincense[PlayerLincenseAttemp[playerid]+1][2], 5);
        }
	}
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
    if(PRESSED(KEY_YES))
    {
		if(ActorPos(playerid, ActorJob[22]))  {
        	if(PlayerInfo[playerid][pCarLic] == 0){
        		new string[15000];
	        	format(string, sizeof(string), "\\c THI BANG LAI\n\\c Gia thi : 15,000$ / 1 bai thi\nHUONG DAN: \n   + Sau khi bat dau phan thi lai xe, ban sau khi da len phuong tien va he thong bat dau tien trinh thi.\n   + Toc do toi da cho phep : 60 km/h.\n   + Khong duoc phep va cham.\n\\c Neu da hieu, ban vui long nhan 'Dong y' de bat dau thi.");
	            ShowPlayerDialog(playerid, DIALOG_THIBANGLAI, DIALOG_STYLE_MSGBOX, "THI BANG LAI", string, "Dong y", "Huy bo");
        	}else return SendClientMessage(playerid, -1, "Ban da co bang lai truoc do roi, khong the thi tiep tuc.");
        }
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_THIBANGLAI && response == 1) {
		ShowThiBangLai(playerid);
	}
	return 1;
}
