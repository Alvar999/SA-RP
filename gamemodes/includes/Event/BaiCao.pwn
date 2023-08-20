#include <a_samp>
#include <YSI\y_hooks>

#include <YSI\y_hooks>

//------------------- Thoi Gian -------------------------
#define COUNT_BC_WAIT 15 // Thoi Gian Cho`
#define COUNT_BC_TRIBUTE 30 // Thoi Gian Mo Bai
#define COUNT_BC_SORT 5 // Thoi Gian Sap Xep Bai
#define DIALOG_SHOW_WINNER 9123

//-------------------------------------------------------
#define Function:%0(%1) forward %0(%1); public %0(%1)
new LockBaiCao = 0;

hook OnGameModeInit()
{
	SettingsBCInfo();
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == SHOWLIST_BC)
    {
        if(!response) return 1;
        new bcid = listitem;
        JoinBCForPlayer(playerid,bcid);
    }
    return 1;
}

hook OnPlayerConnect(playerid)
{
    SettingsPlayerBC(playerid);
    return 1;
}

Function:FinishTribute(bcid)
{
    BCInfo[bcid][bc_Status] = STATUS_BC_SORT;
    BCInfo[bcid][bc_Count] = COUNT_BC_SORT;
    ResetPointBC(bcid);
    for(new b = 7; b < 19; b++)
    {
        BCTextDrawSetString(bcid, b, "ld_card:cdback");
    }
    //HidePointFor(bcid);
    BCInfo[bcid][bc_Timer] = SetTimerEx("TimerBCInfo", 1000, true, "i", bcid);
    KickPointMoney(bcid);
    return 1;
}

Function:TimerBCInfo(bcid)
{
    new countstring[32],countstring2[128];
    format(countstring, sizeof(countstring), "%dS", BCInfo[bcid][bc_Count]);

    if(BCInfo[bcid][bc_Count] > -1)
    {
        if(BCInfo[bcid][bc_Player] >= 2)
        {
            BCInfo[bcid][bc_Count]--;
            for(new b = 0; b < MAX_PLAYER_BC; b++)
            {
                if(BCInfo[bcid][bc_Players][b] != INVALID_PLAYER_ID)
                {
                    new player = BCInfo[bcid][bc_Players][b];
                    PlayerTextDrawSetString(player, BAICAO_TDE[player][6], countstring);
                    if(BCInfo[bcid][bc_Status] == STATUS_BC_WAIT) countstring2 = "Thoi Gian Cho";
                    else if(BCInfo[bcid][bc_Status] == STATUS_BC_TRIBUTE) countstring2 = "Hay Kiem Tra Bai";
                    else if(BCInfo[bcid][bc_Status] == STATUS_BC_SORT) countstring2 = "Dang Tinh Diem";
                    PlayerTextDrawSetString(player, BAICAO_TDE[player][5], countstring2);
                }
            }
        }
        else
        {
            BCInfo[bcid][bc_Status] = STATUS_BC_WAIT;
            BCInfo[bcid][bc_Count] = COUNT_BC_WAIT;
            BCTextDrawSetString(bcid, 6, "30S");
            BCTextDrawSetString(bcid, 5, "Thoi Gian Cho");
        }
    }
    //else if(BCInfo[bcid][bc_Count] == 0)
    else
    {
        if(BCInfo[bcid][bc_Player] >= 2)
        {
            /* WAIT > TRIBUTE > SORT */
            if(BCInfo[bcid][bc_Status] == STATUS_BC_WAIT)
            {
                BCInfo[bcid][bc_Status] = STATUS_BC_TRIBUTE;
                BCInfo[bcid][bc_Count] = COUNT_BC_TRIBUTE;
                ResetPointBC(bcid);
                for(new b = 7; b < 19; b++)
                {
                    BCTextDrawSetString(bcid, b, "ld_card:cdback");
                }
            }
            else if(BCInfo[bcid][bc_Status] == STATUS_BC_TRIBUTE)
            {
                KillTimer(BCInfo[bcid][bc_Timer]);
                CheckingForPoint(bcid); //Kiem tra coi co th nao ko do? bai` ko
                SortForPoint(bcid); // Sap xem diem Player
                GiveSortForPoint(bcid);
                SetTimerEx("FinishTribute", 8500, false, "i", bcid);
            }
            else if(BCInfo[bcid][bc_Status] == STATUS_BC_SORT)
            {
                BCInfo[bcid][bc_Status] = STATUS_BC_WAIT;
                BCInfo[bcid][bc_Count] = COUNT_BC_WAIT;
                ResetPointBC(bcid);
                for(new b = 7; b < 19; b++)
                {
                    BCTextDrawSetString(bcid, b, "ld_card:cdback");
                }
            }
        }
        else
        {
            BCInfo[bcid][bc_Status] = STATUS_BC_WAIT;
            BCInfo[bcid][bc_Count] = COUNT_BC_WAIT;
            BCTextDrawSetString(bcid, 6, "30S");
            BCTextDrawSetString(bcid, 6, "Thoi Gian Cho");
        }
    }
    return 1;
}

Function:KickPointMoney(bcid)
{
    for(new b = 0; b < MAX_PLAYER_BC; b++)
    {
        if(BCInfo[bcid][bc_Players][b] != INVALID_PLAYER_ID)
        {
            new Player = BCInfo[bcid][bc_Players][b];
            if(PlayerInfo[Player][pCash] < BCInfo[bcid][bc_Money])
            {
                QuitBCForPlayer(Player, bcid);
                SendClientMessage(Player, COLOR_GRAD2, "Ban da bi duoi ra khoi phong do so tien khong du muc toi thieu dat cuoc.");
            }
        }
    }
    return 1;
}

