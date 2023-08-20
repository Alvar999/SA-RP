#include <YSI\y_hooks>


#define 				DIALOG_NHIEMVU			(9175)

new NV_Pizza = 20;
new NV_Trucker = 15;
new NV_DaoDa = 80;

CMD:nhiemvu(playerid, params[]) {
	ShowNhiemVu(playerid);
	return 1;
}

stock ShowNhiemVu(playerid) {
	new pizza[1280], trucker[1280], Khoangsan[1280];
	if(PlayerInfo[playerid][pNV_Pizza] < NV_Pizza)
	    format(pizza, sizeof(pizza), "%d/%d",PlayerInfo[playerid][pNV_Pizza], NV_Pizza);
	else
	    format(pizza, sizeof(pizza), "Da hoan thanh");
	    
	if(PlayerInfo[playerid][pNV_Trucker] < NV_Trucker)
	    format(trucker, sizeof(trucker), "%d/%d",PlayerInfo[playerid][pNV_Trucker], NV_Trucker);
	else
	    format(trucker, sizeof(trucker), "Da hoan thanh");
    
	if(PlayerInfo[playerid][pNV_DaoDa] < NV_DaoDa)
	    format(Khoangsan, sizeof(Khoangsan), "%d/%d",PlayerInfo[playerid][pNV_DaoDa], NV_DaoDa);
	else
	    format(Khoangsan, sizeof(Khoangsan), "Da hoan thanh");

	new str[2460], str1[2460], str2[2460], str3[2460], str4[2460], str5[2460], str6[2460], name[2460];
	format(str1, sizeof(str), "{ff8c1a}1.\tVan chuyen banh Pizza\t%d banh pizza\t%s    -    %s", NV_Pizza, TinhTrangNhiemVu(PlayerInfo[playerid][pNV][0]), pizza);
	format(str2, sizeof(str), "{ff8c1a}2.\tGiao hang Trucker\t%d chuyen\t%s    -    %s", NV_Trucker, TinhTrangNhiemVu(PlayerInfo[playerid][pNV][1]), trucker);
	format(str6, sizeof(str), "{ff8c1a}3.\tDao khoang san\t%d lan\t%s    -    %s", NV_DaoDa, TinhTrangNhiemVu(PlayerInfo[playerid][pNV][2]), Khoangsan);
	if(PlayerInfo[playerid][pNV][0] == 2 && PlayerInfo[playerid][pNV][1] == 2 && PlayerInfo[playerid][pNV][2] == 2)
		format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n\t> {ff0000}Nhan thuong ngay{FFFFFF}", "ID\tTen nhiem vu\tSo luong\tTinh trang    -    Tien do",str1,str2,str3,str4,str5,str6);
	else format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s", "ID\tTen nhiem vu\tSo luong\tTinh trang    -    Tien do",str1,str2,str3,str4,str5,str6);
	format(name, sizeof(name), "{ffffff}BANG NHIEM VU");
	ShowPlayerDialog(playerid, DIALOG_NHIEMVU, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Dong y", "Huy Bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_NHIEMVU && response == 1){
    	if(listitem == 0) {
    		if(PlayerInfo[playerid][pNV][0] == 0){
	            PlayerInfo[playerid][pNV][0] = 1;
	            PlayerInfo[playerid][pNV_Pizza] = 0;
	            
	            new thongbao[1280];
	            format(thongbao, sizeof(thongbao), "[NHIEM VU HANG NGAY] Nguoi choi %s da nhan nhiem vu giao banh Pizza.", GetPlayerNameEx(playerid));
	            SendClientMessageToAllEx(-1, thongbao);
	            
	            SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan nhiem vu nay thanh cong , vui long hoan thanh nhiem vu de nhan phan thuong.");
	            return 1;
	        }else SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban da nhan nhiem vu nay truoc do , khong the nhan tiep vui long hoan thanh nhiem vu.");
    	}   
    	if(listitem == 1) {
    		if(PlayerInfo[playerid][pNV][1] == 0){
	            PlayerInfo[playerid][pNV][1] = 1;
	            PlayerInfo[playerid][pNV_Trucker] = 0;
	            
	            new thongbao[1280];
	            format(thongbao, sizeof(thongbao), "[NHIEM VU HANG NGAY] Nguoi choi %s da nhan nhiem vu Van Chuyen Trucker.", GetPlayerNameEx(playerid));
	            SendClientMessageToAllEx(-1, thongbao);
	            
	            SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan nhiem vu nay thanh cong , vui long hoan thanh nhiem vu de nhan phan thuong.");
	            return 1;
	        }else SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban da nhan nhiem vu nay truoc do , khong the nhan tiep vui long hoan thanh nhiem vu.");
    	}  
    	if(listitem == 2) {
    		if(PlayerInfo[playerid][pNV][2] == 0){
	            PlayerInfo[playerid][pNV][2] = 1;
	            PlayerInfo[playerid][pNV_DaoDa] = 0;
	            
	            new thongbao[1280];
	            format(thongbao, sizeof(thongbao), "[NHIEM VU HANG NGAY] Nguoi choi %s da nhan nhiem vu Dao Da.", GetPlayerNameEx(playerid));
	            SendClientMessageToAllEx(-1, thongbao);
	            
	            SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan nhiem vu nay thanh cong , vui long hoan thanh nhiem vu de nhan phan thuong.");
	            return 1;
	        }else SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban da nhan nhiem vu nay truoc do , khong the nhan tiep vui long hoan thanh nhiem vu.");
    	}
    	if(listitem == 3) {
    		if(PlayerInfo[playerid][pNhanThuongNV] == 1) {
    			SendClientMessage(playerid, COLOR_RED, "> Ban da nhan thuong nhiem vu cua ngay hom nay truoc do roi , khong the nhan tiep tuc.");
    			return 1;
    		}
    		SendClientMessage(playerid, COLOR_YELLOW, "Ban da hoan thanh tat ca nhiem vu cua ngay hom nay thanh cong.");
		    SendClientMessage(playerid, -1, "[PHAN THUONG] {FFFFFF}+10 Crack{FFFFFF} || {ff0000}10 Pot{FFFFFF} || {ff00ff}+50,000${FFFFFF} || {85adad}+500 Vatlieu{FFFFFF}.");
			// 10 Crack , 10 Pot , 50.000 , 1.000 vat liệu
            PlayerInfo[playerid][pCrack] += 10;
            PlayerInfo[playerid][pPot] += 10;
            PlayerInfo[playerid][pCash] += 50000;
            PlayerInfo[playerid][pMats] += 500;
            PlayerInfo[playerid][pNhanThuongNV] = 1;
    		return 1;
    	} 
	}
	return 1;
}

