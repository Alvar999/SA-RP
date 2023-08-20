#include <YSI\y_hooks>



#define 			JOB_BanVuKhi  			(6311)
#define         	CHETAODAN                   (5095)
#define 			DIALOG_AMMO_WEAPON			(6911)
#define 			DIALOG_CREATE_WEAPON		(6912)

new JobBanVuKhiID = 9;

//---------------------
// GIA (VAT LIEU) CHE TAO DAN
new vatlieu_9mm = 1500;
new vatlieu_s9mm = 3000;
new vatlieu_deagle = 4000;
new vatlieu_shotgun = 5000;
new vatlieu_mp5 = 9999999;
new vatlieu_uzi = 5000;
new vatlieu_tec9 = 5000;
new vatlieu_ak47 = 8000;
new vatlieu_m4a1 = 10000;
new vatlieu_rifle = 13000;
new vatlieu_sniper = 9999999;
new vatlieu_spas12 = 9999999;

// GIA (MONEY $) CHE TAO DAN
new cash_9mm = 80000;
new cash_s9mm = 150000;
new cash_deagle = 250000;
new cash_shotgun = 250000;
new cash_mp5 = 9999999;
new cash_uzi = 250000;
new cash_tec9 = 250000;
new cash_ak47 = 400000;
new cash_m4a1 = 500000;
new cash_rifle = 750000;
new cash_sniper = 9999999;
new cash_spas12 = 9999999;

// -------------------------------------------

// GIA (VAT LIEU) CHE TAO SUNG
new vatlieu_wp_9mm = 3000;
new vatlieu_wp_s9mm = 6000;
new vatlieu_wp_deagle = 8000;
new vatlieu_wp_shotgun = 8000;
new vatlieu_wp_mp5 = 9999999;
new vatlieu_wp_uzi = 10000;
new vatlieu_wp_tec9 = 10000;
new vatlieu_wp_ak47 = 13000;
new vatlieu_wp_m4a1 = 15000;
new vatlieu_wp_rifle = 20000;
new vatlieu_wp_sniper = 9999999;
new vatlieu_wp_spas12 = 9999999;
new vatlieu_wp_katana = 1000;
new vatlieu_wp_pool = 1000;
new vatlieu_wp_shovel = 1000;
new vatlieu_wp_bat = 1000;
new vatlieu_wp_c4 = 30000;
//------------------------------------------------------------------------------

// GIA (BAN VE) CHE TAO SUNG
new banve_wp_9mm = 10;
new banve_wp_s9mm = 10;
new banve_wp_deagle = 20;
new banve_wp_shotgun = 15;
new banve_wp_mp5 = 9999999;
new banve_wp_uzi = 15;
new banve_wp_tec9 = 15;
new banve_wp_ak47 = 22;
new banve_wp_m4a1 = 25;
new banve_wp_rifle = 30;
new banve_wp_sniper = 9999999;
new banve_wp_spas12 = 9999999;
new banve_wp_katana = 5;
new banve_wp_pool = 5;
new banve_wp_shovel = 5;
new banve_wp_bat = 5;
new banve_wp_c4 = 30;
//------------------------------------------------------------------------------

// GIA (MONEY $) CHE TAO SUNG
new cash_wp_9mm = 200000;
new cash_wp_s9mm = 300000;
new cash_wp_deagle = 500000;
new cash_wp_shotgun = 400000;
new cash_wp_mp5 = 9999999;
new cash_wp_uzi = 500000;
new cash_wp_tec9 = 500000;
new cash_wp_ak47 = 700000;
new cash_wp_m4a1 = 900000;
new cash_wp_rifle = 1500000;
new cash_wp_sniper = 9999999;
new cash_wp_spas12 = 9999999;
new cash_wp_katana = 100000;
new cash_wp_pool = 100000;
new cash_wp_shovel = 100000;
new cash_wp_bat = 100000;
//------------------------------------------------------------------------------

