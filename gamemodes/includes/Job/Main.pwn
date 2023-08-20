#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

#define			TIMVIECLAM_MAIN					(5080)
#define			TIMVIECLAM						(5081)
#define			DIALOG_NGHIVIEC					(5082)
new pSLBocvac;

new ActorJob[32];
new ActorHospital;
new ActorHospital_1;
new ActorHospital_2;

GetDate_V(&day, &month, &year)
{
   getdate(year, month, day);
}

forward ResetCongViec(playerid);
public ResetCongViec(playerid)
{
	new d, m, y;
	GetDate_V(d, m, y);
	if(d != PlayerInfo[playerid][pDays])
	{
		PlayerInfo[playerid][pDays] = d;
		PlayerInfo[playerid][pSLDaoda] = 0;
		PlayerInfo[playerid][pSLPizza] = 0;
		PlayerInfo[playerid][pSLBocvac] = 0;
	}
	return 1;
}

stock LoadJob() {
	LoadPizza();
	TruckerLoading();
	LoadVatLieu();
	//ShowTraiCay();
	LoadBocVac();
	//LoadMechanic();
    //ObjCanSaV2();
    //ShowFishing();
    
	ActorJob[0] = CreateActor(33, 1540.9080,-1661.5948,13.5515,91.0925);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Tham tu{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 1540.9080,-1661.5948,13.5515+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[0], "ped", "SEAT_idle", 4.1, 1, 0, 0, 0, 0);

	ActorJob[1] = CreateActor(113, 1484.8108,-1772.0048,18.7958,355.9084);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Luat su{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 1484.8108,-1772.0048,18.7958+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[1], "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);

	ActorJob[2] = CreateActor(85, 2230.3130,-1763.2295,13.5625,89.1723);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Gai diem{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2230.3130,-1763.2295,13.5625+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[2], "STRIP", "strip_E", 4.1, 1, 0, 0, 0, 0);

	ActorJob[3] = CreateActor(101, 2123.0515,-1195.8335,23.9299,359.5369);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Buon thuoc phien{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2123.0515,-1195.8335,23.9299+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[3], "DEALER", "DEALER_DEAL", 4.1, 1, 0, 0, 0, 0);

	ActorJob[4] = CreateActor(122, 2197.3997,-1972.7932,13.5585,180.1207);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Tho thu cong{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2197.3997,-1972.7932,13.5585+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[4], "GRAFFITI", "graffiti_Chkout", 4.1, 1, 0, 0, 0, 0);

	ActorJob[5] = CreateActor(255, 1804.0333,-1882.3502,13.5788,178.2461);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Taxi company{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 1804.0333,-1882.3502,13.5788+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[5], "ON_LOOKERS", "wave_loop", 4.1, 1, 0, 0, 0, 0);

	ActorJob[6] = CreateActor(112, 2539.8425,-1718.5444,13.5228,90.9286);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Giao vat lieu{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2539.8425,-1718.5444,13.5228+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[6], "COP_AMBIENT", "Coplook_watch", 4.1, 1, 0, 0, 0, 0);

	ActorJob[7] = CreateActor(155,2105.0181,-1809.2477,13.5547,90.1360);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Pizza boy{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2105.0181,-1809.2477,13.5547+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[7], "ON_LOOKERS", "wave_loop", 4.1, 1, 0, 0, 0, 0);

	ActorJob[8] = CreateActor(60,2533.2573,-2125.8823,13.5469,181.6649);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Trucker{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2533.2573,-2125.8823,13.5469+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[8], "GANGS", "prtial_gngtlkE", 4.1, 1, 0, 0, 0, 0);

	ActorJob[9] = CreateActor(158,-392.6393,-1443.4155,25.7266,87.5966);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Dao da{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, -392.6393,-1443.4155,25.7266+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[9], "POLICE", "CopTraf_Away", 4.1, 1, 0, 0, 0, 0);

	ActorJob[10] = CreateActor(29,2025.8757,-1987.1749,13.5469,355.9104);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Boc Vac{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2025.8757,-1987.1749,13.5469+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[10], "POLICE", "CopTraf_Come", 4.1, 1, 0, 0, 0, 0);

	ActorJob[11] = CreateActor(149,-2237.3682,128.5868,1035.4141,356.2662);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ban vu khi{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, -2237.3682,128.5868,1035.4141+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[11], "BUDDY", "buddy_reload", 4.1, 1, 0, 0, 0, 0);
	
	/*ActorJob[12] = CreateActor(149,295.9570,-40.5330,1001.5156,0.6574);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ban vu khi{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 295.9570,-40.5330,1001.5156+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[12], "BUDDY", "buddy_reload", 4.1, 1, 0, 0, 0, 0);

	ActorJob[13] = CreateActor(149,296.0946,-82.8069,1001.5156,2.0471);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ban vu khi{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 296.0946,-82.8069,1001.5156+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[13], "BUDDY", "buddy_reload", 4.1, 1, 0, 0, 0, 0);

	ActorJob[14] = CreateActor(149,289.1461,-111.6682,1001.5156,359.9239);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ban vu khi{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 289.1461,-111.6682,1001.5156+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[14], "BUDDY", "buddy_reload", 4.1, 1, 0, 0, 0, 0);

	ActorJob[15] = CreateActor(149,316.2368,-133.6445,999.6016,90.3614);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ban vu khi{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 316.2368,-133.6445,999.6016+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[15], "BUDDY", "buddy_reload", 4.1, 1, 0, 0, 0, 0);

	ActorJob[16] = CreateActor(149,312.0262,-168.1704,999.5938,0.6526);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ban vu khi{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 312.0262,-168.1704,999.5938+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[16], "BUDDY", "buddy_reload", 4.1, 1, 0, 0, 0, 0);*/
	
	CreateDynamic3DTextLabel("[Fire Department Los Santos]\nKhu vuc cap cuu\nSu dung /capcuu.", TEAM_CYAN_COLOR, 2025.2550,-1404.5339,17.2099+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	CreateDynamicPickup(1240, 23, 2025.2550,-1404.5339,17.2099, -1);

	CreateDynamic3DTextLabel("[Fire Department Los Santos]\nKhu vuc cap cuu\nSu dung /capcuu.", TEAM_CYAN_COLOR, 1143.9921,-1326.5767,13.6003+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	CreateDynamicPickup(1240, 23, 1143.9921,-1326.5767,13.6003, -1);
	
	CreateDynamic3DTextLabel("[Fire Department Los Santos]\nKhu vuc cap cuu\nSu dung /capcuu.", TEAM_CYAN_COLOR, 1873.2766,414.8959,19.2872+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	CreateDynamicPickup(1240, 23, 1873.2766,414.8959,19.2872, -1);

	ActorHospital = CreateActor(274, 1582.656494, -1245.885986, 3353.424316, 204.461059);
	CreateDynamic3DTextLabel("{ffff00}KHU VUC HANH CHINH{FFFFFF}\nTra tien vien phi {ff0000}Y{FFFFFF}",-1,1582.656494, -1245.885986, 3353.424316+1.5,30.0);

	ActorHospital_1 = CreateActor(275, 1583.604125, -1241.797851, 3353.426757, 358.365905);

	CreateDynamic3DTextLabel("{ffff00}KHU VUC HANH CHINH{FFFFFF}\nNoi dang ky bao hiem y te {ff0000}Y{FFFFFF}",-1,1586.610717, -1266.657104, 3353.429443+1.5,30.0);
	ActorHospital_2 = CreateActor(276, 1586.610717, -1266.657104, 3353.429443, 1.113290);
	
	ActorJob[17] = CreateActor(11,2941.1841,-1773.3141,1191.5032,181.9022);
	CreateDynamic3DTextLabel("{00ff00}[NGAN HANG - LS-VN.NET]\n{99cc00}Khu vuc chuyen tien / gui tien.{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau su dung ngan hang.", -1, 2941.1841,-1773.3141,1191.5032+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[17], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	
	ActorJob[18] = CreateActor(11,655.3909,-503.0969,16.3359,11.5146);
	CreateDynamic3DTextLabel("{00ff00}Con nghien mai thuy'\nSu dung {ffff00}Y{FFFFFF} de buon ban hang cam.", -1, 655.3909,-503.0969,16.3359+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[18], "Freeweights", "gym_free_celebrate", 4.1, 1, 0, 0, 0, 0);
	
	ActorJob[19] = CreateActor(294,2234.9485,-1723.0062,13.5565,175.7688);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ve si{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2234.9485,-1723.0062,13.5565+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[19], "GANGS", "prtial_gngtlkH", 4.1, 1, 0, 0, 0, 0);

	/*ActorJob[20] = CreateActor(2,2072.1006,-1827.9995,13.5545,266.2838);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Tho sua xe{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2072.1006,-1827.9995,13.5545+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[20], "FOOD", "EAT_Vomit_P", 4.1, 1, 0, 0, 0, 0);*/

	/*ActorJob[21] = CreateActor(random(311),1786.4459,-1639.8040,14.6377,269.2190); // ActorPV_1
	ActorJob[22] = CreateActor(random(311),1784.7778,-1639.9069,14.6377,82.7138); // ActorPV_2
	ActorJob[23] = CreateActor(random(311),1779.4553,-1639.8392,14.7484,269.1508); // ActorPV_3
	ActorJob[24] = CreateActor(random(311),1783.8029,-1645.3655,14.7027,0.1748); // ActorPV_4
	ActorJob[25] = CreateActor(random(311),1785.3309,-1652.4690,14.7474,266.1530); // ActorPV_5
	ActorJob[26] = CreateActor(random(311),1790.4064,-1652.7751,14.6377,88.1264); // ActorPV_6
	ActorJob[27] = CreateActor(random(311),1793.9375,-1652.3447,14.6377,87.1028); // ActorPV_7
	ActorJob[28] = CreateActor(random(311),1797.3984,-1652.1996,14.7474,86.9567);*/ // ActorPV_8

	ActorJob[21] = CreateActor(random(311),368.5507,-2073.9219,7.8359,182.7782);
	CreateDynamic3DTextLabel("{00ff00}[BE PHUONG]\n{99cc00}Cua hang cau ca{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de xem.", -1, 368.5507,-2073.9219,7.8359+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[21], "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);

	/*ActorJob[22] = CreateActor(284,1802.6559,-1863.6171,13.5749,1.1624);
	CreateDynamic3DTextLabel("{00ff00}[LS-VN.NET]\n{99cc00}Thi bang lai xe{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau thi.", -1, 1802.6559,-1863.6171,13.5749+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[22], "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);*/

	ActorJob[23] = CreateActor(284,356.2978,178.6396,1008.3762,267.5298);
	CreateDynamic3DTextLabel("{00ff00}[LS-VN.NET]\n{99cc00}Khu vuc hanh chinh{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau thi.", -1, 356.2978,178.6396,1008.3762+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[23], "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);
	
	
	ActorJob[24] = CreateActor(171,1844.1777,-1874.5250,13.4955,0.5628);
	CreateDynamic3DTextLabel("{00ff00}[LS-VN.NET]\n{99cc00}NHAN VIEN BAN HANG{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau thi.", -1, 1844.1777,-1874.5250,13.4955+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[24], "ped", "SEAT_idle", 4.1, 1, 0, 0, 0, 0);
	
	ActorJob[25] = CreateActor(172,1839.2023,-1874.5250,13.5455,358.2232);
	CreateDynamic3DTextLabel("{00ff00}[LS-VN.NET]\n{99cc00}NHAN VIEN BAN HANG{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau thi.", -1, 1839.2023,-1874.5250,13.5455+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[25], "ped", "SEAT_idle", 4.1, 1, 0, 0, 0, 0);
	
	ActorJob[26] = CreateActor(189,1834.2206,-1874.5254,13.5455,359.8317);
	CreateDynamic3DTextLabel("{00ff00}[LS-VN.NET]\n{99cc00}NHAN VIEN BAN HANG{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau thi.", -1, 1834.2206,-1874.5254,13.5455+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[26], "ped", "SEAT_idle", 4.1, 1, 0, 0, 0, 0);

	ActorJob[27] = CreateActor(16,2354.6741,-653.0479,128.0547,268.1644);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Tho moc{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2354.6741,-653.0479,128.0547+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[27], "GANGS", "prtial_gngtlkH", 4.1, 1, 0, 0, 0, 0);

	ActorJob[28] = CreateActor(random(255),2904.7402,-2047.3225,2.2941,5.9226);
	CreateDynamic3DTextLabel("{00ff00}[CONG VIEC]\n{99cc00}Ngu dan danh ca{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de tim hieu cong viec.", -1, 2904.7402,-2047.3225,2.2941+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[28], "GANGS", "prtial_gngtlkH", 4.1, 1, 0, 0, 0, 0);
	
	/*ActorJob[28] = CreateActor(11,1809.6682,-1567.0209,13.4659,222.3076);
	CreateDynamic3DTextLabel("{00ff00}[LS-VN.NET]\n{99cc00}Khu vuc doi tien{FFFFFF}\nSu dung {ffff00}Y{FFFFFF} de bat dau trade money.", -1, 1809.6682,-1567.0209,13.4659+1.5, 30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 1, -1, -1, -1);
	ApplyActorAnimation(ActorJob[28], "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);*/

	/*ApplyActorAnimation(ActorJob[21], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[22], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[23], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[24], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[25], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[26], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[27], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);
	ApplyActorAnimation(ActorJob[28], "FOOD", "FF_Sit_Eat3", 4.1, 1, 0, 0, 0, 0);*/

	//CreateDynamic3DTextLabel("RAO BAN PHUONG TIEN\nSu dung /raobanxe de rao ban phuong tien'",COLOR_YELLOW2,1830.9977,-1861.8451,13.3805+0.5,25.0);
 	//CreateDynamicPickup(1274, 23, 1830.9977,-1861.8451,13.3805, -1);
	
	// Paintball Arena
 	CreateDynamic3DTextLabel("Phong tap ban arena\n\nSu dung /thamgiaarena de vao phong",COLOR_YELLOW,214.6325,-41.5861,1002.0234+0.5,6.0);
 	CreateDynamicPickup(348, 23, 214.6325,-41.5861,1002.0234, -1);

 	CreateDynamic3DTextLabel("VIP GARA\n\nSu dung /travel de ra ben ngoai",COLOR_YELLOW, -4430.2520,905.0702,987.0803+0.5,30.0);
 	CreateDynamicPickup(1316, 23, -4430.2520,905.0702,987.0803, -1);

 	CreateDynamic3DTextLabel("VIP GARA\n\nSu dung /travel de ra ben ngoai",COLOR_YELLOW, -4424.3433,1006.9039,986.7688+0.5,30.0);
 	CreateDynamicPickup(1316, 23, -4424.3433,1006.9039,986.7688, -1);
	return 1;
}

task UpdatePosActor[5000]() {
	for(new i = 0; i < 29; i++) {
		new Float:Pos[4];
		GetActorPos(ActorJob[i], Pos[0], Pos[1], Pos[2]);
		GetActorFacingAngle(ActorJob[i], Pos[3]);
		
		SetActorPos(ActorJob[i], Pos[0], Pos[1], Pos[2]);
		SetActorFacingAngle(ActorJob[i], Pos[3]);
	}

    SetActorVirtualWorld(ActorJob[14], 6);
    SetActorVirtualWorld(ActorJob[15], 6);
    SetActorVirtualWorld(ActorJob[16], 6);

	SetActorPos(ActorHospital, 1582.656494, -1245.885986, 3353.424316);
    SetActorFacingAngle(ActorHospital, 204.461059);
    ApplyActorAnimation(ActorHospital, "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);
    
    SetActorPos(ActorHospital_1, 1583.604125, -1241.797851, 3353.426757);
    SetActorFacingAngle(ActorHospital_1, 358.365905);
    ApplyActorAnimation(ActorHospital_1, "BD_FIRE", "wash_up", 4.1, 1, 0, 0, 0, 0);
    
    SetActorPos(ActorHospital_2, 1586.610717, -1266.657104, 3353.429443);
    SetActorFacingAngle(ActorHospital_2, 1.113290);
    ApplyActorAnimation(ActorHospital_2, "PED", "IDLE_CHAT", 4.1, 1, 0, 0, 0, 0);
}

CMD:timvieclam(playerid, params[]) {
	new name[1280];
	new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], str10[1280], str11[1280], str12[1280]
	, str13[1280], str14[1280], str15[1280], str16[1280], str17[1280], str18[1280];
    format(str1, sizeof(str), "Ten cong viec\tLuong\tTrang thai\tThe loai");
    format(str2, sizeof(str), "{99cc00}Tham tu{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str3, sizeof(str), "{99cc00}Luat su{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str4, sizeof(str), "{99cc00}Gai diem{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff0000}Bat hop phap{FFFFFF}");
    format(str5, sizeof(str), "{99cc00}Ve si{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str6, sizeof(str), "{99cc00}Tho thu cong{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str7, sizeof(str), "{99cc00}Ban vu khi{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{ff0000}Khong hoat dong{FFFFFF}\t{ff0000}Bat hop phap{FFFFFF}");
    format(str8, sizeof(str), "{FFFFFF}============\t============\t{FFFFFF}============\t{FFFFFF}============");
    format(str9, sizeof(str), "{99cc00}Taxi company{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str10, sizeof(str), "{99cc00}Giao vat lieu{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str11, sizeof(str), "{99cc00}Pizza boy{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str12, sizeof(str), "{99cc00}Trucker{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str13, sizeof(str), "{99cc00}Trai cay{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{ff0000}Khong hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str14, sizeof(str), "{99cc00}Boc vac{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str15, sizeof(str), "{99cc00}Phuc vu{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{ff0000}Khong hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str16, sizeof(str), "{99cc00}Ngu dan{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str17, sizeof(str), "{99cc00}Dao da{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{00ff00}Hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str18, sizeof(str), "{99cc00}Tho moc{FFFFFF}\tMac dinh : {ffff00}xxx${FFFFFF}\t{ff0000}Khong hoat dong{FFFFFF}\t{ff9900}Hop phap{FFFFFF}");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13,str14,str15,str16,str17,str18);
    format(name, sizeof(name), "{ffffff}Ban muon tim cong viec gi?");
	ShowPlayerDialog(playerid, TIMVIECLAM, DIALOG_STYLE_TABLIST_HEADERS, name, str, "Tim viec", "Huy Bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]) {
	if(dialogid == TIMVIECLAM && response == 1)
	{
	    if(listitem == 0) { // Tham Tu
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 1540.9080,-1661.5948,13.5515, 3.0);
            CP[playerid] = 252000;
			return 1;
		}
		if(listitem == 1) { //Luat Su
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 1481.9456,-1767.1202,15.2457, 3.0);
            CP[playerid] = 252000;
			return 1;
		}
	    if(listitem == 2) { //Gai Diem
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2230.3130,-1763.2295,13.5625, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 3) { // VE SI
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2234.9485,-1723.0062,13.5565, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 4) // Tho Thu Cong
	    {
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2197.3997,-1972.7932,13.5585, 3.0);
            CP[playerid] = 252000;
            return 1;
		}

		if(listitem == 5) // Ban vu khi
	    {
			/*PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2294.4651,-1700.4568,13.5469, 3.0);
            CP[playerid] = 252000;*/
            SendClientMessage(playerid, -1, "Ban hay /timduong -> Tim cua hang -> Shop ban vu khi.");
            return 1;
		}

		if(listitem == 6) {
            return 1;
		}

		if(listitem == 7) {// Tai Xe Taxi
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 1806.4207,-1887.2722,13.4087, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 8) // Giao vat lieu
	    {
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2539.8425,-1718.5444,13.5228, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 9) // Pizza Boy
	    {
		    PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
		    SetPlayerCheckpoint(playerid, 2105.0181,-1809.2477,13.5547, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 10) // Trucker
	    {
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2439.2864,-2133.9580,13.5469, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 11) // Trai cay
	    {
			/*PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, -392.6393,-1443.4155,25.7266, 3.0);
            CP[playerid] = 252000;*/
            return 1;
		}
		if(listitem == 12) // Boc vac
	    {
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2025.8757,-1987.1749,13.5469, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 13) // Phuc vu
	    {
			/*PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 1792.3501,-1642.0154,14.2165, 3.0);
            CP[playerid] = 252000;*/
            return 1;
		}
		if(listitem == 14) // Cau ca
	    {
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2904.7402,-2047.3225,2.2941, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 15) // Dao da
	    {
			PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, -392.6393,-1443.4155,25.7266, 3.0);
            CP[playerid] = 252000;
            return 1;
		}
		if(listitem == 16) // Tho moc
	    {
			/*PlayerPlaySound(playerid, 1056, 0.0, 0.0, 0.0);
			SetPlayerCheckpoint(playerid, 2354.6741,-653.0479,128.0547, 3.0);
            CP[playerid] = 252000;*/
            return 1;
		}
	}

	if(dialogid == DIALOG_NGHIVIEC && response == 1) {
		new congviec = strval(inputtext);
		if(congviec < 0  && congviec > 2) {
			SendClientMessage(playerid, COLOR_YELLOW, "Ban chi co the nghi cong viec (1) , (2).");
			return 1;
		}

		if(PlayerInfo[playerid][pDonateRank] == 0) {
			if(congviec == 1) {
				if(PlayerInfo[playerid][pJob] != 0) {
					new string[1280];
					format(string, sizeof(string), "{ffff00}Ban da nghi cong viec {99cc00}%s{ffff00} thanh cong.", GetJobName(PlayerInfo[playerid][pJob]));
					SendClientMessage(playerid, -1, string);
					PlayerInfo[playerid][pJob] = 0;
					return 1;
				}	
			}
			else return SendClientMessage(playerid, COLOR_YELLOW, "Ban chua nhan cong viec thu 2 cho minh.");
		}
		else {
			if(congviec == 1) {
				new string[1280];
				format(string, sizeof(string), "{ffff00}Ban da nghi cong viec {99cc00}%s{ffff00} thanh cong.", GetJobName(PlayerInfo[playerid][pJob]));
				SendClientMessage(playerid, -1, string);
				PlayerInfo[playerid][pJob] = 0;
			}

			if(congviec == 2) {
				new string[1280];
				format(string, sizeof(string), "{ffff00}Ban da nghi cong viec {99cc00}%s{ffff00} thanh cong.", GetJobName(PlayerInfo[playerid][pJob]));
				SendClientMessage(playerid, -1, string);
				PlayerInfo[playerid][pJob2] = 0;
			}
		}
	}
	return 1;
}

stock ShowNghiViec(playerid) {
	new string[1280];
	format(string, sizeof(string), "{FFFFFF}Ban vui long nhap cong viec ban muon nghi vao day: \n{ffff00}=>{FFFFFF} Cong viec 1 : {99cc00}%s\n{ffff00}=>{FFFFFF} Cong viec 2 : {99cc00}%s", GetJobName(PlayerInfo[playerid][pJob]), GetJobName(PlayerInfo[playerid][pJob2]));
	ShowPlayerDialog(playerid, DIALOG_NGHIVIEC, DIALOG_STYLE_INPUT, "Ban muon nghi viec?", string, "Dong y", "Huy bo");
	return 1;
}

stock ActorPos(playerid, actorid, Float:radius = 5.0)
{
    new Float:x, Float:y, Float:z;
    if (GetActorPos(actorid, x, y, z))
        return IsPlayerInRangeOfPoint(playerid, radius, x, y, z);
    return 0;
}
