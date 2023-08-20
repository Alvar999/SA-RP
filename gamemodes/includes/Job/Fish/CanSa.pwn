#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//
#define             HAICANSA            (8158)

new Text3D:CanSaText[24];
new DangHaiCanSa[MAX_PLAYERS];

enum InfoCanSa
{
	CayCanSaHai[24],
};
new PlayerCS[InfoCanSa];

CMD:haicansa(playerid, params[])
{
	if(DangHaiCanSa[playerid] == 0)
	{
	    new trangthai[1280];
	    if(IsPlayerInRangeOfPoint(playerid, 3.0, -1089.896728, -1689.773193, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][1] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][1] = 1;
	            
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	            LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[1], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1089.896728, -1679.782226, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][2] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][2] = 1;
	            
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	            LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[2], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1082.206298, -1679.782226, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][3] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][3] = 1;
	            
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	            LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[3], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1075.235839, -1679.782226, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][4] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][4] = 1;
	            
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	            LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[4], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1068.015625, -1679.782226, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][5] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][5] = 1;
	            
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	            LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[5], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1082.306152, -1689.773193, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][6] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][6] = 1;
	            
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
	            LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[6], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1075.415649, -1689.773193, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][7] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][7] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[7], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1068.157104, -1689.773193, 75.238029))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][8] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][8] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[8], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1073.406127, -1612.134887, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][9] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][9] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[9], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1067.355712, -1612.134887, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][10] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][10] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[10], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1061.644653, -1612.134887, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][11] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][11] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[11], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1073.406127, -1619.625366, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][12] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][12] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[12], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1073.406127, -1626.715576, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][13] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][13] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[13], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1067.355712, -1619.395141, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][14] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][14] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[14], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1067.355712, -1626.606689, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][15] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][15] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[15], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1061.644653, -1619.186157, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][16] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][16] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[16], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1061.644653, -1626.537353, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][17] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][17] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[17], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1055.794189, -1612.134887, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][18] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][18] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[18], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1055.794189, -1619.005249, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][19] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][19] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[19], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1055.794189, -1626.457763, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][20] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][20] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[20], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1049.853027, -1626.457763, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][21] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][21] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[21], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1049.853027, -1619.006103, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][1] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][22] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[22], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
		else if(IsPlayerInRangeOfPoint(playerid, 3.0, -1049.853027, -1611.874023, 75.403930))
		{
		    if(IsACop(playerid)) return SendClientMessageEx(playerid, COLOR_WHITE, "Ban dang la nguoi cua chinh phu , khong the hai can sa.");
		    if(PlayerCS[CayCanSaHai][23] == 0)
		    {
	            DangHaiCanSa[playerid] = 1;
	            PlayerCS[CayCanSaHai][23] = 1;
	            ApplyAnimation(playerid,"BOMBER","BOM_Plant",4.0,0,0,0,0,0,1);
				LoaderStarting(playerid, HAICANSA, "DANG HAI CAN SA", 0.5, random(6));

				TogglePlayerControllable(playerid, 0);

			    trangthai = "Dang duoc hai";

			    new string[1280];
			    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai);
				UpdateDynamic3DTextLabelText(CanSaText[23], -1, string);
				
				ThongBaoCanSa(playerid);
				return 1;
			}
		}
	}else SendClientMessageEx(playerid, COLOR_GRAD1, "Ban dang hai can sa khong the hai tiep tuc.");
	return 1;
}

stock ThongBaoCanSa(playerid) {
    if(GetPVarInt(playerid, "SpamCanSa") == 0)
    {
        // THONG BAO CANH SAT
        new stringcc[1280];
        new zone[MAX_ZONE_NAME];
		GetPlayer3DZone(playerid, zone, sizeof(zone));
	    format(stringcc, sizeof(stringcc), "[CAMERA AN NINH] Hien tai doi tuong %s dang hai trai phep can sa tai %s.", GetPlayerNameEx(playerid), zone);
		SendGroupMessage(1, DEPTRADIO, stringcc);
        SetTimerEx("AntiSpamCanSa", 10000, 0, "d", playerid);
        SetPVarInt(playerid, "SpamCanSa", 1);
	}
}

