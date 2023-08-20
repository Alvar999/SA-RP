#include <a_samp>
#include <YSI\y_hooks>


enum CaptureEvent {
    StartCapture,
    Float:EventCapture[3],

    Text3D:TextEventCapture,
    PickupEventCapture,

    TimeEvent,

    NguoiChiem,
    TrangThaiCapture,
    Time7giay
}
new PlayerEvent[CaptureEvent];

new Float:PosCapture[][3] = {
    {2212.9097,-1169.9043,25.7266}, 
    {755.8282,-1263.4014,13.5581},
    {2172.9617,-2301.3250,13.5469}
};

CMD:diaban(playerid, params[]) {
    if(PlayerEvent[StartCapture] == 1) {
        PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
        SetPlayerCheckpoint(playerid, PlayerEvent[EventCapture][0],PlayerEvent[EventCapture][1],PlayerEvent[EventCapture][2], 3.0);
        CP[playerid] = 252000;
        SendClientMessage(playerid, COLOR_YELLOW, "Vi tri chiem dong da duoc hien thi tren ban do.");
        return 1;
    }else SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chiem dong chua  duoc bat dau, khong the /diaban.");
    return 1;
}
task BatDauCapture[1000]() {
    new thongbao[1280];
    new string[1280];
    if(hour == 15 || hour == 20) {
        if(PlayerEvent[StartCapture] == 0) {
            PlayerEvent[StartCapture] = 1;
            PlayerEvent[TimeEvent] = 15;

            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            new rand = random(sizeof(PosCapture));

            PlayerEvent[EventCapture][0] = PosCapture[rand][0];
            PlayerEvent[EventCapture][1] = PosCapture[rand][1];
            PlayerEvent[EventCapture][2] = PosCapture[rand][2];

            new zone[MAX_ZONE_NAME];
            Get3DZone(PosCapture[rand][0], PosCapture[rand][1], PosCapture[rand][2], zone, sizeof(zone));

            format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s\nSu dung: /chiemdongngay.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
            PlayerEvent[TextEventCapture] = CreateDynamic3DTextLabel(string, -1, PosCapture[rand][0], PosCapture[rand][1], PosCapture[rand][2]+0.7, 50.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
            PlayerEvent[PickupEventCapture] = CreateDynamicPickup(1252, 23, PosCapture[rand][0], PosCapture[rand][1], PosCapture[rand][2]);

            SendClientMessageToAll(COLOR_LIGHTRED, "----------------------------------------------------------------------------------------------------");
            format(thongbao, sizeof(thongbao), "[THONG BAO].");
            SendClientMessageToAll(COLOR_LIGHTRED, thongbao);
            format(thongbao, sizeof(thongbao), "   - Thoi gian chiem dong da duoc bat dau (Vi tri : %s) (/diaban).", zone);
            SendClientMessageToAll(COLOR_LIGHTRED, thongbao);
            format(thongbao, sizeof(thongbao), "   - Cac Gangster co the bat dau di chuyen den vi tri chiem dong.");
            SendClientMessageToAll(COLOR_LIGHTRED, thongbao);
            SendClientMessageToAll(COLOR_LIGHTRED, "----------------------------------------------------------------------------------------------------");
            return 1;
        }
    }
    return 1;
}

CMD:batdauchiemdong(playerid) {
    if(PlayerInfo[playerid][pAdmin] >= 1337) {
        if(PlayerEvent[StartCapture] == 0) {
            PlayerEvent[StartCapture] = 1;
            PlayerEvent[TimeEvent] = 15;

            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            new Float:Pos[3];
            GetPlayerPos(playerid, Pos[0],  Pos[1],  Pos[2]);
            PlayerEvent[EventCapture][0] = Pos[0];
            PlayerEvent[EventCapture][1] = Pos[1];
            PlayerEvent[EventCapture][2] = Pos[2];

            new string[1280];
            new zone[MAX_ZONE_NAME];
            Get3DZone(Pos[0],  Pos[1],  Pos[2], zone, sizeof(zone));

            format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s\nSu dung: /chiemdongngay.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
            PlayerEvent[TextEventCapture] = CreateDynamic3DTextLabel(string, -1, Pos[0],  Pos[1],  Pos[2]+0.7, 50.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
            PlayerEvent[PickupEventCapture] = CreateDynamicPickup(1252, 23, Pos[0],  Pos[1],  Pos[2]);

            SendClientMessage(playerid, COLOR_YELLOW, "Ban da bat dau chuc nang chiem dong thanh cong.");
            return 1;
        }
        else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chiem dong da duoc bat dau roi, khong the bat dau tiep tuc.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "Ban khong the su dung lenh nay.");
    return 1;
}

CMD:ngungchiemdong(playerid, params[]) {
    if(PlayerInfo[playerid][pAdmin] >= 1337) {
        if(PlayerEvent[StartCapture] == 1) {
            PlayerEvent[StartCapture] = 0;
            PlayerEvent[TimeEvent] = 0;

            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            PlayerEvent[EventCapture][0] = 0;
            PlayerEvent[EventCapture][1] = 0;
            PlayerEvent[EventCapture][2] = 0;

            DestroyDynamic3DTextLabel(PlayerEvent[TextEventCapture]);
            DestroyDynamicPickup(PlayerEvent[PickupEventCapture]);

            SendClientMessage(playerid, COLOR_YELLOW, "Ban da ngung he thong chiem dong thanh cong.");
            return 1;
        }
        else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai he thong chiem dong nay, chua duoc bat dau.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "Ban khong the su dung lenh nay.");
    return 1;
}

stock TrangThaiChiemDong(id) {
    new name[1280];
    if(id == 0) name = "Chua bi chiem";
    else if(id == 1) name = "Dang bi chiem";
    else if(id == 2) name = "Da bi chiem dong";
    return name;
}

hook OnPlayerDeath(playerid, killerid, reason) {
    if(GetPVarInt(playerid, "ChiemDongNgay") != 0) {
        DeletePVar(playerid, "ChiemDongNgay");
        DeletePVar(playerid, "TimeChiemDong");

        PlayerEvent[TrangThaiCapture] = 0;
        PlayerEvent[Time7giay] = 0;
        PlayerEvent[NguoiChiem] = -1;

        new string[1280];
        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

        SendClientMessage(playerid, COLOR_YELLOW, "Ban da bi giet khi dang chiem dong.");
        return 1;
    }
    return 1;
}

CMD:chiemdongngay(playerid, params[]) {
    if(PlayerEvent[StartCapture] == 0) {
        SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chuc nang nay chua duoc bat dau.");
        return 1;
    }
    if(PlayerEvent[TimeEvent] == 0) {
        SendClientMessage(playerid, COLOR_YELLOW, "Hien tai da het thoi gian chiem dong.");
        return 1;
    }
    if(playerid == PlayerEvent[NguoiChiem]) {
        SendClientMessage(playerid, COLOR_YELLOW, "Ban da chiem vi tri nay truoc do roi , khong the chiem tiep tuc.");
        return 1;
    }
    if(IsPlayerInRangeOfPoint(playerid, 3.0, PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2])) {
        if(PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID || IsATowman(playerid)) {
            if(GetPVarInt(playerid, "ChiemDongNgay") == 0) {
                PlayerEvent[NguoiChiem] = playerid;
                PlayerEvent[TrangThaiCapture] = 1;
                PlayerEvent[Time7giay] = 7;

                SetPVarInt(playerid, "ChiemDongNgay", 7);
                SetTimerEx("TimeChiemDong", 1000, 0, "d", playerid);

                new string[1280];
                new zone[MAX_ZONE_NAME];
                Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
                format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s (%d giay)\nNguoi chiem : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), PlayerEvent[Time7giay], GetPlayerNameEx(playerid));
                UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

                foreach(new i: Player)
                {
                    if(PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID) {
                        new thongbao[5000];
                        format(thongbao, sizeof thongbao, "[CHIEM DONG] Nguoi choi %s thuoc (%s) da bat dau chiem dong khu vuc %s.", GetPlayerNameEx(playerid), FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName], zone);
                        SendClientMessage(i, -1, thongbao);
                        SendClientMessage(i, -1, "[CHIEM DONG] Khu vuc nay se thuoc so huu cua ho trong vong 7 giay.");
                    }
                }
                return 1;
            }
            
        }else return SendClientMessage(playerid, COLOR_YELLOW, "Hien tai chuc nang nay chi thuc hien doi voi nhung nguoi trong Gangster.");
    }
    return 1;
}

