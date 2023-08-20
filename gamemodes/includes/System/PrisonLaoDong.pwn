#include <YSI\y_hooks>


/*
192.392593|1876.737060|17.640625|6018|0
190.725402|1889.052978|17.640625|6019|0
192.148986|1899.415283|17.640625|6020|0
181.265029|1901.034057|17.834705|6021|0
172.533432|1908.056762|18.269580|6022|0
171.223449|1901.483032|18.382507|6023|0
172.755310|1893.210327|19.411153|6024|0
169.357971|1885.489990|20.778562|6025|0
175.829940|1881.352783|20.848342|6026|0
168.886337|1875.873657|20.693660|6027|0
166.689605|1868.099243|20.270011|6028|0
174.622100|1867.061035|20.717666|6029|0
177.277694|1859.421386|20.301465|6030|0
183.917465|1860.923706|20.657850|6031|0
188.833847|1856.557983|20.451732|6032|0
195.281234|1860.226562|20.640625|6033|0
200.682281|1855.204833|20.221878|6034|0
204.369323|1860.174804|20.640625|6035|0
209.886047|1855.023559|20.200088|6036|0
216.247253|1860.434448|20.640625|6037|0
218.062149|1854.647705|20.216602|6038|0
223.986526|1852.653564|20.146600|6039|0
226.106048|1858.494750|20.640625|6040|0
231.454025|1861.048095|20.640625|6041|0
235.158462|1854.629272|20.416198|6042|0
241.027832|1858.585571|20.640625|6043|0
240.883728|1866.722167|19.664712|6044|0
249.118225|1870.746826|20.640625|6045|0
245.812408|1878.350219|20.287048|6046|0
251.313232|1884.984741|20.640625|6047|0
246.748672|1890.223876|20.261697|6048|0
251.625823|1895.048461|20.633161|6049|0
247.832260|1901.828125|20.395095|6050|0
251.137466|1907.238281|20.640625|6051|0
260.634216|1911.169799|18.198448|6052|0
268.535247|1908.535400|17.648057|6053|0
279.756439|1899.368774|17.648057|6055|0
273.737792|1893.772583|17.640625|6056|0
278.737915|1885.099975|17.648057|6057|0
276.883697|1874.103027|17.648057|6058|0
279.127655|1866.149291|17.640625|6059|0
271.621063|1865.286132|17.640625|6060|0
276.731781|1860.432983|17.640625|6061|0
270.107208|1855.622070|17.640625|6062|0
273.761474|1848.617065|17.640625|6063|0
265.170043|1844.912597|17.648057|6064|0
257.815155|1849.603759|17.640625|6065|0
261.677154|1838.054443|17.648057|6066|0
271.573211|1833.965332|17.648057|6067|0
236.717910|1879.810302|17.640625|6068|0
238.208007|1890.803710|17.640625|6069|0
237.921890|1900.260009|17.640625|6070|0
182.818420|1927.528808|17.882383|6071|0
178.119705|1935.250732|18.064958|6072|0
171.569091|1933.508422|18.319490|6073|0
166.394241|1926.626831|18.464082|6074|0
158.214889|1926.107666|18.745410|6075|0
154.444580|1933.253906|18.945198|6076|0
148.751129|1937.483154|19.184730|6077|0
147.011352|1927.061645|19.144994|6078|0
160.101867|1889.660034|19.190240|6079|0
153.792724|1884.975585|18.211025|6080|0
158.612579|1876.813842|18.557523|6081|0
160.544479|1865.215576|18.132499|6082|0
159.591430|1853.943237|17.717250|6083|0
174.059463|1850.524902|17.691280|6084|0
194.412445|1849.129638|18.432674|6085|0
239.642883|1916.647705|17.640625|6086|0
245.190032|1923.924682|17.640625|6087|0
238.541488|1926.929199|17.648057|6088|0
229.516464|1924.947143|17.640625|6089|0
*/

#define         	MAX_PRISON_TREE          500

enum pPrisonTree
{
	 Float:PrisonTree_PosX,
	 Float:PrisonTree_PosY,
	 Float:PrisonTree_PosZ,
	 PrisonTree_TinhTrang,
	 PrisonTree_PickupID,
	 Text3D: PrisonTree_TextID,
};
new PrisonTreeInfo[MAX_PRISON_TREE][pPrisonTree];

new SoLanNhoCo[MAX_PLAYERS];
new DangNhoCo[MAX_PLAYERS];

stock TinhTrangTree(id) {
	new name[1280];
	if(id == 0) name = "Co the nho~ co~";
	if(id == 1) name = "Dang hoi phuc";
	return name;
}

