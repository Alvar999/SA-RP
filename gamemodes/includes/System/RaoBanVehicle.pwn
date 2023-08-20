#include <a_samp>
#include <YSI\y_hooks>


#define            MENUSELLCAR               12051
#define            ENTERPRICESELLC           12052
#define            BUYCARSELL                12053
#define            CANCELSELLCAR             12054

new vehicleslot_selling[MAX_PLAYERS][MAX_PLAYERVEHICLES], // ko cho thao tac' (*xD*)
    vehicle_price[MAX_PLAYERS][MAX_PLAYERVEHICLES], 
    vehicle_id[MAX_PLAYERS][MAX_PLAYERVEHICLES], // variable cho chiec xe?
    Text3D:vehicle_text[MAX_PLAYERS][MAX_PLAYERVEHICLES],
    vehicle_variablesxD[MAX_VEHICLES]; //

CMD:clearraoban(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 1337) {
        SendClientMessage(playerid, -1, "Ban da reset toan bo vehicle sell market thanh cong.");
        for(new i = 0; i < MAX_PLAYERVEHICLES ; i ++) {

            DestroyVehicle(vehicle_id[playerid][i]);
            ClearDataSellVeh_market(playerid,i);
        }
    }
    return 1;
}

CMD:raobanxe(playerid,params[]) {
    if(IsPlayerInRangeOfPoint(playerid, 3, 1844.3051,-1871.6716,13.0930) || IsPlayerInRangeOfPoint(playerid, 3, 1841.1777,-1871.4991,13.0950) || IsPlayerInRangeOfPoint(playerid, 3, 1838.0579,-1871.6792,13.0950) || IsPlayerInRangeOfPoint(playerid, 3, 1834.8413,-1871.4255,13.0930)
        || IsPlayerInRangeOfPoint(playerid, 3, 1839.8760,-1853.4133,13.0913) || IsPlayerInRangeOfPoint(playerid, 3, 1836.7031,-1853.2791,13.0953)) {
        new vstring[1000], icount = GetPlayerVehicleSlots(playerid);
        for(new i, iModelID; i < icount; i++)
        {
            if((iModelID = PlayerVehicleInfo[playerid][i][pvModelId] - 400) >= 0)
            {
                format(vstring, sizeof(vstring), "%s\n[%d]%s", vstring,PlayerVehicleInfo[playerid][i][pvSlotId], VehicleName[iModelID]);    
            }       
        }
        ShowPlayerDialog(playerid, MENUSELLCAR, DIALOG_STYLE_LIST, "Rao ban phuong tien", vstring, "Rao ban", "Huy bo");
    }
    else {
        SendClientMessage(playerid, -1, "Ban khong o khu vuc rao ban phuong tien.");
    }
    return 1;
}
CMD:huyraoban(playerid,params[]) {
    if(IsPlayerInRangeOfPoint(playerid, 25, 1839.6174,-1862.1295,13.3828)) {
        new vstring[1000], icount = GetPlayerVehicleSlots(playerid);
        for(new i, iModelID; i < icount; i++)
        {
            if((iModelID = PlayerVehicleInfo[playerid][i][pvModelId] - 400) >= 0)
            {
                format(vstring, sizeof(vstring), "%s\n[%d]%s", vstring,PlayerVehicleInfo[playerid][i][pvSlotId], VehicleName[iModelID]);    
            }       
        }
        ShowPlayerDialog(playerid, CANCELSELLCAR, DIALOG_STYLE_LIST, "Huy ban phuong tien", vstring, "Huy rao ban", "Huy bo");
    }
    else {
        SendClientMessage(playerid, -1, "Ban khong o khu vuc rao ban phuong tien.");
    }
}
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    switch(dialogid) {
        case CANCELSELLCAR: {
            if(response) {
                if((PlayerVehicleInfo[playerid][listitem][pvModelId] - 400) < 0) return SendClientMessageEx(playerid,-1," Vui long kiem tra lai...");
                if(vehicleslot_selling[playerid][listitem] ==  0) return SendClientMessageEx(playerid,-1,"Phuong tien nay chua duoc rao ban.");  
                SendClientMessage(playerid, -17, "Ban da huy rao ban phuong tien thanh cong");
                DestroyVehicle(vehicle_id[playerid][listitem]);
                ClearDataSellVeh_market(playerid,listitem);
            }
        }
        case MENUSELLCAR: {
            if(response) {
                new _pricestr[129];
                if(PlayerVehicleInfo[playerid][listitem][pvDisabled]) return SendClientMessageEx(playerid,-1," Phuong tien nay khong the su dung.");
                if(!PlayerVehicleInfo[playerid][listitem][pvSpawned]) return SendClientMessageEx(playerid,-1," Phuong tien nay chua duoc su dung.");
                if((PlayerVehicleInfo[playerid][listitem][pvModelId] - 400) < 0) return SendClientMessageEx(playerid,-1," Vui long kiem tra lai...");
                if(vehicleslot_selling[playerid][listitem] != 0) return SendClientMessageEx(playerid,-1,"Phuong tien dang duoc rao ban vui long ko rao ban tip.");  
                SetPVarInt(playerid, "_saveslotselect", listitem);
                printf("loadddd %d",PlayerVehicleInfo[playerid][listitem][pvId]);
                format(_pricestr, sizeof(_pricestr), "Vui long nhap gia tien ban muon ban\nPhuong tien: %s", GetVehicleName(PlayerVehicleInfo[playerid][listitem][pvId]));
                ShowPlayerDialog(playerid, ENTERPRICESELLC, DIALOG_STYLE_INPUT, "Sell car | Price",_pricestr, "Dong y", "Huy bo");
            }
        }
        case ENTERPRICESELLC: {
            new i = GetPVarInt(playerid,"_saveslotselect"), Float:_pos[3],_pricestr[129];
            if(!IsNumeric(inputtext) || strval(inputtext) < 1 || strval(inputtext) > 999999999) {
                format(_pricestr, sizeof(_pricestr),  "Vui long nhap gia tien ban muon ban\nPhuong tien: %s", GetVehicleName(PlayerVehicleInfo[playerid][i][pvId]));
                ShowPlayerDialog(playerid, ENTERPRICESELLC, DIALOG_STYLE_INPUT, "Sell car | Price",_pricestr, "Dong y", "Huy bo");
                return 1;
            }
            vehicleslot_selling[playerid][i] = 1;
            vehicle_price[playerid][i] = strval(inputtext);
            SendClientMessage(playerid,-1,"Ban da treo ban phuong tien thanh cong");
            GetPlayerPos(playerid,_pos[0],_pos[1],_pos[2]);
            vehicle_id[playerid][i] = CreateVehicle(PlayerVehicleInfo[playerid][i][pvModelId], _pos[0],_pos[1],_pos[2], 0, 1, 1, -1);
            vehicle_variablesxD[vehicle_id[playerid][i]] = 1;
            format(_pricestr, sizeof(_pricestr), "Phuong tien dang rao ban %s(%d)\nChu so huu: %s(%d)\nGia ban: $%s", GetVehicleName(PlayerVehicleInfo[playerid][i][pvId]),PlayerVehicleInfo[playerid][i][pvId],
            GetPlayerNameEx(playerid),playerid,number_format(strval(inputtext)));
            vehicle_text[playerid][i] = Create3DTextLabel(_pricestr, COLOR_YELLOW, 0.0, 0.0, 0.0, 50.0, 0, 1);
            Attach3DTextLabelToVehicle(vehicle_text[playerid][i],vehicle_id[playerid][i], 0.0, 0.0, 0.0); // Attaching Text Label To Vehicle.
            DestroyVehicle(PlayerVehicleInfo[playerid][i][pvId]);
            PlayerVehicleInfo[playerid][i][pvSpawned] = 0;
            VehicleSpawned[playerid]--;
            new engine,lights,alarm,doors,bonnet,boot,objective;
            GetVehicleParamsEx(vehicle_id[playerid][i],engine,lights,alarm,doors,bonnet,boot,objective);
            SetVehicleParamsEx(vehicle_id[playerid][i],VEHICLE_PARAMS_OFF,lights,alarm,doors,bonnet,boot,objective);
            arr_Engine{vehicle_id[playerid][i]} = 0;
            return 1;
        }
        case BUYCARSELL: {
            if(response) {
                new sellerid = GetPVarInt(playerid, "_BuyFromPlayer");
                new slotveh = GetPVarInt(playerid, "_SelectBuySlot");
                if(GetPlayerFreeVehicleId(playerid) == -1) {
                    SendClientMessageEx(playerid,-1,"Ban khong con slot garage trong.");

                    RemovePlayerFromVehicle(playerid);
                    new Float:slx, Float:sly, Float:slz;
                    GetPlayerPos(playerid, slx, sly, slz);
                    SetPlayerPos(playerid, slx, sly, slz+1);
                }
                if(PlayerInfo[playerid][pCash] < vehicle_price[sellerid][slotveh]) {
                    SendClientMessageEx(playerid,-1,"Ban khong du tien de mua.");

                    RemovePlayerFromVehicle(playerid);
                    new Float:slx, Float:sly, Float:slz;
                    GetPlayerPos(playerid, slx, sly, slz);
                    SetPlayerPos(playerid, slx, sly, slz+1);
                }
                TradeVehicle_market(sellerid,playerid,slotveh);
                PlayerInfo[playerid][pCash] -= vehicle_price[sellerid][slotveh];
                PlayerInfo[sellerid][pAccount] += vehicle_price[sellerid][slotveh];
                new _hi[128];
                format(_hi, sizeof(_hi), "%s da mua phuong tien {ffffff}%s{ffffff} cua ban o CAR-Market voi gia: {18fb1b}$%s{ffffff}, tien da duoc chuyen vao tai khoan ngan hang cua ban.",GetPlayerNameEx(playerid)
                ,GetVehicleName(vehicle_id[sellerid][slotveh]),number_format(vehicle_price[sellerid][slotveh]));
                SendClientMessageEx(sellerid,-1,_hi);
                format(_hi, sizeof(_hi), "Ban da mua phuong tien {ffffff}%s{ffffff} cua %s o CAR-Market voi gia: {18fb1b}$%s{ffffff}.", GetVehicleName(vehicle_id[sellerid][slotveh]),
                GetPlayerNameEx(sellerid),number_format(vehicle_price[sellerid][slotveh]));
                SendClientMessageEx(playerid,-1,_hi);
                ClearDataSellVeh_market(sellerid,slotveh);
            }
            else {
                RemovePlayerFromVehicle(playerid);
                new Float:slx, Float:sly, Float:slz;
                GetPlayerPos(playerid, slx, sly, slz);
                SetPlayerPos(playerid, slx, sly, slz+1);
            }
        }
    }
    return 1;
}
hook OnPlayerDisconnect(playerid, reason) {
    for(new i = 0; i < MAX_PLAYERVEHICLES ; i ++) {

        DestroyVehicle(vehicle_id[playerid][i]);
        ClearDataSellVeh_market(playerid,i);
    }
    return 1;
}