stock MsgBC(bcid, color, message[])
{
    for(new b = 0; b < MAX_PLAYER_BC; b++)
    {
        if(BCInfo[bcid][bc_Players][b] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][b];
            SendClientMessage(player, color, message);
        }
    }
    return 1;
}

Function:FindCountDown(bcid, maxpoint)
{
    new tempstring[255], count = 0, playerz[MAX_PLAYER_BC] = INVALID_PLAYER_ID;
    for(new b = 0; b < MAX_PLAYER_BC; b++)
    {
        if(BCInfo[bcid][bc_Players][b] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][b];
            if(PlayerBC[player][pBC_Point] >= maxpoint)
            {
                playerz[b] = player;
                count += 1;
            }
        }
    }
    new players = BCInfo[bcid][bc_Player] - 1;
    new moneyz = BCInfo[bcid][bc_Money] * players;
    if(count < 2)
    {
        for(new p = 0; p < MAX_PLAYER_BC; p++)
        {
            if(playerz[p] != INVALID_PLAYER_ID) {
                if(PlayerBC[playerz[p]][pBC_ID] == bcid) {
	                PlayerInfo[playerz[p]][pCash] += moneyz;
	                format(tempstring, sizeof(tempstring), "[#Winner - #BC: %d] {00cc99}%s {00cc00}+%s$", bcid, GetPlayerNameEx(playerz[p]), number_format(moneyz));
	                MsgBC(bcid, -1, tempstring);
	                UpdateBCIDForTeam(bcid, PlayerBC[playerz[p]][pBC_Slot]);
	                break;
                }
            }
        }
    }
    return 1;
}

stock GiveSortForPoint(bcid)
{
    new resultbc[MAX_PLAYER_BC],resultplayer[MAX_PLAYER_BC];
    for(new a = 0; a < MAX_PLAYER_BC; a++)
    {
        if(BCInfo[bcid][bc_Players][a] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][a];
            resultbc[a] = PlayerBC[player][pBC_Point];
            resultplayer[a] = player;
        }
    }
    SortBC(resultbc, sizeof(resultbc));
    new tempstring[255],stringbc[255];
    for(new b = 0; b < MAX_PLAYER_BC; b++)
    {
        if(BCInfo[bcid][bc_Players][b] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][b];
            if(PlayerBC[player][pBC_Point] >= resultbc[0])
            {
                SetTimerEx("FindCountDown", 1000, false, "ii", bcid,resultbc[0]);
            }
            else if(PlayerBC[player][pBC_Point] < resultbc[0])
            {
                if(PlayerBC[player][pBC_ID] == bcid) {
	                PlayerInfo[player][pCash] -= BCInfo[bcid][bc_Money];
	                format(tempstring, sizeof(tempstring), "[#Lose - #BC: %d] {00cc99}%s {00cc00}-%s$", bcid, GetPlayerNameEx(player), number_format(BCInfo[bcid][bc_Money]));
	                MsgBC(bcid, -1, tempstring);
	                UpdateBCIDForTeam(bcid, PlayerBC[player][pBC_Slot]);
	                format(tempstring, sizeof(tempstring), "%d Diem", PlayerBC[player][pBC_Point]);
                }
            }
            format(stringbc, sizeof(stringbc), "%s\n\t%s\t%d Diem", stringbc,GetPlayerNameEx(player),PlayerBC[player][pBC_Point]);
        }
    }
    ShowKetQuaBC(bcid, stringbc);
    return 1;
}

stock ShowKetQuaBC(bcid, stig[])
{
    for(new k = 0; k < MAX_PLAYER_BC; k++)
    {
        if(BCInfo[bcid][bc_Players][k] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][k];
            ShowPlayerDialog(player, 500, DIALOG_STYLE_MSGBOX, "Ket qua diem bai cao", stig, "Ok", "");
        }
    }
    return 1;
}

stock SortBC(a[], size)
{
    new temp;
    for(new l = 0; l < size; l++)
    {
        for(new z = l + 1; z < size; z++)
        {
            if(a[z] > a[l])
            {
                temp = a[z];
                a[z] = a[l];
                a[l] = temp;
            }
        }
    }
}

stock SortForPoint(bcid)
{
    //new tempz[200];
    for(new a = 0; a < MAX_PLAYER_BC; a++)
    {
        if(BCInfo[bcid][bc_Players][a] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][a];
            new fullpointslot = PlayerBC[player][pBC_Card][0] + PlayerBC[player][pBC_Card][1] + PlayerBC[player][pBC_Card][2];
            PlayerBC[player][pBC_Point] = fullpointslot;

            if(PlayerBC[player][pBC_Point] >= 10 && PlayerBC[player][pBC_Point] <= 19) PlayerBC[player][pBC_Point] -= 10;
            else if(PlayerBC[player][pBC_Point] >= 20 && PlayerBC[player][pBC_Point] <= 29) PlayerBC[player][pBC_Point] -= 20;
        }
    }
    return 1;
}