CMD:nhoco(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] > 0) {
		for(new tree; tree < MAX_PRISON_TREE; tree++) {
			if(IsPlayerInRangeOfPoint(playerid, 3, PrisonTreeInfo[tree][PrisonTree_PosX], PrisonTreeInfo[tree][PrisonTree_PosY], PrisonTreeInfo[tree][PrisonTree_PosZ])) {
				if(PrisonTreeInfo[tree][PrisonTree_TinhTrang] == 0) {
					if(DangNhoCo[playerid] == 0) {
						SetPVarInt(playerid, "PrTreeID", tree);
						new time = 5+random(5);
						SetPVarInt(playerid, "PrisonTreeTime", time);
				  		SetTimerEx("PrisonTree", 1000, 0, "d", playerid);

				  		DangNhoCo[playerid] = 1;
					}else return SendClientMessage(playerid, -1, "Ban dang nho co roi, vui long doi trong giay lat.");
				}else return SendClientMessage(playerid, -1, "Hien tai co nay dang trong qua trinh hoi phuc.");
			}
		}
	}
	return 1;
}

CMD:rstree(playerid, params[]) {
	new string[1280];
	for(new tree; tree < MAX_PRISON_TREE; tree++) {
		if(PrisonTreeInfo[tree][PrisonTree_PosX] != 0.0) {
			if(PrisonTreeInfo[tree][PrisonTree_TinhTrang] == 1) {
				PrisonTreeInfo[tree][PrisonTree_TinhTrang] = 0;

				format(string, sizeof(string), "SV.SA-RP.NET\nTinh trang : %s\nLao dong la vinh quang.", TinhTrangTree(PrisonTreeInfo[GetPVarInt(playerid, "PrTreeID")][PrisonTree_TinhTrang]));
    			UpdateDynamic3DTextLabelText(PrisonTreeInfo[tree][PrisonTree_TextID], -1, string);
			}
		}
	}
	return 1;
}

forward PrisonTree(playerid);
public PrisonTree(playerid)
{
    SetPVarInt(playerid, "PrisonTreeTime", GetPVarInt(playerid, "PrisonTreeTime")-1);

    new string[1280];
    format(string, sizeof(string), "~n~~n~~n~~n~~n~~n~~n~~n~~n~~w~%d giay con lai", GetPVarInt(playerid, "PrisonTreeTime"));
    ApplyAnimation(playerid, "BOMBER", "BOM_Plant", 3.0, 1, 1, 0, 0, 0);
    GameTextForPlayer(playerid, string, 1100, 3);
    if(GetPVarInt(playerid, "PrisonTreeTime") > 0) SetTimerEx("PrisonTree", 1000, 0, "d", playerid);
    if(GetPVarInt(playerid, "PrisonTreeTime") <= 0)
    {
        DeletePVar(playerid, "PrisonTreeTime");
        DeletePVar(playerid, "PrisonTree");
        
        RemovePlayerAttachedObject(playerid, 0);
        TogglePlayerControllable(playerid, 1);
    	ClearAnimations(playerid);

    	PrisonTreeInfo[GetPVarInt(playerid, "PrTreeID")][PrisonTree_TinhTrang] = 1;

    	format(string, sizeof(string), "SV.SA-RP.NET\nTinh trang : %s\nLao dong la vinh quang.", TinhTrangTree(PrisonTreeInfo[GetPVarInt(playerid, "PrTreeID")][PrisonTree_TinhTrang]));
    	UpdateDynamic3DTextLabelText(PrisonTreeInfo[GetPVarInt(playerid, "PrTreeID")][PrisonTree_TextID], -1, string);

    	SoLanNhoCo[playerid] += 1;
    	format(string, sizeof(string), "Ban da nho co thanh cong so lan hien tai [%d / 10]", SoLanNhoCo[playerid]);
    	SendClientMessage(playerid, -1, string);

    	DangNhoCo[playerid] = 0;
    	return 1;
	}
	return 1;
}

