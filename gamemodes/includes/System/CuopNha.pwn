#include <a_samp>
#include <YSI\y_hooks>




#define             DIALOG_CUOPNHA                  (5940)

new KeyPasswordHouse[MAX_PLAYERS];
new SoLanBeKhoa[MAX_PLAYERS];

CMD:cuoptien(playerid, params[]) {
	if(PlayerInfo[playerid][pCuopNha] == 2) {
	    SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban da cuop tai san tu ngoi nha nay truoc do roi , khong the cuop tiep.");
		return 1;
	}
    if(PlayerInfo[playerid][pCuopNha] == 1) {
        if(IsPlayerInRangeOfPoint(playerid,50,HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hInteriorX], HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hInteriorY], HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hInteriorZ]))
		{
			PlayerInfo[playerid][pCuopNha] = 2;
			
			new thongbao[1280];
			SendClientMessageToAllEx(COLOR_LIGHTRED, "------------------------------------------------------------------------");
	        format(thongbao, sizeof(thongbao), "[CUOP NHA] Nguoi choi %s da thuc hien mot vu cuop tai san tu ngoi nha cua %s.", GetPlayerNameEx(playerid), StripUnderscore(HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hOwnerName]));
			SendClientMessageToAllEx(COLOR_LIGHTRED, thongbao);
			SendClientMessageToAllEx(COLOR_LIGHTRED, "------------------------------------------------------------------------");
			
			SendClientMessageEx(playerid, COLOR_YELLOW2, "Hien tai vi tri cuop cua ban da bi canh sat biet, va hien tai canh sat dang tren duong den.");

			HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hLock] = 1;
			
			PlayerInfo[playerid][pWantedLevel] += 2;
			RandomObjectCuopNha(playerid);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban can phai vao ben trong ngoi nha ban da be khoa truoc do.");
    }else SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban chua thuc hien vu cuop nha nao het.");
	return 1;
}

stock RandomObjectCuopNha(playerid) {
	TogglePlayerControllable(playerid, 1);
    ClearAnimations(playerid);

	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
	SetPlayerAttachedObject(playerid, 1, 19786, 1, 0.345, 0.488, 0.0, 88.7999, 85.9999, -88.3, 0.615, 1.0, 0.593999, 0xFF00FF00);

	SetPVarInt(playerid, "DangCamDoVat", 1);
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(GetPVarInt(playerid, "DangCamDoVat") == 1) {
			new id = GetNearestVehicle(playerid);
			if(GetVehicleModel(id) != 0) {
				SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban da chat vat pham tu vu cuop len phuong tien thanh cong, hay giao no den vi tri duoc danh dau.");
				RemovePlayerAttachedObject(playerid, 1);
				SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);

				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 1543.8186,16.4243,24.1406, 3.0);
				SetPVarInt(playerid, "GiaoDoVatCuop", 1);
				SetPVarInt(playerid, "DangCamDoVat", 0);
				return 1;
			} 
		}
	}
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid) {
	if(IsPlayerInRangeOfPoint(playerid, 3.0, 1543.8186,16.4243,24.1406) && GetPVarInt(playerid, "GiaoDoVatCuop") == 1) {
		new money = 200+random(300);
		new vatlieu = 100+random(100);

		PlayerInfo[playerid][pCash] += money;
		PlayerInfo[playerid][pMats] += vatlieu;
		
		new thongbao[1280];
		format(thongbao, sizeof(thongbao), "[CUOP NHA] Ban da thuc hien vu cuop thanh cong va lay di %s$ va %s vat lieu tu vu cuop.", number_format(money), number_format(vatlieu));
		SendClientMessageEx(playerid, COLOR_YELLOW2, thongbao);
		DisablePlayerCheckpoint(playerid);
		SetPVarInt(playerid, "GiaoDoVatCuop", 0);
		SetPVarInt(playerid, "DangCamDoVat", 0);
		return 1;
	}
	return 1;
}

