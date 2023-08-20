#include <a_samp>
#include <YSI\y_hooks>

#define         MAX_SZ          (500)

new AntiSafeZone[MAX_PLAYERS];
new SoLanBK[MAX_PLAYERS];
new EnterSafeZones[MAX_PLAYERS];
enum sfInfo
{
	 Float:szPosX,
	 Float:szPosY,
	 Float:szPosZ,
	 szSize,
	 szPickupID,
	 Text3D: szTextID,
};
new SafeZoneInfo[MAX_SZ][sfInfo];

stock SaveSafeZones()
{
	new
		szFileStr[1024],
		File: fHandle = fopen("Safezones.cfg", io_write);

	for(new iIndex; iIndex < MAX_SZ; iIndex++)
	{
		format(szFileStr, sizeof(szFileStr), "%f|%f|%f|%d|%d\r\n",
		SafeZoneInfo[iIndex][szPosX],
		SafeZoneInfo[iIndex][szPosY],
		SafeZoneInfo[iIndex][szPosZ],
		SafeZoneInfo[iIndex][szSize],
		SafeZoneInfo[iIndex][szPickupID]);
		fwrite(fHandle, szFileStr);
	}
 	return fclose(fHandle);
}

stock LoadSafeZones()
{
    if(!fexist("Safezones.cfg")) return 1;

	new string[128],
		szFileStr[128],
  		File: iFileHandle = fopen("Safezones.cfg", io_read),
  		iIndex;

	while(iIndex < sizeof(SafeZoneInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fffii",
		SafeZoneInfo[iIndex][szPosX],
   		SafeZoneInfo[iIndex][szPosY],
		SafeZoneInfo[iIndex][szPosZ],
		SafeZoneInfo[iIndex][szSize],
		SafeZoneInfo[iIndex][szPickupID]);

  		format(string, sizeof(string), "{ff0000}KHU AN TOAN (ID: %d){ffffff}\n{00ff99}PHAM VI %d\n{DB8B35}",iIndex,SafeZoneInfo[iIndex][szSize]);

        if(SafeZoneInfo[iIndex][szPosX] != 0.0)
  		{
   			SafeZoneInfo[iIndex][szPickupID] = CreateDynamicPickup(1314, 23, SafeZoneInfo[iIndex][szPosX], SafeZoneInfo[iIndex][szPosY], SafeZoneInfo[iIndex][szPosZ]);
   			SafeZoneInfo[iIndex][szTextID] = CreateDynamic3DTextLabel(string, -1, SafeZoneInfo[iIndex][szPosX], SafeZoneInfo[iIndex][szPosY], SafeZoneInfo[iIndex][szPosZ]+0.5,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
  		}
  		++iIndex;
	}
 	return fclose(iFileHandle);
}


CMD:gotosz(playerid, params[])
{
 	if(PlayerInfo[playerid][pAdmin] >= 2)
 	{
  		new housenum;
  		if(sscanf(params, "d", housenum)) return SendClientMessage(playerid, -1, "USAGE: /gotosz [ID Khu An Toan]");

  		SetPlayerPos(playerid,SafeZoneInfo[housenum][szPosX],SafeZoneInfo[housenum][szPosY],SafeZoneInfo[housenum][szPosZ]);
  		SetPlayerInterior(playerid, 0);
  		return 1;
 	}
 	return 1;
}
CMD:szedit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
 	{
		new string[128], choice[32], szid, amount;
		if(sscanf(params, "s[32]dd", choice, szid, amount))
		{
			SendClientMessage(playerid, -1, "USAGE: /szedit [name] [SafeZone ID] [Amount]");
			SendClientMessage(playerid, -1, "Name: location, size");
			return 1;
		}
		if(strcmp(choice, "location", true) == 0)
		{
			if(SafeZoneInfo[szid][szPosX] != 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay da duoc edit truoc do roi khong the tiep tuc." );
				return 1;
			}
			GetPlayerPos(playerid, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]);
			SendClientMessage( playerid, -1, "You have edit location Safe Zone!" );
			DestroyPickup(SafeZoneInfo[szid][szPickupID]);
			SaveSafeZones();


			DestroyPickup(SafeZoneInfo[szid][szPickupID]);
			DestroyDynamic3DTextLabel(SafeZoneInfo[szid][szTextID]);
			format(string, sizeof(string), "{ff0000}KHU AN TOAN (ID: %d){ffffff}\n{00ff99}PHAM VI %d\n{DB8B35}",szid,SafeZoneInfo[szid][szSize]);
			SafeZoneInfo[szid][szTextID] = CreateDynamic3DTextLabel( string, -1, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]+0.5,50.0, .testlos = 1, .streamdistance = 50.0);
			SafeZoneInfo[szid][szPickupID] = CreatePickup(1314, 23, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]);
		    return 1;
		 }
		else if(strcmp(choice, "size", true) == 0)
		{
		 	SafeZoneInfo[szid][szSize] = amount;
			SendClientMessage( playerid, -1, "You have edit size Safe Zone!" );
			SaveSafeZones();

			DestroyDynamic3DTextLabel(SafeZoneInfo[szid][szTextID]);
			format(string, sizeof(string), "{ff0000}KHU AN TOAN (ID: %d){ffffff}\n{00ff99}PHAM VI %d\n{DB8B35}",szid,SafeZoneInfo[szid][szSize]);
			SafeZoneInfo[szid][szTextID] = CreateDynamic3DTextLabel( string, -1, SafeZoneInfo[szid][szPosX], SafeZoneInfo[szid][szPosY], SafeZoneInfo[szid][szPosZ]+0.5,50.0, .testlos = 1, .streamdistance = 50.0);
		    return 1;
		}
		SaveSafeZones();
	}
 	return 1;
}
CMD:szdelete(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] < 1338)
 	{
  		SendClientMessage(playerid, -2, "You can not use this commands`!");
  		return 1;
 	}
 	new h, string[128];
 	if(sscanf(params,"d",h)) return SendClientMessage(playerid, -1,"USAGE: /szdelete [SafeZone ID]");

	SafeZoneInfo[h][szPosX] = 0;
	SafeZoneInfo[h][szPosY] = 0;
 	SafeZoneInfo[h][szPosZ] = 0;
 	DestroyDynamicPickup(SafeZoneInfo[h][szPickupID]);
 	DestroyDynamic3DTextLabel(SafeZoneInfo[h][szTextID]);
 	SaveSafeZones();
 	format(string, sizeof(string), "Ban da xoa thanh cong SAFEZONE (ID %d).", h);
 	SendClientMessage(playerid, -1, string);
 	return 1;
}

