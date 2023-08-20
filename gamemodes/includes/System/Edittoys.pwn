#include <a_samp>
#include <YSI\y_hooks>


CMD:editt(playerid) {
    chinhsuatoy(playerid);
	return 1;
}

chinhsuatoy(playerid) {
	new slotid = GetPVarInt(playerid, "ToySlot");
	for(new x = 0; x < 13; x++) PlayerTextDrawShow(playerid, ChinhToyPTD[x]);
	for(new y = 0; y < 6; y++) TextDrawShowForPlayer(playerid, ChinhToyTD[y]);
	InChinhToy[playerid] = 1;
	ViTriX[playerid] = PlayerToyInfo[playerid][slotid][ptPosX];
	ViTriY[playerid] = PlayerToyInfo[playerid][slotid][ptPosY];
	ViTriZ[playerid] = PlayerToyInfo[playerid][slotid][ptPosZ];
	XoayX[playerid] = PlayerToyInfo[playerid][slotid][ptRotX];
	XoayY[playerid] = PlayerToyInfo[playerid][slotid][ptRotY];
	XoayZ[playerid] = PlayerToyInfo[playerid][slotid][ptRotZ];
	KichThuocX[playerid] = PlayerToyInfo[playerid][slotid][ptScaleX];
	KichThuocY[playerid] = PlayerToyInfo[playerid][slotid][ptScaleY];
	KichThuocZ[playerid] = PlayerToyInfo[playerid][slotid][ptScaleZ];
	SelectTextDraw(playerid, 0x00FF00FF);
	return true;
}

hook OnPlayerConnect(playerid) {
    LoadTDEditToy(playerid);
	return 1;
}

stock LoadTDEditToy(playerid) {
    ChinhToyPTD[0] = CreatePlayerTextDraw(playerid, 434.000000, 166.604476, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[0], 0.502722, 1.874166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[0], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[0], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[0], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[0], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[0], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[0], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[0], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[0], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[0], true);

	ChinhToyPTD[1] = CreatePlayerTextDraw(playerid, 494.400054, 166.604476, "Y");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[1], 0.493820, 1.950001);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[1], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[1], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[1], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[1], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[1], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[1], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[1], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[1], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[1], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[1], true);

	ChinhToyPTD[2] = CreatePlayerTextDraw(playerid, 559.200073, 167.600006, "Z");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[2], 0.493820, 1.903334);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[2], 10.000000, 33.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[2], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[2], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[2], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[2], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[2], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[2], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[2], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[2], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[2], true);

	ChinhToyPTD[3] = CreatePlayerTextDraw(playerid, 533.599914, 360.737701, "-");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[3], 0.558007, 1.640833);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[3], 10.000000, 28.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[3], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[3], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[3], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[3], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[3], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[3], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[3], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[3], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[3], true);

	ChinhToyPTD[4] = CreatePlayerTextDraw(playerid, 435.999938, 236.293411, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[4], 0.497099, 2.008333);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[4], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[4], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[4], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[4], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[4], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[4], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[4], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[4], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[4], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[4], true);

	ChinhToyPTD[5] = CreatePlayerTextDraw(playerid, 494.800109, 236.293319, "Y");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[5], 0.490072, 1.979166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[5], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[5], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[5], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[5], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[5], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[5], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[5], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[5], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[5], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[5], true);

	ChinhToyPTD[6] = CreatePlayerTextDraw(playerid, 557.599975, 236.791137, "Z");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[6], 0.486324, 1.979166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[6], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[6], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[6], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[6], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[6], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[6], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[6], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[6], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[6], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[6], true);

	ChinhToyPTD[7] = CreatePlayerTextDraw(playerid, 436.399932, 307.475646, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[7], 0.493820, 1.827499);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[7], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[7], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[7], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[7], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[7], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[7], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[7], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[7], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[7], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[7], true);

	ChinhToyPTD[8] = CreatePlayerTextDraw(playerid, 495.600006, 307.475585, "Y");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[8], 0.493351, 1.780833);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[8], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[8], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[8], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[8], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[8], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[8], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[8], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[8], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[8], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[8], true);

	ChinhToyPTD[9] = CreatePlayerTextDraw(playerid, 558.400085, 307.475524, "Z");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[9], 0.485386, 1.769166);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[9], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[9], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[9], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[9], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[9], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[9], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[9], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[9], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[9], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[9], true);

	ChinhToyPTD[10] = CreatePlayerTextDraw(playerid, 454.799896, 360.737731, "+");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[10], 0.558007, 1.640833);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[10], 10.000000, 29.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[10], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[10], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[10], -1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[10], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[10], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[10], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[10], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[10], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[10], true);

	ChinhToyPTD[11] = CreatePlayerTextDraw(playerid, 495.199829, 395.582000, "xong");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[11], 0.234726, 1.144999);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[11], 10.000000, 36.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[11], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[11], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[11], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[11], 16711935);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[11], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[11], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[11], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[11], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[11], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[11], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[11], true);

	ChinhToyPTD[12] = CreatePlayerTextDraw(playerid, 585.599792, 107.368644, "X");
	PlayerTextDrawLetterSize(playerid, ChinhToyPTD[12], 0.256747, 1.244167);
	PlayerTextDrawTextSize(playerid, ChinhToyPTD[12], 10.000000, 23.000000);
	PlayerTextDrawAlignment(playerid, ChinhToyPTD[12], 2);
	PlayerTextDrawColor(playerid, ChinhToyPTD[12], -1);
	PlayerTextDrawUseBox(playerid, ChinhToyPTD[12], 1);
	PlayerTextDrawBoxColor(playerid, ChinhToyPTD[12], 16711935);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[12], 0);
	PlayerTextDrawSetOutline(playerid, ChinhToyPTD[12], -1);
	PlayerTextDrawBackgroundColor(playerid, ChinhToyPTD[12], 255);
	PlayerTextDrawFont(playerid, ChinhToyPTD[12], 1);
	PlayerTextDrawSetProportional(playerid, ChinhToyPTD[12], 1);
	PlayerTextDrawSetShadow(playerid, ChinhToyPTD[12], 0);
	PlayerTextDrawSetSelectable(playerid, ChinhToyPTD[12], true);
	return 1;
}