stock TinhTrangNhiemVu(idnv){
	new name[1280];
	switch(idnv){
		case 0: name = "Chua dang ky";
		case 1: name = "Da dang ky";
		case 2: name = "Da hoan thanh";
	}
	return name;
}

stock CheckNV_Pizza(playerid){
	if(PlayerInfo[playerid][pNV][0] == 1){
	    PlayerInfo[playerid][pNV_Pizza] += 1;
	    if(PlayerInfo[playerid][pNV_Pizza] == NV_Pizza) {
	    	PlayerInfo[playerid][pNV][0] = 2;
	    	SendClientMessage(playerid, COLOR_YELLOW, "[NHIEM VU HANG NGAY] Ban da hoan thanh nhiem vu.");
	    	return 1;
	    }
 	    new thongbao[1280];
        format(thongbao, sizeof(thongbao), "[NHIEM VU HANG NGAY] Ban da hoan thanh [%d / %d] trong nhiem vu giao Pizza.", PlayerInfo[playerid][pNV_Pizza], NV_Pizza);
        SendClientMessage(playerid, COLOR_YELLOW, thongbao);
		return 1;
	}
	return 1;
}

stock CheckNV_Trucker(playerid){
	if(PlayerInfo[playerid][pNV][1] == 1){
	    PlayerInfo[playerid][pNV_Trucker] += 1;
	    if(PlayerInfo[playerid][pNV_Trucker] == NV_Trucker) {
	    	PlayerInfo[playerid][pNV][1] = 2;
	    	SendClientMessage(playerid, COLOR_YELLOW, "[NHIEM VU HANG NGAY] Ban da hoan thanh nhiem vu.");
	    	return 1;
	    }
	    new thongbao[1280];
        format(thongbao, sizeof(thongbao), "[NHIEM VU HANG NGAY] Ban da hoan thanh [%d / %d] trong nhiem vu van chuyen hang.", PlayerInfo[playerid][pNV_Trucker], NV_Trucker);
        SendClientMessage(playerid, COLOR_YELLOW, thongbao);
		return 1;
	}
	return 1;
}

stock CheckNV_DaoDa(playerid){
	if(PlayerInfo[playerid][pNV][2] == 1){
	    PlayerInfo[playerid][pNV_DaoDa] += 1;
	    if(PlayerInfo[playerid][pNV_DaoDa] == NV_DaoDa) {
	    	PlayerInfo[playerid][pNV][2] = 2;
	    	SendClientMessage(playerid, COLOR_YELLOW, "[NHIEM VU HANG NGAY] Ban da hoan thanh nhiem vu.");
	    	return 1;
	    }
	    new thongbao[1280];
        format(thongbao, sizeof(thongbao), "[NHIEM VU HANG NGAY] Ban da hoan thanh [%d / %d] trong nhiem vu dao da.", PlayerInfo[playerid][pNV_DaoDa], NV_DaoDa);
        SendClientMessage(playerid, COLOR_YELLOW, thongbao);
		return 1;
	}
	return 1;
}
