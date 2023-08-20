#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

#define 			JOB_GiaoVatLieu  			(6306)
#define     		LOG_LIMIT     			5

new JobGiaoVatLieuID = 25;
new Text3D:TextVatLieu;
new SoLuongVatLieu = 100;
new GiaLayVatLieu = 4740;
new GiaThueXe = 20000;
new SoLanLayVatLieu[MAX_PLAYERS];

new ThueXeJob[MAX_PLAYERS];
new CarVatLieu[MAX_PLAYERS];
new Text3D:VatLieuCarText[MAX_PLAYERS];
new VatLieuString[1280];

new
	LogObjects[MAX_VEHICLES][LOG_LIMIT];
	
new
	Float: LogAttachOffsets[LOG_LIMIT][4] = {
	    {-0.400000, -0.900000, 0.100000, 0.000000},
		{0.399999, -0.900000, 0.100000, 0.000000},
		{-0.400000, -1.700000, 0.000000, 0.000000},
		{0.399999, -1.700000, 0.000000, 0.000000},
		{0.000000, -1.700000, 0.599999, 0.000000}
};

stock ShowJOB_GiaoVatLieu(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	}
	if(PlayerInfo[playerid][pLevel] >= 3) {
		new name[15000];
		if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID){
			format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} Thue phuong tien van chuyen (%s$)\n{ffff00}=>{FFFFFF} Tra phuong tien thue.", number_format(GiaThueXe));
		}else {
			format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
		}
		ShowPlayerDialog(playerid, JOB_GiaoVatLieu, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban can phai dat cap do 3 de lam cong viec nay.");
	return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_CTRL_BACK)){
		if(GetPVarInt(playerid, "DaLayVatLieu") == 1) {
			if(IsPlayerInRangeOfPoint(playerid, 3.0, -520.4105,-538.9203,25.5234) || IsPlayerInRangeOfPoint(playerid, 3.0, -529.6400,-539.0170,25.5234)) {
			    if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
			    	if(SoLanLayVatLieu[playerid] == 0) {
			    		return 1;
			    	}
					new vatlieu = 100 + random(100);
					PlayerInfo[playerid][pMats] += vatlieu;

					new rand = random(100);
		        	if(rand >= 0 && rand <= 30) {
			        	PlayerInfo[playerid][pXP] += 10;
			        }

					new thongbao[1280];
					format(thongbao, sizeof(thongbao), "Ban da chat thung hang vat lieu vao kho thanh cong va nhan duoc (%s vat lieu)", number_format(vatlieu));
					SendClientMessage(playerid, COLOR_YELLOW, thongbao);

					if(SoLanLayVatLieu[playerid] > 0) SoLanLayVatLieu[playerid] -= 1;

					SetPVarInt(playerid, "DaLayVatLieu", 0);
			    	Player_RemoveLog(playerid);
					return 1;
				}else return SendClientMessageEx(playerid, COLOR_GREY, "Ban can phai xuong phunog tien va lay thung hang va chat len phuong tien.");
			}
		}
	}
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[6])) return ShowJOB_GiaoVatLieu(playerid);

		if(IsPlayerInRangeOfPoint(playerid, 3.0, 2527.1392,-1709.0247,13.4526)) {
		    new robhour;
            gettime(robhour);
            robhour = shifthour;
            if(robhour >= 23)
            {
	 	        SendClientMessage(playerid, COLOR_GREY, "Hien tai 23h , cong viec giao vat lieu da ngung hay doi den ngay mai de tiep tuc cong viec.");
       			return 1;
	 	    }
			cmd_layvatlieuxxxss(playerid, "");
		}

		if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID) {
			new id = GetNearestVehicle(playerid);
			if(GetVehicleModel(id) == 422) {
			    SendClientMessage(playerid, 0x3498DBFF, "Ban vui long su dung (/hang) de biet su dung.");
			}
		}
	}
	return 1;
}