forward AntiSpamCanSa(playerid);
public AntiSpamCanSa(playerid)
{
    SetPVarInt(playerid, "SpamCanSa", 0);
    return 1;
}

stock ObjCanSaV2(){
	CreateObject(3409, -1089.896728, -1689.773193, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 1
	CreateObject(3409, -1089.896728, -1679.782226, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 2
	CreateObject(3409, -1082.206298, -1679.782226, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 3
	CreateObject(3409, -1075.235839, -1679.782226, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 4
	CreateObject(3409, -1068.015625, -1679.782226, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 5
	CreateObject(3409, -1082.306152, -1689.773193, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 6
	CreateObject(3409, -1075.415649, -1689.773193, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 7
	CreateObject(3409, -1068.157104, -1689.773193, 75.238029, 0.000000, 0.000000, 0.000000, 1500.00); // 8
	CreateObject(3409, -1073.406127, -1612.134887, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 9
	CreateObject(3409, -1067.355712, -1612.134887, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 10
	CreateObject(3409, -1061.644653, -1612.134887, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 11
	CreateObject(3409, -1073.406127, -1619.625366, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 12
	CreateObject(3409, -1073.406127, -1626.715576, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 13
	CreateObject(3409, -1067.355712, -1619.395141, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 14
	CreateObject(3409, -1067.355712, -1626.606689, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 15
	CreateObject(3409, -1061.644653, -1619.186157, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 16
	CreateObject(3409, -1061.644653, -1626.537353, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 17
	CreateObject(3409, -1055.794189, -1612.134887, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 18
	CreateObject(3409, -1055.794189, -1619.005249, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 19
	CreateObject(3409, -1055.794189, -1626.457763, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 20
	CreateObject(3409, -1049.853027, -1626.457763, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 21
	CreateObject(3409, -1049.853027, -1619.006103, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 22
	CreateObject(3409, -1049.853027, -1611.874023, 75.403930, 0.000000, 0.000000, 0.000000, 1500.00); // 23

	new trangthai_1[1280],trangthai_2[1280],trangthai_3[1280],trangthai_4[1280],trangthai_5[1280],trangthai_6[1280],trangthai_7[1280],trangthai_8[1280],trangthai_9[1280],trangthai_10[1280],
	trangthai_11[1280],trangthai_12[1280],trangthai_13[1280],trangthai_14[1280],trangthai_15[1280],trangthai_16[1280],trangthai_17[1280],trangthai_18[1280],trangthai_19[1280],trangthai_20[1280],trangthai_21[1280],trangthai_22[1280],trangthai_23[1280];
	if(PlayerCS[CayCanSaHai][1] == 0)
		trangthai_1 = "Co the hai";
	else
	    trangthai_2 = "Dang hoi phuc";
	//--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][2] == 0)
		trangthai_2 = "Co the hai";
	else
	    trangthai_2 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][3] == 0)
		trangthai_3 = "Co the hai";
	else
	    trangthai_3 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][4] == 0)
		trangthai_4 = "Co the hai";
	else
	    trangthai_4 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][5] == 0)
		trangthai_5 = "Co the hai";
	else
	    trangthai_5 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][6] == 0)
		trangthai_6 = "Co the hai";
	else
	    trangthai_6 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][7] == 0)
		trangthai_7 = "Co the hai";
	else
	    trangthai_7 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][8] == 0)
		trangthai_8 = "Co the hai";
	else
	    trangthai_8 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][9] == 0)
		trangthai_9 = "Co the hai";
	else
	    trangthai_9 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][10] == 0)
		trangthai_10 = "Co the hai";
	else
	    trangthai_10 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][11] == 0)
		trangthai_11 = "Co the hai";
	else
	    trangthai_11 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][12] == 0)
		trangthai_12 = "Co the hai";
	else
	    trangthai_12 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][13] == 0)
		trangthai_13 = "Co the hai";
	else
	    trangthai_13 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][14] == 0)
		trangthai_14 = "Co the hai";
	else
	    trangthai_14 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][15] == 0)
		trangthai_15 = "Co the hai";
	else
	    trangthai_15 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][16] == 0)
		trangthai_16 = "Co the hai";
	else
	    trangthai_16 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][17] == 0)
		trangthai_17 = "Co the hai";
	else
	    trangthai_17 = "Dang hoi phuc";
	//--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][18] == 0)
		trangthai_18 = "Co the hai";
	else
	    trangthai_18 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][19] == 0)
		trangthai_19 = "Co the hai";
	else
	    trangthai_19 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][20] == 0)
		trangthai_20 = "Co the hai";
	else
	    trangthai_20 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][21] == 0)
		trangthai_21 = "Co the hai";
	else
	    trangthai_21 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][22] == 0)
		trangthai_22 = "Co the hai";
	else
	    trangthai_22 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][23] == 0)
		trangthai_23 = "Co the hai";
	else
	    trangthai_23 = "Dang hoi phuc";

	//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	new string[1280];
	format(string, sizeof(string), "{336600}CAY CAN SA 1{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_1);
	CanSaText[1] = CreateDynamic3DTextLabel(string,-1,-1089.896728, -1689.773193, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 2{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_2);
	CanSaText[2] = CreateDynamic3DTextLabel(string,-1,-1089.896728, -1679.782226, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 3{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_3);
	CanSaText[3] = CreateDynamic3DTextLabel(string,-1,-1082.206298, -1679.782226, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 4{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_4);
	CanSaText[4] = CreateDynamic3DTextLabel(string,-1,-1075.235839, -1679.782226, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 5{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_5);
	CanSaText[5] = CreateDynamic3DTextLabel(string,-1,-1068.015625, -1679.782226, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 6{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_6);
	CanSaText[6] = CreateDynamic3DTextLabel(string,-1,-1082.306152, -1689.773193, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 7{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_7);
	CanSaText[7] = CreateDynamic3DTextLabel(string,-1,-1075.415649, -1689.773193, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 8{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_8);
	CanSaText[8] = CreateDynamic3DTextLabel(string,-1,-1068.157104, -1689.773193, 75.238029, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 9{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_9);
	CanSaText[9] = CreateDynamic3DTextLabel(string,-1,-1073.406127, -1612.134887, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 10{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_10);
	CanSaText[10] = CreateDynamic3DTextLabel(string,-1,-1067.355712, -1612.134887, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 11{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_11);
	CanSaText[11] = CreateDynamic3DTextLabel(string,-1,-1061.644653, -1612.134887, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 12{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_12);
	CanSaText[12] = CreateDynamic3DTextLabel(string,-1,-1073.406127, -1619.625366, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 13{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_13);
	CanSaText[13] = CreateDynamic3DTextLabel(string,-1,-1073.406127, -1626.715576, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 14{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_14);
	CanSaText[14] = CreateDynamic3DTextLabel(string,-1,-1067.355712, -1619.395141, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 15{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_15);
	CanSaText[15] = CreateDynamic3DTextLabel(string,-1,-1067.355712, -1626.606689, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 16{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_16);
	CanSaText[16] = CreateDynamic3DTextLabel(string,-1,-1061.644653, -1619.186157, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 17{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_17);
	CanSaText[17] = CreateDynamic3DTextLabel(string,-1,-1061.644653, -1626.537353, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 18{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_18);
	CanSaText[18] = CreateDynamic3DTextLabel(string,-1,-1055.794189, -1612.134887, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 19{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_19);
	CanSaText[19] = CreateDynamic3DTextLabel(string,-1,-1055.794189, -1619.005249, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 20{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_20);
	CanSaText[20] = CreateDynamic3DTextLabel(string,-1,-1055.794189, -1626.457763, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 21{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_21);
	CanSaText[21] = CreateDynamic3DTextLabel(string,-1,-1049.853027, -1626.457763, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 22{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_22);
	CanSaText[22] = CreateDynamic3DTextLabel(string,-1,-1049.853027, -1619.006103, 75.403930, 30.0);

	format(string, sizeof(string), "{336600}CAY CAN SA 23{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_23);
	CanSaText[23] = CreateDynamic3DTextLabel(string,-1,-1049.853027, -1611.874023, 75.403930, 30.0);
	return 1;
}

stock UpdateTextCanSa()
{
    new trangthai_1[1280],trangthai_2[1280],trangthai_3[1280],trangthai_4[1280],trangthai_5[1280],trangthai_6[1280],trangthai_7[1280],trangthai_8[1280],trangthai_9[1280],trangthai_10[1280],
	trangthai_11[1280],trangthai_12[1280],trangthai_13[1280],trangthai_14[1280],trangthai_15[1280],trangthai_16[1280],trangthai_17[1280],trangthai_18[1280],trangthai_19[1280],trangthai_20[1280],trangthai_21[1280],trangthai_22[1280],trangthai_23[1280];
	if(PlayerCS[CayCanSaHai][1] == 0)
		trangthai_1 = "Co the hai";
	else
	    trangthai_2 = "Dang hoi phuc";
	//--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][2] == 0)
		trangthai_2 = "Co the hai";
	else
	    trangthai_2 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][3] == 0)
		trangthai_3 = "Co the hai";
	else
	    trangthai_3 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][4] == 0)
		trangthai_4 = "Co the hai";
	else
	    trangthai_4 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][5] == 0)
		trangthai_5 = "Co the hai";
	else
	    trangthai_5 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][6] == 0)
		trangthai_6 = "Co the hai";
	else
	    trangthai_6 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][7] == 0)
		trangthai_7 = "Co the hai";
	else
	    trangthai_7 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][8] == 0)
		trangthai_8 = "Co the hai";
	else
	    trangthai_8 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][9] == 0)
		trangthai_9 = "Co the hai";
	else
	    trangthai_9 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][10] == 0)
		trangthai_10 = "Co the hai";
	else
	    trangthai_10 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][11] == 0)
		trangthai_11 = "Co the hai";
	else
	    trangthai_11 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][12] == 0)
		trangthai_12 = "Co the hai";
	else
	    trangthai_12 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][13] == 0)
		trangthai_13 = "Co the hai";
	else
	    trangthai_13 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][14] == 0)
		trangthai_14 = "Co the hai";
	else
	    trangthai_14 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][15] == 0)
		trangthai_15 = "Co the hai";
	else
	    trangthai_15 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][16] == 0)
		trangthai_16 = "Co the hai";
	else
	    trangthai_16 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][17] == 0)
		trangthai_17 = "Co the hai";
	else
	    trangthai_17 = "Dang hoi phuc";
	//--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][18] == 0)
		trangthai_18 = "Co the hai";
	else
	    trangthai_18 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][19] == 0)
		trangthai_19 = "Co the hai";
	else
	    trangthai_19 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][20] == 0)
		trangthai_20 = "Co the hai";
	else
	    trangthai_20 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][21] == 0)
		trangthai_21 = "Co the hai";
	else
	    trangthai_21 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][22] == 0)
		trangthai_22 = "Co the hai";
	else
	    trangthai_22 = "Dang hoi phuc";
    //--------------------------------------------------------------------------
    if(PlayerCS[CayCanSaHai][23] == 0)
		trangthai_23 = "Co the hai";
	else
	    trangthai_23 = "Dang hoi phuc";

	//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	new string[1280];
    format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_1);
	UpdateDynamic3DTextLabelText(CanSaText[1], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_2);
	UpdateDynamic3DTextLabelText(CanSaText[2], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_3);
	UpdateDynamic3DTextLabelText(CanSaText[3], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_4);
	UpdateDynamic3DTextLabelText(CanSaText[4], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_5);
	UpdateDynamic3DTextLabelText(CanSaText[5], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_6);
	UpdateDynamic3DTextLabelText(CanSaText[6], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_7);
	UpdateDynamic3DTextLabelText(CanSaText[7], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_8);
	UpdateDynamic3DTextLabelText(CanSaText[8], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_9);
	UpdateDynamic3DTextLabelText(CanSaText[9], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_10);
	UpdateDynamic3DTextLabelText(CanSaText[10], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_11);
	UpdateDynamic3DTextLabelText(CanSaText[11], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_12);
	UpdateDynamic3DTextLabelText(CanSaText[12], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_13);
	UpdateDynamic3DTextLabelText(CanSaText[13], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_14);
	UpdateDynamic3DTextLabelText(CanSaText[14], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_15);
	UpdateDynamic3DTextLabelText(CanSaText[15], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_16);
	UpdateDynamic3DTextLabelText(CanSaText[16], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_17);
	UpdateDynamic3DTextLabelText(CanSaText[17], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_18);
	UpdateDynamic3DTextLabelText(CanSaText[18], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_19);
	UpdateDynamic3DTextLabelText(CanSaText[19], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_20);
	UpdateDynamic3DTextLabelText(CanSaText[20], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_21);
	UpdateDynamic3DTextLabelText(CanSaText[21], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_22);
	UpdateDynamic3DTextLabelText(CanSaText[22], -1, string);

	format(string, sizeof(string), "{336600}CAY CAN SA{FFFFFF}\n\nTrang thai : {ff9900}%s", trangthai_23);
	UpdateDynamic3DTextLabelText(CanSaText[23], -1, string);
	return 1;
}

