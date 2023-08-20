#include <YSI\y_hooks>

#define 			JOB_Trucker  			(6308)
#define             DIALOG_CONGVIEC_TRUCKER                 (6400)
#define             DIALOG_LAYHANG_TRUCKER                  (6401)
#define             DIALOG_HANGHOPPHAP                      (6402)
#define             DIALOG_HANGBATHOPPHAP                	(6403)
#define             DIALOG_SLOTXEMHANG                		(6404)
#define             DIALOG_XEMHANG                          (6405)

new JobTruckerID = 20;

enum TruckerLoad{
	HangHoa[5],
};
new PlayerTruck[MAX_PLAYERS][TruckerLoad];

new LoaiHang[MAX_PLAYERS];

new SlotGiaoHang[MAX_PLAYERS];
new TienTrucker[MAX_PLAYERS];

new VatLieuTrucker[MAX_PLAYERS];
new PotVatLieu[MAX_PLAYERS];
new CrackVatLieu[MAX_PLAYERS];
new PlayerWeapon[MAX_PLAYERS];
new KyNangTrucker[MAX_PLAYERS];

new AntiTruckTeleport[MAX_PLAYERS];
new SoLanTeleportTruck[MAX_PLAYERS];

new Float:GiaoTrucker[][3] = {
	// Checkpoins thực phẩm & đồ uống , Checkpoins Trái cây
	{1935.3024,-1772.9469,13.3828},           //Nhận được 24k
	{1827.8136,-1864.0632,13.4054},              //Nhận được 29k
	{1510.8707,-1516.8954,13.5489},             //Nhận được 34k

	// Checkpoins quần áo
	{1133.9720,-1372.9421,13.9844},              //Nhận được 32k
	{1459.0881,-1139.6957,24.0698},             //Nhận được 28k
	{2247.4978,-1663.0846,15.4690}              //Nhận được 18k

/*    {1829.6919,-1842.6986,13.5781},
	{1838.2213,-1414.1227,13.5625},
	{2095.9563,-1213.3722,23.9657},
	{2421.6973,-1223.5643,25.2819},
	{2422.6084,-1508.8722,23.9922},
	{2511.3650,-1521.1747,24.0100},
	{1356.9324,-1754.9042,13.3566},
	{1257.3910,-1583.3663,13.5469},
	{1117.8413,-1388.2634,13.6498},
	{1002.7433,-1299.6094,13.3828},
	{954.0953,-1333.6202,13.5309},
	{870.4848,-1386.8824,13.5073},
	{982.8552,-1388.3130,13.6146},
	{1022.6174,-1414.7402,13.1952},
	{1053.9972,-1581.0908,13.5469},
	{851.6656,-1587.9894,13.5469},
	{773.1603,-1793.5865,13.0234},
	{647.2226,-1357.4858,13.5790},
	{776.3597,-1036.7664,24.2681},
	{808.0646,-1034.5422,25.0333},
	{998.1122,-919.9282,42.1797},
	{1214.4218,-920.0978,42.9250},
	{2481.5713,-1756.5710,13.5469},
	{1974.2003,-2037.0016,13.5469}*/
};

new Float:GiaoTruckerr[][3] = {

	// Vật liệu :
	{-1023.0319,-663.0869,32.0078},           //Nhận được 48k + 600 vật liệu
	{-742.1020,-112.9603,67.0140},                //Nhận được 52k + 570 vật liệu

	// Ma túy
	{-72.1382,-1116.3053,1.0781},                      //Nhận được 45k + 6 pot + 4 crack
	{-575.1146,-1052.2389,23.7293},                 //Nhận được 57k + 6 pot + 4 crack

	// Vũ khí :
	{-495.3387,-490.4572,25.5178},                  //Nhận được 55k 
	{-171.7312,-273.9485,1.9564}                        //Nhận được 62k

/*    {318.9541,-165.5436,1.5781},
	{252.4565,29.6093,2.4607},
	{211.1082,-33.9982,1.5781},
	{158.4281,-170.0538,1.5781},
	{2261.4900,63.2846,26.4844},
	{2309.2869,-76.8599,26.4844},
	{1255.6105,242.7289,19.5547},
	{1249.4543,366.9024,19.5547},
	{681.6171,-443.6743,16.3359},
	{695.3697,-497.9311,16.3359},
	{259.9951,-302.5504,1.9184},
	{-71.2585,-1548.2958,2.6107}*/
};

