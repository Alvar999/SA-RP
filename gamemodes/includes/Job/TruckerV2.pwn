#include <YSI\y_hooks>

#define 			JOB_Trucker  			(6308)
#define             DIALOG_LAYHANG_TRUCKER                  (6401)
#define             DIALOG_HANGHOPPHAP                      (6402)
#define             DIALOG_HANGBATHOPPHAP                	(6403)
#define             DIALOG_SLOTXEMHANG                		(6404)
#define             DIALOG_XEMHANG                          (6405)

new JobTruckerID = 20;

//--------------------------------

new AntiTruckTeleport[MAX_PLAYERS];

enum TruckerLoad{
	HangHoa[5],
};
new PlayerTruck[MAX_PLAYERS][TruckerLoad];

new TienTrucker[MAX_PLAYERS];
new LoaiHang[MAX_PLAYERS];

new VatLieuTrucker[MAX_PLAYERS];
new PotVatLieu[MAX_PLAYERS];
new CrackVatLieu[MAX_PLAYERS];
new PlayerWeapon[MAX_PLAYERS];
new KyNangTrucker[MAX_PLAYERS];

new TruckerCar[MAX_PLAYERS];
new Text3D:TruckerCarText[MAX_PLAYERS];
new TruckerString[1280];

new Float:GiaoTrucker[][3] = {
	// Checkpoins thực phẩm & đồ uống , Checkpoins Trái cây
	{1929.9924,-1776.2214,13.5469},
	{1839.2633,-1871.8295,13.5455},  
	{1352.1418,-1757.9187,13.5078}, 
	{2139.4172,-1192.1077,23.9922}  
};

new Float:GiaoTruckerr[][3] = {

	{661.3629,-573.2987,16.3359},        
	{1227.7075,181.6148,20.4102},             
	{2273.4766,82.0429,26.4844},                      
	{-78.3651,-1169.8806,2.1355}

};
//--------------------------------

CMD:rsxetruck(playerid, params[]) {
	if (PlayerInfo[playerid][pAdmin] >= 4)
	{
		for(new i = 0; i < sizeof(TruckerVehicles); i++)
		{
			if(!IsVehicleOccupied(TruckerVehicles[i]))
			{
				SetVehicleVirtualWorld(TruckerVehicles[i], 0);
				LinkVehicleToInterior(TruckerVehicles[i], 0);
				SetVehicleToRespawn(TruckerVehicles[i]);
			}
		}
		SendClientMessageEx(playerid, COLOR_GREY, "You have respawned all unoccupied Trucker Vehicles.");
	}
	return 1;}

CMD:testcmnd(playerid) {
	ShowPlayerDialog(playerid, DIALOG_LICENSE_BUY, DIALOG_STYLE_LIST, "Chon loai giay phep ban muon mua.", "Giay phep lai xe ($1,000)\r\nGiay phep lai thuyen ($2,000)\r\nGiay phep lai may bay ($3,000)\r\nGiay phep lai taxi ($4,000)\nChung minh nhan dan(CCCD) ($5,000).", "Mua", "Huy bo");
	return 1;}

CMD:huythunghang(playerid, params[]) {
	if(PlayerInfo[playerid][pJob] == JobTruckerID || PlayerInfo[playerid][pJob2] == JobTruckerID) 
	{
		if(GetPVarInt(playerid, "DaLayHang") == 1) {
			
			new string[1280];
			format(string, sizeof(string), "> Ban da huy bo nhan thung hang {00F70C}%s{FFFFFF} thanh cong.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
			SendClientMessageEx(playerid, -1, string);

			RemovePlayerAttachedObject(playerid, 1);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
			ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
			SetPVarInt(playerid, "DaLayHang", 0);
			return 1;
		}else SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban da lay thung hang truoc do roi , hay giao hang.");
	}
	return 1;
}

CMD:layhang(playerid, params[]) {
	if(PlayerInfo[playerid][pJob] == JobTruckerID || PlayerInfo[playerid][pJob2] == JobTruckerID) 
	{
		if(PlayerTruck[playerid][HangHoa][0] > 0) {
			SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban dang co mot chuyen hang can giao roi (/xemhang) (/giaohang) (/huybo giaohang).");
			return 1;
		}
		if(IsPlayerInRangeOfPoint(playerid, 3.0, 2478.7292,-2079.2166,13.5469) || IsPlayerInRangeOfPoint(playerid, 3.0, 2485.7798,-2078.7324,13.5469) || IsPlayerInRangeOfPoint(playerid, 3.0, 2492.6545,-2078.6980,13.5469))
		{
			ShowPlayerDialog(playerid, DIALOG_LAYHANG_TRUCKER, DIALOG_STYLE_LIST,"Ban muon van chuyen loai hang nao?","Hang hop phap\nHang bat hop phap","Lua chon","Huy bo");
		}
		else {
			if(IsPlayerInRangeOfPoint(playerid, 100.0, 2478.7292,-2079.2166,13.5469)) 
			{
				PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 2478.7292,-2079.2166,13.5469, 3.0);
		        CP[playerid] = 252000;
		        SendClientMessageEx(playerid, COLOR_YELLOW, "Dia diem lay hang da duoc danh dau, ban hay lai do va lay hang.");
		        return 1;
			}
	    }
	}else SendClientMessage(playerid, -1, "> Ban chua nhan cong viec nay.");
	return 1;}