stock CheckingForPoint(bcid)
{
    for(new B = 0; B < MAX_PLAYER_BC; B++)
    {
        if(BCInfo[bcid][bc_Players][B] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][B];
            if(PlayerBC[player][pBC_Slot] == 0)
            {
                for(new b = 0; b < 3; b++)
                {
                    if(PlayerBC[player][pBC_Card][b] == 0)
                    {
                        if(b == 0) PointRandom(player, 7);
                        else if(b == 1) PointRandom(player, 8);
                        else if(b == 2) PointRandom(player, 9);
                    }
                }
            }
            else if(PlayerBC[player][pBC_Slot] == 1)
            {
                for(new b = 0; b < 3; b++)
                {
                    if(PlayerBC[player][pBC_Card][b] == 0)
                    {
                        if(b == 0) PointRandom(player, 10);
                        else if(b == 1) PointRandom(player, 11);
                        else if(b == 2) PointRandom(player, 12);
                    }
                }
            }
            else if(PlayerBC[player][pBC_Slot] == 0)
            {
                for(new b = 0; b < 3; b++)
                {
                    if(PlayerBC[player][pBC_Card][b] == 0)
                    {
                        if(b == 0) PointRandom(player, 13);
                        else if(b == 1) PointRandom(player, 14);
                        else if(b == 2) PointRandom(player, 15);
                    }
                }
            }
            else if(PlayerBC[player][pBC_Slot] == 0)
            {
                for(new b = 0; b < 3; b++)
                {
                    if(PlayerBC[player][pBC_Card][b] == 0)
                    {
                        if(b == 0) PointRandom(player, 16);
                        else if(b == 1) PointRandom(player, 17);
                        else if(b == 2) PointRandom(player, 18);
                    }
                }
            }
        }
    }
    return 1;
}

stock ResetPointBC(bcid)
{
    for(new b = 0; b < MAX_PLAYER_BC; b++)
    {
        if(BCInfo[bcid][bc_Players][b] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][b];
            PlayerBC[player][pBC_Card][0] = 0;
            PlayerBC[player][pBC_Card][1] = 0;
            PlayerBC[player][pBC_Card][2] = 0;
            PlayerBC[player][pBC_Point] = 0;
        }
    }
    return 1;
}

