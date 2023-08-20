#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

//6049
#define                 DIALOG_BANCA                (6750)

#define                 DIALOG_BANCA_1              (6751) // TUI RAC
#define                 DIALOG_BANCA_2              (6752) // CA RO PHI
#define                 DIALOG_BANCA_3              (6753) // RUA
#define                 DIALOG_BANCA_4              (6754) // CA HEO
#define                 DIALOG_BANCA_5              (6755) // CA MAP
#define                 DIALOG_BANCA_6              (6756) // CA MAP KING
#define                 DIALOG_BANCA_7              (6757) // Deinosuchus
#define                 DIALOG_BANCA_8              (6758) // CA VOI SAT THU
#define                 DIALOG_BANCA_9              (6759) // CA VOI LUNG GU
#define                 DIALOG_BANCA_10             (6760) // Megalodon
#define                 DIALOG_BANCA_11             (6700) // EDIT

#define                 LOAICA_1             (6780)
#define                 LOAICA_2             (6781)
#define                 LOAICA_3             (6782)
#define                 LOAICA_4             (6783)
#define                 LOAICA_5             (6784)
#define                 LOAICA_6             (6785)
#define                 LOAICA_7             (6786)
#define                 LOAICA_8             (6787)
#define                 LOAICA_9             (6701) // EDIT

#define         		BANCA_MONEY_1               (6788)
#define         		BANCA_MONEY_2               (6789)
#define         		BANCA_MONEY_3               (6790)
#define         		BANCA_MONEY_4               (6791)
#define         		BANCA_MONEY_5               (6792)
#define         		BANCA_MONEY_7               (6793)
#define					BANCA_MONEY_8               (6794)
#define					BANCA_MONEY_9               (6795)
#define					BANCA_MONEY_10              (6703) // EDIT
//------------------------------------------------------------------------------

// GIA TIEN CA | HIEN TAI
new CaRoPhiGia;
new RuaGia;
new CaHeoGia;
new CaMapGia;
new CaMapKingGia;
new DeinosuchusGia;
new CaVoiSatThuGia;
new CaVoiLungGuGia;
new MegalodonGia;
new MosasaurusGia;

//GIA TIEN CA | TRUOC DO
new CaRoPhiGiaOld;
new RuaGiaOld;
new CaHeoGiaOld;
new CaMapOld;
new CaMapKingOld;
new DeinosuchusOld;
new CaVoiSatThuOld;
new CaVoiLungGuOld;
new MegalodonOld;
new MosasaurusOld;

