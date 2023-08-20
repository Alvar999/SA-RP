#include <a_samp>
#include <YSI\y_hooks>



new HopQuaGTAVNS[MAX_PLAYERS];
new DatHopQuaGTAVNS;

CMD:namdatqua(playerid, params[]) {
	return cmd_dynamicgift(playerid, params);
}

CMD:dynamicgift(playerid, params[])
{
	if(PlayerInfo[playerid][pAdmin] >= 1337)
	{
		if(IsPlayerInAnyVehicle(playerid))
		{
			SendClientMessageEx(playerid, COLOR_GREY, "Ban phai di bo de su dung lenh nay.");
			return 1;
		}

		new string[128], Float:Position[4];
		if(dynamicgift == 0)
		{

			GetPlayerPos(playerid, Position[0], Position[1], Position[2]);
			GetPlayerFacingAngle(playerid, Position[3]);
			dynamicgift = CreateDynamicObject(19058, Position[0], Position[1], Position[2], 0.0, 0.0, Position[3], -1, -1, -1, 200.0);
			dynamicgift3DText = CreateDynamic3DTextLabel("{00ffff}HOP QUA{FFFFFF}\nSu dung : {00ff00}/nhanqua{ffffff}\nKeo anh chi em vao ung ho server nha may ban yeu <3.",-1,Position[0], Position[1], Position[2]+0.25,50.0);
			SetPlayerPos(playerid, Position[0], Position[1], Position[2]+3);
			format(string, sizeof(string), "AdmCmd: %s da dat gift box.", GetPlayerNameEx(playerid));

			DatHopQuaGTAVNS = 1;

			new zone[MAX_ZONE_NAME];
			GetPlayer3DZone(playerid, zone, sizeof(zone));

			new thongbao[1280];
			format(thongbao, sizeof(thongbao), "{00ff00}%s{ffffff} da dat {00ffff}HOP QUA{FFFFFF} tai {ff3300}%s{ffffff}.", GetPlayerNameEx(playerid), zone);
			SendClientMessageToAll(-1, thongbao);

			if(IsDynamicGiftBoxEnabled == true)
			{
				SendClientMessageEx(playerid, COLOR_RED, "Due to the Dynamic Giftbox being enabled, you may view the content inside the giftbox.");

				if(PlayerInfo[playerid][pAdmin] == 99999)
				{
					SendClientMessageEx(playerid, COLOR_RED, "Executive Admin Note: You must fill up the giftbox with /dgedit.");
				}
				ShowPlayerDynamicGiftBox(playerid);
			}
			ABroadCast( COLOR_LIGHTRED, string, 1337);
		}
		else
		{
			DestroyDynamicObject(dynamicgift);
			dynamicgift = 0;
			DestroyDynamic3DTextLabel( Text3D:dynamicgift3DText );
			format(string, sizeof(string), "AdmCmd: %s da pha huy gift box", GetPlayerNameEx(playerid));
			ABroadCast( COLOR_LIGHTRED, string, 2);

			DatHopQuaGTAVNS = 0;
		}
	}
	else
	{
		SendClientMessageEx(playerid, COLOR_GRAD1, "Ban khong duoc phep su dung lenh nay.");
	}
	return 1;
}

CMD:nhanqua(playerid, params[]) {
	return cmd_getgift(playerid, params);
}

CMD:getgift(playerid, params[])
{
	if(dynamicgift != 0)
	{
		new Float:Position[3];
		GetDynamicObjectPos(dynamicgift, Position[0], Position[1], Position[2]);

		if(IsPlayerInRangeOfPoint(playerid, 5.0, Position[0], Position[1], Position[2]))
		{
			if(DatHopQuaGTAVNS == 1)
			{
				if(HopQuaGTAVNS[playerid] == 1)
				{
				    new hopqua = random(115);
			        switch(hopqua)
			        {
				        case 0..40:
				        {
							PlayerInfo[playerid][pCash] += 2000 + random(3000);
							SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Ban nhan duoc {00ff00}${ffffff} tu hop qua may man.");
							HopQuaGTAVNS[playerid] = 0;
				        }
				        case 41..60:
				        {
							
                            PlayerInfo[playerid][pBanve] += 1 + random(3);
							SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Ban nhan duoc {00ff00}Ban ve vu khi{ffffff} tu hop qua may man.");
							HopQuaGTAVNS[playerid] = 0;
				        }
				        case 61..90:
				        {
				            PlayerInfo[playerid][pPot] += 5;
				            PlayerInfo[playerid][pCrack] += 3;
							SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Ban nhan duoc {00ff00}5 Pot - 3 Crack{ffffff} tu hop qua may man.");
							HopQuaGTAVNS[playerid] = 0;
				        }
				        case 91..95:
				        {
				            PlayerInfo[playerid][pMats] += 100 + random(100);
							SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Ban nhan duoc {00ff00}Vat lieu{ffffff} tu hop qua may man.");
							HopQuaGTAVNS[playerid] = 0;
				        }
				        case 96..110:
				        {
							SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Ban nhan duoc {00ff00}1 trang phao tay{ffffff} tu hop qua may man.");
							HopQuaGTAVNS[playerid] = 0;
							
							new String[128];
	            			format( String, sizeof( String ), "[HOP QUA] Nguoi choi %s vua nhan duoc 1 trang phao tay.", GetPlayerNameEx(playerid));
							SendClientMessageToAll(COLOR_LIGHTBLUE, String);
				        }
				        case 111..115:
				        {
					        new xp = random(100);
					        if(xp >= 0 && xp <= 30) {
					            PlayerInfo[playerid][pXP] += 10;
					        }
					        else if(xp >= 31 && xp <= 70) {
					            PlayerInfo[playerid][pXP] += 20;
					        }
					        else if(xp >= 71 && xp <= 100) {
					            PlayerInfo[playerid][pXP] += 30;
					        }
				            //PlayerInfo[playerid][pVehVoucher] += 1;
							SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Ban nhan duoc {00ff00}XP{ffffff} tu hop qua may man.");
							HopQuaGTAVNS[playerid] = 0;
				        }
				    }
				}
			}
			else
			{
				SendClientMessageEx(playerid, -1, "{00ffff}HOP QUA{FFFFFF} : Hien chua duoc bat dau , ban vui long doi.");
				return 1;
			}
		}
	}
	return 1;
}

CMD:giftall(playerid, params[])
{
    if(PlayerInfo[playerid][pAdmin] >= 1337)
    {
    	if(GiftAllowed || PlayerInfo[playerid][pAdmin] >= 99999)
     	{
			new string[128];
      		format(string, sizeof(string), "{AA3333}AdmWarning{FFFF00}: %s has just sent a gift to all players.", GetPlayerNameEx(playerid));
			ABroadCast(COLOR_YELLOW, string, 2);
			GiftAllowed = 0;
			foreach(new i: Player)
			{
			    //GiftPlayer(playerid, i);
			    HopQuaGTAVNS[i] = 1;
			}
		}
		else
		{
		    return SendClientMessageEx(playerid, COLOR_GRAD2, "Lenh nay da duoc su dung, doi cho den khi tien luong tiep theo!");
		}
	}
	return 1;
}