hook OnPlayerDisconnect(playerid, reason)
{
    DangHaiCanSa[playerid] = 0;
	return 1;
}

hook OnPlayerDeath(playerid, killerid, reason)
{
    DangHaiCanSa[playerid] = 0;
    return 1;
}

hook OnPlayerKeyStateChange(playerid, newkeys, oldkeys) {
    if(PRESSED(KEY_YES))
    {
        cmd_haicansa(playerid, "");
	}
	return 1;
}

task ResetCanSa[600000](){
    PlayerCS[CayCanSaHai][1] = 0;
    PlayerCS[CayCanSaHai][2] = 0;
    PlayerCS[CayCanSaHai][3] = 0;
    PlayerCS[CayCanSaHai][4] = 0;
    PlayerCS[CayCanSaHai][5] = 0;
    PlayerCS[CayCanSaHai][6] = 0;
    PlayerCS[CayCanSaHai][7] = 0;
    PlayerCS[CayCanSaHai][8] = 0;
    PlayerCS[CayCanSaHai][9] = 0;
    PlayerCS[CayCanSaHai][10] = 0;
    PlayerCS[CayCanSaHai][11] = 0;
    PlayerCS[CayCanSaHai][12] = 0;
    PlayerCS[CayCanSaHai][13] = 0;
    PlayerCS[CayCanSaHai][14] = 0;
    PlayerCS[CayCanSaHai][15] = 0;
    PlayerCS[CayCanSaHai][16] = 0;
    PlayerCS[CayCanSaHai][17] = 0;
    PlayerCS[CayCanSaHai][18] = 0;
    PlayerCS[CayCanSaHai][19] = 0;
    PlayerCS[CayCanSaHai][20] = 0;
    PlayerCS[CayCanSaHai][21] = 0;
    PlayerCS[CayCanSaHai][22] = 0;
    PlayerCS[CayCanSaHai][23] = 0;
    UpdateTextCanSa();
}
