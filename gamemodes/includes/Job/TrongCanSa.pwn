#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//
#define                 DIALOG_INFOCANSA                  (8155)
#define                 DIALOG_CREATECANSA                (8156)
#define                 DIALOG_VITRI_CANSA                (8157)

new SlotCS[MAX_PLAYERS];
new IdCheckpoint[MAX_PLAYERS];

CMD:xemcansa(playerid, params[]){
    ShowInfoCS(playerid);
	return 1;
}

CMD:trongcansa(playerid, params[]){
    ShowInfoCS(playerid);
	return 1;
}

stock ShowInfoCS(playerid)
{
    new str[2460], strs[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];
    format(strs, sizeof(str), "SLOT\tTinh trang\tThoi gian\tTien trinh");
    format(str1, sizeof(str), "1.\t%s\t%d phut\t%s", TinhTrangCS(PlayerInfo[playerid][pIDCS][0]), PlayerInfo[playerid][pTimeCS][0], TienTrinhCS(PlayerInfo[playerid][pTimeCS][0]));
    format(str2, sizeof(str), "2.\t%s\t%d phut\t%s", TinhTrangCS(PlayerInfo[playerid][pIDCS][1]), PlayerInfo[playerid][pTimeCS][1], TienTrinhCS(PlayerInfo[playerid][pTimeCS][1]));
    format(str3, sizeof(str), "3.\t%s\t%d phut\t%s", TinhTrangCS(PlayerInfo[playerid][pIDCS][2]), PlayerInfo[playerid][pTimeCS][2], TienTrinhCS(PlayerInfo[playerid][pTimeCS][2]));
    format(str4, sizeof(str), "4.\t%s\t%d phut\t%s", TinhTrangCS(PlayerInfo[playerid][pIDCS][3]), PlayerInfo[playerid][pTimeCS][3], TienTrinhCS(PlayerInfo[playerid][pTimeCS][3]));
    format(str5, sizeof(str), "5.\t%s\t%d phut\t%s", TinhTrangCS(PlayerInfo[playerid][pIDCS][4]), PlayerInfo[playerid][pTimeCS][4], TienTrinhCS(PlayerInfo[playerid][pTimeCS][4]));
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s", strs,str1,str2,str3,str4,str5);
    format(name, sizeof(name), "Thong tin can sa cua ban");
	ShowPlayerDialog(playerid, DIALOG_INFOCANSA, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Dong y", "Huy bo");
}

stock TinhTrangCS(id){
	new name[1280];
	switch(id){
		case 0: name = "Chua trong can sa";
		case 1: name = "Da trong can sa";
	}
	return name;
}

stock TienTrinhCS(id){
	new name[1280];
	switch(id){
		case 0..10: name = "Rat Lau";
		case 11..20: name = "Lau";
		case 21..30: name = "Trung binh";
		case 31..40: name = "Sap";
		case 41..50: name = "Gan";
		case 51..59: name = "Chung bi";
		case 60: name = "Co the thu hoach";
	}
	return name;
}

stock CreateCanSa(playerid, idcs){
    new Float:x, Float:y, Float:z;
	GetPlayerPos(playerid, x, y, z);
	if(PlayerInfo[playerid][pInt] != 0) {
	    SendClientMessage(playerid, COLOR_GREEN, "Ban dang o ben trong noi that, khong the trong can sa trong nay duoc.");
		return 1;
	}
    if(PlayerInfo[playerid][pIDCS][idcs] == 0){

        PlayerInfo[playerid][PosX_CS][idcs] = x;
        PlayerInfo[playerid][PosY_CS][idcs] = y;
        PlayerInfo[playerid][PosZ_CS][idcs] = z;
        
        PlayerInfo[playerid][pIDCS][idcs] = 1;
        PlayerInfo[playerid][pTimeCS][idcs] = 0;
        
        new szLabel[1280];
        //--------------
        PlayerInfo[playerid][pObjectCS][idcs] = CreateDynamicObject(19473 , PlayerInfo[playerid][PosX_CS][idcs], PlayerInfo[playerid][PosY_CS][idcs], PlayerInfo[playerid][PosZ_CS][idcs]-1.12, 0, 0, 0, -1, .streamdistance = 100);
		format(szLabel, sizeof(szLabel), "{006600}CAY CAN SA{ffffff}\nSo huu: %s (ID: %d)\nTien trinh: %s", GetPlayerNameEx(playerid), playerid, TienTrinhCS(PlayerInfo[playerid][pTimeCS][idcs]));
		PlayerInfo[playerid][TextCS][idcs] = CreateDynamic3DTextLabel(szLabel, -1, PlayerInfo[playerid][PosX_CS][idcs], PlayerInfo[playerid][PosY_CS][idcs], PlayerInfo[playerid][PosZ_CS][idcs], 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
        //--------------
        SendClientMessage(playerid, COLOR_GREEN, "Ban da trong thanh cong mot cay can sa (/trongcansa) de xem thong tin chi tiet.");
        
        g_mysql_SaveAccount(playerid);
	}
	return 1;
}

//-----------------------------------------------------------------------------
hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_INFOCANSA && response == 1){
        if(PlayerInfo[playerid][pIDCS][listitem] == 0){
            SlotCS[playerid] = listitem;
            DKCreateCanSa(playerid);
        }
        else {
	 		InfoCS(playerid, listitem);
	 		SlotCS[playerid] = -1;
		}
    }
    
    if(dialogid == DIALOG_CREATECANSA && response == 1){
        if(PlayerInfo[playerid][pHatCanSa] >= 15){
            if(PlayerInfo[playerid][pInt] > 0) {
                SendClientMessageEx(playerid, COLOR_GRAD1, "Ban hien tai khong the trong can sa o day duoc!");
		        return 1;
			}
            if(IsPlayerInRangeOfPoint(playerid, 50.0, -2186.0457,469.7959,35.1619))
		    {
		        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the trong can tai khu vuc VIP");
		        return 1;
			}
			if(IsPlayerInRangeOfPoint(playerid, 100.0, 407.1591,139.3457,995.0510))
			{
			    SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the trong can o ben trong ngan hang duoc!.");
			    return 1;
			}
			if(IsPlayerInRangeOfPoint(playerid, 30.0, -2237.3354,527.4569,37.3902))
		    {
		        SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong the trong can ngay tai khu cau ca duoc!.");
		        return 1;
			}
        	CreateCanSa(playerid, SlotCS[playerid]);
        	SlotCS[playerid] = -1;
        	
        	PlayerInfo[playerid][pHatCanSa] -= 15;
		}
        else SendClientMessage(playerid, COLOR_GREEN, "Ban khong du 15 hat can sa de trong can sa.");
    }
    
    if(dialogid == DIALOG_VITRI_CANSA && response == 1){
	    SetPlayerCheckpoint(playerid, PlayerInfo[playerid][PosX_CS][IdCheckpoint[playerid]], PlayerInfo[playerid][PosY_CS][IdCheckpoint[playerid]], PlayerInfo[playerid][PosZ_CS][IdCheckpoint[playerid]], 3.0);
		CP[playerid] = 252000;
    }
	return 1;
}
//-----------------------------------------------------------------------------