stock ShowJOB_BanVuKhi(playerid) {
	if(PlayerInfo[playerid][pCMND] == 0) {
		SendClientMessageEx(playerid, COLOR_YELLOW, "> Ban hien tai chua dang ky CMND, vui long dang ky truoc roi hay bat dau xin viec.");
		return 1;
	}
	new name[15000];
	if(PlayerInfo[playerid][pJob] == JobBanVuKhiID || PlayerInfo[playerid][pJob2] == JobBanVuKhiID){
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.\n{ffff00}=>{FFFFFF} Che tao vu khi\n{ffff00}=>{FFFFFF} Che tao dan.");
	}else {
		format(name, sizeof(name), "{ffff00}=>{FFFFFF} Huong dan cong viec.\n{ffff00}=>{FFFFFF} Xin viec.\n{ffff00}=>{FFFFFF} Nghi viec.");
	}
	ShowPlayerDialog(playerid, JOB_BanVuKhi, DIALOG_STYLE_LIST, "Tro giup cong viec", name, "Tim viec", "Huy Bo");
	return 1;
}


hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
	if(PRESSED(KEY_YES)){
		if(ActorPos(playerid, ActorJob[11])) return ShowJOB_BanVuKhi(playerid);
		if(ActorPos(playerid, ActorJob[12])) return ShowJOB_BanVuKhi(playerid);
		if(ActorPos(playerid, ActorJob[13])) return ShowJOB_BanVuKhi(playerid);
		if(ActorPos(playerid, ActorJob[14])) return ShowJOB_BanVuKhi(playerid);
		if(ActorPos(playerid, ActorJob[15])) return ShowJOB_BanVuKhi(playerid);
		if(ActorPos(playerid, ActorJob[16])) return ShowJOB_BanVuKhi(playerid);
	}
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == JOB_BanVuKhi && response == 1) {
		if(listitem == 0) {

		}
		if(listitem == 1) {
			if(PlayerInfo[playerid][pDonateRank] == 0) {
				if(PlayerInfo[playerid][pJob] == 0) {
					PlayerInfo[playerid][pJob] = JobBanVuKhiID;
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
					PlayerInfo[playerid][pJob] = JobBanVuKhiID;
					new name[1280];
    				format(name, sizeof(name), "{ffff00}Ban da nhan cong viec {99cc00}%s (1){ffff00} thanh cong!.", GetJobName(PlayerInfo[playerid][pJob]));
    				SendClientMessage(playerid, -1, name);
    				return 1;
				}else if(PlayerInfo[playerid][pJob2] == 0){
					PlayerInfo[playerid][pJob2] = JobBanVuKhiID;
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
			ShowCheTaoSung(playerid);
			return 1;
		}

		if(listitem == 4) {
			ShowCheTaoDan(playerid);
		}
	}

	if(dialogid == DIALOG_AMMO_WEAPON && response == 1) {
		if(listitem == 0) {
			if(PlayerInfo[playerid][pMats] > vatlieu_9mm) {
				if(PlayerInfo[playerid][pCash] > cash_9mm) {
					if(PlayerInfo[playerid][p9mm] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_9mm;
						PlayerInfo[playerid][pCash] -= cash_9mm;
						PlayerInfo[playerid][p9mm] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #9mm thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 1) {
			if(PlayerInfo[playerid][pMats] > vatlieu_s9mm) {
				if(PlayerInfo[playerid][pCash] > cash_s9mm) {
					if(PlayerInfo[playerid][pSdpistol] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_s9mm;
						PlayerInfo[playerid][pCash] -= cash_s9mm;
						PlayerInfo[playerid][pSdpistol] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Silenced 9mm thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 2) {
			if(PlayerInfo[playerid][pMats] > vatlieu_deagle) {
				if(PlayerInfo[playerid][pCash] > cash_deagle) {
					if(PlayerInfo[playerid][pDeagle] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_deagle;
						PlayerInfo[playerid][pCash] -= cash_deagle;
						PlayerInfo[playerid][pDeagle] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Desert Eagle thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 3) {
			if(PlayerInfo[playerid][pMats] > vatlieu_shotgun) {
				if(PlayerInfo[playerid][pCash] > cash_shotgun) {
					if(PlayerInfo[playerid][pShotgun] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_shotgun;
						PlayerInfo[playerid][pCash] -= cash_shotgun;
						PlayerInfo[playerid][pShotgun] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Shotgun thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 4) {
			if(PlayerInfo[playerid][pMats] > vatlieu_mp5) {
				if(PlayerInfo[playerid][pCash] > cash_mp5) {
					if(PlayerInfo[playerid][pSMG] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_mp5;
						PlayerInfo[playerid][pCash] -= cash_mp5;
						PlayerInfo[playerid][pSMG] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #MP5 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 5) {
			if(PlayerInfo[playerid][pMats] > vatlieu_uzi) {
				if(PlayerInfo[playerid][pCash] > cash_uzi) {
					if(PlayerInfo[playerid][pUzi] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_uzi;
						PlayerInfo[playerid][pCash] -= cash_uzi;
						PlayerInfo[playerid][pUzi] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Uzi thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 6) {
			if(PlayerInfo[playerid][pMats] > vatlieu_tec9) {
				if(PlayerInfo[playerid][pCash] > cash_tec9) {
					if(PlayerInfo[playerid][pTec] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_tec9;
						PlayerInfo[playerid][pCash] -= cash_tec9;
						PlayerInfo[playerid][pTec] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Tec-9 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 7) {
			if(PlayerInfo[playerid][pMats] > vatlieu_ak47) {
				if(PlayerInfo[playerid][pCash] > cash_ak47) {
					if(PlayerInfo[playerid][pAka] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_ak47;
						PlayerInfo[playerid][pCash] -= cash_ak47;
						PlayerInfo[playerid][pAka] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #AK-47 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 8) {
			if(PlayerInfo[playerid][pMats] > vatlieu_m4a1) {
				if(PlayerInfo[playerid][pCash] > cash_m4a1) {
					if(PlayerInfo[playerid][pMbon] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_m4a1;
						PlayerInfo[playerid][pCash] -= cash_m4a1;
						PlayerInfo[playerid][pMbon] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #M4a1 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 9) {
			if(PlayerInfo[playerid][pMats] > vatlieu_rifle) {
				if(PlayerInfo[playerid][pCash] > cash_rifle) {
					if(PlayerInfo[playerid][pRifle] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_rifle;
						PlayerInfo[playerid][pCash] -= cash_rifle;
						PlayerInfo[playerid][pRifle] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Rifle thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 10) {
			if(PlayerInfo[playerid][pMats] > vatlieu_sniper) {
				if(PlayerInfo[playerid][pCash] > cash_sniper) {
					if(PlayerInfo[playerid][pSniper] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_sniper;
						PlayerInfo[playerid][pCash] -= cash_sniper;
						PlayerInfo[playerid][pSniper] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Sniper thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 11) {
			if(PlayerInfo[playerid][pMats] > vatlieu_spas12) {
				if(PlayerInfo[playerid][pCash] > cash_spas12) {
					if(PlayerInfo[playerid][pSpas] < 10) {
						PlayerInfo[playerid][pMats] -= vatlieu_spas12;
						PlayerInfo[playerid][pCash] -= cash_spas12;
						PlayerInfo[playerid][pSpas] += 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao bang dan #Spas-12 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Hien tai so luong bang dan cua ban da full khong the che tao them nua.");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}
	}


	if(dialogid == DIALOG_CREATE_WEAPON && response == 1) {
		if(listitem == 0) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_9mm) {
				if(PlayerInfo[playerid][pCash] > cash_wp_9mm) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_9mm) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_9mm;
						PlayerInfo[playerid][pCash] -= cash_wp_9mm;
						PlayerInfo[playerid][pBanve] -= banve_wp_9mm;
						GivePlayerValidWeapon(playerid, 22, 1);
						PlayerInfo[playerid][pGuns][2] = 22;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #9mm thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 1) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_s9mm) {
				if(PlayerInfo[playerid][pCash] > cash_wp_s9mm) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_s9mm) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_s9mm;
						PlayerInfo[playerid][pCash] -= cash_wp_s9mm;
						PlayerInfo[playerid][pBanve] -= banve_wp_s9mm;
						GivePlayerValidWeapon(playerid, 23, 1);
						PlayerInfo[playerid][pGuns][2] = 23;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Silenced 9mm thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 2) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_deagle) {
				if(PlayerInfo[playerid][pCash] > cash_wp_deagle) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_deagle) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_deagle;
						PlayerInfo[playerid][pCash] -= cash_wp_deagle;
						PlayerInfo[playerid][pBanve] -= banve_wp_deagle;
						GivePlayerValidWeapon(playerid, 24, 1);
						PlayerInfo[playerid][pGuns][2] = 24;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Desert Eagle thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 3) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_shotgun) {
				if(PlayerInfo[playerid][pCash] > cash_wp_shotgun) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_shotgun) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_shotgun;
						PlayerInfo[playerid][pCash] -= cash_wp_shotgun;
						PlayerInfo[playerid][pBanve] -= banve_wp_shotgun;
						GivePlayerValidWeapon(playerid, 25, 1);
						PlayerInfo[playerid][pGuns][3] = 25;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Shotgun thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 4) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_mp5) {
				if(PlayerInfo[playerid][pCash] > cash_wp_mp5) {
					if(PlayerInfo[playerid][pBanve] < banve_wp_mp5) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_mp5;
						PlayerInfo[playerid][pCash] -= cash_wp_mp5;
						PlayerInfo[playerid][pBanve] -= banve_wp_mp5;
						GivePlayerValidWeapon(playerid, 29, 1);
						PlayerInfo[playerid][pGuns][4] = 29;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #MP5 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 5) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_uzi) {
				if(PlayerInfo[playerid][pCash] > cash_wp_uzi) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_uzi) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_uzi;
						PlayerInfo[playerid][pCash] -= cash_wp_uzi;
						PlayerInfo[playerid][pBanve] -= banve_wp_uzi;
						GivePlayerValidWeapon(playerid, 28, 1);
						PlayerInfo[playerid][pGuns][4] = 28;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Uzi thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 6) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_tec9) {
				if(PlayerInfo[playerid][pCash] > cash_wp_tec9) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_tec9) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_tec9;
						PlayerInfo[playerid][pCash] -= cash_wp_tec9;
						PlayerInfo[playerid][pBanve] -= banve_wp_tec9;
						GivePlayerValidWeapon(playerid, 32, 1);
						PlayerInfo[playerid][pGuns][4] = 32;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Tec-9 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 7) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_ak47) {
				if(PlayerInfo[playerid][pCash] > cash_wp_ak47) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_ak47) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_ak47;
						PlayerInfo[playerid][pCash] -= cash_wp_ak47;
						PlayerInfo[playerid][pBanve] -= banve_wp_ak47;
						GivePlayerValidWeapon(playerid, 30, 1);
						PlayerInfo[playerid][pGuns][5] = 30;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #AK-47 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 8) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_m4a1) {
				if(PlayerInfo[playerid][pCash] > cash_wp_m4a1) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_m4a1) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_m4a1;
						PlayerInfo[playerid][pCash] -= cash_wp_m4a1;
						PlayerInfo[playerid][pBanve] -= banve_wp_m4a1;
						GivePlayerValidWeapon(playerid, 31, 1);
						PlayerInfo[playerid][pGuns][5] = 31;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #M4a1 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 9) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_rifle) {
				if(PlayerInfo[playerid][pCash] > cash_wp_rifle) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_rifle) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_rifle;
						PlayerInfo[playerid][pCash] -= cash_wp_rifle;
						PlayerInfo[playerid][pBanve] -= banve_wp_rifle;
						GivePlayerValidWeapon(playerid, 33, 1);
						PlayerInfo[playerid][pGuns][6] = 33;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Rifle thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 10) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_sniper) {
				if(PlayerInfo[playerid][pCash] > cash_wp_sniper) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_sniper) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_sniper;
						PlayerInfo[playerid][pCash] -= cash_wp_sniper;
						PlayerInfo[playerid][pBanve] -= banve_wp_sniper;
						GivePlayerValidWeapon(playerid, 34, 1);
						PlayerInfo[playerid][pGuns][6] = 34;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Sniper thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 11) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_spas12) {
				if(PlayerInfo[playerid][pCash] > cash_wp_spas12) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_spas12) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_spas12;
						PlayerInfo[playerid][pCash] -= cash_wp_spas12;
						PlayerInfo[playerid][pBanve] -= banve_wp_spas12;
						GivePlayerValidWeapon(playerid, 27, 1);
						PlayerInfo[playerid][pGuns][3] = 27;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Spas-12 thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}
		
		if(listitem == 12) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_katana) {
				if(PlayerInfo[playerid][pCash] > cash_wp_katana) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_katana) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_katana;
						PlayerInfo[playerid][pCash] -= cash_wp_katana;
						PlayerInfo[playerid][pBanve] -= banve_wp_katana;
						GivePlayerValidWeapon(playerid, 8, 1);
						PlayerInfo[playerid][pGuns][1] = 8;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Katana thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}
		
		if(listitem == 13) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_pool) {
				if(PlayerInfo[playerid][pCash] > cash_wp_pool) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_pool) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_pool;
						PlayerInfo[playerid][pCash] -= cash_wp_pool;
						PlayerInfo[playerid][pBanve] -= banve_wp_pool;
						GivePlayerValidWeapon(playerid, 7, 1);
						PlayerInfo[playerid][pGuns][1] = 7;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Pool Cue thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}
		
		if(listitem == 14) {
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_shovel) {
				if(PlayerInfo[playerid][pCash] > cash_wp_shovel) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_shovel) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_shovel;
						PlayerInfo[playerid][pCash] -= cash_wp_shovel;
						PlayerInfo[playerid][pBanve] -= banve_wp_shovel;
						GivePlayerValidWeapon(playerid, 6, 1);
						PlayerInfo[playerid][pGuns][1] = 6;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Shovel Cue thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}
		
		if(listitem == 15) {
			if(PlayerInfo[playerid][pMats] > cash_wp_bat) {
				if(PlayerInfo[playerid][pCash] > cash_wp_shovel) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_shovel) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_bat;
						PlayerInfo[playerid][pCash] -= cash_wp_bat;
						PlayerInfo[playerid][pBanve] -= banve_wp_bat;
						GivePlayerValidWeapon(playerid, 5, 1);
						PlayerInfo[playerid][pGuns][1] = 5;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #Baseball Bat Cue thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}

		if(listitem == 16) {
			if(PlayerInfo[playerid][pQuaBom] == 1) {
				SendClientMessage(playerid, COLOR_YELLOW2, "Ban da so huu C4 (Bomb) truoc do roi , khong the che tao them nua.");
				return 1;
			}
			if(PlayerInfo[playerid][pMats] > vatlieu_wp_c4) {
				if(PlayerInfo[playerid][pCash] > cash_wp_shovel) {
				    if(PlayerInfo[playerid][pBanve] < banve_wp_c4) {
				        SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du ban ve de che tao vu khi.");
						return 1;
					}
					if(PlayerInfo[playerid][pConnectHours] > 2) {
						PlayerInfo[playerid][pMats] -= vatlieu_wp_c4;
						PlayerInfo[playerid][pCash] -= cash_wp_bat;
						PlayerInfo[playerid][pBanve] -= banve_wp_c4;
						PlayerInfo[playerid][pQuaBom] = 1;
						SendClientMessage(playerid, COLOR_YELLOW2, "Ban da che tao vu khi #C4 (Bomb) thanh cong.");
						return 1;
					}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban can phai #Online hon 2 gio choi de che tao vu khi..");
				}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du $ de che tao.");
			}else return SendClientMessage(playerid, COLOR_LIGHTGREEN, "Ban khong du vat lieu de che tao.");
		}
	}
	return 1;
}

stock ShowCheTaoSung(playerid) {
	new name[1280];
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], str12[1280]
	, str13[1280], str14[1280], str15[1280], str16[1280], str17[1280], str18[1280];
    format(str1, sizeof(str), "Ten vu khi\tVat lieu\tTien\tTinh trang");
    format(str2, sizeof(str), "9mm\t%s mats\t%s$\t%s", number_format(vatlieu_wp_9mm), number_format(cash_wp_9mm), "Co the che tao");
    format(str3, sizeof(str), "Silenced 9mm\t%s mats\t%s$\t%s", number_format(vatlieu_wp_s9mm), number_format(cash_wp_s9mm), "Co the che tao");
    format(str4, sizeof(str), "Desert Eagle\t%s mats\t%s$\t%s", number_format(vatlieu_wp_deagle), number_format(cash_wp_deagle), "Co the che tao");
    format(str5, sizeof(str), "Shotgun\t%s mats\t%s$\t%s", number_format(vatlieu_wp_shotgun), number_format(cash_wp_shotgun), "Co the che tao");
    format(str6, sizeof(str), "MP5\t%s mats\t%s$\t%s", number_format(vatlieu_wp_mp5), number_format(cash_wp_mp5), "Co the che tao");
    format(str7, sizeof(str), "Uzi\t%s mats\t%s$\t%s", number_format(vatlieu_wp_uzi), number_format(cash_wp_uzi), "Co the che tao");
    format(str8, sizeof(str), "Tec-9\t%s mats\t%s$\t%s", number_format(vatlieu_wp_tec9), number_format(cash_wp_tec9), "Co the che tao");
    format(str9, sizeof(str), "AK-47\t%s mats\t%s$\t%s", number_format(vatlieu_wp_ak47), number_format(cash_wp_ak47), "Khong the che tao");
    format(str10, sizeof(str), "M4a1\t%s mats\t%s$\t%s", number_format(vatlieu_wp_m4a1), number_format(cash_wp_m4a1), "Khong the che tao");
    format(str11, sizeof(str), "Rifle\t%s mats\t%s$\t%s", number_format(vatlieu_wp_rifle), number_format(cash_wp_rifle), "Co the che tao");
    format(str12, sizeof(str), "Sniper\t%s mats\t%s$\t%s", number_format(vatlieu_wp_sniper), number_format(cash_wp_sniper), "Khong the che tao");
    format(str13, sizeof(str), "Spas-12\t%s mats\t%s$\t%s", number_format(vatlieu_wp_spas12), number_format(cash_wp_spas12), "Khong the che tao");
	format(str14, sizeof(str), "Katana\t%s mats\t%s$\t%s", number_format(vatlieu_wp_katana), number_format(cash_wp_katana), "Co the che tao");
    format(str15, sizeof(str), "Pool Cue\t%s mats\t%s$\t%s", number_format(vatlieu_wp_pool), number_format(cash_wp_pool), "Co the che tao");
    format(str16, sizeof(str), "Shovel\t%s mats\t%s$\t%s", number_format(vatlieu_wp_shovel), number_format(cash_wp_shovel), "Co the che tao");
    format(str17, sizeof(str), "Baseball Bat\t%s mats\t%s$\t%s", number_format(vatlieu_wp_bat), number_format(cash_wp_bat), "Co the che tao");
    format(str18, sizeof(str), "C4 (Bomb)\t%s mats\t%s$\t%s", number_format(vatlieu_wp_c4), number_format(cash_wp_bat), "Co the che tao");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13,str14,str15,str16,str17,str18);
    format(name, sizeof(name), "{ffffff}Ban vui long chon loai vu khi che tao: ");
	ShowPlayerDialog(playerid, DIALOG_CREATE_WEAPON, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Che tao", "Huy Bo");
	return 1;
}

stock ShowCheTaoDan(playerid) {
	new name[1280];
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], str12[1280]
	, str13[1280];
    format(str1, sizeof(str), "Ten vu khi\tVat lieu\tTien\tTinh trang");
    format(str2, sizeof(str), "Ammo 9mm\t%s mats\t%s$\t%s", number_format(vatlieu_9mm), number_format(cash_9mm), "Co the che tao");
    format(str3, sizeof(str), "Ammo Silenced 9mm\t%s mats\t%s$\t%s", number_format(vatlieu_s9mm), number_format(cash_s9mm), "Co the che tao");
    format(str4, sizeof(str), "Ammo Desert Eagle\t%s mats\t%s$\t%s", number_format(vatlieu_deagle), number_format(cash_deagle), "Co the che tao");
    format(str5, sizeof(str), "Ammo Shotgun\t%s mats\t%s$\t%s", number_format(vatlieu_shotgun), number_format(cash_shotgun), "Co the che tao");
    format(str6, sizeof(str), "Ammo MP5\t%s mats\t%s$\t%s", number_format(vatlieu_mp5), number_format(cash_mp5), "Co the che tao");
    format(str7, sizeof(str), "Ammo Uzi\t%s mats\t%s$\t%s", number_format(vatlieu_uzi), number_format(cash_uzi), "Co the che tao");
    format(str8, sizeof(str), "Ammo Tec-9\t%s mats\t%s$\t%s", number_format(vatlieu_tec9), number_format(cash_tec9), "Co the che tao");
    format(str9, sizeof(str), "Ammo AK-47\t%s mats\t%s$\t%s", number_format(vatlieu_ak47), number_format(cash_ak47), "Co the che tao");
    format(str10, sizeof(str), "Ammo M4a1\t%s mats\t%s$\t%s", number_format(vatlieu_m4a1), number_format(cash_m4a1), "Co the che tao");
    format(str11, sizeof(str), "Ammo Rifle\t%s mats\t%s$\t%s", number_format(vatlieu_rifle), number_format(cash_rifle), "Co the che tao");
    format(str12, sizeof(str), "Ammo Sniper\t%s mats\t%s$\t%s", number_format(vatlieu_sniper), number_format(cash_sniper), "Co the che tao");
    format(str13, sizeof(str), "Ammo Spas-12\t%s mats\t%s$\t%s", number_format(vatlieu_spas12), number_format(cash_spas12), "Co the che tao");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13);
    format(name, sizeof(name), "{ffffff}Ban vui long chon loai dan vu khi: ");
	ShowPlayerDialog(playerid, DIALOG_AMMO_WEAPON, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Che tao", "Huy Bo");
	return 1;
}

CMD:thaydan(playerid, params[])
{
	if(HungerPlayerInfo[playerid][hgInEvent] != 0) return SendClientMessageEx(playerid, COLOR_GREY, "   Ban khong the lam dieu nay khi dang trong su kien Hunger Games!");
    if(isnull(params))
	{
        SendClientMessageEx(playerid, COLOR_GREY, "SU DUNG: /chapnhan [name]");
        SendClientMessageEx(playerid, COLOR_GREY, "Ten Sung thay dan: 9mm, Sdpistol, Shotgun, Uzi, Tec9");
        SendClientMessageEx(playerid, COLOR_GREY, "Ten Sung thay dan: MP5, Deagle, rifle, Ak47, M4");
        SendClientMessageEx(playerid, COLOR_GREY, "Ten Sung thay dan: Spas12, Sniper");
        return 1;
    }
    if(strcmp(params, "9mm", true) == 0)
	{
        new weapon, ammosd;
        GetPlayerWeaponData(playerid, 2, weapon, ammosd);
        if(weapon == 22)
		{
	        if(PlayerInfo[playerid][p9mm] >= 1)
	        {
		        PlayerInfo[playerid][p9mm] -= 1;
		        GivePlayerAmmoEx(playerid, weapon, 17);
			    SetPlayerArmedWeapon(playerid, weapon);
			    GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
			    ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
			    return 1;
		    }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
		}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}
	if(strcmp(params, "sdpistol", true) == 0)
	{
        new weapon, ammosd;
        GetPlayerWeaponData(playerid, 2, weapon, ammosd);
        if(weapon == 23)
		{
	        if(PlayerInfo[playerid][pSdpistol] >= 1)
	        {
		        PlayerInfo[playerid][pSdpistol] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 17);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
	        }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
	    }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}
	if(strcmp(params, "shotgun", true) == 0)
	{
        new weapon, ammosd;
        GetPlayerWeaponData(playerid, 3, weapon, ammosd);
        if(weapon == 25)
		{
	        if(PlayerInfo[playerid][pShotgun] >= 1)
	        {
				PlayerInfo[playerid][pShotgun] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 7);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
    		}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}
	if(strcmp(params, "Uzi", true) == 0)
	{
        new weapon, ammosd;
	    GetPlayerWeaponData(playerid, 4, weapon, ammosd);
	    if(weapon == 28)
		{
	        if(PlayerInfo[playerid][pUzi] >= 1)
	        {
	            PlayerInfo[playerid][pUzi] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 50);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
	        }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
    }

	if(strcmp(params, "Tec9", true) == 0)
	{
        new weapon, ammosd;
	    GetPlayerWeaponData(playerid, 4, weapon, ammosd);
	    if(weapon == 32)
		{
	        if(PlayerInfo[playerid][pTec] >= 1)
	        {
        		PlayerInfo[playerid][pTec] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 50);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
    		}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}
		
	if(strcmp(params, "Mp5", true) == 0)
	{
        new weapon, ammosd;
	    GetPlayerWeaponData(playerid, 4, weapon, ammosd);
	    if(weapon == 29)
		{
	        if(PlayerInfo[playerid][pSMG] >= 1)
	        {
			 	PlayerInfo[playerid][pSMG] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 30);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
    		}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}

	if(strcmp(params, "Deagle", true) == 0)
	{
        new weapon, ammosd;
        GetPlayerWeaponData(playerid, 2, weapon, ammosd);
        if(weapon == 24)
		{
	        if(PlayerInfo[playerid][pDeagle] >= 1)
	        {
        		PlayerInfo[playerid][pDeagle] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 7);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);\
	        }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}

	if(strcmp(params, "Rifle", true) == 0)
	{
        new weapon, ammosd;
		GetPlayerWeaponData(playerid, 6, weapon, ammosd);
		if(weapon == 33)
		{
	        if(PlayerInfo[playerid][pRifle] >= 1)
	        {
    			PlayerInfo[playerid][pRifle] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 7);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
	        }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}

	if(strcmp(params, "Ak47", true) == 0)
	{
        new weapon, ammosd;
		GetPlayerWeaponData(playerid, 5, weapon, ammosd);
		if(weapon == 30)
		{
	        if(PlayerInfo[playerid][pAka] >= 1)
	        {
    			PlayerInfo[playerid][pAka] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 30);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
	        }else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}

	if(strcmp(params, "M4", true) == 0)
	{
        new weapon, ammosd;
		GetPlayerWeaponData(playerid, 5, weapon, ammosd);
		if(weapon == 31)
		{
	        if(PlayerInfo[playerid][pMbon] >= 1)
	        {
	        	PlayerInfo[playerid][pMbon] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 50);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
    		}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}

	if(strcmp(params, "Spas12", true) == 0)
	{
        new weapon, ammosd;
		GetPlayerWeaponData(playerid, 3, weapon, ammosd);
		if(weapon == 27)
		{
	        if(PlayerInfo[playerid][pSpas] >= 1)
	        {
	        	PlayerInfo[playerid][pSpas] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 7);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
			}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}
		
	if(strcmp(params, "Sniper", true) == 0)
	{
        new weapon, ammosd;
		GetPlayerWeaponData(playerid, 6, weapon, ammosd);
		if(weapon == 34)
		{
	        if(PlayerInfo[playerid][pSniper] >= 1)
	        {
	        	PlayerInfo[playerid][pSniper] -= 1;
	            GivePlayerAmmoEx(playerid, weapon, 7);
			    SetPlayerArmedWeapon(playerid, weapon);
	            GameTextForPlayer(playerid, "~y~THAY DAN", 3000, 4);
	            ApplyAnimation(playerid, "PYTHON", "python_reload", 4.0, 0, 0, 0, 0, 0, 1);
    		}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co bang dan de thay dan.");
    	}else SendClientMessage(playerid, COLOR_YELLOW, "{FFD900}[?] {FFFFFF}Ban khong co so huu vu khi de thay dan.");
	}
	return 1;
}

CMD:bangdan(playerid, params[])
{
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], str12[1280], name[1280];
    format(str1, sizeof(str), "{FFFB00}Bang dan - Vu khi 9mm: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][p9mm]);
    format(str2, sizeof(str), "{FFFB00}Bang dan - Vu khi Sdpistol: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pSdpistol]);
    format(str3, sizeof(str), "{FFFB00}Bang dan - Vu khi Shotgun: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pShotgun]);
    format(str4, sizeof(str), "{FFFB00}Bang dan - Vu khi Uzi: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pUzi]);
    format(str5, sizeof(str), "{FFFB00}Bang dan - Vu khi Tec9: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pTec]);
    format(str6, sizeof(str), "{FFFB00}Bang dan - Vu khi MP5: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pSMG]);
    format(str7, sizeof(str), "{FFFB00}Bang dan - Vu khi Deagle: {00E5FF}%d/{FFFFFF}10 Bang" , PlayerInfo[playerid][pDeagle]);
    format(str8, sizeof(str), "{FFFB00}Bang dan - Vu khi Rifle: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pRifle]);
    format(str9, sizeof(str), "{FFFB00}Bang dan - Vu khi Ak-47: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pAka]);
    format(str10, sizeof(str), "{FFFB00}Bang dan - Vu khi M4: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pMbon]);
    format(str11, sizeof(str), "{FFFB00}Bang dan - Vu khi Spas12: {00E5FF}%d/{FFFFFF}10 Bang" , PlayerInfo[playerid][pSpas]);
    format(str12, sizeof(str), "{FFFB00}Bang dan - Vu khi Sniper: {00E5FF}%d/{FFFFFF}10 Bang", PlayerInfo[playerid][pSniper]);
    format(str, sizeof(str), "%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s\n\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12);
    format(name, sizeof(name), "Bang Dan Cua %s",GetPlayerNameEx(playerid));
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_MSGBOX, name, str, "Dong Lai", "");
	return 1;
}