CMD:layhang(playerid, params[]){
	new vehicleid = GetPlayerVehicleID(playerid);
	if(IsATruckerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER) {
        if(PlayerInfo[playerid][pJob] == JobTruckerID || PlayerInfo[playerid][pJob2] == JobTruckerID){
		    if(IsPlayerInRangeOfPoint(playerid, 3.0, 2431.6802,-2125.7832,13.5469)) {
		        //----------
		        ShowPlayerDialog(playerid,DIALOG_LAYHANG_TRUCKER,DIALOG_STYLE_LIST,"Ban muon van chuyen loai hang nao?","Hang hop phap\nHang bat hop phap","Lua chon","Huy bo");
				//----------
		    }else {
		        PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
				SetPlayerCheckpoint(playerid, 2431.6802,-2125.7832,13.5469, 3.0);
	            CP[playerid] = 252000;
	            SendClientMessageEx(playerid, COLOR_YELLOW, "Dia diem lay hang da duoc danh dau, ban hay lai do va lay hang.");
	            return 1;
		    }
		}else SendClientMessageEx(playerid, COLOR_GREEN, "Ban chua nhan cong viec nay nay.");
    }
	return 1;
}

CMD:xemhang(playerid, params[]){
    ShowXemHang(playerid, playerid);
	return 1;
}

stock ShowXemHang(playerid, giveplayerid) {
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], name[1280];

	new loaihang_1[1280], loaihang_2[1280], loaihang_3[1280], loaihang_4[1280], loaihang_5[1280];
	if(PlayerTruck[playerid][HangHoa][0] == 0)
		loaihang_1 = "Chua co gi het";
	else
	    format(loaihang_1, sizeof(loaihang_1), "%s {ff6633}(Giao ngay)", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][0]));

    if(PlayerTruck[playerid][HangHoa][1] == 0)
		loaihang_2 = "Chua co gi het";
	else
	    format(loaihang_2, sizeof(loaihang_2), "%s {ff6633}(Giao ngay)", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][1]));

    if(PlayerTruck[playerid][HangHoa][2] == 0)
		loaihang_3 = "Chua co gi het";
	else
	    format(loaihang_3, sizeof(loaihang_3), "%s {ff6633}(Giao ngay)", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][2]));

    if(PlayerTruck[playerid][HangHoa][3] == 0)
		loaihang_4 = "Chua co gi het";
	else
	    format(loaihang_4, sizeof(loaihang_4), "%s {ff6633}(Giao ngay)", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][3]));

    if(PlayerTruck[playerid][HangHoa][4] == 0)
		loaihang_5 = "Chua co gi het";
	else
	    format(loaihang_5, sizeof(loaihang_5), "%s {ff6633}(Giao ngay)", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][4]));

    format(str1, sizeof(str), "1. %s", loaihang_1);
    format(str2, sizeof(str), "2. %s", loaihang_2);
    format(str3, sizeof(str), "3. %s", loaihang_3);
    format(str4, sizeof(str), "4. %s", loaihang_4);
    format(str5, sizeof(str), "5. %s", loaihang_5);
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5);
    format(name, sizeof(name), "Hang tren phuong tien cua %s:", GetPlayerNameEx(playerid));
	ShowPlayerDialog(giveplayerid, DIALOG_XEMHANG, DIALOG_STYLE_LIST, name, str, "Dong y", "Huy Bo");
	return 1;
}

CMD:rsxetruck(playerid, params[])
{
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
	return 1;
}