stock ShowBanCa(playerid){
    ShowPlayerDialog(playerid, DIALOG_BANCA, DIALOG_STYLE_LIST, "{00ff00}PLAY TOGETHER{FFFFFF}", "{00ff00}BAN TUI' RAC'\n{ffa31a}CA' RO PHI{ffffff}\n{ff6600}RUA`{ffffff}\n{6b6b47}CA' HEO{ffffff}\n{f2f2f2}CA' MAP{ffffff}\n{cc33ff}CA' MAP KING{ffffff}\n{ff3300}Deinosuchus{ffffff}\n{1affff}CA VOI SAT THU{ffffff}\n{1aa3ff}CA VOI LUNG GU\n{ff3300}Megalodon{ffffff}\n{9933ff}Mosasaurus{ffffff}", "Lua chon", "Huy bo");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[]){
    if(dialogid == DIALOG_BANCA)
	{
	    if(response){
	        if(listitem == 0)
			    Sell_TuiRac(playerid);
            if(listitem == 1)
			    Sell_CaRoPhi(playerid);
            if(listitem == 2)
			    Sell_Rua(playerid);
            if(listitem == 3)
			    Sell_CaHeo(playerid);
            if(listitem == 4)
			    Sell_CaMap(playerid);
            if(listitem == 5)
       			Sell_CaMapKing(playerid);
            if(listitem == 6)
			    Sell_Deinosuchus(playerid);
            if(listitem == 7)
			    Sell_CaVoiSatThu(playerid);
            if(listitem == 8)
			    Sell_CaVoiLungGu(playerid);
            if(listitem == 9)
			    Sell_Megalodon(playerid);
            if(listitem == 10)
			    Sell_Mosasaurus(playerid);
		}
	}
	
 	if(dialogid == LOAICA_1) // RUA
	{
	    if(response){
	        if(listitem == 0)
	            Sell_Rua(playerid);
            if(listitem == 1)
            	Sell_Rua_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_2) // CA HEO
	{
	    if(response){
	        if(listitem == 0)
	            Sell_CaHeo(playerid);
            if(listitem == 1)
            	Sell_CaHeo_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_3) // CA MAP
	{
	    if(response){
	        if(listitem == 0)
	            Sell_CaMap(playerid);
            if(listitem == 1)
            	Sell_CaMap_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_4) // CA MAP KING
	{
	    if(response){
	        if(listitem == 0)
	            Sell_CaMapKing(playerid);
            if(listitem == 1)
            	Sell_CaMapKing_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_5) // Deinosuchus
	{
	    if(response){
	        if(listitem == 0)
	            Sell_Deinosuchus(playerid);
            if(listitem == 1)
            	Sell_Deinosuchus_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_6) // CaVoiSatThu
	{
	    if(response){
	        if(listitem == 0)
	            Sell_CaVoiSatThu(playerid);
            if(listitem == 1)
            	Sell_CaVoiSatThu_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_7) // CaVoiLungGu
	{
	    if(response){
	        if(listitem == 0)
	            Sell_CaVoiLungGu(playerid);
            if(listitem == 1)
            	Sell_CaVoiLungGu_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_8) // Megalodon
	{
	    if(response){
	        if(listitem == 0)
	            Sell_Megalodon(playerid);
            if(listitem == 1)
            	Sell_Megalodon_Money(playerid);
		}
	}
	
	if(dialogid == LOAICA_9) // Mosasaurus
	{
	    if(response){
	        if(listitem == 0)
	            Sell_Mosasaurus(playerid);
            if(listitem == 1)
            	Sell_Mosasaurus_Money(playerid);
		}
	}
	return 1;
}

stock Sell_TuiRac(playerid){
	ShowPlayerDialog(playerid, DIALOG_BANCA_1, DIALOG_STYLE_INPUT, "{00ff00}BAN TUI' RAC'{FFFFFF}", "Ban co dong y ban' mot so tui {00ff00}TUI' RAC'{FFFFFF} cua ban khong??\nGia : 50 Vat lieu / 1 don vi", "Ban ngay", "Huy bo");
	return 1;
}

stock Sell_CaRoPhi(playerid){
	new tinhtrang[1280];
    if(CaRoPhiGia > CaRoPhiGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(CaRoPhiGia - CaRoPhiGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(CaRoPhiGiaOld - CaRoPhiGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {ffa31a}CA' RO PHI.", PlayerInfo[playerid][pPlayTogether][1]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ffa31a}CA' RO PHI.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", CaRoPhiGiaOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", CaRoPhiGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_2, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Rua(playerid){
    new tinhtrang[1280];
    if(RuaGia > RuaGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(RuaGia - RuaGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(RuaGiaOld - RuaGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {ff6600}RUA`.", PlayerInfo[playerid][pPlayTogether][2]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ff6600}RUA`.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", RuaGiaOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", RuaGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_3, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Rua_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{ff6600}RUA`{FFFFFF}", "Ban co dong y ban' mot so con {ff6600}RUA`{FFFFFF} cua ban khong??\nGia : 300,000$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_CaHeo(playerid){
    new tinhtrang[1280];
    if(CaHeoGia > CaHeoGiaOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(CaHeoGia - CaHeoGiaOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(CaHeoGiaOld - CaHeoGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {6b6b47}CA' HEO.", PlayerInfo[playerid][pPlayTogether][3]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {6b6b47}CA' HEO.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", CaHeoGiaOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", CaHeoGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_4, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_CaHeo_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{ff6600}CA' HEO{FFFFFF}", "Ban co dong y ban' mot so con {ff6600}CA' HEO{FFFFFF} cua ban khong??\nGia : 500,000$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_CaMap(playerid){
    new tinhtrang[1280];
    if(CaMapGia > CaMapOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(CaMapGia - CaMapOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(CaMapOld - CaMapGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {f2f2f2}CA' MAP.", PlayerInfo[playerid][pPlayTogether][4]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {f2f2f2}CA' MAP.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", CaHeoGiaOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", CaMapGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_5, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_CaMap_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{f2f2f2}CA' MAP{FFFFFF}", "Ban co dong y ban' mot so con {f2f2f2}CA' MAP{FFFFFF} cua ban khong??\nGia : 10,000,000$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_CaMapKing(playerid){
    new tinhtrang[1280];
    if(CaMapKingGia > CaMapKingOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(CaMapKingGia - CaMapKingOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(CaMapKingOld - CaMapKingGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {cc33ff}CA' MAP KING.", PlayerInfo[playerid][pPlayTogether][5]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {cc33ff}CA' MAP KING.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", CaMapKingOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", CaMapKingGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_6, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_CaMapKing_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{cc33ff}CA' MAP KING{FFFFFF}", "Ban co dong y ban' mot so con {cc33ff}CA' MAP KING{FFFFFF} cua ban khong??\nGia : 50,000,000$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_Deinosuchus(playerid){
    new tinhtrang[1280];
    if(DeinosuchusGia > DeinosuchusOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(DeinosuchusGia - DeinosuchusOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(DeinosuchusOld - DeinosuchusGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {ff3300}Deinosuchus.", PlayerInfo[playerid][pPlayTogether][7]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ff3300}Deinosuchus.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", DeinosuchusOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", DeinosuchusGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_7, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Deinosuchus_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{ff3300}Deinosuchus{ffffff}", "Ban co dong y ban' mot so con {ff3300}Deinosuchus{ffffff} cua ban khong??\nGia : 99,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_CaVoiSatThu(playerid){
    new tinhtrang[1280];
    if(CaVoiSatThuGia > CaVoiSatThuOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(CaVoiSatThuGia - CaVoiSatThuOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(CaVoiSatThuOld - CaVoiSatThuGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {1affff}CA VOI SAT THU.", PlayerInfo[playerid][pPlayTogether][8]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {1affff}CA VOI SAT THU.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", CaVoiSatThuOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", CaVoiSatThuGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_8, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_CaVoiSatThu_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{1affff}CA VOI SAT THU{ffffff}", "Ban co dong y ban' mot so con {1affff}CA VOI SAT THU{ffffff} cua ban khong??\nGia : 199,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_CaVoiLungGu(playerid){
    new tinhtrang[1280];
    if(CaVoiLungGuGia > CaVoiLungGuOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(CaVoiLungGuGia - CaVoiLungGuOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(CaVoiLungGuOld - CaVoiLungGuGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {1aa3ff}CA VOI LUNG GU.", PlayerInfo[playerid][pPlayTogether][9]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {1aa3ff}CA VOI LUNG GU.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", CaVoiLungGuOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", CaVoiLungGuGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_9, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_CaVoiLungGu_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{1aa3ff}CA VOILUNG GU{ffffff}", "Ban co dong y ban' mot so con {1aa3ff}CA VOI LUNG GU{ffffff} cua ban khong??\nGia : 299,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_Megalodon(playerid){
    new tinhtrang[1280];
    if(MegalodonGia > MegalodonOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(MegalodonGia - MegalodonOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(MegalodonOld - MegalodonGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {ff0000}Megalodon.", PlayerInfo[playerid][pPlayTogether][10]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {ff0000}Megalodon.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", MegalodonOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", MegalodonGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_10, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Megalodon_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{ff3300}Megalodon{ffffff}", "Ban co dong y ban' mot so con {ff3300}Megalodon{ffffff} cua ban khong??\nGia : 399,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}

stock Sell_Mosasaurus(playerid){
    new tinhtrang[1280];
    if(MosasaurusGia > MosasaurusOld)
        format(tinhtrang, sizeof(tinhtrang), "{ff0000}Tang (%s$){FFFFFF}", number_format(MosasaurusGia - MosasaurusOld));
	else
	    format(tinhtrang, sizeof(tinhtrang), "{ff9900}Giam (%s$){FFFFFF}", number_format(MosasaurusOld - MosasaurusGia));

    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], str7[1280], str8[1280], str9[1280], name[1280];
    format(str1, sizeof(str), "\\c {ff9900}SV.SA-RP.NET");
    format(str2, sizeof(str), "\\c {ffffff}Ban hien dang co : {ffff00}%d {9933ff}Mosasaurus.", PlayerInfo[playerid][pPlayTogether][11]);
    format(str3, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str4, sizeof(str), "\\c {ffff00}THI TRUONG - {9933ff}Mosasaurus.");
    format(str5, sizeof(str), "\n{ffffff} -> Tinh trang : %s.", tinhtrang);
    format(str6, sizeof(str), "{ffffff} -> Gia truoc do : %d$ / {ffff00}1 don vi{FFFFFF}.", MosasaurusOld);
    format(str7, sizeof(str), "{ffffff} -> Gia hien tai : %d$/ {ffff00}1 don vi{FFFFFF}.\n", MosasaurusGia);
    format(str8, sizeof(str), "{ffffff}------------------------------------------------------------------------------------------.");
    format(str9, sizeof(str), "Neu ban muon ban vui long nhap so luong ban muon ban vao o ben duoi: ");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s\n%s", str1,str2,str3,str4,str5,str6,str7,str8,str9);
    format(name, sizeof(name), "{00ff00}PLAY TOGETHER{FFFFFF}");
	ShowPlayerDialog(playerid, DIALOG_BANCA_11, DIALOG_STYLE_INPUT, name, str, "Dong y", "Huy Bo");
	return 1;
}

stock Sell_Mosasaurus_Money(playerid){
    ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_INPUT, "{9933ff}Mosasaurus{ffffff}", "Ban co dong y ban' mot so con {9933ff}Mosasaurus{ffffff} cua ban khong??\nGia : 399,999,999$ / 1 don vi", "Ban ngay", "Huy bo");
    return 1;
}