stock CreatePlayerBC(playerid)
{
    BAICAO_TDE[playerid][0] = CreatePlayerTextDraw(playerid, 293.666564, 57.674030, "BE_PHUONG_(12121$)");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][0], 0.289666, 1.280592);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][0], 2);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][0], -1523963137);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][0], 1);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][0], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][0], 0);

	BAICAO_TDE[playerid][1] = CreatePlayerTextDraw(playerid, 103.999893, 136.903671, "BE_PHUONG_(12121$)");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][1], 0.289666, 1.280592);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][1], 2);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][1], -1523963137);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][1], 1);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][1], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][1], 0);

	BAICAO_TDE[playerid][2] = CreatePlayerTextDraw(playerid, 435.999786, 135.659286, "BE_PHUONG_(100,000,000$)");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][2], 0.289666, 1.280592);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][2], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][2], -1523963137);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][2], 1);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][2], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][2], 0);

	BAICAO_TDE[playerid][3] = CreatePlayerTextDraw(playerid, 294.999816, 259.274414, "BE_PHUONG_(12121$)");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][3], 0.289666, 1.280592);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][3], 2);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][3], -1523963137);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][3], 1);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][3], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][3], 0);

	BAICAO_TDE[playerid][4] = CreatePlayerTextDraw(playerid, 213.999954, 149.192398, "LD_SPAC:white");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][4], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][4], 209.000000, 98.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][4], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][4], 150);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][4], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][4], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][4], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][4], 0);

	BAICAO_TDE[playerid][5] = CreatePlayerTextDraw(playerid, 316.666595, 151.422241, "THOI_GIAN_CHO");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][5], 0.444666, 1.670518);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][5], 2);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][5], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][5], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][5], 0);

	BAICAO_TDE[playerid][6] = CreatePlayerTextDraw(playerid, 313.666687, 170.088912, "60_giay");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][6], 0.421666, 1.894519);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][6], 2);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][6], -5963521);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][6], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][6], 3);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][6], 0);

	BAICAO_TDE[playerid][7] = CreatePlayerTextDraw(playerid, 232.333374, 69.548065, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][7], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][7], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][7], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][7], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][7], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][7], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][7], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][7], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][7], 0);

	BAICAO_TDE[playerid][8] = CreatePlayerTextDraw(playerid, 289.333557, 69.133270, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][8], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][8], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][8], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][8], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][8], 0);

	BAICAO_TDE[playerid][9] = CreatePlayerTextDraw(playerid, 348.000488, 69.548072, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][9], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][9], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][9], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][9], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][9], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][9], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][9], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][9], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][9], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][9], 0);

	BAICAO_TDE[playerid][10] = CreatePlayerTextDraw(playerid, 42.333675, 149.192581, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][10], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][10], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][10], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][10], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][10], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][10], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][10], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][10], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][10], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][10], 0);

	BAICAO_TDE[playerid][11] = CreatePlayerTextDraw(playerid, 98.333717, 149.192565, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][11], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][11], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][11], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][11], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][11], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][11], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][11], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][11], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][11], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][11], 0);

	BAICAO_TDE[playerid][12] = CreatePlayerTextDraw(playerid, 154.333648, 149.192565, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][12], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][12], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][12], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][12], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][12], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][12], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][12], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][12], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][12], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][12], 0);

	BAICAO_TDE[playerid][13] = CreatePlayerTextDraw(playerid, 435.334045, 148.362960, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][13], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][13], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][13], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][13], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][13], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][13], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][13], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][13], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][13], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][13], 0);

	BAICAO_TDE[playerid][14] = CreatePlayerTextDraw(playerid, 492.667449, 148.362960, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][14], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][14], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][14], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][14], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][14], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][14], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][14], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][14], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][14], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][14], 0);

	BAICAO_TDE[playerid][15] = CreatePlayerTextDraw(playerid, 549.334167, 148.362960, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][15], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][15], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][15], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][15], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][15], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][15], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][15], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][15], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][15], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][15], 0);

	BAICAO_TDE[playerid][16] = CreatePlayerTextDraw(playerid, 233.334075, 271.562866, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][16], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][16], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][16], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][16], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][16], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][16], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][16], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][16], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][16], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][16], 0);

	BAICAO_TDE[playerid][17] = CreatePlayerTextDraw(playerid, 291.000793, 271.562896, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][17], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][17], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][17], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][17], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][17], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][17], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][17], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][17], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][17], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][17], 0);

	BAICAO_TDE[playerid][18] = CreatePlayerTextDraw(playerid, 349.001007, 271.562805, "ld_card:cdback");
	PlayerTextDrawLetterSize(playerid, BAICAO_TDE[playerid][18], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, BAICAO_TDE[playerid][18], 46.000000, 67.000000);
	PlayerTextDrawAlignment(playerid, BAICAO_TDE[playerid][18], 1);
	PlayerTextDrawColor(playerid, BAICAO_TDE[playerid][18], -1);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][18], 0);
	PlayerTextDrawSetOutline(playerid, BAICAO_TDE[playerid][18], 0);
	PlayerTextDrawBackgroundColor(playerid, BAICAO_TDE[playerid][18], 255);
	PlayerTextDrawFont(playerid, BAICAO_TDE[playerid][18], 4);
	PlayerTextDrawSetProportional(playerid, BAICAO_TDE[playerid][18], 0);
	PlayerTextDrawSetShadow(playerid, BAICAO_TDE[playerid][18], 0);

    MainBaiCao[playerid][0] = CreatePlayerTextDraw(playerid, 203.666610, 191.659255, "[#]_phong:");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][0], 0.200664, 0.952889);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][0], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][0], -1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][0], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][0], 0);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][0], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][0], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][0], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][0], 0);

	MainBaiCao[playerid][1] = CreatePlayerTextDraw(playerid, 203.666610, 201.614761, "[#]_TIEN_CUOC:");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][1], 0.200664, 0.952889);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][1], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][1], -1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][1], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][1], 0);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][1], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][1], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][1], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][1], 0);

	MainBaiCao[playerid][2] = CreatePlayerTextDraw(playerid, 203.666610, 212.399871, "[#]_mode:");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][2], 0.200664, 0.952889);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][2], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][2], -1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][2], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][2], 0);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][2], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][2], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][2], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][2], 0);

	MainBaiCao[playerid][3] = CreatePlayerTextDraw(playerid, 221.999969, 223.599853, "+_Trong_qua_trinh_~r~mo_bai~w~_neu_cac_ban_thoat_phong~n~___tien_phat_se_~r~x2.");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][3], 0.136665, 0.641776);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][3], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][3], -1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][3], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][3], 0);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][3], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][3], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][3], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][3], 0);

	MainBaiCao[playerid][4] = CreatePlayerTextDraw(playerid, 221.999984, 238.118255, "+_chuc_cac_ban_co_mot_trai_nghiem_vui_ve_tai_may_chu");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][4], 0.153999, 0.708145);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][4], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][4], -1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][4], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][4], 0);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][4], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][4], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][4], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][4], 0);

	MainBaiCao[playerid][5] = CreatePlayerTextDraw(playerid, 255.666687, 185.851837, "1");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][5], 0.400000, 1.600000);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][5], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][5], -5963521);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][5], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][5], 1);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][5], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][5], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][5], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][5], 0);

	MainBaiCao[playerid][6] = CreatePlayerTextDraw(playerid, 270.333435, 197.881423, "20,000,000$");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][6], 0.225997, 1.313778);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][6], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][6], -5963521);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][6], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][6], 1);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][6], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][6], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][6], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][6], 0);

	MainBaiCao[playerid][7] = CreatePlayerTextDraw(playerid, 251.666778, 211.570251, "CHUYEN_NGHIEP");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][7], 0.222664, 1.010962);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][7], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][7], -5963521);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][7], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][7], 1);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][7], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][7], 2);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][7], 1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][7], 0);

	MainBaiCao[playerid][8] = CreatePlayerTextDraw(playerid, 404.333343, 150.851867, "LD_BEAT:cross");
	PlayerTextDrawLetterSize(playerid, MainBaiCao[playerid][8], 0.000000, 0.000000);
	PlayerTextDrawTextSize(playerid, MainBaiCao[playerid][8], 17.000000, 15.000000);
	PlayerTextDrawAlignment(playerid, MainBaiCao[playerid][8], 1);
	PlayerTextDrawColor(playerid, MainBaiCao[playerid][8], -1);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][8], 0);
	PlayerTextDrawSetOutline(playerid, MainBaiCao[playerid][8], 0);
	PlayerTextDrawBackgroundColor(playerid, MainBaiCao[playerid][8], 255);
	PlayerTextDrawFont(playerid, MainBaiCao[playerid][8], 4);
	PlayerTextDrawSetProportional(playerid, MainBaiCao[playerid][8], 0);
	PlayerTextDrawSetShadow(playerid, MainBaiCao[playerid][8], 0);
	PlayerTextDrawSetSelectable(playerid, MainBaiCao[playerid][8], true);
    return 1;
}

stock randomEx(min, max)
{
    new rand = random(max-min)+min;
    return rand;
}

stock BCTextDrawSetString(bcid, slot, stringz[])
{
    for(new q = 0; q < MAX_PLAYER_BC; q++)
    {
        if(BCInfo[bcid][bc_Players][q] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][q];
            PlayerTextDrawSetString(player, BAICAO_TDE[player][slot], stringz);
        }
    }
    return 1;
}