stock DKCreateCanSa(playerid){
    new zone[1280];
	GetPlayer3DZone(playerid, zone, MAX_ZONE_NAME);
				
    new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], name[1280];
    format(str2, sizeof(str), "{ffffff}--------------------------------------------");
    format(str3, sizeof(str), "{ffffff}Neu ban muon trong can sa ngay tai vi tri (%s) , ban can phai biet nhung dieu kien sau:", zone);
    format(str4, sizeof(str), "{ffffff} -> Ban can phai co toi thieu {ff0000}15 hat can sa{FFFFFF} , hien tai ban dang co %d hat can sa.", PlayerInfo[playerid][pHatCanSa]);
    format(str5, sizeof(str), "{ffffff} -> Thoi gian thu hoach can sa bat dau tu luc trong se la {FF0000}60 phut.");
    format(str6, sizeof(str), "{ffffff} -> Neu ban da chac chan muon trong can sa vui long nhan 'Trong ngay' de bat dau qua trinh trong can sa.");
    format(str7, sizeof(str), "{ffffff} -> Ban vui long trong o nhung noi kin dao , neu bi canh sat phat hien cay can sa cua ban co the se bi tich thu va pha huy.");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6,str7);
    format(name, sizeof(name), "HUONG DAN TRONG CAN SA");
	ShowPlayerDialog(playerid, DIALOG_CREATECANSA, DIALOG_STYLE_MSGBOX, name, str, "Trong ngay", "Huy Bo");
}