CMD:xemhang(playerid, params[]) {
	if(GetPVarInt(playerid, "DaLayPhuongTien") == 0) {
		SendClientMessageEx(playerid, -1, "> Ban chua lay phuong tien van chuyen nao het.");
		return 1;
	}
	if(IsPlayerInRangeOfVehicle(playerid, TruckerCar[playerid], 5)) {
    	ShowXemHang(playerid, playerid);
	}
    else {
    	SendClientMessageEx(playerid, -1, "> Ban khong o gan phuong tien van chuyen cua ban.");
    }
	return 1;
}

CMD:giaohang(playerid, params[]) {
	if(GetPVarInt(playerid, "DaLayPhuongTien") == 0) {
		SendClientMessageEx(playerid, -1, "> Ban chua lay phuong tien van chuyen nao het.");
		return 1;
	}
	if(GetPlayerVehicleID(playerid) == TruckerCar[playerid] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
		if(PlayerTruck[playerid][HangHoa][0] > 0) {
			new idhang = PlayerTruck[playerid][HangHoa][0];
			if(PlayerTruck[playerid][HangHoa][0] >= 1 && PlayerTruck[playerid][HangHoa][0] <= 3) {
				PlayerTruck[playerid][HangHoa][0] = idhang;
				SetPVarInt(playerid, "BatDauGiaoHang", 1);
				RandomGiaoHang(playerid);
			}else {
				PlayerTruck[playerid][HangHoa][0] = idhang;
				RandomGiaoHangNguyHiem(playerid);
				SetPVarInt(playerid, "BatDauGiaoHang", 1);
			}
			return 1;
		}else ShowXemHang(playerid, playerid);
	}else SendClientMessageEx(playerid, -1, "> Ban khong ngoi o tren phuong tien cua ban..");
	return 1;
}

stock RandomGiaoHang(playerid){
    if(GetPVarInt(playerid, "GiaoTruckerNe") == 0){
		new rand = random(sizeof(GiaoTrucker));
		SetPVarInt(playerid, "FloatGiaoTrucker", rand);
	    SetPVarInt(playerid, "GiaoTruckerNe", 1);
		SetPlayerCheckpoint(playerid, GiaoTrucker[rand][0], GiaoTrucker[rand][1], GiaoTrucker[rand][2], 4);

		new zone[MAX_ZONE_NAME];
		Get3DZone(GiaoTrucker[rand][0], GiaoTrucker[rand][1], GiaoTrucker[rand][2], zone, sizeof(zone));
        new thongbao[1280];
        format(thongbao, sizeof(thongbao), "Ban hay giao hang den %s , vi tri da duoc danh dau tren ban do.", zone);
		SendClientMessageEx(playerid, COLOR_GREEN, thongbao);

		AntiTruckTeleport[playerid] = gettime() + 10;
		return 1;
	}else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao chuyen hang truoc do , vui long giao xong roi tiep tuc cong viec!");
	return 1;
}

stock RandomGiaoHangNguyHiem(playerid){
    if(GetPVarInt(playerid, "GiaoTruckerNee") == 0){

		new rand = random(sizeof(GiaoTruckerr));
		SetPVarInt(playerid, "FloatGiaoTruckerr", rand);
		
	    SetPVarInt(playerid, "GiaoTruckerNee", 1);
		SetPlayerCheckpoint(playerid, GiaoTruckerr[rand][0], GiaoTruckerr[rand][1], GiaoTruckerr[rand][2], 4);

		new zone[MAX_ZONE_NAME];
		Get3DZone(GiaoTruckerr[rand][0], GiaoTruckerr[rand][1], GiaoTruckerr[rand][2], zone, sizeof(zone));
        new thongbao[1280];
        format(thongbao, sizeof(thongbao), "Ban hay giao hang den %s, vi tri da duoc danh dau tren ban do.", zone);
		SendClientMessageEx(playerid, COLOR_GREEN, thongbao);

		AntiTruckTeleport[playerid] = gettime() + 100;
		return 1;
	}else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao chuyen hang truoc do , vui long giao xong roi tiep tuc cong viec!");
	return 1;
}