stock PointRandom(playerid, slot)
{
    new randz = randomEx(1,9),tempstring[255],bcid = PlayerBC[playerid][pBC_ID];
    if(slot == 7 || slot == 10 || slot == 13 || slot == 16)
    {
        if(PlayerBC[playerid][pBC_Card][0] == 0)
        {
            PlayerBC[playerid][pBC_Card][0] = randz;
            format(tempstring, sizeof(tempstring), "%s", DeckBCTextDraw(randz));
            PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][slot], tempstring);
            BCTextDrawSetString(bcid, slot, tempstring);
        }
    }
    if(slot == 8 || slot == 11 || slot == 14 || slot == 17)
    {
        if(PlayerBC[playerid][pBC_Card][1] == 0)
        {
            PlayerBC[playerid][pBC_Card][1] = randz;
            format(tempstring, sizeof(tempstring), "%s", DeckBCTextDraw(randz));
            PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][slot], tempstring);
            BCTextDrawSetString(bcid, slot, tempstring);
        }
    }
    if(slot == 9 || slot == 12 || slot == 15 || slot == 18)
    {
        if(PlayerBC[playerid][pBC_Card][2] == 0)
        {
            PlayerBC[playerid][pBC_Card][2] = randz;
            format(tempstring, sizeof(tempstring), "%s", DeckBCTextDraw(randz));
            PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][slot], tempstring);
            BCTextDrawSetString(bcid, slot, tempstring);
        }
    }
    return 1;
}

stock DeckBCTextDraw(randz) {
    new name[1280];
	if(randz == 1) name = "LD_CARD:cd1d";
	else if(randz == 2) name = "LD_CARD:cd2d";
	else if(randz == 3) name = "LD_CARD:cd3d";
	else if(randz == 4) name = "LD_CARD:cd4d";
 	else if(randz == 5) name = "LD_CARD:cd5d";
	else if(randz == 6) name = "LD_CARD:cd6d";
	else if(randz == 7) name = "LD_CARD:cd7d";
	else if(randz == 8) name = "LD_CARD:cd8d";
	else if(randz == 9) name = "LD_CARD:cd9d";
	return name;
}

stock SettingsBCInfo()
{
    for(new o = 0; o < MAX_BAICAO; o++)
    {
        BCInfo[o][bc_Players][0] = INVALID_PLAYER_ID;
        BCInfo[o][bc_Players][1] = INVALID_PLAYER_ID;
        BCInfo[o][bc_Players][2] = INVALID_PLAYER_ID;
        BCInfo[o][bc_Players][3] = INVALID_PLAYER_ID;
        BCInfo[o][bc_Status] = STATUS_BC_WAIT;
        BCInfo[o][bc_Player] = 0;
        BCInfo[o][bc_Count] = COUNT_BC_WAIT;
        KillTimer(BCInfo[o][bc_Timer]);
        BCInfo[o][bc_Timer] = SetTimerEx("TimerBCInfo", 1000, true, "i", o);
    }
    BCInfo[0][bc_Money] = 10000;
    BCInfo[1][bc_Money] = 10000;
    BCInfo[2][bc_Money] = 10000;
    BCInfo[3][bc_Money] = 10000;
    BCInfo[4][bc_Money] = 10000;

    BCInfo[5][bc_Money] = 20000;
    BCInfo[6][bc_Money] = 20000;
    BCInfo[7][bc_Money] = 20000;
    BCInfo[8][bc_Money] = 20000;
    BCInfo[9][bc_Money] = 20000;

    BCInfo[10][bc_Money] = 30000;
    BCInfo[11][bc_Money] = 30000;
    BCInfo[12][bc_Money] = 30000;
    BCInfo[13][bc_Money] = 30000;
    BCInfo[14][bc_Money] = 30000;

    BCInfo[15][bc_Money] = 40000;
    BCInfo[16][bc_Money] = 40000;
    BCInfo[17][bc_Money] = 40000;
    BCInfo[18][bc_Money] = 40000;
    BCInfo[19][bc_Money] = 40000;

    BCInfo[20][bc_Money] = 50000;
    BCInfo[21][bc_Money] = 50000;
    BCInfo[22][bc_Money] = 50000;
    BCInfo[23][bc_Money] = 50000;
    BCInfo[24][bc_Money] = 50000;

    BCInfo[25][bc_Money] = 60000;
    BCInfo[26][bc_Money] = 60000;
    BCInfo[27][bc_Money] = 60000;
    BCInfo[28][bc_Money] = 60000;
    BCInfo[29][bc_Money] = 60000;

    BCInfo[30][bc_Money] = 70000;
    BCInfo[31][bc_Money] = 70000;
    BCInfo[32][bc_Money] = 70000;
    BCInfo[33][bc_Money] = 70000;
    BCInfo[34][bc_Money] = 70000;

    BCInfo[35][bc_Money] = 80000;
    BCInfo[36][bc_Money] = 80000;
    BCInfo[37][bc_Money] = 90000;
    BCInfo[38][bc_Money] = 90000;
    BCInfo[39][bc_Money] = 100000;

    BCInfo[40][bc_Money] = 200000;
    BCInfo[41][bc_Money] = 300000;
    BCInfo[42][bc_Money] = 400000;
    BCInfo[43][bc_Money] = 500000;
    BCInfo[44][bc_Money] = 600000;
    BCInfo[45][bc_Money] = 700000;
    BCInfo[46][bc_Money] = 800000;
    BCInfo[47][bc_Money] = 900000;
    BCInfo[48][bc_Money] = 1000000;
    return 1;
}