//-----------------------------------------------------------------------------

stock InfoCS(playerid, idcs){
    new zone[MAX_ZONE_NAME];
	Get3DZone(PlayerInfo[playerid][PosX_CS][idcs], PlayerInfo[playerid][PosY_CS][idcs], PlayerInfo[playerid][PosZ_CS][idcs], zone, sizeof(zone));
    IdCheckpoint[playerid] = idcs;
    new namecs[1280];
    if(PlayerInfo[playerid][pTimeCS][idcs] != 60){
        format(namecs, sizeof(namecs), "Thoi gian con lai : %d phut", 60 - PlayerInfo[playerid][pTimeCS][idcs]);
    }
    else{
        namecs = "Co the thu hoach";
    }
	if(PlayerInfo[playerid][pIDCS][idcs] != 0){
	    new str[2460], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], name[1280];
	    format(str2, sizeof(str), "{ffffff}--------------------------------------------");
	    format(str3, sizeof(str), "{ffffff} -> Can sa nay cua ban da duoc trong.");
	    format(str4, sizeof(str), "{ffffff} -> Vi tri : %s.", zone);
	    format(str5, sizeof(str), "{ffffff} -> %s.", namecs);
	    format(str6, sizeof(str), "{ffffff} -> Ban co the thu hoach can sa khi tinh trang no thong bao co the thu hoach.");
	    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5,str6);
	    format(name, sizeof(name), "THONG TIN CAN SA");
		ShowPlayerDialog(playerid, DIALOG_VITRI_CANSA, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	}
}

//-----------------------------------------------------------------------------

stock LoadCanSaConnect(playerid){
	for(new i = 0; i < 5; i++){
		if(PlayerInfo[playerid][pIDCS][i] == 1){
		    CheckCanSaLoad(playerid, i);
		}
	}
	return 1;
}

stock CheckCanSaLoad(playerid, idcs){
    new szLabel[1280];
    if(PlayerInfo[playerid][PosX_CS][idcs] != 0 && PlayerInfo[playerid][PosY_CS][idcs] != 0 && PlayerInfo[playerid][PosZ_CS][idcs] != 0){
	    PlayerInfo[playerid][pObjectCS][idcs] = CreateDynamicObject(19473 , PlayerInfo[playerid][PosX_CS][idcs], PlayerInfo[playerid][PosY_CS][idcs], PlayerInfo[playerid][PosZ_CS][idcs]-1.12, 0, 0, 0, -1, .streamdistance = 100);
		format(szLabel, sizeof(szLabel), "{006600}CAY CAN SA{ffffff}\nSo huu: %s (ID: %d)\nTien trinh: %s", GetPlayerNameEx(playerid), playerid, TienTrinhCS(PlayerInfo[playerid][pTimeCS][idcs]));
		PlayerInfo[playerid][TextCS][idcs] = CreateDynamic3DTextLabel(szLabel, -1, PlayerInfo[playerid][PosX_CS][idcs], PlayerInfo[playerid][PosY_CS][idcs], PlayerInfo[playerid][PosZ_CS][idcs], 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
    }
	return 1;
}

stock DestroyCanSa(playerid){
    for(new idcs = 0; idcs < 5; idcs++){
		if(PlayerInfo[playerid][pIDCS][idcs] == 1){
		    DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][idcs]);
			DestroyDynamicObject(PlayerInfo[playerid][pObjectCS][idcs]);
		}
	}
}