stock ClearDataSellVeh_market(playerid,slotveh) {
    vehicle_variablesxD[vehicle_id[playerid][slotveh]] = 0; 
    vehicleslot_selling[playerid][slotveh] = 0;
    vehicle_price[playerid][slotveh] = 0;
    vehicle_id[playerid][slotveh] = -1;
    Delete3DTextLabel(vehicle_text[playerid][slotveh]);
    return 1;
}

stock TradeVehicle_market(player_sell,player_buy,slot) {
    new playervehicleid = GetPlayerFreeVehicleId(player_buy),szMessage[1280];
    PlayerVehicleInfo[player_buy][playervehicleid][pvId] = vehicle_id[player_sell][slot];
    PlayerVehicleInfo[player_buy][playervehicleid][pvModelId] = PlayerVehicleInfo[player_sell][slot][pvModelId];
    PlayerVehicleInfo[player_buy][playervehicleid][pvPosX] = PlayerVehicleInfo[player_sell][slot][pvPosX];
    PlayerVehicleInfo[player_buy][playervehicleid][pvPosY] = PlayerVehicleInfo[player_sell][slot][pvPosY];
    PlayerVehicleInfo[player_buy][playervehicleid][pvPosZ] = PlayerVehicleInfo[player_sell][slot][pvPosZ];
    PlayerVehicleInfo[player_buy][playervehicleid][pvPosAngle] = PlayerVehicleInfo[player_sell][slot][pvPosAngle];
    PlayerVehicleInfo[player_buy][playervehicleid][pvLock] = PlayerVehicleInfo[player_sell][slot][pvLock];
    PlayerVehicleInfo[player_buy][playervehicleid][pvLocked] = PlayerVehicleInfo[player_sell][slot][pvLocked];
    PlayerVehicleInfo[player_buy][playervehicleid][pvPaintJob] = PlayerVehicleInfo[player_sell][slot][pvPaintJob];
    PlayerVehicleInfo[player_buy][playervehicleid][pvColor1] = PlayerVehicleInfo[player_sell][slot][pvColor1];
    PlayerVehicleInfo[player_buy][playervehicleid][pvColor2] = PlayerVehicleInfo[player_sell][slot][pvColor2];
    PlayerVehicleInfo[player_buy][playervehicleid][pvAllowedPlayerId] = PlayerVehicleInfo[player_sell][slot][pvAllowedPlayerId];
    PlayerVehicleInfo[player_buy][playervehicleid][pvPark] = PlayerVehicleInfo[player_sell][slot][pvPark];
    PlayerVehicleInfo[player_buy][playervehicleid][pvVW] = PlayerVehicleInfo[player_sell][slot][pvVW];
    PlayerVehicleInfo[player_buy][playervehicleid][pvInt] = PlayerVehicleInfo[player_sell][slot][pvInt];

    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][0] = PlayerVehicleInfo[player_sell][slot][pvWeapons][0];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][1] = PlayerVehicleInfo[player_sell][slot][pvWeapons][1];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][2] = PlayerVehicleInfo[player_sell][slot][pvWeapons][2];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][3] = PlayerVehicleInfo[player_sell][slot][pvWeapons][3];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][4] = PlayerVehicleInfo[player_sell][slot][pvWeapons][4];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][5] = PlayerVehicleInfo[player_sell][slot][pvWeapons][5];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][6] = PlayerVehicleInfo[player_sell][slot][pvWeapons][6];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][7] = PlayerVehicleInfo[player_sell][slot][pvWeapons][7];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][8] = PlayerVehicleInfo[player_sell][slot][pvWeapons][8];
    PlayerVehicleInfo[player_buy][playervehicleid][pvWeapons][9] = PlayerVehicleInfo[player_sell][slot][pvWeapons][9];

    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][0] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][1] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][2] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][3] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][4] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][5] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][6] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][7] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][8] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvAmmo][9] = 0;

    PlayerVehicleInfo[player_buy][playervehicleid][pvPlate] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvTicket] = 0;
    PlayerVehicleInfo[player_buy][playervehicleid][pvSpawned] = 1;

    VehicleSpawned[player_buy]++;
    for(new m = 0; m < MAX_MODS; m++) {
        PlayerVehicleInfo[player_buy][playervehicleid][pvMods][m] = PlayerVehicleInfo[player_sell][slot][pvMods][m];
    }
    format(szMessage, sizeof(szMessage), "INSERT INTO `vehicles` (`sqlID`) VALUES ('%d')", GetPlayerSQLId(player_buy));
    mysql_function_query(MainPipeline, szMessage, true, "OnQueryCreateVehicle", "ii", player_buy, playervehicleid);

    format(szMessage, sizeof(szMessage), "DELETE FROM `vehicles` WHERE `id` = '%d'", PlayerVehicleInfo[player_sell][slot][pvSlotId]);
    mysql_function_query(MainPipeline, szMessage, false, "OnQueryFinish", "ii", SENDDATA_THREAD, player_sell);
    PlayerVehicleInfo[player_sell][slot][pvSlotId] = 0;
    PlayerVehicleInfo[player_sell][slot][pvId] = 0;
    PlayerVehicleInfo[player_sell][slot][pvModelId] = 0;
    PlayerVehicleInfo[player_sell][slot][pvPosX] = 0.0;
    PlayerVehicleInfo[player_sell][slot][pvPosY] = 0.0;
    PlayerVehicleInfo[player_sell][slot][pvPosZ] = 0.0;
    PlayerVehicleInfo[player_sell][slot][pvPosAngle] = 0.0;
    PlayerVehicleInfo[player_sell][slot][pvLock] = 0;
    PlayerVehicleInfo[player_sell][slot][pvLocked] = 0;
    PlayerVehicleInfo[player_sell][slot][pvPaintJob] = -1;
    PlayerVehicleInfo[player_sell][slot][pvColor1] = 0;
    PlayerVehicleInfo[player_sell][slot][pvImpounded] = 0;
    PlayerVehicleInfo[player_sell][slot][pvColor2] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAllowedPlayerId] = INVALID_PLAYER_ID;
    PlayerVehicleInfo[player_sell][slot][pvPark] = 0;
    PlayerVehicleInfo[player_sell][slot][pvSpawned] = 0;
    PlayerVehicleInfo[player_sell][slot][pvVW] = 0;
    PlayerVehicleInfo[player_sell][slot][pvInt] = 0;
    
    PlayerVehicleInfo[player_sell][slot][pvWeapons][0] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][1] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][2] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][3] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][4] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][5] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][6] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][7] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][8] = -1;
    PlayerVehicleInfo[player_sell][slot][pvWeapons][9] = -1;

    PlayerVehicleInfo[player_sell][slot][pvAmmo][0] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][1] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][2] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][3] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][4] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][5] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][6] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][7] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][8] = 0;
    PlayerVehicleInfo[player_sell][slot][pvAmmo][9] = 0;

    PlayerVehicleInfo[player_sell][slot][pvPlate] = 0;
    PlayerVehicleInfo[player_sell][slot][pvTicket] = 0;
    for(new m = 0; m < MAX_MODS; m++) {
        PlayerVehicleInfo[player_sell][slot][pvMods][m] = 0;
    }
    return 1;
}