stock SettingsPlayerBC(playerid)
{
    PlayerBC[playerid][pBC_ID] = -1;
    PlayerBC[playerid][pBC_Slot] = -1;
    PlayerBC[playerid][pBC_Card][0] = 0;
    PlayerBC[playerid][pBC_Card][1] = 0;
    PlayerBC[playerid][pBC_Card][2] = 0;
    PlayerBC[playerid][pBC_Point] = 0;
    return 1;
}

stock ShowListBCForPlayer(playerid)
{
    new szStrong[1028];
    for(new j = 0; j < MAX_BAICAO; j++)
    {
        if(BCInfo[j][bc_Player] != 0) {
	        new sum = 4 - BCInfo[j][bc_Player];
	    	format(szStrong, sizeof(szStrong), "%s\n#%d. Con %d ghe (Cuoc : %s$) (Mode : %s)", szStrong, j, sum, number_format(BCInfo[j][bc_Money]), GetModePhongDialog(BCInfo[j][bc_Money]));
		}else format(szStrong, sizeof(szStrong), "%s\n#%d. Ban trong", szStrong, j);
    }
    ShowPlayerDialog(playerid, SHOWLIST_BC, DIALOG_STYLE_LIST, "Lua chon phong", szStrong, "Select", "Cancel");
    return 1;
}

stock GetFreeSlotBC(bcid)
{
    new slot = -1;
    for(new p = 0; p < MAX_PLAYER_BC; p++)
    {
        if(BCInfo[bcid][bc_Players][p] == INVALID_PLAYER_ID)
        {
            slot = p;
            return slot;
        }
    }
    return -1;
}

/*stock ShowPointFor(bcid, slot, stringz[])
{
    for(new q = 0; q < MAX_PLAYER_BC; q++)
    {
        if(BCInfo[bcid][bc_Players][q] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][q];
            PlayerTextDrawShow(player, BAICAO_TDE_NEW[player][slot]);
            PlayerTextDrawSetString(player, BAICAO_TDE_NEW[player][slot], stringz);
        }
    }
    return 1;
}*/

/*stock HidePointFor(bcid)
{
    for(new p = 0; p < MAX_PLAYER_BC; p++)
    {
        if(BCInfo[bcid][bc_Players][p] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][p];
            for(new z = 0; z < MAX_PLAYER_BC; z++)
            {
                PlayerTextDrawHide(player, BAICAO_TDE_NEW[player][z]);
            }
        }
    }
    return 1;
}*/

/*stock HidePointForSlot(bcid, slot)
{
    for(new q = 0; q < MAX_PLAYER_BC; q++)
    {
        if(BCInfo[bcid][bc_Players][q] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][q];
            //PlayerTextDrawHide(player, BAICAO_TDE_NEW[player][slot]);
        }
    }
    return 1;
}*/
/* -----------------------------------------------------------------------------------------*/

stock GetModePhongDialog(amount) {
	new name[1280];
	if(amount >= 0 && amount <= 1000) name = "Tap su";
	else if(amount >= 1000 && amount <= 10000) name = "Nghiep du";
	else if(amount >= 10000 && amount <= 99999) name = "Chuyen nghiep";
	else if(amount > 99999) name = "Master";
	return name;
}

stock GetModePhongTD(amount) {
	new name[1280];
	if(amount >= 0 && amount <= 1000) name = "Tap_su";
	else if(amount >= 1000 && amount <= 10000) name = "Nghiep_du";
	else if(amount >= 10000 && amount <= 99999) name = "Chuyen_nghiep";
	else if(amount > 99999) name = "Master";
	return name;
}