hook OnPlayerDisconnect(playerid, reason){
    DestroyCanSa(playerid);
	return 1;
}

//-----------------------------------------------------------------------------
stock DKUpdateTime(playerid){
	for(new i = 0; i < 5; i++){
		if(PlayerInfo[playerid][pIDCS][i] == 1){
		    if(PlayerInfo[playerid][pTimeCS][i] != 60){
		        PlayerInfo[playerid][pTimeCS][i] += 1;
		        DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][i]);
		        new szLabel[1280];
		        format(szLabel, sizeof(szLabel), "{006600}CAY CAN SA{ffffff}\nSo huu: %s (ID: %d)\nTien trinh: %s", GetPlayerNameEx(playerid), playerid, TienTrinhCS(PlayerInfo[playerid][pTimeCS][i]));
				PlayerInfo[playerid][TextCS][i] = CreateDynamic3DTextLabel(szLabel, -1, PlayerInfo[playerid][PosX_CS][i], PlayerInfo[playerid][PosY_CS][i], PlayerInfo[playerid][PosZ_CS][i], 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
   			}
		}
	}
}

task UpdateTimeCS[60000](){
	foreach(new playerid: Player){
	    DKUpdateTime(playerid);
	}
}
//-----------------------------------------------------------------------------
CMD:thuhoach(playerid, params[]){
    DKThuHoach(playerid);
	return 1;
}