stock TruckerLoading() {

	TruckerVehicles[0] = AddStaticVehicleEx(499, 2516.4158, -2139.0554+10, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[1] = AddStaticVehicleEx(499, 2516.4158, -2139.0554, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[2] = AddStaticVehicleEx(499, 2512.0967, -2139.0613, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[3] = AddStaticVehicleEx(499, 2507.6182, -2139.0728, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[4] = AddStaticVehicleEx(499, 2503.2087, -2139.1013, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[5] = AddStaticVehicleEx(499, 2498.7280, -2139.0095, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[6] = AddStaticVehicleEx(499, 2494.2495, -2139.0146, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[7] = AddStaticVehicleEx(499, 2489.7153, -2139.0354, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[8] = AddStaticVehicleEx(499, 2484.9099, -2139.0215, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[9] = AddStaticVehicleEx(499, 2480.4194, -2138.9397, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[10] = AddStaticVehicleEx(499, 2475.7893, -2138.8743, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[11] = AddStaticVehicleEx(499, 2471.2905, -2138.8730, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[12] = AddStaticVehicleEx(499, 2466.6719, -2138.8333, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[13] = AddStaticVehicleEx(499, 2462.0178, -2138.7502, 13.5519, 0.0000, -1, -1, 600);
	TruckerVehicles[14] = AddStaticVehicleEx(499, 2457.2288, -2138.7334, 13.5519, 0.0000, -1, -1, 600);
	
    CreateDynamic3DTextLabel("{00ff00}KHU VUC LAY HANG VAN CHUYEN{FFFFFF}\n\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.",COLOR_RED, 2431.6802,-2125.7832,13.5469,30.0);
    CreateDynamicPickup(1239, 23, 2431.6802,-2125.7832,13.5469);

    CreateDynamic3DTextLabel("Khu nhan thung hang ( 1 )\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.", -1, 2478.7292,-2079.2166,13.5469,30.0);
    CreateDynamicPickup(1271, 23, 2478.7292,-2079.2166,13.5469);

    CreateDynamic3DTextLabel("Khu nhan thung hang ( 2 )\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.", -1, 2485.7798,-2078.7324,13.5469,30.0);
    CreateDynamicPickup(1271, 23, 2485.7798,-2078.7324,13.5469);

    CreateDynamic3DTextLabel("Khu nhan thung hang ( 3 )\nSu dung : {ffff00}/layhang{FFFFFF} de chat hang len phuong tien.", -1, 2492.6545,-2078.6980,13.5469,30.0);
    CreateDynamicPickup(1271, 23, 2492.6545,-2078.6980,13.5469);
	return 1;
}

stock ShowJOB_Trucker(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	} 
	new name[1280];
    format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	ShowPlayerDialog(playerid, JOB_Trucker, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[8])) return ShowJOB_Trucker(playerid);
	}
	return 1;
}

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
	}

	if(dialogid == DIALOG_LAYHANG_TRUCKER && response == 1){
        if(listitem == 0){ // HANG HOP PHAP
            ShowPlayerDialog(playerid, DIALOG_HANGHOPPHAP, DIALOG_STYLE_LIST, "Ban muon van chuyen gi?","{00F70C}Thuc pham va Do uong\n{00F70C}Quan ao\n{00F70C}Trai cay", "Lua chon", "Thoat");
    		return 1;
        }
        if(listitem == 1){ // HANG BAT HOP PHAP
        	ShowPlayerDialog(playerid, DIALOG_HANGBATHOPPHAP, DIALOG_STYLE_LIST, "Ban muon van chuyen gi?","{ff0000}Vat lieu\n{ff0000}Ma tuy\n{ff0000}Vu khi", "Lua chon", "Thoat");
    		return 1;
        }
	}
	
	if(dialogid == DIALOG_HANGHOPPHAP && response == 1){
        if(listitem == 0){ // HANG HOP PHAP
            //LoaiHang[playerid] = 1; // Thuc pham va Do uong
            //ChonSlotHang(playerid);
            PlayerTruck[playerid][HangHoa][0] = 1;
            RandomGiaoHang(playerid);
            SlotGiaoHang[playerid] = 0;
            return 1;
        }
        if(listitem == 1){ // HANG HOP PHAP
            //LoaiHang[playerid] = 2; // Quan Ao
            //ChonSlotHang(playerid);
            PlayerTruck[playerid][HangHoa][0] = 2;
            RandomGiaoHang(playerid);
            SlotGiaoHang[playerid] = 0;
            return 1;
        }
        if(listitem == 2){ // HANG HOP PHAP
            //LoaiHang[playerid] = 3; // Trai Cay
            //ChonSlotHang(playerid);
            PlayerTruck[playerid][HangHoa][0] = 3;
            RandomGiaoHang(playerid);
            SlotGiaoHang[playerid] = 0;
            return 1;
        }
	}
	
	if(dialogid == DIALOG_HANGBATHOPPHAP && response == 1){
        if(listitem == 0){ // HANG HOP PHAP
            //LoaiHang[playerid] = 4; // Vat Lieu
            //ChonSlotHang(playerid);
            PlayerTruck[playerid][HangHoa][0] = 4;
            RandomGiaoHangNguyHiem(playerid);
            SlotGiaoHang[playerid] = 0;
            return 1;
        }
        if(listitem == 1){ // HANG HOP PHAP
            //LoaiHang[playerid] = 5; // Ma tuy
            //ChonSlotHang(playerid);
            PlayerTruck[playerid][HangHoa][0] = 5;
            RandomGiaoHangNguyHiem(playerid);
            SlotGiaoHang[playerid] = 0;
            return 1;
        }
        if(listitem == 2){ // HANG HOP PHAP
            //LoaiHang[playerid] = 6; // Vu Khi
            //ChonSlotHang(playerid);
            PlayerTruck[playerid][HangHoa][0] = 6;
            RandomGiaoHangNguyHiem(playerid);
            SlotGiaoHang[playerid] = 0;
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
	
	if(dialogid == DIALOG_XEMHANG && response == 1){
        if(PlayerTruck[playerid][HangHoa][listitem] != 0){
            if(PlayerTruck[playerid][HangHoa][listitem] >= 1 && PlayerTruck[playerid][HangHoa][listitem] <= 3){
                RandomGiaoHang(playerid);
                SlotGiaoHang[playerid] = listitem;
            }
            else if(PlayerTruck[playerid][HangHoa][listitem] >= 4 && PlayerTruck[playerid][HangHoa][listitem] <= 6){
                RandomGiaoHangNguyHiem(playerid);
                SlotGiaoHang[playerid] = listitem;
            }
        }
    }
	return 1;
}

stock DeleteTrucker(playerid) {
	if(SlotGiaoHang[playerid] != -1) {
		DeletePVar(playerid, "GiaoTruckerNee");
	    DeletePVar(playerid, "FloatGiaoTruckerr");

	    PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]] = 0;
	    SlotGiaoHang[playerid] = -1;
	    return 1;
	}
	return 1;
}

hook OnPlayerEnterCheckpoint(playerid){
    if(GetPVarInt(playerid, "GiaoTruckerNe") == 1){
    	new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsPlayerInRangeOfPoint(playerid, 4, GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][0], GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][1], GiaoTrucker[GetPVarInt(playerid, "FloatGiaoTrucker")][2])){
	    	if(!IsATruckerCar(vehicleid)) {
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}
			if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
			    SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}

			new string[1280];
            new skilllevel = PlayerInfo[playerid][pTruckSkill];
            new money;
            
			if(skilllevel >= 0 && skilllevel <= 50) money = 8000;
			else if(skilllevel >= 50 && skilllevel <= 100) money = 12000;
			else if(skilllevel >= 101 && skilllevel <= 150) money = 16000;
			else if(skilllevel >= 151 && skilllevel <= 200) money = 20000;
			else if(skilllevel >= 201 && skilllevel <= 300) money = 24000;
			else if(skilllevel >= 301) money = 24000;

			if(PlayerInfo[playerid][pDonateRank] == 0) TienTrucker[playerid] += money;
	    	else if(PlayerInfo[playerid][pDonateRank] == 1) TienTrucker[playerid] += money + 1200;
	    	else if(PlayerInfo[playerid][pDonateRank] == 2) TienTrucker[playerid] += money + 4800;
	    	else if(PlayerInfo[playerid][pDonateRank] == 3) TienTrucker[playerid] += money + 10000;
	    	else if(PlayerInfo[playerid][pDonateRank] == 4) TienTrucker[playerid] += money + 24000;
	    	else if(PlayerInfo[playerid][pDonateRank] == 5) TienTrucker[playerid] += money + 24000;

		    format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]]), number_format(TienTrucker[playerid]));
		    SendClientMessageEx(playerid, COLOR_YELLOW, string);
		    
		    KyNangTrucker[playerid] += 1;

		    DeletePVar(playerid, "GiaoTruckerNe");
		    DeletePVar(playerid, "FloatGiaoTrucker");
		    DisablePlayerCheckpoint(playerid);

		    PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]] = 0;
		    SlotGiaoHang[playerid] = -1;

			if(PlayerTruck[playerid][HangHoa][0] == 0 && PlayerTruck[playerid][HangHoa][1] == 0 && PlayerTruck[playerid][HangHoa][2] == 0 && PlayerTruck[playerid][HangHoa][3] == 0 && PlayerTruck[playerid][HangHoa][4] == 0){
                if(!IsATruckerCar(vehicleid)) {
					SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
					return 1;
				}
				if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
				    SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
					return 1;
				}
				SetPVarInt(playerid, "TraXeChoTao", 1);
				SetPlayerCheckpoint(playerid, 2482.2764,-2089.6123,13.5469, 4);
				AntiTruckTeleport[playerid] = gettime()+15;
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao het toan bo so hang da nhan truoc do, hay quay tro lai va tra phuong tien va nhan tien thuong.");
		    }
		    else {
		        if(AntiTruckTeleport[playerid] > gettime()) {
	        		format(string, sizeof(string), "[LS-VN.NET - ANTI CHEAT] Nguoi choi %s co the dang hack Teleport Trucker (/spec %d)", GetPlayerNameEx(playerid), playerid);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			SoLanTeleportTruck[playerid] += 1;

		    		if(SoLanTeleportTruck[playerid] == 2) {
		    			PrisonHacking(playerid, "Hacking Teleport Trucker");
		    		}
		    	}
				cmd_xemhang(playerid, "");
			}
		}
	}

	if(GetPVarInt(playerid, "GiaoTruckerNee") == 1){
		new vehicleid = GetPlayerVehicleID(playerid);
	    if(IsPlayerInRangeOfPoint(playerid, 4, GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][0], GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][1], GiaoTruckerr[GetPVarInt(playerid, "FloatGiaoTruckerr")][2])){
            if(!IsATruckerCar(vehicleid)) {
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}
			
			if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
			    SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}
			new string[1280];
		    new skilllevel = PlayerInfo[playerid][pTruckSkill];
           
		    KyNangTrucker[playerid] += 1;
			 		 
		    if(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]] == 4) {
		    	if(GetPVarInt(playerid, "FloatGiaoTruckerr") == 0) {
		    		VatLieuTrucker[playerid] += 600;
					TienTrucker[playerid] += 48000;
					format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s - %s vat lieu) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]]), number_format(TienTrucker[playerid]), number_format(VatLieuTrucker[playerid]));
		    	}
		    	if(GetPVarInt(playerid, "FloatGiaoTruckerr") == 1) {
		    		VatLieuTrucker[playerid] += 570;
					TienTrucker[playerid] += 52000;
					format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s - %s vat lieu) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]]), number_format(TienTrucker[playerid]), number_format(VatLieuTrucker[playerid]));
		    	}
			}

			else if(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]] == 5) {
				if(GetPVarInt(playerid, "FloatGiaoTruckerr") == 2) {
					PotVatLieu[playerid] += 6;
					CrackVatLieu[playerid] += 4;
					TienTrucker[playerid] += 45000;
					format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s - %s pot - %s crack) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]]), number_format(TienTrucker[playerid]), number_format(PotVatLieu[playerid]), number_format(CrackVatLieu[playerid]));
		    	}
		    	if(GetPVarInt(playerid, "FloatGiaoTruckerr") == 3) {
		    		PotVatLieu[playerid] += 6;
					CrackVatLieu[playerid] += 4;
					TienTrucker[playerid] += 57000;
					format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s - %s pot - %s crack) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]]), number_format(TienTrucker[playerid]), number_format(PotVatLieu[playerid]), number_format(CrackVatLieu[playerid]));
		    	}
			}

			else if(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]] == 6) {

				if(GetPVarInt(playerid, "FloatGiaoTruckerr") == 4) {
					TienTrucker[playerid] += 55000;
				}
				if(GetPVarInt(playerid, "FloatGiaoTruckerr") == 5) {
					TienTrucker[playerid] += 62000;
				}

				if(skilllevel >= 0 && skilllevel <= 50) PlayerWeapon[playerid] = 5;
				else if(skilllevel >= 51 && skilllevel <= 100) PlayerWeapon[playerid] = 22;
				else if(skilllevel >= 101 && skilllevel <= 150) PlayerWeapon[playerid] = 25;
				else if(skilllevel >= 151 && skilllevel <= 200) PlayerWeapon[playerid] = 29;
				else if(skilllevel >= 201 && skilllevel <= 300) PlayerWeapon[playerid] = 28;
				else if(skilllevel >= 301) PlayerWeapon[playerid] = 32;

				new WeaponName[32];
				GetWeaponName(PlayerWeapon[playerid], WeaponName, sizeof(WeaponName));
				format(string, sizeof(string), "Ban da giao thanh cong hang (%s) ($%s - %s) den vi tri duoc chi dinh.", TenLoaiHangTrucker(PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]]), number_format(TienTrucker[playerid]), WeaponName);
			}
		
		    SendClientMessageEx(playerid, COLOR_YELLOW, string);

			PlayerTruck[playerid][HangHoa][SlotGiaoHang[playerid]] = 0;
		    SlotGiaoHang[playerid] = -1; 

		    DeletePVar(playerid, "GiaoTruckerNee");
		    DeletePVar(playerid, "FloatGiaoTruckerr");
		    DisablePlayerCheckpoint(playerid);
		    
		    if(PlayerTruck[playerid][HangHoa][0] == 0 && PlayerTruck[playerid][HangHoa][1] == 0 && PlayerTruck[playerid][HangHoa][2] == 0 && PlayerTruck[playerid][HangHoa][3] == 0 && PlayerTruck[playerid][HangHoa][4] == 0){
                
				if(!IsATruckerCar(vehicleid)) {
					SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
					return 1;
				}
				
				if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
				    SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
					return 1;
				}
				SetPVarInt(playerid, "TraXeChoTao", 1);
				SetPlayerCheckpoint(playerid, 2482.2764,-2089.6123,13.5469, 4);
				AntiTruckTeleport[playerid] = gettime()+45;
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao het toan bo so hang da nhan truoc do, hay quay tro lai va tra phuong tien va nhan tien thuong.");
		    }else {
			    if(AntiTruckTeleport[playerid] > gettime()) {
	        		format(string, sizeof(string), "[LS-VN.NET - ANTI CHEAT] Nguoi choi %s co the dang hack Teleport Trucker (/spec %d)", GetPlayerNameEx(playerid), playerid);
	    			ABroadCast(COLOR_LIGHTRED, string, 2);
	    			
	    			SoLanTeleportTruck[playerid] += 1;

		    		if(SoLanTeleportTruck[playerid] == 2) {
		    			PrisonHacking(playerid, "Hacking Teleport Trucker");
		    		}
	    			
		    	}
				cmd_xemhang(playerid, "");
			}
			//==================================================================
		}
	}

	if(GetPVarInt(playerid, "TraXeChoTao") == 1){
	    if(IsPlayerInRangeOfPoint(playerid, 4, 2482.2764,-2089.6123,13.5469)){
	    	new vehicleid = GetPlayerVehicleID(playerid);
			if(!IsATruckerCar(vehicleid)) {
				SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}
			
			if(GetPlayerState(playerid) != PLAYER_STATE_DRIVER) {
			    SendClientMessageEx(playerid, COLOR_YELLOW, "Ban khong o tren phuong tien Trucker.");
				return 1;
			}

	    	if(AntiTruckTeleport[playerid] > gettime()) {
	    		SoLanTeleportTruck[playerid] += 1;
	    		
	    		new string[1280];
        		format(string, sizeof(string), "[LS-VN.NET - ANTI CHEAT] Nguoi choi %s co the dang hack Teleport Trucker (/spec %d)", GetPlayerNameEx(playerid), playerid);
    			ABroadCast(COLOR_LIGHTRED, string, 2);
    			
	    		if(SoLanTeleportTruck[playerid] == 2) {
	    			PrisonHacking(playerid, "Hacking Teleport Trucker");
	    		}
	    	}

	        new string[1280];
		    format(string, sizeof(string), "Ban da hoan thanh cong viec van chuyen mot cach tuyet voi ban nhan duoc ($%s) (+%d ky nang).", number_format(TienTrucker[playerid]), KyNangTrucker[playerid]);
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
		    	new WeaponName[32];
				GetWeaponName(PlayerWeapon[playerid], WeaponName, sizeof(WeaponName));
		    	format(string, sizeof(string), "Ban da nhan duoc vu khi %s tu viec van chuyen hang bat hop phap.", WeaponName);

		    	if(PlayerInfo[playerid][pLevel] > 1 && PlayerInfo[playerid][pConnectHours] > 2) {
	            	GivePlayerValidWeapon(playerid, PlayerWeapon[playerid], 1);
	            }
		    }

		    PlayerInfo[playerid][pCash] += TienTrucker[playerid];        
			SendClientMessageEx(playerid, COLOR_YELLOW, string);

		    DeletePVar(playerid, "GiaoTruckerNe");
		    DeletePVar(playerid, "FloatGiaoTrucker");
		    DeletePVar(playerid, "TraXeChoTao");
		    DisablePlayerCheckpoint(playerid);

		    SetVehicleToRespawn(vehicleid);

		    PlayerInfo[playerid][pTruckSkill] += KyNangTrucker[playerid];
		    PlayerInfo[playerid][pSoLanGiaoTrucker] += 1;

		    PlayerInfo[playerid][pXP] += 1;

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

stock TenLoaiHangTrucker(loaihang){
	new name[1280];
	switch(loaihang){
		case 1: name = "Thuc pham va Do uong";
		case 2: name = "Quan ao";
		case 3: name = "Trai cay";
		case 4: name = "Vat lieu";
		case 5: name = "Ma tuy";
		case 6: name = "Vu khi";
	}
	return name;
}

stock ChonSlotHang(playerid){
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
	return 1;
}

stock RandomGiaoHang(playerid){
    new vehicleid = GetPlayerVehicleID(playerid);
	if(IsATruckerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER){
		if(GetPVarInt(playerid, "GiaoTruckerNe") == 0){
			new rand;
			if(PlayerTruck[playerid][HangHoa][0] == 1 || PlayerTruck[playerid][HangHoa][0] == 3) {
				rand = random(2); // 0 - 1 - 2
				if(rand == 0) rand = 1;
			}
			else {
				rand = 2 + random(3);
				if(rand == 0) rand = 3;
				if(rand == 1) rand = 4;
				if(rand == 2) rand = 5;
			}
			
			SetPVarInt(playerid, "FloatGiaoTrucker", rand);
		    SetPVarInt(playerid, "GiaoTruckerNe", 1);
			SetPlayerCheckpoint(playerid, GiaoTrucker[rand][0], GiaoTrucker[rand][1], GiaoTrucker[rand][2], 4);
			AntiTruckTeleport[playerid] = gettime()+25;
			new zone[MAX_ZONE_NAME];
			Get3DZone(GiaoTrucker[rand][0], GiaoTrucker[rand][1], GiaoTrucker[rand][2], zone, sizeof(zone));
            new thongbao[1280];
	        format(thongbao, sizeof(thongbao), "Ban hay giao hang den %s , vi tri da duoc danh dau tren ban do.", zone);
			SendClientMessageEx(playerid, COLOR_GREEN, thongbao);
		}else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao chuyen hang truoc do , vui long giao xong roi tiep tuc cong viec!");
	}else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong o tren phuong tien giao hang cua ban!");
	return 1;
}

stock RandomGiaoHangNguyHiem(playerid){
    new vehicleid = GetPlayerVehicleID(playerid);
	if(IsATruckerCar(vehicleid) && GetPlayerState(playerid) == PLAYER_STATE_DRIVER){
		if(GetPVarInt(playerid, "GiaoTruckerNee") == 0){
			//new rand = random(sizeof(GiaoTruckerr));
			new rand;
			if(PlayerTruck[playerid][HangHoa][0] == 4) {
				rand = random(1); // VAT LIEU
				if(rand == 0) rand = 1;
				SetPVarInt(playerid, "FloatGiaoTruckerr", rand);
			}
			else if(PlayerTruck[playerid][HangHoa][0] == 5) {
				rand = 1+random(2); // Ma tuy
				if(rand == 0) rand = 2;
				if(rand == 1) rand = 3;
				SetPVarInt(playerid, "FloatGiaoTruckerr", rand);
			}
			else if(PlayerTruck[playerid][HangHoa][0] == 6) {
				rand = 2 + random(3);
				if(rand == 0) rand = 4;
				if(rand == 1) rand = 5;
				if(rand == 2) rand = 4;
				SetPVarInt(playerid, "FloatGiaoTruckerr", rand);
			}
			
		    SetPVarInt(playerid, "GiaoTruckerNee", 1);
			SetPlayerCheckpoint(playerid, GiaoTruckerr[rand][0], GiaoTruckerr[rand][1], GiaoTruckerr[rand][2], 4);
			AntiTruckTeleport[playerid] = gettime()+25;
			new zone[MAX_ZONE_NAME];
			Get3DZone(GiaoTruckerr[rand][0], GiaoTruckerr[rand][1], GiaoTruckerr[rand][2], zone, sizeof(zone));
            new thongbao[1280];
	        format(thongbao, sizeof(thongbao), "Ban hay giao hang den %s, vi tri da duoc danh dau tren ban do. (Rand = %d)", zone, rand);
			SendClientMessageEx(playerid, COLOR_GREEN, thongbao);
		}else SendClientMessageEx(playerid, COLOR_YELLOW, "Ban da giao chuyen hang truoc do , vui long giao xong roi tiep tuc cong viec!");
	}else SendClientMessageEx(playerid, COLOR_GREY, "Ban khong o tren phuong tien giao hang cua ban!");
	return 1;
}

stock RandomCreTrucker(playerid) {
	new rand = random(100);
	if(rand >= 0 && rand <= 30) {
		new cre = 10+random(40);
		PlayerInfo[playerid][pnDP] += cre;
		new thongbao[1280];
	    format(thongbao, sizeof(thongbao), "[CHUC MUNG] Nguoi choi %s vua nhan duoc %s Cre , tu viec van chuyen hang Trucker <3.", GetPlayerNameEx(playerid), number_format(cre));
	    SendClientMessageToAllEx(COLOR_LIGHTBLUE, thongbao);
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
	SlotGiaoHang[playerid] = -1;
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