CMD:hang(playerid, params[]) {
    if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID) {
		new id = GetNearestVehicle(playerid);
		new choice[32];
		if(IsPlayerInAnyVehicle(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "[VEHICLE] Ban khong the lam dieu nay khi dang o trong phuong tien.");
		else if(GetPVarInt(playerid, "IsInArena") >= 0) return SendClientMessageEx(playerid, COLOR_WHITE, "[VEHICLE] Ban khong the lam dieu nay bay gio, ban dang ben trong Arena.");
		else if(GetPVarInt( playerid, "EventToken") != 0) return SendClientMessageEx(playerid, COLOR_GREY, "[VEHICLE] Ban khong the lam dieu nay khi dang o trong su kien.");
		if(IsPlayerInRangeOfVehicle(playerid, CarVatLieu[playerid], 5))
		{
			if(sscanf(params, "s[32]", choice)) {
		        SendClientMessageEx(playerid, COLOR_GRAD2, "[USE] /hang (lay, cat).");
		        return 1;
		    }
			if(strcmp(choice, "lay", true) == 0) 
			{
				if(Vehicle_LogCount(id) > 0){
					for(new i = (LOG_LIMIT - 1); i >= 0; i--)
					{
					    if(IsValidDynamicObject(LogObjects[id][i]))
					    {
					        DestroyDynamicObject(LogObjects[id][i]);
					        LogObjects[id][i] = -1;
							break;
					    }
					}
					SetPVarInt(playerid, "DaLayVatLieu", 1);
					Player_GiveLog(playerid);
				    SendClientMessage(playerid, 0x3498DBFF, "Ban da lay mot thung hang vat lieu khoi phuong tien thanh cong.");
				}
		    }
		    if(strcmp(choice, "cat", true) == 0) {
				if(GetPVarInt(playerid, "DaLayVatLieu") == 1) {
					if(Vehicle_LogCount(id) != LOG_LIMIT) {
				    	for(new i; i < 3; i++)
				    	{
				    	    if(!IsValidDynamicObject(LogObjects[id][i]))
				    	    {
				    	        LogObjects[id][i] = CreateDynamicObject(1271, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
				    			AttachDynamicObjectToVehicle(LogObjects[id][i], id, LogAttachOffsets[i][0], LogAttachOffsets[i][1], LogAttachOffsets[i][2], 0.0, 0.0, LogAttachOffsets[i][3]);
				    			break;
				    	    }
						}
						SetPVarInt(playerid, "DaLayVatLieu", 0);
				    	Player_RemoveLog(playerid);
				    	SendClientMessage(playerid, 0x3498DBFF, "Ban da chat mot thung vat lieu len phuong tien thanh cong (/giaovatlieu) de giao hang.");
					}
				}
		    }
		}
	}
	return 1;
}

Player_RemoveLog(playerid)
{
	RemovePlayerAttachedObject(playerid, 9);
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
	return 1;
}

Player_GiveLog(playerid)
{
    if(!IsPlayerConnected(playerid)) return 0;
	SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
	SetPlayerAttachedObject(playerid, 9, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
	return 1;
}

Vehicle_LogCount(vehicleid)
{
	if(GetVehicleModel(vehicleid) == 0) return 0;
	new count;
	for(new i; i < LOG_LIMIT; i++) if(IsValidDynamicObject(LogObjects[vehicleid][i])) count++;
	return count;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == JOB_GiaoVatLieu && response == 1) {
		if(listitem == 0) {

		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobGiaoVatLieuID;
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
					PlayerInfo[playerid][pJob] = JobGiaoVatLieuID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobGiaoVatLieuID;
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
			ThuePhuongTien(playerid);
		}

		if(listitem == 4) {
			TraPhuongTien(playerid);
		}
	}
	return 1;
}

stock LoadVatLieu() {
	new soluong[1280];
	format(soluong, sizeof(soluong), "{009999}Material{FFFFFF}\nHien con : {00e600}%d thung\n{FFFFFF}Gia hien tai : {004d00}%s$ / 1 thung{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de lay vat lieu", SoLuongVatLieu, number_format(GiaLayVatLieu));
	TextVatLieu = CreateDynamic3DTextLabel(soluong,-1, 2527.1392,-1709.0247,13.4526,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
    CreateDynamicPickup(1271, 23, 2527.1392,-1709.0247,13.4526);

    CreateDynamic3DTextLabel("{009999}Material{FFFFFF}\nKhu vuc giao vat lieu (1)\n\nSu dung {ffff00}H{FFFFFF} de chat hang vao kho",-1, -520.4105,-538.9203,25.5234,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
    CreateDynamicPickup(1271, 23, -520.4105,-538.9203,25.5234);

    CreateDynamic3DTextLabel("{009999}Material{FFFFFF}\nKhu vuc giao vat lieu (2)\n\nSu dung {ffff00}H{FFFFFF} de chat hang vao kho",-1, -529.6400,-539.0170,25.5234,30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
    CreateDynamicPickup(1271, 23, -529.6400,-539.0170,25.5234);
	return 1;
}

CMD:giaovatlieu(playerid) {
	if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID) {
		PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
		SetPlayerCheckpoint(playerid, -529.6400,-539.0170,25.5234, 3.0);
	    CP[playerid] = 252000;
	    SendClientMessage(playerid, COLOR_YELLOW, "Vi tri giao vat lieu, da duoc danh dau hay giao hang den do.");
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec nay, khong the giao vat lieu ngay bay gio!");
	return 1;
}

CMD:layvatlieuxxxss(playerid, params[]) {
	if(SoLanLayVatLieu[playerid] == 3) {
		SendClientMessage(playerid, COLOR_YELLOW, "So lan lay da dat toi da 3/3 , vui long (/giaovatlieu) de giao truoc khi tiep tuc.");
		return 1;
	}
	if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID) {
		if(PlayerInfo[playerid][pCash] >= GiaLayVatLieu) {
			if(SoLuongVatLieu > 0) {
				if(GetPVarInt(playerid, "DaLayVatLieu") == 0) {
					PlayerInfo[playerid][pCash] -= GiaLayVatLieu;

					SetPVarInt(playerid, "DaLayVatLieu", 1);

					SoLuongVatLieu -= 1;

					SoLanLayVatLieu[playerid] += 1;

					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
					SetPlayerAttachedObject(playerid, 9, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);

					new thongbao[1280];
					format(thongbao, sizeof(thongbao), "Ban da lay thanh cong 1 thung vat lieu voi gia %s , hay chat thung hang len phuong tien cua ban.", number_format(GiaLayVatLieu));
					SendClientMessage(playerid, COLOR_YELLOW, thongbao);

					new soluong[1280];
					format(soluong, sizeof(soluong), "{009999}Material{FFFFFF}\nHien con : {00e600}%d thung\n{FFFFFF}Gia hien tai : {004d00}%s$ / 1 thung{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de lay vat lieu", SoLuongVatLieu, number_format(GiaLayVatLieu));
					UpdateDynamic3DTextLabelText(TextVatLieu, -1, soluong);
					return 1;
				}else return SendClientMessage(playerid, COLOR_YELLOW, "Ban da lay 1 thung vat lieu roi , hay chat no len phuong tien (Y).");
			}else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai so luong thung vat lieu da het, ban vui long doi.");
		}else return SendClientMessage(playerid, COLOR_YELLOW, "Ban khong du $ de lay vat lieu.");
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec nay, khong the lay vat lieu ngay bay gio!");
	return 1;
}

stock ThuePhuongTien(playerid) {
	if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID) {
		if(ThueXeJob[playerid] == 0) {
			PlayerInfo[playerid][pCash] -= GiaThueXe;
			ThueXeJob[playerid] = 1;
			SendClientMessage(playerid, COLOR_YELLOW, "Ban da thue thanh cong phuong tien #Bobcat.");

			CarVatLieu[playerid] = CreateVehicle(422, 2521.8921,-1715.7101,13.5470,180.1804 , random(255), random(255), 1000, 0);
			PutPlayerInVehicle(playerid, CarVatLieu[playerid] ,0);

			format(VatLieuString, sizeof VatLieuString, "Phuong tien cua {4d79ff}%s{FFFFFF}", GetPlayerNameEx(playerid));
			VatLieuCarText[playerid] = Create3DTextLabel(VatLieuString, COLOR_WHITE, 0.0, 0.0, 0.0, 50.0, 0, 1);
			Attach3DTextLabelToVehicle(VatLieuCarText[playerid], CarVatLieu[playerid], 0.0, 0.0, 0.0);

			return 1;
		}else SendClientMessage(playerid, COLOR_YELLOW, "Ban da thue phuong tien nay truoc do roi , khong the thue tiep tuc.");
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec nay, khong the thue phuong tien.");
	return 1;
}

hook OnPlayerDisconnect(playerid, reason){
	if(ThueXeJob[playerid] == 1) {
		DeleteObjectVehicle(CarVatLieu[playerid]);
		DestroyVehicle(CarVatLieu[playerid]);
		Delete3DTextLabel(VatLieuCarText[playerid]);
		ThueXeJob[playerid] = 0;
		return 1;
	}
	return 1;
}

stock TraPhuongTien(playerid) {
	if(PlayerInfo[playerid][pJob] == JobGiaoVatLieuID || PlayerInfo[playerid][pJob2] == JobGiaoVatLieuID) {
		if(ThueXeJob[playerid] == 1) {
			ThueXeJob[playerid] = 0;
			
			new cash = GiaThueXe / 2;
			PlayerInfo[playerid][pCash] += GiaThueXe - cash;
		    new id = CarVatLieu[playerid];
			if(Vehicle_LogCount(id) > 0){
				for(new i = (LOG_LIMIT - 1); i >= 0; i--)
				{
				    if(IsValidDynamicObject(LogObjects[id][i]))
				    {
				        DestroyDynamicObject(LogObjects[id][i]);
				        LogObjects[id][i] = -1;
						break;
				    }
				}
			}
			
			DestroyVehicle(CarVatLieu[playerid]);
			Delete3DTextLabel(VatLieuCarText[playerid]);

			new thongbao[1280];
			format(thongbao, sizeof(thongbao), "Ban nhan duoc %s$ tu viec tra phuong tien da thue truoc do", number_format(GiaThueXe - cash));
			SendClientMessage(playerid, COLOR_YELLOW, thongbao);
			return 1;
		}else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua thue phuong tien , nen khong the tra phuong tien.");
	}else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec nay, khong the tra phuong tien.");
	return 1;
}

stock GetNearestVehicle(playerid, Float:Distance = 3.0)
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
}

CMD:bugvatlieu(playerid, params[]) {
    SendClientMessage(playerid, COLOR_YELLOW, "Ban da reset object vat lieu tren toan bo phuong tien thanh cong.");
	for(new id = 0; id < MAX_VEHICLES; id++) {
        DeleteObjectVehicle(id);
	}
	return 1;
}

stock DeleteObjectVehicle(id) {
    if(Vehicle_LogCount(id) > 0){
		DestroyDynamicObject(LogObjects[id][0]);
        LogObjects[id][0] = -1;

        DestroyDynamicObject(LogObjects[id][1]);
        LogObjects[id][1] = -1;

        DestroyDynamicObject(LogObjects[id][2]);
        LogObjects[id][2] = -1;

        DestroyDynamicObject(LogObjects[id][3]);
        LogObjects[id][3] = -1;

        DestroyDynamicObject(LogObjects[id][4]);
        LogObjects[id][4] = -1;
	}
	return 1;
}

CMD:racobject(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 2) {
	   	new vehicleid;
		if(sscanf(params, "i", vehicleid)) return SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /racobject [ID Vehicle]");
		if(vehicleid != 0) {
	        DeleteObjectVehicle(vehicleid);
	        SendClientMessageEx(playerid, COLOR_GREY, "Ban da xoa object bi bug tren phuong tien nay thanh cong.");
	        return 1;
		}
	}else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong the su dung lenh nay.");
	return 1;
}

task UpdateGiaVatLieu[180000]() {
    new robhour;
    gettime(robhour);
    robhour = shifthour;
    if(robhour < 23) {
		new gia = 4000+random(740);
		GiaLayVatLieu = gia;

	    new soluong[1280];
		format(soluong, sizeof(soluong), "{009999}Material{FFFFFF}\nHien con : {00e600}%d thung\n{FFFFFF}Gia hien tai : {004d00}%s$ / 1 thung{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de lay vat lieu", SoLuongVatLieu, number_format(GiaLayVatLieu));
		UpdateDynamic3DTextLabelText(TextVatLieu, -1, soluong);
	}else {
        GiaLayVatLieu = 0;
        SoLuongVatLieu = 0;
	}
}

task ResetGiaoVatLieu[600000](){
    new robhour;
    gettime(robhour);
    robhour = shifthour;
    if(robhour < 23) {
	    SoLuongVatLieu = 100;

		new soluong[1280];
		format(soluong, sizeof(soluong), "{009999}Material{FFFFFF}\nHien con : {00e600}%d thung\n{FFFFFF}Gia hien tai : {004d00}%s$ / 1 thung{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de lay vat lieu", SoLuongVatLieu, number_format(GiaLayVatLieu));
		UpdateDynamic3DTextLabelText(TextVatLieu, -1, soluong);
	}else {
        GiaLayVatLieu = 0;
        SoLuongVatLieu = 0;
	}
}