CMD:cuopnha(playerid, params[]) {
	if(IsACop(playerid) || IsAMedic(playerid)) {
	    SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban hien dang la nhan vien canh sat, nen khong the thuc hien vu cuop.");
		return 1;
	}
	if(SoLanBeKhoa[playerid] == 3) {
	    SendClientMessageEx(playerid, COLOR_YELLOW2, "Do ban da be khoa nha that bai 3 lan, nen ban da bi gioi han cuop nha sau [1 gio].");
		return 1;
	}
	if(PlayerInfo[playerid][pCuopNha] == 0) {
		for(new i = 0; i < sizeof(HouseInfo); i++)
		{
			if(IsPlayerInRangeOfPoint(playerid,3,HouseInfo[i][hExteriorX], HouseInfo[i][hExteriorY], HouseInfo[i][hExteriorZ]))
			{
			    if(HouseInfo[i][hLock] == 1) { // NHA CO KHOA
			        SetPVarInt(playerid, "CuopNhaID", i);
			        
			        new pass1 = random(100);
			        new pass2 = random(100);
			        new pass3 = random(100);
			        
			        KeyPasswordHouse[playerid] = pass1 + pass2 + pass3;
			    
			        new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
				    format(str1, sizeof(str), "\\c {ff0000}LS-CITY.NET{ffffff}");
				    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
				    format(str4, sizeof(str), "\\c {ffff00}Ban da bat dau cuop ngoi nha thuoc so huu cua : {FF0000}%s.", StripUnderscore(HouseInfo[i][hOwnerName]));
				    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang nha : %s.", "Lock");
        			format(str6, sizeof(str), "{ffffff} -> Ma be khoa : {00ff00}%d + %d + %d{FFFFFF} = {FF0000}?.", pass1, pass2, pass3);
				    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
				    format(str9, sizeof(str), "Neu ban muon cuop ngoi nha nay, vui long nhap ma be khoa: ");
				    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
				    format(name, sizeof(name), "{00ff00}CUOP NHA{FFFFFF}");
					ShowPlayerDialog(playerid, DIALOG_CUOPNHA, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
					return 1;
			    }
			    else { // NHA KHONG CO KHOA
			        SendClientMessageEx(playerid, COLOR_YELLOW2, "[CUOP NHA] Hien tai ngoi nha nay da bi ai do cuop truoc do roi khong the cuop tiep tuc.");
			        return 1;
			    }
			}
		}
		SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban khong o gan mot ngoi nha nao het!");
	}else SendClientMessageEx(playerid, COLOR_YELLOW2, "Ban da cuop mot ngoi nha truoc do roi , vui long doi het thoi gian de cuop tiep.");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == DIALOG_CUOPNHA && response == 1) {
		 new password = strval(inputtext);
		 if(password > 0 && password < 400) {
		    if(password == KeyPasswordHouse[playerid]) {
		        HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hLock] = 0;
		        new thongbao[1280];
		        format(thongbao, sizeof(thongbao), "[CUOP NHA] Ban da be khoa ngoi nha cua %s thanh cong hay vao ben trong va su dung (/cuoptien).", StripUnderscore(HouseInfo[GetPVarInt(playerid, "CuopNhaID")][hOwnerName]));
		        SendClientMessageEx(playerid, COLOR_LIGHTRED, thongbao);
		        SendClientMessageEx(playerid, COLOR_YELLOW2, "Thong tin ban cuop nha da duoc truyen toi canh sat!.");
		        PlayerInfo[playerid][pCuopNha] = 1;
		        PlayerPlaySound(playerid, 1138, 0.0, 0.0, 0.0);
		        return 1;
		    }else {
		        SoLanBeKhoa[playerid] += 1;
		        new thongbao[1280];
		        format(thongbao, sizeof(thongbao), "[CUOP NHA] Ban da nhap sai ma be khoa nha , hien ban con %d / 3 lan be khoa nha.", SoLanBeKhoa[playerid]);
		        SendClientMessageEx(playerid, COLOR_YELLOW2, thongbao);
		        SendClientMessageEx(playerid, COLOR_YELLOW2, "Thong tin ban cuop nha da duoc truyen toi canh sat!.");
		        
		        if(SoLanBeKhoa[playerid] == 3) {
                    PlayerInfo[playerid][pCuopNha] = 2;
				}
				
				new string[1280];
				new zone[MAX_ZONE_NAME];
				GetPlayer3DZone(playerid, zone, sizeof(zone));
			    format(string, sizeof(string), "[CAMERA THANH PHO] Hien tai %s (%s), dang co gan be khoa mot ngoi nha tai vi tri vui long xu ly.", GetPlayerNameEx(playerid), zone);
	    		SendGroupMessage(1, DEPTRADIO, string);
				return 1;
		    }
		 }
		 else {
		    SoLanBeKhoa[playerid] += 1;
	        new thongbao[1280];
	        format(thongbao, sizeof(thongbao), "[CUOP NHA] Ban da nhap sai ma be khoa nha , hien ban con %d / 3 lan be khoa nha.", SoLanBeKhoa[playerid]);
	        SendClientMessageEx(playerid, COLOR_YELLOW2, thongbao);
	        SendClientMessageEx(playerid, COLOR_YELLOW2, "Thong tin ban cuop nha da duoc truyen toi canh sat!.");

	        if(SoLanBeKhoa[playerid] == 3) {
                PlayerInfo[playerid][pCuopNha] = 2;
			}
			
			new string[1280];
			new zone[MAX_ZONE_NAME];
			GetPlayer3DZone(playerid, zone, sizeof(zone));
		    format(string, sizeof(string), "[CAMERA THANH PHO] Hien tai %s (%s), dang co gan be khoa mot ngoi nha tai vi tri vui long xu ly.", GetPlayerNameEx(playerid), zone);
    		SendGroupMessage(1, DEPTRADIO, string);
			return 1;
		 }
	}
	return 1;
}

/*stock GetNearestVehicle(playerid, Float:Distance = 3.0)
{
	Distance = floatabs(Distance);
	if(!Distance) Distance = 3.0;
	new
		Float:pX,
		Float:pY,
		Float:pZ,
		Float:NearestPos = Distance,
		Float:NearestDist,
		NearestVeh = INVALID_VEHICLE_ID;

	GetPlayerPos(playerid, pX, pY, pZ);

	for(new i; i  <MAX_VEHICLES; i++)
	{
		if(!IsVehicleStreamedIn(i, playerid)) continue;
		NearestDist=GetVehicleDistanceFromPoint(i, pX, pY, pZ);
		if(NearestPos > NearestDist)
		{
			NearestPos = NearestDist;
			NearestVeh = i;
		}
	}
	return NearestVeh;
}*/