stock ShowBCIDForPlayer(playerid, bcid)
{
    new Sporting[1280], countstring[1280];
    new room[1280], money[1280], modephong[1280];

    format(countstring, sizeof(countstring), "%dS", BCInfo[bcid][bc_Count]);
    SelectTextDraw(playerid, 0x00FF00FF);

    PlayerTextDrawShow(playerid, MainBaiCao[playerid][0]);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][1]);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][2]);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][3]);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][4]);

    format(room, sizeof(room), "%d", bcid);
    PlayerTextDrawSetString(playerid, MainBaiCao[playerid][5], room);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][5]);

    format(money, sizeof(money), "%s$", number_format(BCInfo[bcid][bc_Money]));
    PlayerTextDrawSetString(playerid, MainBaiCao[playerid][6], money);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][6]);

    format(modephong, sizeof(modephong), "%s", GetModePhongTD(BCInfo[bcid][bc_Money]));
    PlayerTextDrawSetString(playerid, MainBaiCao[playerid][7], modephong);
    PlayerTextDrawShow(playerid, MainBaiCao[playerid][7]);

    PlayerTextDrawShow(playerid, MainBaiCao[playerid][8]);
    for(new l = 0; l < MAX_PLAYER_BC; l++)
    {
        if(BCInfo[bcid][bc_Players][l] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][l];
            PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][6], countstring);
            if(l == 0)
            {
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][l]);
                format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(player), number_format(PlayerInfo[player][pCash]));
                PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][l], Sporting);
                if(player == playerid)
                {
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][7], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][8], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][9], true);
                }
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][7]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][8]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][9]);
            }
            if(l == 1)
            {
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][l]);
                format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(player), number_format(PlayerInfo[player][pCash]));
                PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][l], Sporting);
                if(player == playerid)
                {
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][10], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][11], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][12], true);
                }
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][10]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][11]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][12]);
            }
            if(l == 2)
            {
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][l]);
                format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(player), number_format(PlayerInfo[player][pCash]));
                PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][l], Sporting);
                if(player == playerid)
                {
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][13], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][14], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][15], true);
                }
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][13]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][14]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][15]);
            }
            if(l == 3)
            {
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][l]);
                format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(player), number_format(PlayerInfo[player][pCash]));
                PlayerTextDrawSetString(playerid, BAICAO_TDE[playerid][l], Sporting);
                if(player == playerid)
                {
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][16], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][17], true);
                    PlayerTextDrawSetSelectable(playerid, BAICAO_TDE[playerid][18], true);
                }
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][16]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][17]);
                PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][18]);
            }
        }
    }
    return 1;
}
stock UpdateMoney(bcid) {
    for(new v = 0; v < MAX_PLAYER_BC; v++) {
        if(BCInfo[bcid][bc_Players][v] != INVALID_PLAYER_ID) {
            new player = BCInfo[bcid][bc_Players][v];
            new money[1280];
            format(money, sizeof(money), "%s$", number_format(BCInfo[bcid][bc_Money]));
		    PlayerTextDrawSetString(player, MainBaiCao[player][6], money);
		    PlayerTextDrawShow(player, MainBaiCao[player][6]);
		}
	}
	return 1;
}
stock UpdateBCIDForTeam(bcid,slot)
{
    new Sporting[255];
    for(new v = 0; v < MAX_PLAYER_BC; v++)
    {
        if(BCInfo[bcid][bc_Players][v] != INVALID_PLAYER_ID)
        {
            new player = BCInfo[bcid][bc_Players][v];
            new playerd = BCInfo[bcid][bc_Players][slot];
            if(slot == 0)
            {
                if(BCInfo[bcid][bc_Players][slot] == INVALID_PLAYER_ID)
                {
                    PlayerTextDrawHide(player, BAICAO_TDE[player][slot]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][7]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][8]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][9]);
                }
                else
                {
                    PlayerTextDrawShow(player, BAICAO_TDE[player][slot]);
                    format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(playerd), number_format(PlayerInfo[playerd][pCash]));
                    PlayerTextDrawSetString(player, BAICAO_TDE[player][slot], Sporting);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][7]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][8]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][9]);
                }
            }
            else if(slot == 1)
            {
                if(BCInfo[bcid][bc_Players][slot] == INVALID_PLAYER_ID)
                {
                    PlayerTextDrawHide(player, BAICAO_TDE[player][slot]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][10]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][11]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][12]);
                }
                else
                {
                    PlayerTextDrawShow(player, BAICAO_TDE[player][slot]);
                    format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(playerd), number_format(PlayerInfo[playerd][pCash]));
                    PlayerTextDrawSetString(player, BAICAO_TDE[player][slot], Sporting);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][10]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][11]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][12]);
                }
            }
            else if(slot == 2)
            {
                if(BCInfo[bcid][bc_Players][slot] == INVALID_PLAYER_ID)
                {
                    PlayerTextDrawHide(player, BAICAO_TDE[player][slot]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][13]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][14]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][15]);
                }
                else
                {
                    PlayerTextDrawShow(player, BAICAO_TDE[player][slot]);
                    format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(playerd), number_format(PlayerInfo[playerd][pCash]));
                    PlayerTextDrawSetString(player, BAICAO_TDE[player][slot], Sporting);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][13]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][14]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][15]);
                }
            }
            else if(slot == 3)
            {
                if(BCInfo[bcid][bc_Players][slot] == INVALID_PLAYER_ID)
                {
                    PlayerTextDrawHide(player, BAICAO_TDE[player][slot]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][16]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][17]);
                    PlayerTextDrawHide(player, BAICAO_TDE[player][18]);
                }
                else
                {
                    PlayerTextDrawShow(player, BAICAO_TDE[player][slot]);
                    format(Sporting, sizeof(Sporting), "%s_(%s$)", GetPlayerNameEx(playerd), number_format(PlayerInfo[playerd][pCash]));
                    PlayerTextDrawSetString(player, BAICAO_TDE[player][slot], Sporting);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][16]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][17]);
                    PlayerTextDrawShow(player, BAICAO_TDE[player][18]);
                }
            }
        }
    }
    return 1;
}

stock HidePlayerBC(playerid)
{
    for(new b = 0; b < 19; b++)
    {
        PlayerTextDrawDestroy(playerid, BAICAO_TDE[playerid][b]);
        PlayerTextDrawHide(playerid, BAICAO_TDE[playerid][b]);
    }
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][0]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][0]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][1]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][1]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][2]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][2]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][3]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][3]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][4]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][4]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][5]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][5]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][6]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][6]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][7]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][7]);
    PlayerTextDrawDestroy(playerid, MainBaiCao[playerid][8]);
    PlayerTextDrawHide(playerid, MainBaiCao[playerid][8]);
    return 1;
}