stock DKThuHoach(playerid){
    if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[playerid][PosX_CS][0], PlayerInfo[playerid][PosY_CS][0], PlayerInfo[playerid][PosZ_CS][0])){
        if(PlayerInfo[playerid][pTimeCS][0] == 60){
        
	        DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][0]);
			DestroyDynamicObject(PlayerInfo[playerid][pObjectCS][0]);
			
			PlayerInfo[playerid][pIDCS][0] = 0;
			PlayerInfo[playerid][pTimeCS][0] = 0;
			
			new rand = 5000+random(5000);
			PlayerInfo[playerid][pCash] += rand;
			
            new szLabel[1280];
		    format(szLabel, sizeof(szLabel), "Ban da thu hoach can sa ma ban da trong thanh cong va nhan duoc %s$", number_format(rand));
			SendClientMessageEx(playerid, COLOR_GREEN, szLabel);

			PlayerInfo[playerid][PosX_CS][0] = 0;
	        PlayerInfo[playerid][PosY_CS][0] = 0;
	        PlayerInfo[playerid][PosZ_CS][0] = 0;

			g_mysql_SaveAccount(playerid);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Hien tai chua du thoi gian de thu hoach.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[playerid][PosX_CS][1], PlayerInfo[playerid][PosY_CS][1], PlayerInfo[playerid][PosZ_CS][1])){
        if(PlayerInfo[playerid][pTimeCS][1] == 60){
        
	        DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][1]);
			DestroyDynamicObject(PlayerInfo[playerid][pObjectCS][1]);
			
			PlayerInfo[playerid][pIDCS][1] = 0;
			PlayerInfo[playerid][pTimeCS][1] = 0;
			
			new rand = 5000+random(5000);
			PlayerInfo[playerid][pCash] += rand;
			
            new szLabel[1280];
		    format(szLabel, sizeof(szLabel), "Ban da thu hoach can sa ma ban da trong thanh cong va nhan duoc %s$", number_format(rand));
			SendClientMessageEx(playerid, COLOR_GREEN, szLabel);

			PlayerInfo[playerid][PosX_CS][1] = 0;
	        PlayerInfo[playerid][PosY_CS][1] = 0;
	        PlayerInfo[playerid][PosZ_CS][1] = 0;

			g_mysql_SaveAccount(playerid);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Hien tai chua du thoi gian de thu hoach.");
    }
	else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[playerid][PosX_CS][2], PlayerInfo[playerid][PosY_CS][2], PlayerInfo[playerid][PosZ_CS][2])){
        if(PlayerInfo[playerid][pTimeCS][2] == 60){
        
	        DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][2]);
			DestroyDynamicObject(PlayerInfo[playerid][pObjectCS][2]);
			
			PlayerInfo[playerid][pIDCS][2] = 0;
			PlayerInfo[playerid][pTimeCS][2] = 0;
			
			new rand = 5000+random(5000);
			PlayerInfo[playerid][pCash] += rand;
			
            new szLabel[1280];
		    format(szLabel, sizeof(szLabel), "Ban da thu hoach can sa ma ban da trong thanh cong va nhan duoc %s$", number_format(rand));
			SendClientMessageEx(playerid, COLOR_GREEN, szLabel);

			PlayerInfo[playerid][PosX_CS][2] = 0;
	        PlayerInfo[playerid][PosY_CS][2] = 0;
	        PlayerInfo[playerid][PosZ_CS][2] = 0;

			g_mysql_SaveAccount(playerid);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Hien tai chua du thoi gian de thu hoach.");
    }
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[playerid][PosX_CS][3], PlayerInfo[playerid][PosY_CS][3], PlayerInfo[playerid][PosZ_CS][3])){
        if(PlayerInfo[playerid][pTimeCS][3] == 60){
        
	        DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][3]);
			DestroyDynamicObject(PlayerInfo[playerid][pObjectCS][3]);
			
			PlayerInfo[playerid][pIDCS][3] = 0;
			PlayerInfo[playerid][pTimeCS][3] = 0;
			
			new rand = 5000+random(5000);
			PlayerInfo[playerid][pCash] += rand;
			
            new szLabel[1280];
		    format(szLabel, sizeof(szLabel), "Ban da thu hoach can sa ma ban da trong thanh cong va nhan duoc %s$", number_format(rand));
			SendClientMessageEx(playerid, COLOR_GREEN, szLabel);

			PlayerInfo[playerid][PosX_CS][3] = 0;
	        PlayerInfo[playerid][PosY_CS][3] = 0;
	        PlayerInfo[playerid][PosZ_CS][3] = 0;

			g_mysql_SaveAccount(playerid);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Hien tai chua du thoi gian de thu hoach.");
    }
    
    else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[playerid][PosX_CS][4], PlayerInfo[playerid][PosY_CS][4], PlayerInfo[playerid][PosZ_CS][4])){
        if(PlayerInfo[playerid][pTimeCS][4] == 60){
        
	        DestroyDynamic3DTextLabel(PlayerInfo[playerid][TextCS][4]);
			DestroyDynamicObject(PlayerInfo[playerid][pObjectCS][4]);
			
			PlayerInfo[playerid][pIDCS][4] = 0;
			PlayerInfo[playerid][pTimeCS][4] = 0;
			
			new rand = 5000+random(5000);
			PlayerInfo[playerid][pCash] += rand;
			
            new szLabel[1280];
		    format(szLabel, sizeof(szLabel), "Ban da thu hoach can sa ma ban da trong thanh cong va nhan duoc %s$", number_format(rand));
			SendClientMessageEx(playerid, COLOR_GREEN, szLabel);

			PlayerInfo[playerid][PosX_CS][4] = 0;
	        PlayerInfo[playerid][PosY_CS][4] = 0;
	        PlayerInfo[playerid][PosZ_CS][4] = 0;

			g_mysql_SaveAccount(playerid);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Hien tai chua du thoi gian de thu hoach.");
    }
    
    else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong dung o noi trong can sa cua ban.");
	return 1;
}

//--------