stock ShowXemHang(playerid, giveplayerid) {
    new str[2460], name[1280];
    format(str, sizeof(str), "Thung hang tren xe cua ban la : {ff6633}%s{FFFFFF}", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
    format(name, sizeof(name), "Hang tren phuong tien cua %s:", GetPlayerNameEx(playerid));
	ShowPlayerDialog(giveplayerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong y", "Huy Bo");
	return 1;}

stock TruckerLoading() {
    CreateDynamic3DTextLabel("Khu nhan thung hang ( 1 )\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.", -1, 2478.7292,-2079.2166,13.5469,30.0);
    CreateDynamicPickup(1271, 23, 2478.7292,-2079.2166,13.5469);

    CreateDynamic3DTextLabel("Khu nhan thung hang ( 2 )\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.", -1, 2485.7798,-2078.7324,13.5469,30.0);
    CreateDynamicPickup(1271, 23, 2485.7798,-2078.7324,13.5469);

    CreateDynamic3DTextLabel("Khu nhan thung hang ( 3 )\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.", -1, 2492.6545,-2078.6980,13.5469,30.0);
    CreateDynamicPickup(1271, 23, 2492.6545,-2078.6980,13.5469);
	return 1;}

stock ShowJOB_Trucker(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	} 
	new name[1280];
	if(PlayerInfo[playerid][pJob] == JobTruckerID || PlayerInfo[playerid][pJob2] == JobTruckerID)
	    format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} Lay phuong tien.");
	else 
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	ShowPlayerDialog(playerid, JOB_Trucker, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;}

stock ShowLayPhuongTien(playerid) {
	if(PlayerInfo[playerid][pJob] == JobTruckerID || PlayerInfo[playerid][pJob2] == JobTruckerID) {
		if(GetPVarInt(playerid, "DaLayPhuongTien") == 0) 
		{
			TruckerCar[playerid] = CreateVehicle(414, 2534.3667,-2117.0457,13.5469, 91.0689 , random(255), random(255), 1000, 0);
			PutPlayerInVehicle(playerid, TruckerCar[playerid] ,0);

			format(TruckerString, sizeof TruckerString, "{4d79ff}Truck Delivery{ffffff}\nPhuong tien cua {4d79ff}%s{FFFFFF}", GetPlayerNameEx(playerid));
			TruckerCarText[playerid] = Create3DTextLabel(TruckerString, COLOR_WHITE, 0.0, 0.0, 0.0, 50.0, 0, 1);
			Attach3DTextLabelToVehicle(TruckerCarText[playerid], TruckerCar[playerid], 0.0, 0.0, 0.0);

			SetPVarInt(playerid, "DaLayPhuongTien", 1);
			SendClientMessage(playerid, -1, "> Ban da nhan phuong tien van chuyen thanh cong.");
			return 1;
		}else SendClientMessage(playerid, -1, "Ban da lay phuong tien truoc do roi , khong the lay tiep tuc.");
	}
	return 1;}

stock TenLoaiHangTrucker(loaihang){
	new name[1280];
	switch(loaihang){
		case 0: name = "Chua co hang";
		case 1: name = "Thuc pham va Do uong";
		case 2: name = "Quan ao";
		case 3: name = "Trai cay";
		case 4: name = "Vat lieu";
		case 5: name = "Ma tuy";
		case 6: name = "Ban ve";
	}
	return name;}

stock ChonSlotHang(playerid) {
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];

	new loaihang_1[1280], loaihang_2[1280], loaihang_3[1280], loaihang_4[1280], loaihang_5[1280];
	if(PlayerTruck[playerid][HangHoa][0] == 0)
		loaihang_1 = "Chua co gi het";
	else
	    format(loaihang_1, sizeof(loaihang_1), "%s", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));

    if(PlayerTruck[playerid][HangHoa][1] == 0)
		loaihang_2 = "Chua co gi het";
	else
	    format(loaihang_2, sizeof(loaihang_2), "%s", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][1]));

    if(PlayerTruck[playerid][HangHoa][2] == 0)
		loaihang_3 = "Chua co gi het";
	else
	    format(loaihang_3, sizeof(loaihang_3), "%s", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][2]));

    if(PlayerTruck[playerid][HangHoa][3] == 0)
		loaihang_4 = "Chua co gi het";
	else
	    format(loaihang_4, sizeof(loaihang_4), "%s", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][3]));

    if(PlayerTruck[playerid][HangHoa][4] == 0)
		loaihang_5 = "Chua co gi het";
	else
	    format(loaihang_5, sizeof(loaihang_5), "%s", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][4]));

    format(str1, sizeof(str), "(1). %s", loaihang_1);
    format(str2, sizeof(str), "(2). %s", loaihang_2);
    format(str3, sizeof(str), "(3). %s", loaihang_3);
    format(str4, sizeof(str), "(4). %s", loaihang_4);
    format(str5, sizeof(str), "(5). %s", loaihang_5);
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5);
    format(name, sizeof(name), "Ban vui long chon slot de thung hang len xe:");
	ShowPlayerDialog(playerid, DIALOG_SLOTXEMHANG, DIALOG_STYLE_LIST, name, str, "Dong y", "Huy Bo");
	return 1;}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[8])) return ShowJOB_Trucker(playerid);
	}

	if(PRESSED(KEY_YES)) 
	{
	    if(GetPVarInt(playerid, "GiaoTruckerNe") == 1)
    	{
	    	if(IsPlayerInRangeOfPoint(playerid, 4, GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][0], GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][1], GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][2]))
			{
				if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
				    SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban khong the lay hang khi dang o tren phuong tien.");
					return 1;
				}
				if(IsPlayerInRangeOfVehicle(playerid, TruckerCar[playerid], 5)) {
					if(GetPVarInt(playerid, "LayThungHangGiao") == 0) {
			    	    TogglePlayerControllable(playerid, 1);
				        ClearAnimations(playerid);

						SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
						SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);

						new string[1280];
						format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} ra khoi phuong tien thanh cong, hay chat no vao diem giao hang.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
						SendClientMessageEx(playerid, -1, string);

						SetPVarInt(playerid, "LayThungHangGiao", 1);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban da lay thung hang truoc do roi , hay giao hang.");
				}
			}
		}
		
		if(GetPVarInt(playerid, "GiaoTruckerNee") == 1)
		{
		    if(IsPlayerInRangeOfPoint(playerid, 4, GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][0], GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][1], GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][2])){
                if(GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
				    SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban khong the lay hang khi dang o tren phuong tien.");
					return 1;
				}
				if(IsPlayerInRangeOfVehicle(playerid, TruckerCar[playerid], 5)) {
					if(GetPVarInt(playerid, "LayThungHangGiao") == 0) {
			    	    TogglePlayerControllable(playerid, 1);
				        ClearAnimations(playerid);

						SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
						SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);

						new string[1280];
						format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} ra khoi phuong tien thanh cong, hay chat no vao diem giao hang.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
						SendClientMessageEx(playerid, -1, string);

						SetPVarInt(playerid, "LayThungHangGiao", 1);
						return 1;
					}else SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban da lay thung hang truoc do roi , hay giao hang.");
				}
			}
		}
		
		if(GetPVarInt(playerid, "BatDauGiaoHang") == 0) {
			if(LoaiHang[playerid] != 0) 
			{
				if(IsPlayerInRangeOfVehicle(playerid, TruckerCar[playerid], 5)) 
				{
					RemovePlayerAttachedObject(playerid, 1);
					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
					ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
					
					// =============================
					PlayerTruck[playerid][HangHoa][0] = LoaiHang[playerid];
		            // =============================
					LoaiHang[playerid] = 0;
					return 1;
				}
			}
		}
		else {
			if(IsPlayerInRangeOfVehicle(playerid, TruckerCar[playerid], 5)) 
			{
				if(GetPVarInt(playerid, "DaLayHang") == 0) {
					TogglePlayerControllable(playerid, 1);
			        ClearAnimations(playerid);

					SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
					SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
					
					new string[1280];
					format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
					SendClientMessageEx(playerid, -1, string);

					SetPVarInt(playerid, "DaLayHang", 1);
					return 1;
				}else SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban da lay thung hang truoc do roi , hay giao hang.");
			}
		}
	}
	return 1;}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == JOB_Trucker && response == 1) {
		if(listitem == 0) {
			return  1;
		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobTruckerID;
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
					PlayerInfo[playerid][pJob] = JobTruckerID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobTruckerID;
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
			ShowLayPhuongTien(playerid);
		}
	}

	if(dialogid == DIALOG_LAYHANG_TRUCKER && response == 1){
        if(listitem == 0){ // HANG HOP PHAP
            ShowPlayerDialog(playerid, DIALOG_HANGHOPPHAP, DIALOG_STYLE_LIST, "Ban muon van chuyen gi?","{00F70C}Thuc pham va Do uong\n{00F70C}Quan ao\n{00F70C}Trai cay", "Lua chon", "Thoat");
    		return 1;
        }
        if(listitem == 1){ // HANG BAT HOP PHAP
        	ShowPlayerDialog(playerid, DIALOG_HANGBATHOPPHAP, DIALOG_STYLE_LIST, "Ban muon van chuyen gi?","{ff0000}Vat lieu\n{ff0000}Ma tuy\n{ff0000}Ban ve", "Lua chon", "Thoat");
    		return 1;
        }
	}

	if(dialogid == DIALOG_HANGHOPPHAP && response == 1){
        if(listitem == 0){ // HANG HOP PHAP
            LoaiHang[playerid] = 1; // Thuc pham va Do uong

            TogglePlayerControllable(playerid, 1);
	        ClearAnimations(playerid);

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
			new string[1280];
			format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(LoaiHang[playerid]));
			SendClientMessageEx(playerid, -1, string);

			SendClientMessageEx(playerid, -1, "> Su dung : (Y) de chat thung hang len phuong tien.");

            //ChonSlotHang(playerid);
            return 1;
        }
        if(listitem == 1){ // HANG HOP PHAP
            LoaiHang[playerid] = 2; // Quan Ao

            TogglePlayerControllable(playerid, 1);
	        ClearAnimations(playerid);

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
			new string[1280];
			format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(LoaiHang[playerid]));
			SendClientMessageEx(playerid, -1, string);

			SendClientMessageEx(playerid, -1, "> Su dung : (Y) de chat thung hang len phuong tien.");

            //ChonSlotHang(playerid);
            return 1;
        }
        if(listitem == 2){ // HANG HOP PHAP
            LoaiHang[playerid] = 3; // Trai Cay

            TogglePlayerControllable(playerid, 1);
	        ClearAnimations(playerid);

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
			new string[1280];
			format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(LoaiHang[playerid]));
			SendClientMessageEx(playerid, -1, string);

			SendClientMessageEx(playerid, -1, "> Su dung : (Y) de chat thung hang len phuong tien.");

            //ChonSlotHang(playerid);
            return 1;
        }
	}

	if(dialogid == DIALOG_HANGBATHOPPHAP && response == 1){
        if(listitem == 0){ // HANG HOP PHAP
            LoaiHang[playerid] = 4; // Vat Lieu

            TogglePlayerControllable(playerid, 1);
	        ClearAnimations(playerid);

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
			new string[1280];
			format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(LoaiHang[playerid]));
			SendClientMessageEx(playerid, -1, string);

			SendClientMessageEx(playerid, -1, "> Su dung : (Y) de chat thung hang len phuong tien.");

            //ChonSlotHang(playerid);
            return 1;
        }
        if(listitem == 1){ // HANG HOP PHAP
            LoaiHang[playerid] = 5; // Ma tuy

            TogglePlayerControllable(playerid, 1);
	        ClearAnimations(playerid);

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
			new string[1280];
			format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(LoaiHang[playerid]));
			SendClientMessageEx(playerid, -1, string);

			SendClientMessageEx(playerid, -1, "> Su dung : (Y) de chat thung hang len phuong tien.");

            //ChonSlotHang(playerid);
            return 1;
        }
        if(listitem == 2){ // HANG HOP PHAP
            LoaiHang[playerid] = 6; // Vu Khi

            TogglePlayerControllable(playerid, 1);
	        ClearAnimations(playerid);

			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_CARRY);
			SetPlayerAttachedObject(playerid, 1, 1271, 6, 0.077999, 0.043999, -0.170999, -13.799953, 79.70, 0.0);
			new string[1280];
			format(string, sizeof(string), "> Ban da lay mot thung hang {00F70C}%s{FFFFFF} thanh cong, hay chat no len phuong tien.", TenLoaiHangTrucker(LoaiHang[playerid]));
			SendClientMessageEx(playerid, -1, string);

			SendClientMessageEx(playerid, -1, "> Su dung : (Y) de chat thung hang len phuong tien.");

            //ChonSlotHang(playerid);
            return 1;
        }
	}

	if(dialogid == DIALOG_SLOTXEMHANG && response == 1){
	    if(PlayerTruck[playerid][HangHoa][listitem] == 0){
	        PlayerTruck[playerid][HangHoa][listitem] = LoaiHang[playerid];

	        new thongbao[1280];
	        format(thongbao, sizeof(thongbao), "Ban da bo thanh cong thung hang (%s - SLOT: %d) vao phuong tien cua ban (/xemhang).", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][listitem]), listitem);
			SendClientMessageEx(playerid, COLOR_GREEN, thongbao);

			LoaiHang[playerid] = 0;
			return 1;

	    }else {
	        new thongbao[1280];
	        format(thongbao, sizeof(thongbao), "SLOT %d: Hien dang co %s , ban khong the de them hang ngay tai o nay!", listitem, TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][listitem]));
			SendClientMessageEx(playerid, COLOR_GREEN, thongbao);
			LoaiHang[playerid] = 0;
			return 1;
	    }
	}
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid){
    if(GetPVarInt(playerid, "GiaoTruckerNe") == 1)
    {
	    if(IsPlayerInRangeOfPoint(playerid, 4, GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][0], GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][1], GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][2])){
	    	if(GetPVarInt(playerid, "LayThungHangGiao") == 0) {
	    	    SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban vui long xuong phuong tien va lay thung hang ra khoi xe de giao (Y).");
				return 1;
			}

			RemovePlayerAttachedObject(playerid, 1);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
			ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);

			new string[1280];
            new skilllevel = PlayerInfo[playerid][pTruckSkill];
            new money;
            
			if(skilllevel >= 0 && skilllevel <= 50) money = 2000;
			else if(skilllevel >= 50 && skilllevel <= 100) money = 4000;
			else if(skilllevel >= 101 && skilllevel <= 150) money = 6000;
			else if(skilllevel >= 151 && skilllevel <= 200) money = 8000;
			else if(skilllevel >= 201 && skilllevel <= 250) money = 10000;
			else if(skilllevel >= 251 && skilllevel <= 300) money = 12000;
			else if(skilllevel >= 301 && skilllevel <= 350) money = 14000;
			else if(skilllevel >= 351 && skilllevel <= 400) money = 16000;
			else if(skilllevel >= 401 && skilllevel <= 450) money = 18000;
			else if(skilllevel >= 451) money = 20000;

			TienTrucker[playerid] += money;

		    format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]), number_format(TienTrucker[playerid]));
		    SendClientMessageEx(playerid, COLOR_YELLOW, string);
		    
		    KyNangTrucker[playerid] += 1;

		    DeletePVar(playerid, "GiaoTruckerNe");
		    DeletePVar(playerid, "FloatGiaoTrucker");
		    DeletePVar(playerid, "BatDauGiaoHang");
		    DeletePVar(playerid, "DaLayHang");

		    DisablePlayerCheckpoint(playerid);

		    PlayerTruck[playerid][HangHoa][0] = 0;

			if(PlayerTruck[playerid][HangHoa][0] == 0 && PlayerTruck[playerid][HangHoa][1] == 0 && PlayerTruck[playerid][HangHoa][2] == 0 && PlayerTruck[playerid][HangHoa][3] == 0 && PlayerTruck[playerid][HangHoa][4] == 0){
                if(AntiTruckTeleport[playerid] > gettime()) {
                	format(string, sizeof(string), "[LS-VN.NET - ANTI CHEAT] Nguoi choi %s co the dang hack Teleport Trucker (/spec %d)", GetPlayerNameEx(playerid), playerid);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
					SendClientMessageEx(playerid, -1, "> Phat hien nghi van hack Teleport Trucker.");
	    			Kick(playerid);
                	return 1;
                }
                if(GetPVarInt(playerid, "DaLayPhuongTien") == 0) {
					SendClientMessageEx(playerid, -1, "> Ban chua lay phuong tien van chuyen nao het.");
					return 1;
				}
				if(GetPlayerVehicleID(playerid) == TruckerCar[playerid] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
					SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
					return 1;
				}
				
				SetPVarInt(playerid, "TraXeChoTao", 1);
				SetPlayerCheckpoint(playerid, 2531.6772,-2094.3860,13.5953, 4);
				AntiTruckTeleport[playerid] = gettime() + 30;
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao het toan bo so hang da nhan truoc do, hay quay tro lai va tra phuong tien va nhan tien thuong.");
		    }
		    else {
				cmd_xemhang(playerid, "");
			}
		}
	}

	if(GetPVarInt(playerid, "GiaoTruckerNee") == 1)
	{
	    if(IsPlayerInRangeOfPoint(playerid, 4, GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][0], GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][1], GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][2])){
            if(GetPVarInt(playerid, "LayThungHangGiao") == 0) {
	    	    SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban vui long xuong phuong tien va lay thung hang ra khoi xe de giao (Y).");
				return 1;
			}

			RemovePlayerAttachedObject(playerid, 1);
			SetPlayerSpecialAction(playerid, SPECIAL_ACTION_NONE);
			ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);

			new string[1280];
		    new skilllevel = PlayerInfo[playerid][pTruckSkill];

           	if(skilllevel >= 0 && skilllevel <= 50) TienTrucker[playerid] = 5000;
			else if(skilllevel >= 50 && skilllevel <= 100) TienTrucker[playerid] = 8000;
			else if(skilllevel >= 101 && skilllevel <= 150) TienTrucker[playerid] = 12000;
			else if(skilllevel >= 151 && skilllevel <= 200) TienTrucker[playerid] = 12000;
			else if(skilllevel >= 201 && skilllevel <= 250) TienTrucker[playerid] = 20000;
			else if(skilllevel >= 251 && skilllevel <= 300) TienTrucker[playerid] = 25000;
			else if(skilllevel >= 301 && skilllevel <= 350) TienTrucker[playerid] = 30000;
			else if(skilllevel >= 351 && skilllevel <= 400) TienTrucker[playerid] = 35000;
			else if(skilllevel >= 401 && skilllevel <= 450) TienTrucker[playerid] = 40000;
			else if(skilllevel >= 451) TienTrucker[playerid] = 50000;

		    KyNangTrucker[playerid] += 1;
			 		 
		    if(PlayerTruck[playerid][HangHoa][0] == 4) {
		    	if(skilllevel >= 0 && skilllevel <= 50) VatLieuTrucker[playerid] = 50;
				else if(skilllevel >= 50 && skilllevel <= 100) VatLieuTrucker[playerid] = 100;
				else if(skilllevel >= 101 && skilllevel <= 150) VatLieuTrucker[playerid] = 150;
				else if(skilllevel >= 151 && skilllevel <= 200) VatLieuTrucker[playerid] = 200;
				else if(skilllevel >= 201 && skilllevel <= 250) VatLieuTrucker[playerid] = 250 ;
				else if(skilllevel >= 251 && skilllevel <= 300) VatLieuTrucker[playerid] = 300;
				else if(skilllevel >= 301 && skilllevel <= 350) VatLieuTrucker[playerid] = 350;
				else if(skilllevel >= 351 && skilllevel <= 400) VatLieuTrucker[playerid] = 400;
				else if(skilllevel >= 401 && skilllevel <= 450) VatLieuTrucker[playerid] = 450;
				else if(skilllevel >= 451) TienTrucker[playerid] = 500;

		    	format(string, sizeof(string), "Ban da giao thanh cong hang (%s) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
			}

			else if(PlayerTruck[playerid][HangHoa][0] == 5) {
				if(skilllevel >= 0 && skilllevel <= 50) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 2;
					else CrackVatLieu[playerid] = 2;
				}
				else if(skilllevel >= 50 && skilllevel <= 100) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 4;
					else CrackVatLieu[playerid] = 4;
				}
				else if(skilllevel >= 101 && skilllevel <= 150) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 6;
					else CrackVatLieu[playerid] = 6;
				}
				else if(skilllevel >= 151 && skilllevel <= 200) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 8;
					else CrackVatLieu[playerid] = 8;
				}
				else if(skilllevel >= 201 && skilllevel <= 250) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 10;
					else CrackVatLieu[playerid] = 10;
				}
				else if(skilllevel >= 251 && skilllevel <= 300) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 12;
					else CrackVatLieu[playerid] = 12;
				}
				else if(skilllevel >= 301 && skilllevel <= 350) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 14;
					else CrackVatLieu[playerid] = 14;
				}
				else if(skilllevel >= 351 && skilllevel <= 400) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 16;
					else CrackVatLieu[playerid] = 16;
				}
				else if(skilllevel >= 401 && skilllevel <= 450) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 18;
					else CrackVatLieu[playerid] = 18;
				}
				else if(skilllevel >= 451) {
					new rand = random(2);
					if(rand == 0 || rand == 1) PotVatLieu[playerid] = 20;
					else CrackVatLieu[playerid] = 20;
				}

				format(string, sizeof(string), "Ban da giao thanh cong hang (%s) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
			}

			else if(PlayerTruck[playerid][HangHoa][0] == 6) {

				if(skilllevel >= 0 && skilllevel <= 50) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 2000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 50 && skilllevel <= 100) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 4000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 101 && skilllevel <= 150) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 6000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 151 && skilllevel <= 200) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 8000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 201 && skilllevel <= 250) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 10000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 251 && skilllevel <= 300) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 12000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 301 && skilllevel <= 350) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 14000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 351 && skilllevel <= 400) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 16000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 401 && skilllevel <= 450) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 18000;
					else PlayerWeapon[playerid] = 1;
				}
				else if(skilllevel >= 451) {
					new rand = random(2);
					if(rand == 0 || rand == 1) TienTrucker[playerid] += 20000;
					else PlayerWeapon[playerid] = 1;
				}

				format(string, sizeof(string), "Ban da giao thanh cong hang (%s) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));
			}
		
		    SendClientMessageEx(playerid, COLOR_YELLOW, string);

			PlayerTruck[playerid][HangHoa][0] = 0;

		    DeletePVar(playerid, "GiaoTruckerNee");
		    DeletePVar(playerid, "FloatGiaoTruckerr");
		    DeletePVar(playerid, "BatDauGiaoHang");
		    DeletePVar(playerid, "DaLayHang");

		    DisablePlayerCheckpoint(playerid);
		    
		    if(PlayerTruck[playerid][HangHoa][0] == 0 && PlayerTruck[playerid][HangHoa][1] == 0 && PlayerTruck[playerid][HangHoa][2] == 0 && PlayerTruck[playerid][HangHoa][3] == 0 && PlayerTruck[playerid][HangHoa][4] == 0){
                
		    	if(AntiTruckTeleport[playerid] > gettime()) {
                	format(string, sizeof(string), "[LS-VN.NET - ANTI CHEAT] Nguoi choi %s co the dang hack Teleport Trucker (/spec %d)", GetPlayerNameEx(playerid), playerid);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
					SendClientMessageEx(playerid, -1, "> Phat hien nghi van hack Teleport Trucker.");
	    			Kick(playerid);
                	return 1;
                }

				if(GetPVarInt(playerid, "DaLayPhuongTien") == 0) {
					SendClientMessageEx(playerid, -1, "> Ban chua lay phuong tien van chuyen nao het.");
					return 1;
				}
				if(GetPlayerVehicleID(playerid) == TruckerCar[playerid] && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
					SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
					return 1;
				}
				SetPVarInt(playerid, "TraXeChoTao", 1);
				SetPlayerCheckpoint(playerid, 2531.6772,-2094.3860,13.5953, 4);
				AntiTruckTeleport[playerid] = gettime() + 90;
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao het toan bo so hang da nhan truoc do, hay quay tro lai va tra phuong tien va nhan tien thuong.");
		    }else {
				cmd_xemhang(playerid, "");
			}
			//==================================================================
		}
	}

	if(GetPVarInt(playerid, "TraXeChoTao") == 1){
	    if(IsPlayerInRangeOfPoint(playerid, 4, 2531.6772,-2094.3860,13.5953)){

	    	if(AntiTruckTeleport[playerid] > gettime()) {
	    		new string[1280];
            	format(string, sizeof(string), "[LS-VN.NET - ANTI CHEAT] Nguoi choi %s co the dang hack Teleport Trucker (/spec %d)", GetPlayerNameEx(playerid), playerid);
    			ABroadCast(COLOR_LIGHTRED, string, 2);
				SendClientMessageEx(playerid, -1, "> Phat hien nghi van hack Teleport Trucker.");
    			Kick(playerid);
            	return 1;
            }

	    	if(GetPVarInt(playerid, "DaLayPhuongTien") == 0) {
				SendClientMessageEx(playerid, -1, "> Ban chua lay phuong tien van chuyen nao het.");
				return 1;
			}
			if(GetPlayerVehicleID(playerid) != TruckerCar[playerid] && GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}

	        new string[1280];
		    format(string, sizeof(string), "Ban da hoan thanh cong viec van chuyen mot cach tuyet voi ban nhan duoc ($%s).", number_format(TienTrucker[playerid]));
		    /*
			    case 4: name = "Vat lieu";
				case 5: name = "Ma tuy";
				case 6: name = "Vu khi";
		    */
		    if(VatLieuTrucker[playerid] > 0) {
		    	PlayerInfo[playerid][pMats] += VatLieuTrucker[playerid];
		    	format(string, sizeof(string), "Ban nhan duoc %s vat lieu tu viec van chuyen hang bat hop phap.", number_format(VatLieuTrucker[playerid]));
		    }
		    else if(PotVatLieu[playerid] > 0) {
		    	PlayerInfo[playerid][pPot] += PotVatLieu[playerid];
		    	PlayerInfo[playerid][pCrack] += CrackVatLieu[playerid];
		    	format(string, sizeof(string), "Ban nhan duoc %s pot - %s crack tu viec van chuyen hang bat hop phap.", number_format(PotVatLieu[playerid]), number_format(CrackVatLieu[playerid]));
		    }
		    else if(PlayerWeapon[playerid] > 0) {
		    	format(string, sizeof(string), "Ban nhan duoc mot ban ve vu khi.");
				PlayerInfo[playerid][pBanve] += PlayerWeapon[playerid];
		    }

		    PlayerInfo[playerid][pCash] += TienTrucker[playerid];        
			SendClientMessageEx(playerid, COLOR_YELLOW, string);

		    DeletePVar(playerid, "GiaoTruckerNe");
		    DeletePVar(playerid, "FloatGiaoTrucker");
		    DeletePVar(playerid, "TraXeChoTao");
		    DeletePVar(playerid, "BatDauGiaoHang");
		    DeletePVar(playerid, "DaLayHang");
		    DeletePVar(playerid, "DaLayPhuongTien");

		    DisablePlayerCheckpoint(playerid);

		    DestroyVehicle(TruckerCar[playerid]);
		    Delete3DTextLabel(TruckerCarText[playerid]);

		    PlayerInfo[playerid][pTruckSkill] += 1;
		    PlayerInfo[playerid][pSoLanGiaoTrucker] += 1;

		    PlayerInfo[playerid][pXP] += 10;

            PlayerTruck[playerid][HangHoa][0] = 0;
            PlayerTruck[playerid][HangHoa][1] = 0;
            PlayerTruck[playerid][HangHoa][2] = 0;
            PlayerTruck[playerid][HangHoa][3] = 0;
            PlayerTruck[playerid][HangHoa][4] = 0;

            TienTrucker[playerid] = 0;
            VatLieuTrucker[playerid] = 0;
            PotVatLieu[playerid] = 0;
            CrackVatLieu[playerid] = 0;
            PlayerWeapon[playerid] = 0;
            KyNangTrucker[playerid] = 0;
            CheckNV_Trucker(playerid);
            
            if(PlayerInfo[playerid][pSoLanGiaoTrucker] == 10) {
            	PlayerInfo[playerid][pSVIPExVoucher] += 1;
            	PlayerInfo[playerid][pSoLanGiaoTrucker] += 1;
            	SendClientMessage(playerid, COLOR_YELLOW2, "Ban da hoan thanh 10 lan van chuyen dau tien, va nhan duoc phan thuong (Sivler VIP 7Days).");
            	SendClientMessage(playerid, COLOR_YELLOW2, "Bay gio ban co the van chuyen duoc hang bat hop phap va nhan duoc nhieu phan thuong tu may chu.");

            	new thongbao[1280];
            	format(thongbao, sizeof(thongbao), "[LS-VN.NET] Nguoi choi {00ff00}%s{FFFFFF} vua hoan thanh 10 lan van chuyen {99cc00}Trucker{FFFFFF} va nhan duoc phan thuong tu may chu.", GetPlayerNameEx(playerid));
			    SendClientMessageToAll(-1, thongbao);
            }
	    }
	}
	return 1;
}