hook OnPlayerUpdate(playerid)
{
    for(new Sz; Sz < MAX_SZ; Sz++)
 	{
 	    if(zombieevent == 0)
		{
	  		if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
	  		{
	  		    if(!IsACop(playerid)) {
					if(EnterSafeZones[playerid] < 0)
		            {
		                EnterSafeZones[playerid] = Sz;
		                break;
		            }
		            else SetPlayerArmedWeapon(playerid, 0);
	            }
	  		}
	  		if(Sz == EnterSafeZones[playerid] && EnterSafeZones[playerid] >= 0)
	        {
	            if(!IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
	            {
	                EnterSafeZones[playerid] = -1;
	            }
	            break;
	        }
        }
 	}
	return 1;
}

hook OnPlayerTakeDamage(playerid, issuerid, Float:amount, weaponid)
{
    if(issuerid != INVALID_PLAYER_ID)
	{
	    if(zombieevent == 0)
		{
		    for(new Sz; Sz < MAX_SZ; Sz++)
			{
				if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
				{
					if(GetPlayerState(playerid) == PLAYER_STATE_ONFOOT)
					{
				        if(GetPlayerState(issuerid) == PLAYER_STATE_DRIVER)
				        {
				            if(weaponid == 49 || weaponid == 50)
				            {
				                new Float:x, Float:y, Float:z, string[128];
				                GetPlayerPos(issuerid, x, y, z);
				                SetPlayerPos(issuerid, x, y, z + 5);
								SendClientMessageEx(issuerid, COLOR_YELLOW, "Khong duoc tan cong trong khu an toan,.");
								GameTextForPlayer(issuerid, "~r~KHONG CR NGUOI KHAC", 5000, 3);
					            ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
								return 1;
							}
						}
					}
				}
			}
		}
	}
	return 1;
}

hook OnPlayerGiveDamage(playerid, damagedid, Float:amount, weaponid, bodypart)
{
    for(new Sz; Sz < MAX_SZ; Sz++)
    {
		if(IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
		{
		    if(weaponid != 0)
	        {
	            if(!IsACop(playerid)) {
		            GameTextForPlayer(playerid, "~r~SAFEZONE", 2000, 3);
			       	TogglePlayerControllable(playerid, 0);
			       	SetTimerEx("LoadPlayerZone", 5000, 0, "d", playerid);
                    new Float:php, Float:ahp;
					GetPlayerHealth(damagedid, php);
					GetPlayerArmour(damagedid, ahp);
					
					SetPlayerHealth(damagedid, php);
					SetPlayerArmour(damagedid, ahp);

					AntiSafeZone[playerid] += 1;
					SendClientMessageEx(playerid, COLOR_GRAD2, "{00ffff}Ban dang no sung trong khu an toan , ban bi 1 lan canh cao'");
					SendClientMessageEx(playerid, COLOR_GRAD2, "{00ffff}Neu ban no sung them lan nua , ban se bi chet!");

					if(AntiSafeZone[playerid] == 3)
					{
						new attackercc[MAX_PLAYER_NAME];
						GetPlayerName(damagedid, attackercc, sizeof (attackercc));

					    new safe[1280];
					    format(safe, sizeof(safe), "[SAFEZONE] Ban da chet khi co gang gay sat thuong cho %s.", attackercc);
					    SendClientMessageEx(playerid, COLOR_LIGHTRED, safe);

	                    AntiSafeZone[playerid] = 0;
						SetPlayerHealth(playerid, 0);
				    }
			    }
			}
			else {
			    if(!IsACop(playerid)) {
					new Float:php, Float:ahp;
					GetPlayerHealth(damagedid, php);
					GetPlayerArmour(damagedid, ahp);

					SetPlayerHealth(damagedid, php);
					SetPlayerArmour(damagedid, ahp);
					
				    GameTextForPlayer(playerid, "~r~SAFEZONE", 2000, 3);
			       	TogglePlayerControllable(playerid, 0);
			       	SetTimerEx("LoadPlayerZone", 5000, 0, "d", playerid);
		       	}
			}
  		}
  		if(!IsPlayerInRangeOfPoint(playerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
		{
  			if(IsPlayerInRangeOfPoint(damagedid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
  			{
  			    if(!IsACop(playerid) && pTazer{playerid} == 0 || !IsAMedic(playerid))
  			    {
  			        new Float:php, Float:ahp;
					GetPlayerHealth(damagedid, php);
					GetPlayerArmour(damagedid, ahp);

					SetPlayerHealth(damagedid, php);
					SetPlayerArmour(damagedid, ahp);
					
					GameTextForPlayer(playerid, "~r~SAFEZONE", 2000, 3);
			       	TogglePlayerControllable(playerid, 0);
			       	SetTimerEx("LoadPlayerZone", 5000, 0, "d", playerid);
					if(SafeZoneInfo[Sz][szSize] > 50) {
						AntiSafeZone[playerid] += 1;
						SendClientMessageEx(playerid, COLOR_GRAD2, "{00ffff}Ban dang no sung trong khu an toan , ban bi 1 lan canh cao'");
						SendClientMessageEx(playerid, COLOR_GRAD2, "{00ffff}Neu ban no sung them lan nua , ban se bi chet!");

						if(AntiSafeZone[playerid] == 3)
						{
							new attackercc[MAX_PLAYER_NAME];
							GetPlayerName(damagedid, attackercc, sizeof (attackercc));
					
						    new safe[1280];
						    format(safe, sizeof(safe), "[SAFEZONE] Ban da chet khi co gang gay sat thuong cho %s.", attackercc);
						    SendClientMessageEx(playerid, COLOR_LIGHTRED, safe);

		                    AntiSafeZone[playerid] = 0;
						    SetPlayerHealth(playerid, 0);
					    }
				    }
				}
 			}
  		}
 	}
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    for(new Sz; Sz < MAX_SZ; Sz++)
    {
        if(zombieevent == 0)
		{
			if(IsPlayerInRangeOfPoint(killerid, SafeZoneInfo[Sz][szSize], SafeZoneInfo[Sz][szPosX], SafeZoneInfo[Sz][szPosY], SafeZoneInfo[Sz][szPosZ]))
   			{
			    if(IsPlayerConnected(killerid) && PlayerInfo[killerid][pAdmin] < 2 && GetPlayerState(killerid) == PLAYER_STATE_DRIVER)
				{
					switch(reason)
					{
						case 50:{
							if(IsAHelicopter(GetPlayerVehicleID(killerid)))
							{
							    SetPlayerHealth(killerid, 0);
							    SoLanBK[killerid]++;
							    new thongbao[1280];
							    format(thongbao, sizeof(thongbao), "[SAFE-ZONE] Ban vua moi BK chet (%s) trong khu an toan [%d/2]", GetPlayerNameEx(playerid), SoLanBK[playerid]);
							    SendClientMessageEx(killerid, COLOR_LIGHTBLUE, thongbao);
							    SendClientMessageEx(killerid, COLOR_LIGHTBLUE, "[SAFE-ZONE] Neu ban con BK tiep tuc , se di tu 30 phut");
							    if(SoLanBK[killerid] == 2)
							    {
								    new minutes = 30;
								    new string[1280];
								    ResetPlayerWeaponsEx(killerid);
									format(string, sizeof(string), "[SAFE-ZONE] Nguoi choi %s (ID %d) , da bi dua vao tu boi System , Ly do : BK Safezone", GetPlayerNameEx(killerid), killerid);
									SendClientMessageToAllEx(COLOR_LIGHTRED, string);
									StaffAccountCheck(killerid, GetPlayerIpEx(killerid));
									PhoneOnline[killerid] = 1;
									PlayerInfo[killerid][pJailTime] = minutes*5;
									SetPlayerInterior(killerid, 1);
									SetPlayerHealth(killerid, 0x7FB00000);
									SetPlayerFacingAngle(killerid, 0);
									new rand = random(sizeof(OOCPrisonSpawns));
									SetPlayerPos(killerid, OOCPrisonSpawns[rand][0], OOCPrisonSpawns[rand][1], OOCPrisonSpawns[rand][2]);
									PlayerInfo[killerid][pVW] = 0;
									SetPlayerVirtualWorld(killerid, 0);
									format(string, sizeof(string), "Ban da bi dua vao tu %d phut voi , Ly do : BK Safezone [2/2]", minutes);
									SendClientMessageEx(killerid, COLOR_LIGHTBLUE, string);
									format(PlayerInfo[killerid][pPrisonedBy], 24, "SYSTEM SAFEZONE");
									format(PlayerInfo[killerid][pPrisonReason], 128, "[OOC][SJAIL] BK Safezone");
									SetPlayerColor(killerid, TEAM_APRISON_COLOR);
								}
							}
						}
					}
				}
			}
		}
	}
	return 1;
}
