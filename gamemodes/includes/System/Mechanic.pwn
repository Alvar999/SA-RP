#include <a_samp>
#include <YSI\y_hooks>

CMD:mauxe(playerid, params[]) {
	return cmd_colorcar(playerid, params);
}

CMD:colorcar(playerid, params[]) {
	if(IsAMechanic(playerid)) {
		new iColors[2];
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong o trong xe.");
		if(sscanf(params, "ii", iColors[0], iColors[1])) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /mauxe [ID 1] [ID 2]. ID mau sac cua samp.");
		else if((PlayerInfo[playerid][pDonateRank] == 0) && (iColors[0] > 126 || iColors[1] > 126)) return SendClientMessageEx(playerid, COLOR_GREY, "Chi VIP moi su dung ID mau sac tren 126.");
		else if(!(0 <= iColors[0] <= 255 && 0 <= iColors[1] <= 255)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Mau sac khong hop le(ID mau sac phai tu 0 cho toi 255).");
		new szMessage[60];
		for(new i = 0; i < MAX_PLAYERVEHICLES; i++)
		{
			if(IsPlayerInVehicle(playerid, PlayerVehicleInfo[playerid][i][pvId]))
			{
				PlayerVehicleInfo[playerid][i][pvColor1] = iColors[0], PlayerVehicleInfo[playerid][i][pvColor2] = iColors[1];
				ChangeVehicleColor(PlayerVehicleInfo[playerid][i][pvId], PlayerVehicleInfo[playerid][i][pvColor1], PlayerVehicleInfo[playerid][i][pvColor2]);
				PlayerInfo[playerid][pSpraycan]--;
				g_mysql_SaveVehicle(playerid, i);
				format(szMessage, sizeof(szMessage), "Ban da thay doi mau sac chiec xe cua ban bang ID %d, %d.", iColors[0], iColors[1]);
				return SendClientMessageEx(playerid, COLOR_GRAD2, szMessage);
			}
		}
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the son xe cua nguoi khac.");
	}else {
	    new iColors[2];
		if(!IsPlayerInAnyVehicle(playerid)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong o trong xe.");
		else if(PlayerInfo[playerid][pSpraycan] == 0) return SendClientMessageEx(playerid, COLOR_GRAD2, "Ban khong co binh son xe nao.");
		if(sscanf(params, "ii", iColors[0], iColors[1])) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /mauxe [ID 1] [ID 2]. ID mau sac cua samp.");
		else if((PlayerInfo[playerid][pDonateRank] == 0) && (iColors[0] > 126 || iColors[1] > 126)) return SendClientMessageEx(playerid, COLOR_GREY, "Chi VIP moi su dung ID mau sac tren 126.");
		else if(!(0 <= iColors[0] <= 255 && 0 <= iColors[1] <= 255)) return SendClientMessageEx(playerid, COLOR_GRAD2, "Mau sac khong hop le(ID mau sac phai tu 0 cho toi 255).");
		new szMessage[60];
		for(new i = 0; i < MAX_PLAYERVEHICLES; i++)
		{
			if(IsPlayerInVehicle(playerid, PlayerVehicleInfo[playerid][i][pvId]))
			{
				PlayerVehicleInfo[playerid][i][pvColor1] = iColors[0], PlayerVehicleInfo[playerid][i][pvColor2] = iColors[1];
				ChangeVehicleColor(PlayerVehicleInfo[playerid][i][pvId], PlayerVehicleInfo[playerid][i][pvColor1], PlayerVehicleInfo[playerid][i][pvColor2]);
				PlayerInfo[playerid][pSpraycan]--;
				g_mysql_SaveVehicle(playerid, i);
				format(szMessage, sizeof(szMessage), "Ban da thay doi mau sac chiec xe cua ban bang ID %d, %d.", iColors[0], iColors[1]);
				return SendClientMessageEx(playerid, COLOR_GRAD2, szMessage);
			}
		}
		SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the son xe cua nguoi khac.");
	}
	return 1;
}

CMD:fixxesarp(playerid, params[])
{
	new vehicleid;
	if(sscanf(params, "i", vehicleid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /fixxe [ID Vehicle]");
	if(vehicleid != 0) {
        SetVehicleHealth(vehicleid, 1000.0);
		RepairVehicle(vehicleid);
		Vehicle_Armor(vehicleid);
        SendClientMessageEx(playerid, COLOR_GREY, "Ban da sua chua phuong tien nay thanh cong.");
        return 1;
	}
	return 1;
}

stock IsAMechanic(playerid)
{
	if((0 <= PlayerInfo[playerid][pMember] < MAX_GROUPS) && (arrGroupData[PlayerInfo[playerid][pMember]][g_iGroupType] == 10)) return 1;
	return 0;
}

CMD:fix(playerid, params[])
{
    if(IsAMechanic(playerid))
	{
    	new string[1280 + MAX_PLAYER_NAME];
        if(IsPlayerInAnyVehicle(playerid))
		{
		    SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the sua chua khi ben trong xe.");
		    return 1;
		}

  		if(gettime() < PlayerInfo[playerid][pMechTime])
		{
  			format(string, sizeof(string), "Phai cho doi %d giay!", PlayerInfo[playerid][pMechTime]-gettime());
     		SendClientMessageEx(playerid, COLOR_GRAD1,string);
     	}
		else if(GetPVarInt(playerid, "EventToken"))
		{
			SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the su dung nay trong khi dang o mot su kien.");
		}
  		else
		{
			new closestcar = GetClosestCar(playerid);

  			if(IsPlayerInRangeOfVehicle(playerid, closestcar, 10.0))
  			{
				if(!IsABike(closestcar) && !IsAPlane(closestcar)) {
					new engine,lights,alarm,doors,bonnet,boot,objective;
					GetVehicleParamsEx(closestcar,engine,lights,alarm,doors,bonnet,boot,objective);
					if(bonnet == VEHICLE_PARAMS_OFF || bonnet == VEHICLE_PARAMS_UNSET)
					{
						SendClientMessageEx(playerid, COLOR_GRAD1, "Ban can phai mo mui xe ra de sua chua no (/car hood).");
						return 1;
					}
				}
				SetPVarInt(playerid, "CNFixTime", 30);
                SetTimerEx("CNFix", 1000, 0, "d", playerid);
                GameTextForPlayer(playerid, "~r~Dang sua xe", 30000, 10);
                
                format(string, sizeof(string), "* %s da bat dau sua chua phuong tien phia truoc mat.", GetPlayerNameEx(playerid));
    			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
                SendClientMessageEx(playerid, COLOR_YELLOW, "Ban dang sua chiec xe , hay can than ");
			}
			else return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong o gan mot chiec xe nao de sua chua.");
  		}
    }
    else return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong phai la nguoi to chuc Tho Sua Xe." );
    return 1;
}

forward CNFix(playerid);
public CNFix(playerid)
{
    SetPVarInt(playerid, "CNFixTime", GetPVarInt(playerid, "CNFixTime")-1);
    new string[128];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay", GetPVarInt(playerid, "CNFixTime"));
    GameTextForPlayer(playerid, string, 1100, 3);

    if(GetPVarInt(playerid, "CNFixTime") > 0) SetTimerEx("CNFix", 1500, 0, "d", playerid);

    if(GetPVarInt(playerid, "CNFixTime") <= 0)
    {
        new closestcar = GetClosestCar(playerid);
        PlayerInfo[playerid][pMechTime] = gettime()+10;
   		SetVehicleHealth(closestcar, 1000.0);
		Vehicle_Armor(closestcar);
		RepairVehicle(closestcar);
    	format(string, sizeof(string), "* %s da sua chua chiec xe.", GetPlayerNameEx(playerid));
    	ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
        DeletePVar(playerid, "CNFixTime");
    }
}

CMD:nos(playerid, params[])
{
    if(IsAMechanic(playerid)) {
        if(IsPlayerInAnyVehicle(playerid)) {
			if(GetPVarInt(playerid, "EventToken")) {
				return SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the lam dieu nay ben trong su kien.");
			}
   			if(GetVehicleComponentInSlot(GetPlayerVehicleID(playerid), GetVehicleComponentType(1010)) != 1010 && GetVehicleComponentInSlot(GetPlayerVehicleID(playerid), GetVehicleComponentType(1009)) != 1009 && GetVehicleComponentInSlot(GetPlayerVehicleID(playerid), GetVehicleComponentType(1008)) != 1008)
   			{
            	if(!IsPlayerInInvalidNosVehicle(playerid))
				{
                	new string[128];
                	new nostogive;
               		new level = PlayerInfo[playerid][pMechSkill];
 		 			if(level >= 0 && level < 50) { nostogive = 1009; }
    		 		else if(level >= 50 && level < 100) { nostogive = 1009; }
         			else if(level >= 100 && level < 200) { nostogive = 1008; }
                	else if(level >= 200 && level < 400) { nostogive = 1008; }
                	else if(level >= 400) { nostogive = 1010; }
                	AddVehicleComponent(GetPlayerVehicleID(playerid),nostogive);
                	PlayerPlaySound(playerid,1133,0.0,0.0,0.0);
                	format(string, sizeof(string), "* %s da them Nitrous vao xe.", GetPlayerNameEx(playerid));
                	ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
            	}
            	else {
            	    SendClientMessageEx(playerid, COLOR_GREY, "Nitrous khong duoc cai dat tren xe nay.");
            	}
			 }
			 else {
			    SendClientMessageEx(playerid, COLOR_GREY, "Xe nay da co Nitrous.");
		 	}
        }
        else {
            SendClientMessageEx(playerid, COLOR_GREY, "Ban khong o trong mot chiec xe.");
        }
    }
    else {
        SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong phai la nguoi to chuc Tho Sua Xe." );
    }
    return 1;
}

CMD:hyd(playerid, params[])
{
    if(IsAMechanic(playerid)) {
        if(IsPlayerInAnyVehicle(playerid)) {
			if(IsPlayerInInvalidNosVehicle(playerid) || (DynVeh[GetPlayerVehicleID(playerid)] != -1 && DynVehicleInfo[DynVeh[GetPlayerVehicleID(playerid)]][gv_igID] != INVALID_GROUP_ID)) return SendClientMessageEx(playerid, COLOR_WHITE, "He thong thuy luc khong duoc cai dat tren xe nay.");
			if(gettime() < PlayerInfo[playerid][pServiceTime]) return SendClientMessage(playerid, COLOR_GREY, "Ban phai tro 20 giay de su dung lai lenh nay.");
			new string[128];
			PlayerPlaySound(playerid,1133,0.0,0.0,0.0);
			AddVehicleComponent(GetPlayerVehicleID(playerid), 1087);
			format(string, sizeof(string), "* %s da them he thong thuy luc vao xe.", GetPlayerNameEx(playerid));
			ProxDetector(30.0, playerid, string, COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE,COLOR_PURPLE);
			PlayerInfo[playerid][pServiceTime] = gettime()+20;
        }
        else return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong o trong mot chiec xe.");
    }
    else return SendClientMessageEx(playerid, COLOR_WHITE, "Ban khong phai la nguoi to chuc Tho Sua Xe." );
    return 1;
}