CMD:treeedit(playerid, params[]) {
	if(PlayerInfo[playerid][pAdmin] >= 1337)
 	{
		new string[1280], choice[32], szid;
		if(sscanf(params, "s[32]d", choice, szid))
		{
			SendClientMessage(playerid, -1, "USAGE: /PrisonTreeedit [name] [ID PrisonTree (0 > 100)]");
			SendClientMessage(playerid, -1, "Name: create, delete");
			return 1;
		}
		if(strcmp(choice, "create", true) == 0)
		{

		    if(PrisonTreeInfo[szid][PrisonTree_PosX] != 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay da duoc edit truoc do roi khong the tiep tuc." );
				return 1;
			}
		    
			GetPlayerPos(playerid, PrisonTreeInfo[szid][PrisonTree_PosX], PrisonTreeInfo[szid][PrisonTree_PosY], PrisonTreeInfo[szid][PrisonTree_PosZ]);
			SendClientMessage( playerid, -1, "Ban da create prison tree thanh cong." );
			PrisonTreeInfo[szid][PrisonTree_TinhTrang] = 0;

			DestroyPickup(PrisonTreeInfo[szid][PrisonTree_PickupID]);
			DestroyDynamic3DTextLabel(PrisonTreeInfo[szid][PrisonTree_TextID]);
            format(string, sizeof(string), "SV.SA-RP.NET\nTinh trang : %s\nLao dong la vinh quang.", TinhTrangTree(PrisonTreeInfo[szid][PrisonTree_TinhTrang]));
            
			PrisonTreeInfo[szid][PrisonTree_PickupID] = CreateDynamicObject(761,  PrisonTreeInfo[szid][PrisonTree_PosX], PrisonTreeInfo[szid][PrisonTree_PosY], PrisonTreeInfo[szid][PrisonTree_PosZ]-1, 0, 0, 0, .worldid = 0, .streamdistance = 700);
   			PrisonTreeInfo[szid][PrisonTree_TextID] = CreateDynamic3DTextLabel(string, -1, PrisonTreeInfo[szid][PrisonTree_PosX], PrisonTreeInfo[szid][PrisonTree_PosY], PrisonTreeInfo[szid][PrisonTree_PosZ],30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
		    SavePrisonTree();
		    return 1;
		}
		else if(strcmp(choice, "delete", true) == 0) {
            if(PrisonTreeInfo[szid][PrisonTree_PosX] == 0.0) {
		        SendClientMessage( playerid, -1, "Hien tai #id nay chua duoc edit nen khong the xoa." );
				return 1;
			}
			
			PrisonTreeInfo[szid][PrisonTree_PosX] = 0;
			PrisonTreeInfo[szid][PrisonTree_PosY] = 0;
		 	PrisonTreeInfo[szid][PrisonTree_PosZ] = 0;
		 	PrisonTreeInfo[szid][PrisonTree_TinhTrang] = 0;
		 	DestroyDynamicPickup(PrisonTreeInfo[szid][PrisonTree_PickupID]);
		 	DestroyDynamic3DTextLabel(PrisonTreeInfo[szid][PrisonTree_TextID]);
		 	SavePrisonTree();
		 	format(string, sizeof(string), "Ban da xoa thanh cong cua hang PrisonTree (ID %d).", szid);
		 	SendClientMessage(playerid, -1, string);
		 	return 1;
		}
		SavePrisonTree();
	}
	return 1;
}

stock SavePrisonTree()
{
	new
		szFileStr[1024],
		File: fHandle = fopen("PrisonTreeServer.cfg", io_write);

	for(new iIndex; iIndex < MAX_PRISON_TREE; iIndex++)
	{
		format(szFileStr, sizeof(szFileStr), "%f|%f|%f|%d|%d\r\n",
		PrisonTreeInfo[iIndex][PrisonTree_PosX],
		PrisonTreeInfo[iIndex][PrisonTree_PosY],
		PrisonTreeInfo[iIndex][PrisonTree_PosZ],
		PrisonTreeInfo[iIndex][PrisonTree_PickupID],
		PrisonTreeInfo[iIndex][PrisonTree_TinhTrang]);
		fwrite(fHandle, szFileStr);
	}
 	return fclose(fHandle);
}

stock LoadPrisonTree()
{
    if(!fexist("PrisonTreeServer.cfg")) return 1;

	new string[128],
		szFileStr[128],
  		File: iFileHandle = fopen("PrisonTreeServer.cfg", io_read),
  		iIndex;

	while(iIndex < sizeof(PrisonTreeInfo) && fread(iFileHandle, szFileStr))
	{
		sscanf(szFileStr, "p<|>fffi",
		PrisonTreeInfo[iIndex][PrisonTree_PosX],
   		PrisonTreeInfo[iIndex][PrisonTree_PosY],
		PrisonTreeInfo[iIndex][PrisonTree_PosZ],
		PrisonTreeInfo[iIndex][PrisonTree_TinhTrang],
		PrisonTreeInfo[iIndex][PrisonTree_TinhTrang]);

  		format(string, sizeof(string), "SV.SA-RP.NET\nTinh trang : %s\nLao dong la vinh quang.", TinhTrangTree(PrisonTreeInfo[iIndex][PrisonTree_TinhTrang]));

        if(PrisonTreeInfo[iIndex][PrisonTree_PosX] != 0.0)
  		{
   			PrisonTreeInfo[iIndex][PrisonTree_PickupID] = CreateDynamicObject(761,  PrisonTreeInfo[szid][PrisonTree_PosX], PrisonTreeInfo[szid][PrisonTree_PosY], PrisonTreeInfo[szid][PrisonTree_PosZ]-1, 0, 0, 0, .worldid = 0, .streamdistance = 700);
   			PrisonTreeInfo[iIndex][PrisonTree_TextID] = CreateDynamic3DTextLabel(string, -1, PrisonTreeInfo[iIndex][PrisonTree_PosX], PrisonTreeInfo[iIndex][PrisonTree_PosY], PrisonTreeInfo[iIndex][PrisonTree_PosZ],30.0, INVALID_PLAYER_ID, INVALID_VEHICLE_ID, 0, -1, -1,  -1, 30.0);
  		}
  		++iIndex;
	}
 	return fclose(iFileHandle);
}