stock JoinBCForPlayer(playerid, bcid)
{
    if(BCInfo[bcid][bc_Status] == STATUS_BC_TRIBUTE) return SendClientMessage(playerid, -1, "Ban vui long cho trong giay lat, phong nay dang chung bi mo bai.");
    if(PlayerInfo[playerid][pCash] < BCInfo[bcid][bc_Money]) return SendClientMessage(playerid, -1, "So tien cua ban khong du de tham gia phong nay.");
    if(PlayerBC[playerid][pBC_ID] != -1 || PlayerBC[playerid][pBC_Slot] != -1) return SendClientMessage(playerid, -1, "Ban dang choi o mot phong nao do, khong the tham gia tiep tuc.");
    new getslot = GetFreeSlotBC(bcid);
    if(getslot == -1) return SendClientMessage(playerid, -1, "Phong nay hien tai da du nguoi ban vui long chon phong khac.");
    BCInfo[bcid][bc_Players][getslot] = playerid;
    BCInfo[bcid][bc_Player]++;
    PlayerBC[playerid][pBC_ID] = bcid;
    PlayerBC[playerid][pBC_Slot] = getslot;
    PlayerBC[playerid][pBC_Card][0] = 0;
    PlayerBC[playerid][pBC_Card][1] = 0;
    PlayerBC[playerid][pBC_Card][2] = 0;
    PlayerBC[playerid][pBC_Point] = 0;
    CreatePlayerBC(playerid);
    for(new b = 4; b < 7; b++) PlayerTextDrawShow(playerid, BAICAO_TDE[playerid][b]);
    ShowBCIDForPlayer(playerid, bcid);
    UpdateBCIDForTeam(bcid,getslot);
    return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
	if(PlayerBC[playerid][pBC_ID] != -1) {
    	QuitBCForPlayer(playerid, PlayerBC[playerid][pBC_ID]);
    }
	return 1;
}

stock QuitBCForPlayer(playerid, bcid)
{
    new slot = PlayerBC[playerid][pBC_Slot];
    HidePlayerBC(playerid);
    BCInfo[bcid][bc_Player]--;
    if(BCInfo[bcid][bc_Status] == STATUS_BC_TRIBUTE)
    {
        //GivePlayerCash(playerid, -BCInfo[bcid][bc_Money]*2);
        PlayerInfo[playerid][pCash] -= BCInfo[bcid][bc_Money]*2;
        if(BCInfo[bcid][bc_Player] < 2)
        {
            BCInfo[bcid][bc_Status] = STATUS_BC_SORT;
            BCInfo[bcid][bc_Count] = COUNT_BC_SORT;
            ResetPointBC(bcid);
            for(new b = 7; b < 19; b++)
            {
                BCTextDrawSetString(bcid, b, "ld_card:cdback");
            }
        }
    }
    BCInfo[bcid][bc_Players][slot] = INVALID_PLAYER_ID;
    UpdateBCIDForTeam(bcid, slot);
    PlayerBC[playerid][pBC_ID] = -1;
    PlayerBC[playerid][pBC_Slot] = -1;
    PlayerBC[playerid][pBC_Card][0] = 0;
    PlayerBC[playerid][pBC_Card][1] = 0;
    PlayerBC[playerid][pBC_Card][2] = 0;
    PlayerBC[playerid][pBC_Point] = 0;
    new tempstring[255];
    format(tempstring, sizeof(tempstring), "Nguoi choi {00cc99}%s{FFFFFF} da roi khoi ban.", GetPlayerNameEx(playerid));
    MsgBC(bcid, -1, tempstring);
    CancelSelectTextDraw(playerid);
    return 1;
}


CMD:lockbaicao(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337) {
		if(LockBaiCao == 0) {
		    LockBaiCao = 1;
		    SendClientMessageEx(playerid, COLOR_GREY, "   Ban da khoa chuc nang bai cao thanh cong.");
		}else {
		    LockBaiCao = 0;
		    SendClientMessageEx(playerid, COLOR_GREY, "   Ban da mo khoa chuc nang bai cao thanh cong.");
		}
	}
	return 1;
}

CMD:baicao(playerid,params[])
{
    if(LockBaiCao == 1) {
	    SendClientMessageEx(playerid, COLOR_GREY, "   Hien tai chuc nang nay da bi khoa.");
		return 1;
	}
	if(PlayerInfo[playerid][pLevel] >= 2) {
    	ShowListBCForPlayer(playerid);
    }else SendClientMessageEx(playerid, COLOR_GREY, "   Ban can phai dat cap do 2 de su dung chuc nang nay.");
    return 1;
}

CMD:bc(playerid, params[]) {
    if(PlayerBC[playerid][pBC_ID] == -1 || PlayerBC[playerid][pBC_Slot] == -1) return SendClientMessage(playerid, -1, "Ban chua tham gia phong bai cao nao het.");
    if(isnull(params)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: (/bc) [chat]");
	new text[1280];
	format(text, sizeof(text), ">[#%d-S%d] {00cc99}%s{FFFFFF} %s.", PlayerBC[playerid][pBC_ID], PlayerBC[playerid][pBC_Slot], GetPlayerNameEx(playerid), params);
	MsgBC(PlayerBC[playerid][pBC_ID], -1, text);
	return 1;
}

CMD:editbaicao(playerid, params[]) {
    new phong, amount;
    if(PlayerInfo[playerid][pAdmin] > 1337) {
		if(sscanf(params, "dd", phong, amount)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /editbaicao [phong] [Gia tien]");
		if(phong > 0 && phong < MAX_BAICAO) {
		    new mess[255];
		    format(mess, sizeof(mess), "Administrator {00cc99}%s{FFFFFF} da dieu chinh gia tien cho phong [BC: %d] thanh %s$ (Mode : %s).", GetPlayerNameEx(playerid), phong, number_format(amount), GetModePhongDialog(amount));
		    ABroadCast(-1 , mess, 2);

		    MsgBC(phong, -1, mess);
		    BCInfo[phong][bc_Money] = amount;
		    UpdateMoney(phong);
		    return 1;
	    }else SendClientMessageEx(playerid, COLOR_GREY, "[#] Phong ban chon edit hien khong ton tai trong may chu.");
    }else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the su dung lenh nay.");
	return 1;
}
