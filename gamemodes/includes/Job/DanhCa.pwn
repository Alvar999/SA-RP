#include <a_samp>
#include <YSI\y_hooks>

    //-------------------------------------------------------------------
    //                  Project create by #nDP                         //
    //                  Fb.com/nguyenduyphuong.com                     //
    //                  Copyright by nDP"                              //
    //-------------------------------------------------------------------

//____________________________________________________________________________//

#define             JOB_NguDan             (6208)
#define             BANCA                  (6209)

new JobNguDanID = 27;
new ThueThuyen[MAX_PLAYERS];

new CarNguDan[MAX_PLAYERS];
new Text3D:CarNguDanText[MAX_PLAYERS];
new ThuyenString[1280];

stock ShowJOB_NguDan(playerid) {
    if(PlayerInfo[playerid][pCMND] == 0) {
        SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
        return 1;
    } 
    new name[1280];
    if(PlayerInfo[playerid][pJob] == JobNguDanID || PlayerInfo[playerid][pJob2] == JobNguDanID)
        format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} Thue tau danh ca (5000$).\n{ffff00}=>{FFFFFF} Tra thuyen.\n{ffff00}=>{FFFFFF} Ban ca.");
    else 
        format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
    ShowPlayerDialog(playerid, JOB_NguDan, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
    return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
    if(PRESSED(KEY_YES))
    {
        if(ActorPos(playerid, ActorJob[28])) return ShowJOB_NguDan(playerid);
    }
    return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
    if(dialogid == JOB_NguDan && response == 1) {
        if(listitem == 0) {
            return  1;
        }
        if(listitem == 1) {
            if(PlayerInfo[playerid][pDonateRank] == 0) {
                if(PlayerInfo[playerid][pJob] == 0) {
                    PlayerInfo[playerid][pJob] = JobNguDanID;
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
                    PlayerInfo[playerid][pJob] = JobNguDanID;
                    new name[1280];
                    format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
                    SendClientMessage(playerid, -1, name);
                    return 1;
                }else if(PlayerInfo[playerid][pJob2] == 0){
                    PlayerInfo[playerid][pJob2] = JobNguDanID;
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
        if(listitem == 2) 
        {
            ShowNghiViec(playerid);
        }
        if(listitem == 3) 
        {
            if(PlayerInfo[playerid][pCash] > 5000) {
                ThueThuyenNe(playerid);
                PlayerInfo[playerid][pCash] -= 5000;
            }
            
        }
        if(listitem == 4) 
        {
            TraThuyenNe(playerid);
        }
        if(listitem == 5) 
        {
            new string[1280];
            format(string, sizeof(string), "So ca hien co cua ban la : %d con ca\nGia hien tai la : 50$ / 1 don vi\nBan vui long nhap so luong muon ban vao day: ", PlayerInfo[playerid][pCa]);
            ShowPlayerDialog(playerid, BANCA, DIALOG_STYLE_INPUT, "Ban ca", string, "Ban ngay", "Huy bo");
        }
    }

    if(dialogid == BANCA && response == 1){
        if(strfind(inputtext, "%", true) != -1) {
            return 1;
        }
        if(strfind(inputtext, "c", true) != -1) {
            return 1;
        }

        new ca = strval(inputtext);

        if(PlayerInfo[playerid][pCa] > 0)
        {
            if(PlayerInfo[playerid][pCa] >= ca)
            {
                if(ca > 99999 || ca < -1)
                {
                    SendClientMessage(playerid, -1, "Loi ban' ca' , vui long thu lai!!!");
                    return 1;
                }
                if(ca > 9999999999999999)
                {
                    new str[1280];
                    format(str, sizeof(str), "Nguoi choi %s dang co the dang bug Credits tu viec ban' ca' voi so luong %d", ca);
                    ABroadCast(COLOR_YELLOW, str, 2);
                }
                else
                {
                    PlayerInfo[playerid][pCash] += ca * 50;
                    PlayerInfo[playerid][pCa] -= ca;
                    
                    new str[1280];
                    format(str, sizeof(str), "Ban vua ban thanh cong %s con ca va nhan duoc %s$.", number_format(ca), number_format(ca * 50));
                    SendClientMessage(playerid, -1, str);
                    return 1;
                }
            }else SendClientMessage(playerid, -1, "Ban khong co nhieu ca nhu the (( /tuica ))");
        }else SendClientMessage(playerid, -1, "Ban chua co mot con ca nao het (( /tuica ))");
    }
    return 1;
}

hook OnPlayerDisconnect(playerid, reason) {
    TraThuyenNe(playerid);
    return 1;
}

stock TraThuyenNe(playerid) {
    if(PlayerInfo[playerid][pJob] == JobNguDanID || PlayerInfo[playerid][pJob2] == JobNguDanID) {
        if(ThueThuyen[playerid] == 1) {
            ThueThuyen[playerid] = 0;
            
            new cash = 5000 / 2;
            PlayerInfo[playerid][pCash] += 5000 - cash;
            
            DestroyVehicle(CarNguDan[playerid]);
            Delete3DTextLabel(CarNguDanText[playerid]);

            new thongbao[1280];
            format(thongbao, sizeof(thongbao), "Ban nhan duoc %s$ tu viec tra phuong tien da thue truoc do", number_format(5000 - cash));
            SendClientMessage(playerid, COLOR_YELLOW, thongbao);
            return 1;
        }else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua thue phuong tien , nen khong the tra phuong tien.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec nay, khong the tra phuong tien.");
    return 1;
}

stock ThueThuyenNe(playerid) 
{
    if(PlayerInfo[playerid][pJob] == JobNguDanID || PlayerInfo[playerid][pJob2] == JobNguDanID) 
    {
        if(ThueThuyen[playerid] == 0) 
        {
            ThueThuyen[playerid] = 1;

            SendClientMessage(playerid, -1, "> Ban da thue mot chiec thuyen danh ca thanh cong.");
            SendClientMessage(playerid, -1, "> Vi tri danh ca da duoc danh dau, ban hay den do va (/thacau).");

            CarNguDan[playerid] = CreateVehicle(453,2937.0938,-2041.1743,-0.3631,271.7275 , random(255), random(255), 1000, 0);
            PutPlayerInVehicle(playerid, CarNguDan[playerid] ,0);

            PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
            SetPlayerCheckpoint(playerid, 3165.7073,-1990.8729,-1.0493, 5.0);
            CP[playerid] = 252000;

            format(ThuyenString, sizeof ThuyenString, "Phuong tien cua {4d79ff}%s{FFFFFF}", GetPlayerNameEx(playerid));
            CarNguDanText[playerid] = Create3DTextLabel(ThuyenString, COLOR_WHITE, 0.0, 0.0, 0.0, 50.0, 0, 1);
            Attach3DTextLabelToVehicle(CarNguDanText[playerid], CarNguDan[playerid], 0.0, 0.0, 0.0);
            return 1;
        }else SendClientMessage(playerid, COLOR_YELLOW, "Ban da thue phuong tien nay truoc do roi , khong the thue tiep tuc.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec nay, khong the thue phuong tien.");
    return 1;
}

CMD:thacau(playerid, params[]) {
    if(ThueThuyen[playerid] == 0) {
        SendClientMessage(playerid, COLOR_YELLOW, "> Ban chua thue thuyen danh ca nao het.");
        return 1;
    }
    if(IsPlayerInRangeOfPoint(playerid, 200.0, 3165.7073,-1990.8729,-1.0493)) {
        if(IsPlayerInRangeOfVehicle(playerid, CarNguDan[playerid], 20)) {
            if(PlayerInfo[playerid][pCa] == 100) {
                SendClientMessage(playerid, COLOR_YELLOW, "> So luong ca cua ban da dat toi da , vui long ban truoc khi tiep tuc.");
                return 1;
            }
            if(GetPVarInt(playerid, "DangThaCa") == 0) {
                //-----------------------
                SetPVarInt(playerid, "DangThaCa", 1);
                new time = 5+random(5);

                SetPVarInt(playerid, "CauCaTime", time);
                SetTimerEx("CauCa", 1000, 0, "d", playerid);
                //-----------------------
            }else SendClientMessage(playerid, COLOR_YELLOW, "> Ban dang tha ca roi , khong the tha tiep tuc.");
        }else SendClientMessage(playerid, COLOR_YELLOW, "> Ban can phai o tren chiec thuyen danh ca cua ban.");
    }else SendClientMessage(playerid, COLOR_YELLOW, "> Ban khong o trong khu vuc danh ca.");
    return 1;
}

CMD:tuica(playerid, params[]) {
    new string[1280];
    format(string, sizeof(string), "> Tui ca hien co : %d con ca.", PlayerInfo[playerid][pCa]);
    SendClientMessage(playerid, COLOR_GREEN, string);
    return 1;
}

forward CauCa(playerid);
public CauCa(playerid)
{
    SetPVarInt(playerid, "CauCaTime", GetPVarInt(playerid, "CauCaTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~g~Dang tha ca", GetPVarInt(playerid, "CauCaTime"));
    GameTextForPlayer(playerid, string, 1100, 3);
    if(GetPVarInt(playerid, "CauCaTime") > 0) SetTimerEx("CauCa", 1000, 0, "d", playerid);
    if(GetPVarInt(playerid, "CauCaTime") <= 0)
    {
        DeletePVar(playerid, "CauCaTime");
        DeletePVar(playerid, "CauCa");
        DeletePVar(playerid, "DangThaCa");

        new xp = random(100);
        if(xp >= 0 && xp <= 30) {
            PlayerInfo[playerid][pXP] += 10;
        }

        new rand = random(100);
        if(rand >= 0 && rand <= 30) {
            SendClientMessage(playerid, -1, "> Ban vua vot duoc cai luoi khong.");
            return 1;   
        }else {
            PlayerInfo[playerid][pCa] += 1;
            SendClientMessage(playerid, COLOR_GREEN, "> Ban vua cau dinh mot con ca 1kg, /tuica.");
            return 1;
        }
    }
    return 1;
}