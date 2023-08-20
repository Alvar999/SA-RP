#include <a_samp>

forward povorotniki();

new povorotnic[MAX_VEHICLES][4];
new PovarotStat[MAX_VEHICLES];
new steppov[MAX_VEHICLES];

enum
{
POVOROT_OFF,
POVOROT_ON
}

public OnFilterScriptInit()
{
	print("************Поворотинкики для машин v0.1**********");
	print("*****************by Morino_Reigan*****************");
	print("************CopyRight 2010 © SAMP-RUS.COM*********");
	SetTimer("povorotniki",500,true);
	SetWorldTime(21);
}

public OnPlayerConnect(playerid)
{
}

public povorotniki()
{
	for(new i=0;i<MAX_VEHICLES;i++)
	{
	    if(PovarotStat[i]==POVOROT_ON)
	    {
	        switch(steppov[i])
	        {
	            case 1:
	            {
	         		povorotnic[i][0] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
	              	povorotnic[i][1] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
	              	AttachObjectToVehicle(povorotnic[i][0], i, 0.9, 2.5, 0.1, 0.0, 0.0, 0.0);
	              	AttachObjectToVehicle(povorotnic[i][1], i, 0.9, -2.7, 0.1, 0.0, 0.0, 0.0);
	              	steppov[i]=2;
		        }
		        case 2:
		        {
		            DestroyObject(povorotnic[i][0]);
	              	DestroyObject(povorotnic[i][1]);
	              	steppov[i]=1;
		        }
		        case 3:
		        {
	         		povorotnic[i][2] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
              		povorotnic[i][3] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
	              	AttachObjectToVehicle(povorotnic[i][2], i, -0.9, 2.5, 0.1, 0.0, 0.0, 0.0);
	              	AttachObjectToVehicle(povorotnic[i][3], i, -0.9, -2.7, 0.1, 0.0, 0.0, 0.0);
	              	steppov[i]=4;
		        }
		        case 4:
		        {
		            DestroyObject(povorotnic[i][2]);
	              	DestroyObject(povorotnic[i][3]);
	              	steppov[i]=3;
		        }
		        case 5:
		        {
		            povorotnic[i][0] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
	              	povorotnic[i][1] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
	         		povorotnic[i][2] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
              		povorotnic[i][3] = CreateObject(19294, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0,100.0);
	              	AttachObjectToVehicle(povorotnic[i][0], i, 0.9, 2.5, 0.1, 0.0, 0.0, 0.0);
	              	AttachObjectToVehicle(povorotnic[i][1], i, 0.9, -2.7, 0.1, 0.0, 0.0, 0.0);
	              	AttachObjectToVehicle(povorotnic[i][2], i, -0.9, 2.5, 0.1, 0.0, 0.0, 0.0);
	              	AttachObjectToVehicle(povorotnic[i][3], i, -0.9, -2.7, 0.1, 0.0, 0.0, 0.0);
	              	steppov[i]=6;
		        }
		        case 6:
		        {
		            DestroyObject(povorotnic[i][0]);
	              	DestroyObject(povorotnic[i][1]);
	              	DestroyObject(povorotnic[i][2]);
	              	DestroyObject(povorotnic[i][3]);
                	steppov[i]=5;
		        }
		        case 7:
		        {
		            DestroyObject(povorotnic[i][0]);
	              	DestroyObject(povorotnic[i][1]);
	              	DestroyObject(povorotnic[i][2]);
	              	DestroyObject(povorotnic[i][3]);
                	PovarotStat[i]=POVOROT_OFF;
		        }
			}
	    }
	}
}
public OnPlayerCommandText(playerid,cmdtext[])
{
	if(!strcmp("rpovorot",cmdtext[1],true))
	{
	    if(!IsPlayerInAnyVehicle(playerid))return 1;
	    steppov[GetPlayerVehicleID(playerid)]=1;
	    SendClientMessage(playerid,0xf0ff0fff,"DIZEL");
	    PovarotStat[GetPlayerVehicleID(playerid)]=POVOROT_ON;
	    return 1;
	}
	if(!strcmp("lpovorot",cmdtext[1],true))
	{
	    if(!IsPlayerInAnyVehicle(playerid))return 1;
	    steppov[GetPlayerVehicleID(playerid)]=3;
	    SendClientMessage(playerid,0xf0ff0fff,"DIZEL");
	    PovarotStat[GetPlayerVehicleID(playerid)]=POVOROT_ON;
	    return 1;
	}
	return 0;
}

public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys&256)
	{
	    new carid=GetPlayerVehicleID(playerid);
		if(PovarotStat[carid]==POVOROT_OFF)
		{
		    if(!IsPlayerInAnyVehicle(playerid))return 1;
		    steppov[carid]=3;
		    PovarotStat[carid]=POVOROT_ON;
		    return 1;
		}
		else if(PovarotStat[carid]==POVOROT_ON)
		{
		    steppov[carid]=7;
		}
		return 1;
	}
	if(newkeys&64)
	{
	    new carid=GetPlayerVehicleID(playerid);
		if(PovarotStat[carid]==POVOROT_OFF)
		{
		    if(!IsPlayerInAnyVehicle(playerid))return 1;
		    steppov[carid]=1;
		    PovarotStat[carid]=POVOROT_ON;
		    return 1;
		}
		else if(PovarotStat[carid]==POVOROT_ON)
		{
		    steppov[carid]=7;
		}
		return 1;
	}
	if(newkeys&512)
	{
	    new carid=GetPlayerVehicleID(playerid);
		if(PovarotStat[carid]==POVOROT_OFF)
		{
		    if(!IsPlayerInAnyVehicle(playerid))return 1;
		    steppov[carid]=5;
		    PovarotStat[carid]=POVOROT_ON;
		    return 1;
		}
		else if(PovarotStat[carid]==POVOROT_ON)
		{
		    steppov[carid]=7;
		}
	    return 1;
	}
	return 1;
}