hook OnPlayerDisconnect(playerid, reason){
    DeletePVar(playerid, "GiaoTruckerNe");
    DeletePVar(playerid, "FloatGiaoTrucker");
    DeletePVar(playerid, "TraXeChoTao");
    DeletePVar(playerid, "GiaoTruckerNe");
	DeletePVar(playerid, "FloatGiaoTrucker");
	DeletePVar(playerid, "GiaoTruckerNee");
	DeletePVar(playerid, "FloatGiaoTruckerr");

	if(GetPVarInt(playerid, "DaLayPhuongTien") == 1) {
		DestroyVehicle(TruckerCar[playerid]);
	    Delete3DTextLabel(TruckerCarText[playerid]);
	}

	DeletePVar(playerid, "BatDauGiaoHang");
    DeletePVar(playerid, "DaLayHang");
    DeletePVar(playerid, "DaLayPhuongTien");

	PlayerTruck[playerid][HangHoa][0] = 0;
	PlayerTruck[playerid][HangHoa][1] = 0;
	PlayerTruck[playerid][HangHoa][2] = 0;
	PlayerTruck[playerid][HangHoa][3] = 0;
	PlayerTruck[playerid][HangHoa][4] = 0;
	VatLieuTrucker[playerid] = 0;
    PotVatLieu[playerid] = 0;
    CrackVatLieu[playerid] = 0;
	return 1;
}

stock DeleteTrucker(playerid) {
	DeletePVar(playerid, "GiaoTruckerNe");
    DeletePVar(playerid, "FloatGiaoTrucker");
    DeletePVar(playerid, "TraXeChoTao");
    DeletePVar(playerid, "GiaoTruckerNe");
	DeletePVar(playerid, "FloatGiaoTrucker");
	DeletePVar(playerid, "GiaoTruckerNee");
	DeletePVar(playerid, "FloatGiaoTruckerr");
	
	DeletePVar(playerid, "BatDauGiaoHang");
    DeletePVar(playerid, "DaLayHang");
    TienTrucker[playerid] = 0;
    
    PlayerTruck[playerid][HangHoa][0] = 0;
	PlayerTruck[playerid][HangHoa][1] = 0;
	PlayerTruck[playerid][HangHoa][2] = 0;
	PlayerTruck[playerid][HangHoa][3] = 0;
	PlayerTruck[playerid][HangHoa][4] = 0;
	VatLieuTrucker[playerid] = 0;
    PotVatLieu[playerid] = 0;
    CrackVatLieu[playerid] = 0;
	return 1;
}