CMD:tichthucansa(playerid, params[]){
	new giveplayerid;
	new iGroupID = PlayerInfo[playerid][pMember];
	if(IsACop(playerid)){
	    if(sscanf(params, "u", giveplayerid))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /tichthucansa [ID]");
			return 1;
		}
		if((IsPlayerConnected(giveplayerid)) && giveplayerid != INVALID_PLAYER_ID){
		    if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][0], PlayerInfo[giveplayerid][PosY_CS][0], PlayerInfo[giveplayerid][PosZ_CS][0]) || IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][1], PlayerInfo[giveplayerid][PosY_CS][1], PlayerInfo[giveplayerid][PosZ_CS][1])
			|| IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][2], PlayerInfo[giveplayerid][PosY_CS][2], PlayerInfo[giveplayerid][PosZ_CS][2]) || IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][3], PlayerInfo[giveplayerid][PosY_CS][3], PlayerInfo[giveplayerid][PosZ_CS][3])
			|| IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][4], PlayerInfo[giveplayerid][PosY_CS][4], PlayerInfo[giveplayerid][PosZ_CS][4]))
		    {
			    if(GetPVarInt(playerid, "Injured") != 0) return SendClientMessageEx (playerid, COLOR_GRAD2, "Ban khong the lam dieu nay vao luc nay.");

	            new thongbao[1280];
			    format(thongbao, sizeof(thongbao), "%s xin thong bao , cay can sa cua ban da bi tich thu boi %s", arrGroupData[iGroupID][g_szGroupName], GetPlayerNameEx(playerid));
			    SendClientMessageEx(giveplayerid, arrGroupData[iGroupID][g_hRadioColour] * 256 + 255, thongbao);
			    SendClientMessageEx(giveplayerid, arrGroupData[iGroupID][g_hRadioColour] * 256 + 255, "Ban hien dang duoc tru so canh sat dieu tra.");
			    
			    new stringcc[1280];
		        new zone[MAX_ZONE_NAME];
				GetPlayer3DZone(playerid, zone, sizeof(zone));
			    format(stringcc, sizeof(stringcc), "Chien si (%s) da tich thu cay can sa cua doi tuong (%s) tai vi tri (%s) thanh cong.", GetPlayerNameEx(playerid), GetPlayerNameEx(giveplayerid), zone);
				SendGroupMessage(1, DEPTRADIO, stringcc);

			    if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][0], PlayerInfo[giveplayerid][PosY_CS][0], PlayerInfo[giveplayerid][PosZ_CS][0]))
			    	DestroyCanSaCop(giveplayerid, 0);
				else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][1], PlayerInfo[giveplayerid][PosY_CS][1], PlayerInfo[giveplayerid][PosZ_CS][1]))
				    DestroyCanSaCop(giveplayerid, 1);
				else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][2], PlayerInfo[giveplayerid][PosY_CS][2], PlayerInfo[giveplayerid][PosZ_CS][2]))
				    DestroyCanSaCop(giveplayerid, 2);
				else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][3], PlayerInfo[giveplayerid][PosY_CS][3], PlayerInfo[giveplayerid][PosZ_CS][3]))
				    DestroyCanSaCop(giveplayerid, 3);
				else if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerInfo[giveplayerid][PosX_CS][4], PlayerInfo[giveplayerid][PosY_CS][4], PlayerInfo[giveplayerid][PosZ_CS][4]))
				    DestroyCanSaCop(giveplayerid, 4);
			}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong o gan cay can sa nao de tich thu het.");
		}
	}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban khong phai la nguoi cua chinh phu.");
	return 1;
}

stock DestroyCanSaCop(giveplayerid, idcs){
    new zone[MAX_ZONE_NAME];
	Get3DZone(PlayerInfo[giveplayerid][PosX_CS][idcs], PlayerInfo[giveplayerid][PosY_CS][idcs], PlayerInfo[giveplayerid][PosZ_CS][idcs], zone, sizeof(zone));

    DestroyDynamic3DTextLabel(PlayerInfo[giveplayerid][TextCS][idcs]);
	DestroyDynamicObject(PlayerInfo[giveplayerid][pObjectCS][idcs]);

	PlayerInfo[giveplayerid][pIDCS][idcs] = 0;
	PlayerInfo[giveplayerid][pTimeCS][idcs] = 0;

	PlayerInfo[giveplayerid][PosX_CS][idcs] = 0;
    PlayerInfo[giveplayerid][PosY_CS][idcs] = 0;
    PlayerInfo[giveplayerid][PosZ_CS][idcs] = 0;

	g_mysql_SaveAccount(giveplayerid);
	return 1;
}
