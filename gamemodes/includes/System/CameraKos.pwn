#include <a_samp>
#include <YSI\y_hooks>


#define         	MAX_CAMERA_KOS          (500)

enum pCameraKos
{
	 Float:CKOS_PosX,
	 Float:CKOS_PosY,
	 Float:CKOS_PosZ,
	 CKOS_PickupID,
};
new CameraKosInfo[MAX_CAMERA_KOS][pCameraKos];

CMD:cameraedit(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
 	{
		new string[1280], choice[32], szid;
		if(sscanf(params, "s[32]dd", choice, szid))
		{
			SendClientMessage(playerid, -1, "USAGE: /cameraedit [name] [ID (0 > 500)]");
			SendClientMessage(playerid, -1, "Name: create, delete");
			return 1;
		}
		if(strcmp(choice, "create", true) == 0)
		{
		    if(CameraKosInfo[szid][CKOS_PosX] != 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay da duoc edit truoc do roi khong the tiep tuc." );
				return 1;
			}

			GetPlayerPos(playerid, CameraKosInfo[szid][CKOS_PosX], CameraKosInfo[szid][CKOS_PosY], CameraKosInfo[szid][CKOS_PosZ]);
			SendClientMessage( playerid, -1, "Ban da tao ra mot camera KOS thanh cong" );
			SaveCameraKos();

			DestroyPickup(CameraKosInfo[szid][CKOS_PickupID]);
			CameraKosInfo[szid][CKOS_PickupID] = CreateDynamicPickup(18880, 23, CameraKosInfo[szid][CKOS_PosX], CameraKosInfo[szid][CKOS_PosY], CameraKosInfo[szid][CKOS_PosZ]-1.5);
   			return 1;
		}
		else if(strcmp(choice, "delete", true) == 0) {
            if(CameraKosInfo[szid][CKOS_PosX] == 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay chua duoc edit nen khong the xoa." );
				return 1;
			}

			CameraKosInfo[szid][CKOS_PosX] = 0;
			CameraKosInfo[szid][CKOS_PosY] = 0;
		 	CameraKosInfo[szid][CKOS_PosZ] = 0;
		 	DestroyDynamicPickup(CameraKosInfo[szid][CKOS_PickupID]);
		 	SaveCameraKos();
		 	format(string, sizeof(string), "Ban da xoa thanh cong cua hang Food (ID %d).", szid);
		 	SendClientMessage(playerid, -1, string);
		 	return 1;
		}
		SaveFood();
	}
 	return 1;
}

stock SaveCameraKos()
{
	new
		szFileStr[1024],
		File: fHandle = fopen("CameraKosServer.cfg", io_write);

	for(new iIndex; iIndex < MAX_CAMERA_KOS; iIndex++)
	{
		format(szFileStr, sizeof(szFileStr), "%f|%f|%f\n", CameraKosInfo[iIndex][CKOS_PosX], CameraKosInfo[iIndex][CKOS_PosY], CameraKosInfo[iIndex][CKOS_PosZ]);
		fwrite(fHandle, szFileStr);
	}
 	return fclose(fHandle);
}

stock LoadCameraKos()
{
    if(!fexist("CameraKosServer.cfg")) return 1;

	new szFileStr[128],
  		File: iFileHandle = fopen("CameraKosServer.cfg", io_read),
  		iIndex;

	while(iIndex < sizeof(CameraKosInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fff",
		CameraKosInfo[iIndex][CKOS_PosX],
   		CameraKosInfo[iIndex][CKOS_PosY],
		CameraKosInfo[iIndex][CKOS_PosZ]);
        if(CameraKosInfo[iIndex][CKOS_PosX] != 0.0)
  		{
   			CameraKosInfo[iIndex][CKOS_PickupID] = CreateDynamicPickup(18880, 23, CameraKosInfo[iIndex][CKOS_PosX], CameraKosInfo[iIndex][CKOS_PosY], CameraKosInfo[iIndex][CKOS_PosZ]-1.5);
  		}
  		++iIndex;
	}
 	return fclose(iFileHandle);
}

hook OnPlayerDeath(playerid, killerid, reason) {
    if(GetPVarInt(playerid, "IsInArena") == -1 && GetPVarInt(killerid, "IsInArena") == -1 && GetPVarInt(playerid, "Injured") == 0) {
		new weapon[24];
		GetWeaponName(reason,weapon,sizeof(weapon));

		new szMessage[128];
		format(szMessage, sizeof(szMessage), "Ban da giet chet %s (%s)", GetPlayerNameEx(playerid), weapon);
		SendClientMessageEx(killerid, COLOR_YELLOW, szMessage);

		new szMessagecc[128];
		format(szMessagecc, sizeof(szMessagecc), "Ban da bi giet boi %s (%s)", GetPlayerNameEx(killerid), weapon);
		SendClientMessageEx(playerid, COLOR_YELLOW, szMessagecc);

	  	for(new iIndex; iIndex < MAX_CAMERA_KOS; iIndex++) {
			if(IsPlayerInRangeOfPoint(playerid, 100, CameraKosInfo[iIndex][CKOS_PosX], CameraKosInfo[iIndex][CKOS_PosY], CameraKosInfo[iIndex][CKOS_PosZ]) && !IsACop(killerid) && !IsAMedic(killerid)) {
			    if(IsACop(playerid)) {
			    	PlayerInfo[killerid][pWantedLevel] += 3;
			    	SendClientMessageEx(killerid, COLOR_YELLOW, "[CAMERA THANH PHO] Ban da duoc +3 lenh truy na , do giet canh sat.");
			    }else {
			        PlayerInfo[killerid][pWantedLevel] += 1;
			    	SendClientMessageEx(killerid, COLOR_YELLOW, "[CAMERA THANH PHO] Ban da duoc +1 lenh truy na, do giet nguoi trong khu vuc thanh pho.");
			    }
			    
			    new stringcc[1280];
		        new zone[MAX_ZONE_NAME];
				GetPlayer3DZone(playerid, zone, sizeof(zone));
			    format(stringcc, sizeof(stringcc), "[CAMERA THANH PHO] Phat hien doi tuong %s vua giet chet nan nhan %s trong khu vuc thanh pho (Vi tri : %s).", GetPlayerNameEx(killerid), GetPlayerNameEx(playerid), zone);
				SendGroupMessage(1, DEPTRADIO, stringcc);
	    		return 1;
			}
		}
	}
	return 1;
}
