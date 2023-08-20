#include <YSI\y_hooks>



#define 			JOB_TaxiCompany  			(6305)

new JobTaxiCompanyID = 17;
new TaxiCar[MAX_PLAYERS];
new Text3D:TaxiCarText[MAX_PLAYERS];
new TaxiString[1280];

stock ShowJOB_TaxiCompany(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	}
	new name[1280];
	if(PlayerInfo[playerid][pJob] == JobTaxiCompanyID || PlayerInfo[playerid][pJob2] == JobTaxiCompanyID)
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} Lay phuong tien.\n{ffff00}=>{FFFFFF} Tra phuong tien.");
	else
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	ShowPlayerDialog(playerid, JOB_TaxiCompany, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[5])) return ShowJOB_TaxiCompany(playerid);
	}
	return 1;
}

task UpdateReloadCars[300000] ()
{
	foreach(new playerid: Player)
	{
		if(PlayerInfo[playerid][pJob] == JobTaxiCompanyID || PlayerInfo[playerid][pJob2] == JobTaxiCompanyID)
		{
			if(GetPVarInt(playerid, "DaLayXePizza") == 1)
			{
				if(!IsPlayerInRangeOfVehicle(playerid, TaxiCar[playerid], 50))
				{
					DeletePVar(playerid, "DaLayXePizza");
					DestroyVehicle(TaxiCar[playerid]);
			    	Delete3DTextLabel(TaxiCarText[playerid]);
				}
			}
		}
	}
}

stock TraXeTaxi(playerid) {
	if(GetPVarInt(playerid, "DaLayXePizza") == 1)
	{
		DeletePVar(playerid, "DaLayXePizza");
		DestroyVehicle(TaxiCar[playerid]);
	    Delete3DTextLabel(TaxiCarText[playerid]);
	}
	return 1;
}

stock LayXeTaxi(playerid)
{
	if(PlayerInfo[playerid][pJob] == JobTaxiCompanyID || PlayerInfo[playerid][pJob2] == JobTaxiCompanyID) {
		if(GetPVarInt(playerid, "DaLayXePizza") == 0)
		{
			TaxiCar[playerid] = CreateVehicle(420, 1779.5149,-1897.7979,13.3890 , 3, 3, 1000, 0);
			PutPlayerInVehicle(playerid, TaxiCar[playerid] ,0);

			format(TaxiString, sizeof TaxiString, "{FFFF00}Taxi Driver{FFFFFF}\nPhuong tien cua {FFFF00}%s{FFFFFF}.", GetPlayerNameEx(playerid));
			TaxiCarText[playerid] = Create3DTextLabel(TaxiString, COLOR_WHITE, 0.0, 0.0, 0.0, 50.0, 0, 1);
			Attach3DTextLabelToVehicle(TaxiCarText[playerid], TaxiCar[playerid], 0.0, 0.0, 0.0);

			SetPVarInt(playerid, "DaLayXePizza", 1);
			SendClientMessage(playerid, -1, "{FFFF00}Taxi Driver{FFFFFF}: Ban da nhan phuong tien van chuyen thanh cong.");
			return 1;
		}else SendClientMessage(playerid, -1, "{FFFF00}Taxi Driver{FFFFFF}: Ban da lay phuong tien truoc do roi , khong the lay tiep tuc.");
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
	if(dialogid == JOB_TaxiCompany && response == 1) {
		if(listitem == 0) {

		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobTaxiCompanyID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s{ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
					SetPlayerSkin(playerid, 61);
					PlayerInfo[playerid][pModel] = 61;
					return 1;
				}else {
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban hien dang lam cong viec {99cc00}%s{ffff00}, nen khong the xin them cong viec nay duoc (/nghiviec).", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}
			}else {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobTaxiCompanyID;
					SetPlayerSkin(playerid, 61);
					PlayerInfo[playerid][pModel] = 61;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobTaxiCompanyID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (2){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob2]));
    				SendClientMessage(playerid, -1, name);
					SetPlayerSkin(playerid, 61);
					PlayerInfo[playerid][pModel] = 61;
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
			LayXeTaxi(playerid);
		}
		if(listitem == 4)
		{
			TraXeTaxi(playerid);
			SendClientMessage(playerid, -1, "> Ban da tra phuong tien taxi thanh cong.");
		}
	}
	return 1;
}