forward TimeChiemDong(playerid);
public TimeChiemDong(playerid)
{
    if(IsPlayerInRangeOfPoint(playerid, 150.0, PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2])) {

        SetPVarInt(playerid, "ChiemDongNgay", GetPVarInt(playerid, "ChiemDongNgay")-1);
        if(PlayerEvent[Time7giay] > 0) PlayerEvent[Time7giay] -= 1;

        new string[1280];
        format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "ChiemDongNgay"));
        GameTextForPlayer(playerid, string, 1100, 3);

        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s (%d giay)\nNguoi chiem : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), PlayerEvent[Time7giay], GetPlayerNameEx(PlayerEvent[NguoiChiem]));
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

        if(GetPVarInt(playerid, "ChiemDongNgay") > 0) SetTimerEx("TimeChiemDong", 1000, 0, "d", playerid);
        if(GetPVarInt(playerid, "ChiemDongNgay") <= 0)
        {
            DeletePVar(playerid, "ChiemDongNgay");
            DeletePVar(playerid, "TimeChiemDong");
            PlayerEvent[Time7giay] = 0;
            PlayerEvent[TrangThaiCapture] = 2;
			if(!IsATowman(playerid) && PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID) {
	            format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s\nNguoi chiem : %s (%s).", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), GetPlayerNameEx(PlayerEvent[NguoiChiem]), FamilyInfo[PlayerInfo[playerid][pFMember]][FamilyName]);
	            UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);
            }else {
                format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s\nNguoi chiem : %s (%s).", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]), GetPlayerNameEx(PlayerEvent[NguoiChiem]), arrGroupData[PlayerInfo[playerid][pMember]][g_szGroupName]);
	            UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);
            }

            foreach(new i: Player)
            {
                if(PlayerInfo[playerid][pFMember] != INVALID_FAMILY_ID && !IsATowman(playerid)) {
                    if(PlayerEvent[TrangThaiCapture] == 2) {
                        new thongbao[5000];
                        format(thongbao, sizeof thongbao, "[CHIEM DONG] Nguoi choi %s thuoc (%s) da chiem dong thanh cong khu vuc %s.", GetPlayerNameEx(PlayerEvent[NguoiChiem]), FamilyInfo[PlayerInfo[playerid][pFMember]][FamilyName], zone);
                        SendClientMessage(i, COLOR_LIGHTRED, thongbao);
                    }
                    
                }else {
                    if(PlayerEvent[TrangThaiCapture] == 2) {
                        new thongbao[5000];
                        format(thongbao, sizeof thongbao, "[CHIEM DONG] Nguoi choi %s thuoc (%s) da chiem dong thanh cong khu vuc %s.", GetPlayerNameEx(PlayerEvent[NguoiChiem]), arrGroupData[PlayerInfo[playerid][pMember]][g_szGroupName], zone);
                        SendClientMessage(i, COLOR_LIGHTRED, thongbao);
                    }
                }
            }
        }
    }else {
        DeletePVar(playerid, "ChiemDongNgay");
        DeletePVar(playerid, "TimeChiemDong");

        PlayerEvent[TrangThaiCapture] = 0;
        PlayerEvent[Time7giay] = 0;
        PlayerEvent[NguoiChiem] = -1;

        new string[1280];
        new zone[MAX_ZONE_NAME];
        Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
        format(string, sizeof(string), "KHU VUC CHIEM DONG\n\nVi tri : %s\nTinh trang : %s.", zone, TrangThaiChiemDong(PlayerEvent[TrangThaiCapture]));
        UpdateDynamic3DTextLabelText(PlayerEvent[TextEventCapture], -1, string);

        SendClientMessage(playerid, COLOR_YELLOW, "Ban da chiem dong that bai do chay ra xa khoi khu vuc chiem dong (150m).");
        return 1;
    }
    return 1;
}