hook OnPlayerEnterVehicle(playerid, vehicleid, ispassenger) {

    if(vehicle_variablesxD[vehicleid] == 1) {
        new slot,giveplayerid;
        foreach(new i: Player) {
            for(new j = 0; j < MAX_PLAYERVEHICLES;j++) {
                if(vehicle_id[i][j] == vehicleid) {
                    giveplayerid = i;
                    slot = j;
                    break ;
                } 
            }           
        } 
        if(giveplayerid == playerid) {
            RemovePlayerFromVehicle(playerid);
            new Float:slx, Float:sly, Float:slz;
            GetPlayerPos(playerid, slx, sly, slz);
            SetPlayerPos(playerid, slx, sly, slz+1);
            return 1;
        }
        SetPVarInt(playerid, "_SelectBuySlot", slot);
        SetPVarInt(playerid, "_BuyFromPlayer", giveplayerid);
        new str_car[300];
        format(str_car,sizeof(str_car),"{FFFFFF}Ban co xac nhan mua phuong tien nay khong? \n\
            Phuong tien:{ffc02a} %s{FFFFFF} \n\
            Gia tien: {22d81c}%s{FFFFFF}",GetVehicleName(vehicleid),
            number_format(vehicle_price[giveplayerid][slot]));
        ShowPlayerDialog(playerid, BUYCARSELL, DIALOG_STYLE_MSGBOX, "Mua phuong tien",str_car , "Dong y", "huy bo");
    }
    return 1;
}