task UpdateCapture[60000] () {
    if(PlayerEvent[StartCapture] == 1) {
        if(PlayerEvent[TimeEvent] > 0) {
            PlayerEvent[TimeEvent] -= 1;
        }
        if(PlayerEvent[TimeEvent] == 0) {
            new zone[MAX_ZONE_NAME];
            Get3DZone(PlayerEvent[EventCapture][0], PlayerEvent[EventCapture][1], PlayerEvent[EventCapture][2], zone, sizeof(zone));
            SendClientMessageToAll(COLOR_LIGHTRED, "------------------------ CHIEM DONG ---------------------------");
            
            if(PlayerInfo[PlayerEvent[NguoiChiem]][pFMember] != INVALID_FAMILY_ID && !IsATowman(PlayerEvent[NguoiChiem]))
			{
	            new thongbao[5000];
	            format(thongbao, sizeof thongbao, "[CHIEM DONG] Nguoi choi %s thuoc (%s) da chiem dong va so huu thanh cong khu vuc %s.", GetPlayerNameEx(PlayerEvent[NguoiChiem]), FamilyInfo[PlayerInfo[PlayerEvent[NguoiChiem]][pFMember]][FamilyName], zone);
	            SendClientMessageToAll(COLOR_LIGHTRED, thongbao);
            }else {
                new thongbao[5000];
	            format(thongbao, sizeof thongbao, "[CHIEM DONG] Nguoi choi %s thuoc (%s) da chiem dong va so huu thanh cong khu vuc %s.", GetPlayerNameEx(PlayerEvent[NguoiChiem]), arrGroupData[PlayerEvent[NguoiChiem]][g_szGroupName], zone);
	            SendClientMessageToAll(COLOR_LIGHTRED, thongbao);
			}

            SendClientMessageToAll(COLOR_LIGHTRED, "----------------------------------------------------------------------");

            QuaTangChiemDong(PlayerEvent[NguoiChiem]);

            PlayerEvent[StartCapture] = 0;
            PlayerEvent[TimeEvent] = 0;
            
            PlayerEvent[NguoiChiem] = -1;
            PlayerEvent[TrangThaiCapture] = 0;

            PlayerEvent[EventCapture][0] = 0;
            PlayerEvent[EventCapture][1] = 0;
            PlayerEvent[EventCapture][2] = 0;

            DestroyDynamic3DTextLabel(PlayerEvent[TextEventCapture]);
            DestroyDynamicPickup(PlayerEvent[PickupEventCapture]);
        }
    }
}

stock QuaTangChiemDong(playerid) {
    // 15.000 vật liệu , 50 pot , 50 Crack , 1.000.000 SAD
    PlayerInfo[playerid][pMats] += 15000;
    PlayerInfo[playerid][pPot] += 50;
    PlayerInfo[playerid][pCrack] += 50;
    PlayerInfo[playerid][pCash] += 1000000;
    SendClientMessage(playerid, COLOR_YELLOW, "Ban da nhan duoc phan thuong tu viec chiem dong.");
    return 1;
}
