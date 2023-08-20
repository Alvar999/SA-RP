#include <a_samp>
#include <streamer>
	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

#undef MAX_PLAYERS
#define MAX_PLAYERS (500)

public OnFilterScriptExit()
{
    for(new i; i < MAX_PLAYERS; i++)
	{
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) TogglePlayerControllable(i, false);
	}
}

public OnFilterScriptInit()
{

	// LOGO
	//Map Exported with Texture Studio By: [uL]Pottus////////////////////////////////////////////////////////////////
//////////////////////////////////////////////and Crayder////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Map Information////////////////////////////////////////////////////////////////////////////////////////////////
/*
	Exported on "2022-11-06 13:12:48" by "Cazer_Legend"
	Created by "Cazer_Legend"
*/
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Remove Buildings///////////////////////////////////////////////////////////////////////////////////////////////



	//Objects////////////////////////////////////////////////////////////////////////////////////////////////////////
	new logosv;
	logosv = CreateDynamicObject(19481, 1440.270629, -806.643371, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFF000000, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.643371, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.633361, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.623352, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.613342, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.603332, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.593322, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.583312, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.573303, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.563293, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.553283, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.543273, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.533264, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.523254, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.513244, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.503234, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.493225, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.483215, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.473205, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.463195, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.453186, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.443176, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.433166, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.423156, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.413146, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.403137, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.393127, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.383117, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.373107, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.363098, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.353088, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.343078, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.333068, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.323059, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.313049, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.303039, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.293029, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.283020, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.288024, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.293029, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.298034, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.303039, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.308044, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.313049, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.318054, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.323059, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.328063, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.333068, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.338073, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.343078, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.348083, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.353088, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.358093, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.363098, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.368103, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.373107, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.378112, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.383117, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.388122, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.393127, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.398132, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.403137, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.408142, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.413146, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.418151, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.423156, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.428161, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.433166, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.438171, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.443176, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.448181, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.453186, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.463195, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.468200, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.473205, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.478210, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.483215, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.488220, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.493225, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.498229, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.503234, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.508239, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.508239, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.513244, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.518249, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.523254, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.528259, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.533264, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.538269, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.543273, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.548278, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.553283, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.558288, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.568298, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.573303, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.578308, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.583312, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.588317, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.593322, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.598327, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.608337, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.613342, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	logosv = CreateDynamicObject(19481, 1440.270629, -806.618347, 82.327644, 0.000000, 0.000000, 270.000000, -1, -1, -1, 300.00, 300.00); 
	SetDynamicObjectMaterialText(logosv, 0, "LS CITY", 120, "Calibri", 190, 1, 0xFFFFFFFF, 0x00000000, 1);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	logosv = CreateDynamicObject(3406, 1425.060546, -802.560607, 76.174758, 179.800048, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	logosv = CreateDynamicObject(3406, 1430.760742, -802.590576, 76.154876, 179.800048, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	logosv = CreateDynamicObject(3406, 1437.590576, -802.626220, 76.131057, 179.800048, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	logosv = CreateDynamicObject(3406, 1443.920776, -802.659606, 76.108955, 179.800048, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	logosv = CreateDynamicObject(3406, 1448.210693, -802.682006, 76.093978, 179.800048, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 
	logosv = CreateDynamicObject(3406, 1454.030761, -802.712524, 76.073661, 179.800048, 0.000000, -90.299987, -1, -1, -1, 300.00, 300.00); 






	// QUAN CAFE
	
	new cafecazer;
	cafecazer = CreateDynamicObject(18981, 334.021423, -1833.198364, 5.063540, 0.000000, 90.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14650, "ab_trukstpc", "sa_wood08_128", 0x00000000);
	cafecazer = CreateDynamicObject(14416, 334.047180, -1818.818603, 2.363275, 0.000000, 0.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3979, "civic01_lan", "nt_bonav1", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14652, "ab_trukstpa", "CJ_WOOD6", 0x00000000);
	cafecazer = CreateDynamicObject(19353, 332.021453, -1819.094238, 3.843939, 180.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	cafecazer = CreateDynamicObject(19353, 336.171478, -1819.094238, 3.843939, 180.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 322.023803, -1821.203979, 2.736387, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 322.023803, -1845.193969, 2.736387, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 346.013793, -1845.193969, 2.736387, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 346.013793, -1821.203979, 2.736387, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 335.992645, -1821.221435, 7.863542, 0.000000, 0.000000, 0.000017, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 341.512664, -1821.221313, 7.893542, 0.000009, 180.000000, 0.000071, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(18762, 332.002349, -1821.220947, 7.863542, 0.000000, -0.000000, -179.999938, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 326.522674, -1821.221313, 7.893542, 0.000009, 180.000000, 0.000071, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(1499, 332.493499, -1820.807373, 5.522581, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14581, "ab_mafiasuitea", "barbersmir1", 0x00000000);
	cafecazer = CreateDynamicObject(1499, 335.503448, -1820.807373, 5.522581, 0.000000, 0.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14581, "ab_mafiasuitea", "barbersmir1", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 344.017059, -1821.241088, 9.573540, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 344.017059, -1821.211059, 9.573539, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 324.027038, -1821.241088, 9.573540, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 324.027038, -1821.211059, 9.573539, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18981, 334.021423, -1833.198364, 10.863540, 0.000000, 90.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 346.012603, -1826.721435, 7.893542, 0.000009, 180.000000, 90.000068, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(18766, 346.012603, -1840.691406, 7.893542, 0.000009, 180.000000, 90.000068, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(18766, 346.012054, -1833.326171, 9.573540, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 346.022064, -1833.326171, 9.573540, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 322.022613, -1826.721435, 7.893542, 0.000009, 180.000000, 90.000068, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(18766, 322.022613, -1840.691406, 7.893542, 0.000009, 180.000000, 90.000068, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(18766, 322.022064, -1833.326049, 9.573540, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18766, 322.032073, -1833.326049, 9.573540, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(3399, 331.475036, -1850.772338, 7.963541, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14581, "ab_mafiasuitea", "barbersmir1", 0xFF000000);
	cafecazer = CreateDynamicObject(18766, 326.512634, -1845.201416, 7.893542, 0.000009, 180.000000, 180.000061, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(18766, 340.512634, -1845.201416, 7.893541, 0.000009, 180.000000, 180.000061, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0xFF000000);
	cafecazer = CreateDynamicObject(19448, 338.718109, -1847.422729, 5.463541, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3083, "billbox", "ADDWOOD", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(19448, 329.118072, -1847.422729, 5.463541, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3083, "billbox", "ADDWOOD", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(19448, 338.718109, -1850.922729, 5.463541, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3083, "billbox", "ADDWOOD", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(19448, 329.118072, -1850.922729, 5.463541, 0.000000, 90.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3083, "billbox", "ADDWOOD", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(18762, 336.002349, -1845.211059, 7.863542, 0.000000, 0.000000, -179.999938, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 332.002349, -1845.211059, 7.863542, 0.000000, 0.000000, -179.999938, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	cafecazer = CreateDynamicObject(1499, 332.493499, -1844.797485, 5.522581, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14581, "ab_mafiasuitea", "barbersmir1", 0x00000000);
	cafecazer = CreateDynamicObject(1499, 335.503448, -1844.797485, 5.522581, 0.000000, 0.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14581, "ab_mafiasuitea", "barbersmir1", 0x00000000);
	cafecazer = CreateDynamicObject(970, 336.035827, -1852.082153, 6.049479, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(970, 340.135925, -1852.082153, 6.049479, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 333.992645, -1821.221435, 10.063542, 0.000000, 90.000000, 0.000017, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 336.002349, -1845.191040, 7.863542, 0.000000, 0.000000, -179.999938, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 6282, "beafron2_law2", "boardwalk2_la", 0x00000000);
	cafecazer = CreateDynamicObject(970, 327.835815, -1852.082153, 6.049479, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(970, 331.935913, -1852.082153, 6.049479, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(19380, 341.660552, -1849.918945, 10.297916, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3083, "billbox", "ADDWOOD", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 342.754943, -1852.136230, 7.549478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 342.754943, -1852.136230, 2.549478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	cafecazer = CreateDynamicObject(970, 342.735931, -1849.382202, 6.049479, -0.000001, 0.000000, -89.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(970, 324.835815, -1849.132080, 6.049479, -0.000001, 0.000000, -89.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 324.954956, -1846.336303, 4.049478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 324.954956, -1852.136230, 4.049478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 342.754943, -1846.636230, 7.549478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 342.754943, -1846.636230, 2.549478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10101, "2notherbuildsfe", "sl_vicwall01", 0x00000000);
	cafecazer = CreateDynamicObject(640, 339.090179, -1854.197387, 10.933854, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	cafecazer = CreateDynamicObject(640, 344.200164, -1854.197387, 10.933854, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	cafecazer = CreateDynamicObject(640, 346.550170, -1851.197387, 10.933854, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	cafecazer = CreateDynamicObject(638, 346.522155, -1847.160888, 10.933854, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	cafecazer = CreateDynamicObject(970, 336.435821, -1847.781982, 10.849476, -0.000001, 0.000000, -89.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 17588, "lae2coast_alpha", "plainglass", 0x00000000);
	cafecazer = CreateDynamicObject(640, 325.222412, -1836.772705, 6.063539, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(2436, 344.366058, -1832.297119, 5.563539, 0.000001, 0.000000, 0.000003, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "orange", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 4830, "airport2", "sanairtex3", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 2, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 14668, "711c", "gun_ceiling1128", 0x00000000);
	cafecazer = CreateDynamicObject(1984, 343.403625, -1832.254028, 5.563539, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 1, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(16151, 340.906372, -1829.026123, 5.863534, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 5, 10765, "airportgnd_sfse", "white", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 7, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 8, 18646, "matcolours", "grey-80-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 9, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 325.018218, -1835.940185, 5.563539, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 329.718261, -1835.940185, 5.563539, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(640, 329.522460, -1836.772705, 6.063539, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(640, 329.522460, -1835.072631, 6.063539, 0.000001, 0.000000, 90.000007, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(19448, 327.318267, -1835.882080, 7.513541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3945, "bistro_alpha", "creme128", 0xFF000000);
	cafecazer = CreateDynamicObject(640, 325.222412, -1835.072631, 6.063539, 0.000001, 0.000000, 90.000007, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(2286, 322.550933, -1834.116699, 7.463541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7094, "vgnretail5", "vegasclub01_128", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	cafecazer = CreateDynamicObject(2286, 345.500976, -1832.116699, 8.463541, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 2254, "picture_frame_clip", "CJ_PAINTING15", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	cafecazer = CreateDynamicObject(2722, 345.484069, -1834.171508, 7.263541, 360.000000, 0.000000, -90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7073, "vgnfremntsgn", "averysigneon1a_256", 0x00000000);
	cafecazer = CreateDynamicObject(19787, 345.578552, -1834.127685, 9.063541, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 2266, "picture_frame", "CJ_PAINTING1", 0x00000000);
	cafecazer = CreateDynamicObject(2722, 345.484069, -1834.171508, 6.303540, 360.000000, 0.000000, -90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7073, "vgnfremntsgn", "averysigneon2a_256", 0xFF000000);
	cafecazer = CreateDynamicObject(2286, 322.550933, -1832.116699, 8.563541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7094, "vgnretail5", "vegasclub02_128", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	cafecazer = CreateDynamicObject(19356, 324.844055, -1823.898071, 5.643542, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0x00000000);
	cafecazer = CreateDynamicObject(19353, 342.071594, -1827.984252, 5.843541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14651, "ab_trukstpd", "Bow_bar_tabletop_wood", 0x00000000);
	cafecazer = CreateDynamicObject(1744, 322.361114, -1832.636840, 7.063540, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(1744, 322.361114, -1834.636840, 8.363540, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(1744, 345.661132, -1832.036743, 6.963541, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	cafecazer = CreateDynamicObject(19356, 328.334167, -1823.898071, 5.643542, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14652, "ab_trukstpa", "mp_diner_wood", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(19356, 328.474304, -1822.376586, 6.283543, 0.000000, 180.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3241, "conhooses", "des_greyboards", 0xFF663300);
	cafecazer = CreateDynamicObject(19356, 325.274047, -1822.376586, 6.283546, 0.000000, 180.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3241, "conhooses", "des_greyboards", 0xFF663300);
	cafecazer = CreateDynamicObject(19427, 323.903472, -1822.356567, 6.283546, 0.000000, 180.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3241, "conhooses", "des_greyboards", 0xFF663300);
	cafecazer = CreateDynamicObject(19427, 323.173217, -1823.217407, 5.193529, 0.000000, 180.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3241, "conhooses", "des_greyboards", 0xFF663300);
	cafecazer = CreateDynamicObject(19427, 323.173217, -1824.708862, 4.473516, 0.000000, 180.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 3241, "conhooses", "des_greyboards", 0xFF663300);
	cafecazer = CreateDynamicObject(2125, 323.611511, -1823.414916, 6.049478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 1, 18064, "ab_sfammuunits", "gun_blackbox", 0x00000000);
	cafecazer = CreateDynamicObject(18981, 329.021423, -1833.198364, 14.163540, 0.000000, 90.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(18981, 339.021423, -1833.198364, 14.163540, 0.000000, 90.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 339.034973, -1820.999145, 12.508288, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 329.534973, -1820.999145, 12.508288, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 321.784973, -1826.049194, 12.508288, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 321.784973, -1840.649169, 12.508288, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19354, 344.907135, -1845.605957, 12.363539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(19354, 343.137115, -1845.605957, 12.363539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(19354, 324.907135, -1845.605957, 12.363539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(19354, 323.137115, -1845.605957, 12.363539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-80-percent", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 339.034973, -1845.449096, 12.508288, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 329.534973, -1845.449096, 12.508288, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 345.984985, -1826.049194, 12.508288, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(19450, 345.984985, -1840.649169, 12.508288, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 331.339599, -1817.685546, 3.332771, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(18762, 336.839599, -1817.685546, 3.332771, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(8530, 339.449523, -1785.460449, 7.346430, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-90-percent", 0xFFFFFFFF);
	SetDynamicObjectMaterial(cafecazer, 1, 7489, "vgntamotel", "vgnacmotel5_128", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 2, 18646, "matcolours", "grey", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 9514, "711_sfw", "shingles2", 0x00000000);
	cafecazer = CreateDynamicObject(19477, 339.324951, -1784.864135, 10.899916, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 4212, "nitewin_lan", "neonwin1", 0x00000000);
	cafecazer = CreateDynamicObject(2659, 340.377960, -1784.885498, 11.981201, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 5998, "sunstr_lawn", "sunneon01", 0x00000000);
	cafecazer = CreateDynamicObject(2659, 338.467926, -1784.885498, 11.981201, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 5998, "sunstr_lawn", "sunneon01", 0x00000000);
	cafecazer = CreateDynamicObject(2659, 338.467926, -1784.885498, 9.781200, 0.000000, 179.999938, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 5998, "sunstr_lawn", "sunneon01", 0x00000000);
	cafecazer = CreateDynamicObject(2659, 340.377960, -1784.885498, 9.781200, 0.000000, -180.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 5998, "sunstr_lawn", "sunneon01", 0x00000000);
	cafecazer = CreateDynamicObject(19377, 327.873718, -1839.584594, 10.444479, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(19377, 327.873718, -1827.584594, 10.444479, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(19377, 340.173736, -1827.584594, 10.444479, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(2920, 341.593170, -1785.800292, 5.159778, 0.000000, -50.000000, 170.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "red", 0x00000000);
	cafecazer = CreateDynamicObject(19825, 322.645660, -1833.217895, 9.563541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 1654, "dynamite", "clock64", 0x00000000);
	cafecazer = CreateDynamicObject(2637, 339.093963, -1848.718383, 5.949478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 18646, "matcolours", "grey-90-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 1, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	cafecazer = CreateDynamicObject(639, 339.261230, -1854.638183, 8.477877, 0.000001, 0.000001, 90.000007, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, -1, "none", "none", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(639, 339.261230, -1854.638183, 8.477877, 0.000001, 0.000001, 90.000007, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, -1, "none", "none", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(1235, 332.636322, -1835.965332, 6.063539, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 1, 982, "bar_chainlink", "awirex2", 0xFF333300);
	cafecazer = CreateDynamicObject(2231, 325.002258, -1821.573974, 8.763541, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 2, 18646, "matcolours", "grey-90-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 18646, "matcolours", "grey-90-percent", 0x00000000);
	cafecazer = CreateDynamicObject(2231, 344.002258, -1821.573974, 8.763541, 0.000000, 0.000000, 360.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 2, 18646, "matcolours", "grey-90-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 18646, "matcolours", "grey-90-percent", 0x00000000);
	cafecazer = CreateDynamicObject(19377, 340.173736, -1839.584594, 10.444479, 0.000000, 90.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 0, 14581, "ab_mafiasuitea", "barbersmir1", 0xFFFFFFFF);
	cafecazer = CreateDynamicObject(1281, 343.696289, -1847.793579, 11.173853, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 1, 18646, "matcolours", "grey-90-percent", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 2, 1407, "break_f_w", "CJ_GREENWOOD", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 3820, "boxhses_sfsx", "sw_barnwoodblu", 0x00000000);
	cafecazer = CreateDynamicObject(2453, 342.830017, -1832.388793, 6.813541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	SetDynamicObjectMaterial(cafecazer, 1, 18646, "matcolours", "red", 0x00000000);
	SetDynamicObjectMaterial(cafecazer, 3, 18065, "ab_sfammumain", "shelf_glas", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	cafecazer = CreateDynamicObject(1232, 324.920196, -1852.128906, 4.549478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1232, 324.920196, -1846.278930, 4.549478, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1825, 342.353240, -1841.200317, 5.563539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1825, 342.353240, -1838.200317, 5.563539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1825, 337.853240, -1841.200317, 5.563539, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1825, 337.853240, -1838.200317, 5.563539, 0.000000, -0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(14657, 327.225982, -1836.322998, 6.163540, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19823, 343.243469, -1832.513671, 6.473540, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1520, 343.441345, -1832.520385, 6.513541, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1520, 343.591369, -1832.520385, 6.513541, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19823, 343.243469, -1832.313720, 6.473540, -0.000001, 0.000000, -179.999984, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1520, 343.441345, -1832.320312, 6.513541, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1520, 343.591369, -1832.320312, 6.513541, 0.000000, -0.000001, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19609, 324.370208, -1824.300903, 5.729479, 0.000000, 0.000000, 21.000005, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19613, 329.335113, -1822.936279, 5.729479, 0.000000, 0.000000, 26.499998, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19616, 328.035552, -1822.701171, 5.729479, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19317, 327.460632, -1822.779785, 6.452097, -15.699998, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19318, 326.452972, -1822.632202, 6.479482, -11.700001, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19611, 326.911285, -1824.722656, 5.723542, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19610, 326.911285, -1824.722656, 7.333540, 25.700002, 0.000000, 45.200004, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1255, 344.530822, -1851.673461, 10.983854, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2452, 342.483520, -1822.138183, 5.563540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1992, 344.577148, -1821.998046, 5.563540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(984, 332.457824, -1786.086914, 4.498324, -1.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(16780, 334.137145, -1833.239135, 10.513541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2026, 325.486145, -1833.330932, 10.363539, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2026, 342.486145, -1833.330932, 10.363539, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1250, 341.557678, -1785.686889, 5.049487, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1670, 339.941986, -1827.088623, 6.513541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1697, 323.724182, -1832.071655, 16.063541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1827, 342.827270, -1852.472778, 10.383852, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2813, 345.291290, -1833.095703, 7.293540, 0.000000, 0.000000, 290.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2855, 345.409118, -1832.216430, 7.473539, 70.000000, 370.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2900, 344.986999, -1828.705444, 5.563539, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2912, 345.063049, -1828.725341, 6.763539, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(3031, 324.321594, -1828.485229, 16.163541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2639, 337.578277, -1846.430786, 6.049478, 0.000000, 0.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2639, 340.578277, -1846.430786, 6.049478, 0.000000, 0.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(3804, 343.812164, -1820.480102, 12.474514, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(3804, 323.812164, -1820.480102, 12.474514, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1232, 331.348388, -1817.670166, 3.858494, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1232, 336.798370, -1817.670166, 3.858494, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1255, 341.230804, -1851.673461, 10.983854, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1670, 342.825469, -1852.254760, 10.813853, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1711, 337.278015, -1847.050781, 10.383852, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1711, 337.278015, -1849.050781, 10.383852, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1827, 339.091827, -1847.907348, 10.383852, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1582, 338.654449, -1848.779663, 6.369477, 0.000000, 0.000000, 20.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1582, 338.854461, -1848.779663, 6.419477, 0.000000, 10.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19824, 339.733367, -1848.948974, 6.349477, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(19822, 339.483428, -1848.686523, 6.349477, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2251, 339.856445, -1831.438598, 7.263541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(3802, 335.903503, -1844.264282, 8.563540, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2011, 336.072692, -1822.265869, 5.563540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2011, 332.072692, -1822.265869, 5.563540, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(3802, 332.003509, -1844.264282, 8.563540, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(984, 314.957824, -1786.086914, 4.298326, -1.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1778, 345.435516, -1827.880371, 5.563540, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1893, 340.046966, -1827.883300, 10.763542, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2523, 336.475921, -1844.205810, 5.563539, 0.000000, 0.000000, 180.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1893, 340.046966, -1840.283325, 10.763542, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1893, 328.046966, -1827.883300, 10.763542, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1893, 328.046966, -1840.283325, 10.763542, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1893, 334.046966, -1827.883300, 10.763542, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1893, 334.046966, -1840.283325, 10.763542, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1426, 318.352264, -1831.988159, 14.863541, 0.000000, 0.000000, 90.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2002, 341.655578, -1830.024047, 5.563540, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(1471, 316.214721, -1822.877319, 13.363542, 0.000000, 0.000000, 270.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2245, 322.735900, -1832.540283, 7.713541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2245, 322.735900, -1831.540283, 7.713541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2253, 322.670532, -1834.797851, 8.963541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 
	cafecazer = CreateDynamicObject(2253, 322.670532, -1833.797851, 8.963541, 0.000000, 0.000000, 0.000000, -1, -1, -1, 400.00, 400.00); 








	// CUA HANG 24/7
    new biz;
	biz = CreateObject(19377, 1831.585693, -1872.008666, 14.485480, 0.000000, 0.000000, 540.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1831.645751, -1839.387329, 14.485480, 0.000000, 0.000000, 540.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1831.645751, -1849.007934, 14.485480, 0.000000, 0.000000, 540.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1831.635742, -1855.180419, 14.485480, 0.000000, 0.000000, 540.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1836.905761, -1839.236206, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1847.354736, -1839.236206, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1851.965576, -1839.236206, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1851.965576, -1848.725952, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1851.965576, -1857.946044, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1847.354736, -1848.736083, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1847.354736, -1857.966430, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1836.905761, -1848.916381, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1836.905761, -1858.406494, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1836.905761, -1867.966552, 19.729551, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1836.905761, -1872.127197, 19.709550, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1842.265991, -1872.127197, 19.709550, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1842.265991, -1867.506713, 19.669549, 0.000000, 90.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1831.585693, -1870.107543, 14.485480, 0.000000, 0.000000, 540.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(19377, 1831.585693, -1857.520874, 14.485480, 0.000000, 0.000000, 540.000000, 700.00);
	SetObjectMaterial(biz, 0, 4830, "airport2", "sanairtex3", 0x00000000);
	biz = CreateObject(1980, 1831.540527, -1864.057128, 17.855838, 0.000000, 0.000000, 0.000000, 700.00);
	SetObjectMaterial(biz, 0, 14690, "7_11_posters", "CJ_7_11_POST2", 0x00000000);
	biz = CreateObject(8292, 1856.851684, -1849.927490, 16.019121, 0.399999, -0.800022, 145.800079, 700.00);
	SetObjectMaterialText(biz, "{00ff00}CUA HANG LS-VN", 0, 40, "Calibri", 20, 1, 0x00000000, 0x00000000, 0);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateObject(19377, 1836.90576, -1839.23621, 12.48954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1847.37573, -1839.23621, 12.48954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1854.57520, -1839.23621, 12.47954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1854.57520, -1848.87671, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1854.57520, -1858.49646, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1844.07507, -1848.85669, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1833.57495, -1848.85669, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1836.77551, -1858.44617, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1847.21545, -1858.44617, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1836.78406, -1868.04553, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1847.24316, -1868.03101, 12.41954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1843.39417, -1872.09473, 12.40954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1836.84412, -1872.09473, 12.45954,   0.00000, 90.00000, 0.00000, 700.00);
	CreateObject(19377, 1836.49829, -1834.47656, 14.48548,   0.00000, 0.00000, 90.00000, 700.00);
	CreateObject(19377, 1846.09778, -1834.47656, 14.48548,   0.00000, 0.00000, 90.00000, 700.00);
	CreateObject(19377, 1852.15747, -1834.46655, 14.48548,   0.00000, 0.00000, 90.00000, 700.00);
	CreateObject(19377, 1856.89783, -1839.37646, 14.48548,   0.00000, 0.00000, 180.00000, 700.00);
	CreateObject(19377, 1856.89783, -1848.98621, 14.48548,   0.00000, 0.00000, 180.00000, 700.00);
	CreateObject(19377, 1856.89783, -1857.84570, 14.48548,   0.00000, 0.00000, 180.00000, 700.00);
	CreateObject(19377, 1852.16858, -1862.59656, 14.48548,   0.00000, 0.00000, 270.00000, 700.00);
	CreateObject(19377, 1847.36865, -1867.34705, 14.48548,   0.00000, 0.00000, 360.00000, 700.00);
	CreateObject(19377, 1847.40869, -1871.95776, 14.48548,   0.00000, 0.00000, 360.00000, 700.00);
	CreateObject(19377, 1842.67810, -1876.70825, 14.48548,   0.00000, 0.00000, 450.00000, 700.00);
	CreateObject(19377, 1836.47791, -1876.73828, 14.48548,   0.00000, 0.00000, 450.00000, 700.00);

	biz = CreateObject(1523, 1831.612915, -1865.359008, 12.497435, 0.000000, 0.000000, 90.000000, 700.00);
	biz = CreateObject(1523, 1831.567749, -1862.308227, 12.487435, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1848, 1856.073486, -1837.689575, 12.585479, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1984, 1843.167968, -1873.683349, 12.545479, 0.000000, 0.000000, 360.000000, 700.00);
	biz = CreateObject(1984, 1833.326416, -1873.683349, 12.545479, 0.000000, 0.000000, 360.000000, 700.00);
	biz = CreateObject(1984, 1838.257080, -1873.683349, 12.545479, 0.000000, 0.000000, 360.000000, 700.00);
	biz = CreateObject(1888, 1856.125488, -1841.647949, 12.585481, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1847, 1856.028686, -1845.618408, 12.595480, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1847, 1856.028686, -1850.598266, 12.595480, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1888, 1856.125488, -1854.598022, 12.585481, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1847, 1856.028686, -1858.567871, 12.595480, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1848, 1849.343261, -1841.560302, 12.585479, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1848, 1849.343261, -1849.640258, 12.585479, 0.000000, 0.000000, 270.000000, 700.00);
	biz = CreateObject(1889, 1849.602539, -1857.192871, 12.575481, 0.000000, 0.000000, 90.000000, 700.00);
	biz = CreateObject(1432, 1834.376953, -1837.806640, 12.575479, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(1432, 1838.277954, -1837.806640, 12.575479, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(1432, 1838.277954, -1841.087158, 12.575479, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(1432, 1834.426757, -1842.727294, 12.575479, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(1432, 1837.707153, -1845.097412, 12.575479, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(955, 1841.390869, -1835.047973, 12.995472, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(956, 1843.265136, -1835.050048, 12.965485, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(1302, 1844.986328, -1834.953002, 12.575479, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(2785, 1832.223876, -1856.995483, 13.375487, 0.000000, 0.000000, 90.000000, 700.00);
	biz = CreateObject(2785, 1832.223876, -1852.694702, 13.375487, 0.000000, 0.000000, 90.000000, 700.00);
	biz = CreateObject(2785, 1832.223876, -1848.505126, 13.375487, 0.000000, 0.000000, 90.000000, 700.00);
	biz = CreateObject(1978, 1841.251342, -1856.727905, 13.545482, 0.000000, 0.000000, 0.000000, 700.00);
	biz = CreateObject(1978, 1841.251342, -1850.177001, 13.545482, 0.000000, 0.000000, 0.000000, 700.00);
	//CreateObject(1811, 1844.36243, -1875.29272, 13.09548,   0.00000, 0.00000, 270.00000, 700.00);
	//CreateObject(1811, 1839.23328, -1875.33276, 13.09548,   0.00000, 0.00000, 270.00000, 700.00);
	//CreateObject(1811, 1834.14270, -1875.35645, 13.09548,   0.00000, 0.00000, 270.00000, 700.00);
	
	// DOC Exterior
	/*new doc;
	doc = CreateObject(19552, 1833.023193, 502.049468, -13.125302, 90.000000, -5.900001, 0.000000, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19552, 1886.919311, 433.666198, -13.125302, 90.000000, -6.600000, 90.000000, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19552, 1817.755004, 378.791748, -13.125302, 90.000000, -6.600000, 180.000000, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19552, 1766.098876, 467.609039, -13.125302, 90.000000, -6.600000, 90.000000, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19377, 1757.659057, 400.733825, 33.841419, 0.000000, 0.000000, -3.299998, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19377, 1757.104125, 391.109802, 33.841419, 0.000000, 0.000000, -3.299998, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19377, 1757.104125, 391.109802, 44.321407, 0.000000, 0.000000, -3.299998, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	doc = CreateObject(19377, 1757.659790, 400.753662, 44.321407, 0.000000, 0.000000, -3.299998, 1500.00);
	SetObjectMaterial(doc, 0, 2755, "ab_dojowall", "ab_trellis", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	doc = CreateObject(5184, 1820.770019, 419.049987, 37.169998, 0.000000, 0.000000, 353.500000, 1500.00);
	doc = CreateObject(5184, 1828.160034, 481.429992, 36.959999, 0.000000, 0.000000, 174.009994, 1500.00);
	doc = CreateObject(5184, 1825.819946, 457.779998, 37.110000, 0.000000, 0.000000, 354.149993, 1500.00);
	doc = CreateObject(4079, 1848.790039, 432.049987, 31.020000, 0.000000, 0.000000, 307.920013, 1500.00);
	doc = CreateObject(8150, 1823.942016, 459.789642, 20.680000, 0.000000, 0.000000, 173.240005, 1500.00);
	doc = CreateObject(3293, 1819.270019, 433.109985, 21.489999, 0.000000, 0.000000, 80.819999, 1500.00);
	doc = CreateObject(19377, 1884.069946, 426.339996, 17.790000, 0.000000, 0.000000, 355.130004, 1500.00);
	doc = CreateObject(3928, 1847.810058, 426.100006, 27.719999, 0.000000, 0.000000, 84.510002, 1500.00);
	doc = CreateObject(3279, 1879.096923, 445.109741, 18.010000, 0.000000, 0.000000, 83.320228, 1500.00);
	doc = CreateObject(2889, 1773.729980, 460.089996, 37.779998, 0.000000, 0.000000, 357.600006, 1500.00);
	doc = CreateObject(2888, 1771.770019, 426.709991, 37.689998, 340.000000, 0.000000, 266.149993, 1500.00);
	doc = CreateObject(2887, 1773.800048, 460.070007, 37.889999, 340.000000, 0.000000, 331.829986, 1500.00);
	doc = CreateObject(2985, 1775.839965, 426.890014, 25.709999, 0.000000, 0.000000, 353.420013, 1500.00);
	doc = CreateObject(2985, 1775.569946, 424.690002, 25.709999, 0.000000, 0.000000, 353.420013, 1500.00);
	doc = CreateObject(16093, 1749.859985, 417.320007, 21.850000, 0.000000, 0.000000, -5.000000, 1500.00);
	doc = CreateObject(16638, 1749.890014, 416.260009, 20.059999, 0.000000, 0.000000, -6.000000, 1500.00);
	doc = CreateObject(947, 1876.479980, 460.429992, 20.139999, 0.000000, 0.000000, 355.739990, 1500.00);
	doc = CreateObject(947, 1880.520019, 490.350006, 20.239999, 0.000000, 0.000000, 173.720001, 1500.00);
	doc = CreateObject(1946, 1876.510009, 469.920013, 18.479999, 0.000000, 0.000000, 0.000000, 1500.00);
	doc = CreateObject(2628, 1849.550048, 493.290008, 18.229999, 0.000000, 0.000000, 354.920013, 1500.00);
	doc = CreateObject(2628, 1852.469970, 492.950012, 18.229999, 0.000000, 0.000000, 354.000000, 1500.00);
	doc = CreateObject(2628, 1855.400024, 492.679992, 18.229999, 0.000000, 0.000000, 354.000000, 1500.00);
	doc = CreateObject(2629, 1843.939941, 493.929992, 18.200000, 0.000000, 0.000000, 353.559997, 1500.00);
	doc = CreateObject(2629, 1838.260009, 494.640014, 18.200000, 0.000000, 0.000000, 353.559997, 1500.00);
	doc = CreateObject(2629, 1834.380004, 495.019989, 18.200000, 0.000000, 0.000000, 353.559997, 1500.00);
	doc = CreateObject(2629, 1830.910034, 495.339996, 18.229999, 0.000000, 0.000000, 353.559997, 1500.00);
	doc = CreateObject(2628, 1858.599975, 492.309997, 18.229999, 0.000000, 0.000000, 354.000000, 1500.00);
	doc = CreateObject(5812, 1815.479980, 480.670013, 18.469999, 0.000000, 0.000000, 84.169998, 1500.00);
	doc = CreateObject(1508, 1851.609985, 456.839996, 19.879999, 0.000000, 0.000000, 83.949996, 1500.00);
	doc = CreateObject(13367, 1764.459960, 444.049987, 29.870000, 0.000000, 0.000000, 352.709991, 1500.00);
	doc = CreateObject(3279, 1771.599975, 426.339996, 18.010000, 0.000000, 0.000000, 353.769989, 1500.00);
	doc = CreateObject(2889, 1771.689941, 426.570007, 37.779998, 0.000000, 0.000000, 357.600006, 1500.00);
	doc = CreateObject(2887, 1771.709960, 426.790008, 37.889999, 340.000000, 0.000000, 268.519989, 1500.00);
	doc = CreateObject(2888, 1773.790039, 460.149993, 37.689998, 340.000000, 0.000000, 330.779998, 1500.00);
	doc = CreateObject(3279, 1773.790039, 460.109985, 18.010000, 0.000000, 0.000000, 353.769989, 1500.00);
	doc = CreateObject(1290, 1841.390014, 492.720001, 24.129999, 0.000000, 0.000000, 354.029998, 1500.00);
	doc = CreateObject(1290, 1861.969970, 476.589996, 24.129999, 0.000000, 0.000000, 83.620002, 1500.00);
	doc = CreateObject(1290, 1769.069946, 485.350006, 24.129999, 0.000000, 0.000000, 264.549987, 1500.00);
	doc = CreateObject(1290, 1837.329956, 463.690002, 24.129999, 0.000000, 0.000000, 354.029998, 1500.00);
	doc = CreateObject(1290, 1811.800048, 466.339996, 24.129999, 0.000000, 0.000000, 354.029998, 1500.00);
	doc = CreateObject(1290, 1813.000000, 495.359985, 24.129999, 0.000000, 0.000000, 354.029998, 1500.00);
	doc = CreateObject(1290, 1791.689941, 497.649993, 24.129999, 0.000000, 0.000000, 354.029998, 1500.00);
	doc = CreateObject(1290, 1789.130004, 468.839996, 24.129999, 0.000000, 0.000000, 354.029998, 1500.00);
	doc = CreateObject(14401, 1859.540039, 474.529998, 18.590000, 0.000000, 0.000000, 353.809997, 1500.00);
	doc = CreateObject(14401, 1787.270019, 484.959991, 18.430000, 0.000000, 0.000000, 174.479995, 1500.00);
	doc = CreateObject(14401, 1835.760009, 468.720001, 18.590000, 0.000000, 0.000000, 264.329986, 1500.00);
	doc = CreateObject(14401, 1788.449951, 494.500000, 18.590000, 0.000000, 0.000000, 83.930000, 1500.00);
	doc = CreateObject(3749, 1757.376586, 395.770751, 23.684259, 0.000000, 0.000000, 86.599998, 1500.00);*/

    //GARAGE
	new a_Object[180];
	a_Object[0] = CreateObject(16773, 1934.5383, -2042.2895, 13.4820, 0.0000, 0.0000, 0.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[0], 0, 1649, "wglass", "carshowwin2", 0xFFFFFFFF);
	a_Object[1] = CreateObject(19376, 1946.3895, -2037.5738, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[2] = CreateObject(19376, 1935.9261, -2037.5738, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[3] = CreateObject(19376, 1935.9261, -2027.9527, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[4] = CreateObject(19376, 1935.9261, -2018.3299, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[5] = CreateObject(19376, 1935.9261, -2008.7202, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[6] = CreateObject(19376, 1935.9088, -1999.1186, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[7] = CreateObject(19376, 1946.3995, -1999.1186, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[8] = CreateObject(19376, 1946.3995, -2008.7392, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[9] = CreateObject(19376, 1946.3995, -2018.3697, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[10] = CreateObject(19376, 1946.3995, -2027.9897, 12.4645, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[11] = CreateObject(19452, 1928.9248, -2037.5682, 12.4666, 0.0000, 90.0000, 0.0000, 1500); //wall092
	a_Object[12] = CreateObject(19452, 1928.9248, -2027.9471, 12.4666, 0.0000, 90.0000, 0.0000, 1500); //wall092
	a_Object[13] = CreateObject(19452, 1928.9248, -2018.3160, 12.4666, 0.0000, 90.0000, 0.0000, 1500); //wall092
	a_Object[14] = CreateObject(19452, 1928.9248, -2008.6955, 12.4666, 0.0000, 90.0000, 0.0000, 1500); //wall092
	a_Object[15] = CreateObject(19452, 1928.9248, -1999.1035, 12.4666, 0.0000, 90.0000, 0.0000, 1500); //wall092
	a_Object[16] = CreateObject(19433, 1949.8813, -1994.4117, 19.9568, 90.0000, 0.0000, 90.0000, 1500); //wall073
	SetObjectMaterial(a_Object[16], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[17] = CreateObject(19376, 1927.2701, -2018.3431, 15.5544, 0.0000, 180.0000, 180.0000, 1500); //wall024
	SetObjectMaterial(a_Object[17], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	a_Object[18] = CreateObject(19376, 1927.2695, -2008.7717, 15.5746, 0.0000, 180.0000, 180.0000, 1500); //wall024
	SetObjectMaterial(a_Object[18], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	a_Object[19] = CreateObject(19376, 1927.2569, -1999.1501, 15.6246, 0.0000, 180.0000, 180.0000, 1500); //wall024
	SetObjectMaterial(a_Object[19], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	a_Object[20] = CreateObject(19929, 1927.9625, -2022.8708, 12.5297, 0.0000, 0.0000, 0.0000, 1500); //MKWorkTop5
	a_Object[21] = CreateObject(19452, 1932.1643, -2042.2894, 19.1068, 180.0000, 180.0000, 90.0000, 1500); //wall092
	SetObjectMaterial(a_Object[21], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[22] = CreateObject(16773, 1944.3497, -2042.2895, 13.4420, 0.0000, 0.0000, 0.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[22], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	a_Object[23] = CreateObject(19452, 1941.7855, -2042.2894, 19.0969, 180.0000, 180.0000, 90.0000, 1500); //wall092
	SetObjectMaterial(a_Object[23], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[24] = CreateObject(19452, 1946.6667, -2042.2851, 19.0869, 180.0000, 179.7998, 90.0000, 1500); //wall092
	SetObjectMaterial(a_Object[24], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[25] = CreateObject(19452, 1951.4964, -2037.3990, 19.0167, 180.0000, 180.0000, 180.0000, 1500); //wall092
	SetObjectMaterial(a_Object[25], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[26] = CreateObject(19452, 1951.5063, -2027.7491, 19.0069, 180.0000, 180.0000, 180.0000, 1500); //wall092
	SetObjectMaterial(a_Object[26], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[27] = CreateObject(19452, 1951.5063, -2018.1479, 18.9869, 180.0000, 180.0000, 180.0000, 1500); //wall092
	SetObjectMaterial(a_Object[27], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[28] = CreateObject(19452, 1951.5366, -2008.5267, 18.9668, 180.0000, 180.0000, 180.0000, 1500); //wall092
	SetObjectMaterial(a_Object[28], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[29] = CreateObject(19452, 1951.5366, -1999.1468, 18.9769, 180.0000, 180.0000, 180.0000, 1500); //wall092
	SetObjectMaterial(a_Object[29], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[30] = CreateObject(16773, 1951.5395, -2035.0500, 13.4420, 0.0000, 0.0000, 90.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[30], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	a_Object[31] = CreateObject(16773, 1951.5395, -2020.4604, 13.4420, 0.0000, 0.0000, 90.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[31], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	a_Object[32] = CreateObject(16773, 1951.5395, -2005.9204, 13.4420, 0.0000, 0.0000, 90.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[32], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	a_Object[33] = CreateObject(16773, 1951.5395, -2001.6301, 13.4420, 0.0000, 0.0000, 90.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[33], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	a_Object[34] = CreateObject(19825, 1936.7519, -2000.3479, 16.2805, 0.0000, 0.0000, -91.2994); //SprunkClock1
	a_Object[35] = CreateObject(19452, 1932.1732, -1994.4062, 19.1168, 180.0000, 180.0000, 90.0000, 1500); //wall092
	SetObjectMaterial(a_Object[35], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[36] = CreateObject(19452, 1938.7325, -1994.3762, 16.0167, 90.0000, 179.7998, 90.0000, 1500); //wall092
	SetObjectMaterial(a_Object[36], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	a_Object[37] = CreateObject(19433, 1946.4001, -1994.4117, 19.9568, 90.0000, 0.0000, 90.0000, 1500); //wall073
	SetObjectMaterial(a_Object[37], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[38] = CreateObject(19433, 1942.9486, -1994.4117, 19.9568, 90.0000, 0.0000, 90.0000, 1500); //wall073
	SetObjectMaterial(a_Object[38], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[39] = CreateObject(19376, 1927.2884, -2027.9637, 15.5642, 0.0000, 180.0000, 180.0000, 1500); //wall024
	SetObjectMaterial(a_Object[39], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFAFA);
	a_Object[40] = CreateObject(19433, 1940.5174, -1994.3918, 19.9568, 90.0000, 0.0000, 90.0000, 1500); //wall073
	SetObjectMaterial(a_Object[40], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[41] = CreateObject(19376, 1932.1783, -1994.3874, 12.1246, 0.0000, 180.0000, 90.0000, 1500); //wall024
	SetObjectMaterial(a_Object[41], 0, 18889, "forcefields", "glass1", 0xFF000000);
	a_Object[42] = CreateObject(16773, 1951.5395, -2001.6301, 13.4420, 0.0000, 0.0000, 90.0000, 1500); //door_savhangr1
	SetObjectMaterial(a_Object[42], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	a_Object[43] = CreateObject(19433, 1950.6717, -1994.4117, 17.3966, 180.0000, 0.0000, 90.0000, 1500); //wall073
	SetObjectMaterial(a_Object[43], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[44] = CreateObject(19433, 1950.6717, -1994.4117, 13.9068, 180.0000, 0.0000, 90.0000, 1500); //wall073
	SetObjectMaterial(a_Object[44], 0, 10765, "airportgnd_sfse", "white", 0x00000000);
	a_Object[45] = CreateObject(19376, 1943.0738, -2037.5372, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[46] = CreateObject(19376, 1948.6551, -2037.5372, 20.8106, 0.0000, 89.9000, 0.0000, 1500); //wall024
	a_Object[47] = CreateObject(19376, 1948.6551, -2027.9073, 20.8106, 0.0000, 89.9000, 0.0000, 1500); //wall024
	a_Object[48] = CreateObject(19376, 1932.6042, -2037.5372, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[49] = CreateObject(19376, 1948.6551, -2018.2862, 20.8106, 0.0000, 89.9000, 0.0000, 1500); //wall024
	a_Object[50] = CreateObject(19376, 1948.6551, -2008.6556, 20.8106, 0.0000, 89.9000, 0.0000, 1500); //wall024
	a_Object[51] = CreateObject(19376, 1948.6551, -1999.0659, 20.8106, 0.0000, 89.9000, 0.0000, 1500); //wall024
	a_Object[52] = CreateObject(19376, 1932.6042, -2027.9375, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[53] = CreateObject(19376, 1932.6042, -2018.3363, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[54] = CreateObject(19376, 1932.6042, -2008.6964, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[55] = CreateObject(19376, 1932.6042, -1999.0566, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[56] = CreateObject(19376, 1943.0738, -2027.9477, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[57] = CreateObject(19376, 1943.0738, -2018.3172, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[58] = CreateObject(19376, 1943.0738, -2008.7069, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[59] = CreateObject(19376, 1943.0738, -1999.0362, 20.8106, 0.0000, 90.0000, 0.0000, 1500); //wall024
	a_Object[60] = CreateObject(19376, 1936.8891, -1999.1489, 12.1246, 0.0000, 180.0000, 0.0000, 1500); //wall024
	SetObjectMaterial(a_Object[60], 0, 18889, "forcefields", "glass1", 0xAA000000);
	a_Object[61] = CreateObject(19433, 1931.5793, -2003.9122, 16.5669, 90.0000, 0.0000, 90.0000, 1500); //wall073
	a_Object[62] = CreateObject(19433, 1935.0699, -2003.9122, 16.5669, 90.0000, 0.0000, 90.0000, 1500); //wall073
	a_Object[63] = CreateObject(19433, 1928.9676, -2003.9122, 16.5669, 90.0000, -0.2998, 90.0000, 1500); //wall073
	a_Object[64] = CreateObject(3934, 1941.3739, -2032.8933, 21.0795, 0.0000, 0.0000, 0.0000, 1500); //helipad01
	a_Object[65] = CreateObject(19452, 1935.0373, -2003.8739, 10.9666, 90.0000, 179.7998, 90.0000, 1500); //wall092
	a_Object[66] = CreateObject(19376, 1940.9559, -2032.6661, 20.9906, 0.0000, 90.0000, 0.0000, 1500); //wall024
	SetObjectMaterial(a_Object[66], 0, -1, "none", "none", 0xFF000000);
	a_Object[67] = CreateObject(19376, 1940.9559, -2012.8752, 20.9906, 0.0000, 90.0000, 0.0000, 1500); //wall024
	SetObjectMaterial(a_Object[67], 0, -1, "none", "none", 0xFF000000);
	a_Object[68] = CreateObject(11737, 1930.3503, -2003.3342, 12.5466, 0.0000, 0.0000, 0.0000, 1500); //RockstarMat1
	a_Object[69] = CreateObject(3934, 1941.3739, -2012.8320, 21.0795, 0.0000, 0.0000, 0.0000, 1500); //helipad01
	a_Object[70] = CreateObject(2714, 1951.6661, -1972.3083, 14.9252, 0.0000, 0.0000, 90.0000, 1500); //CJ_OPEN_SIGN_2
	a_Object[71] = CreateObject(8613, 1932.2674, -1990.1151, 16.5167, 0.0000, 0.0000, 180.0000, 1500); //vgsSstairs03_lvs
	SetObjectMaterial(a_Object[71], 0, 1649, "wglass", "carshowwin2", 0x00000000);
	SetObjectMaterial(a_Object[71], 1, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	SetObjectMaterial(a_Object[71], 2, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	a_Object[72] = CreateObject(19786, 1929.9880, -2003.8996, 16.5606, 0.0000, 0.0000, 180.0000, 1500); //LCDTVBig1
	a_Object[73] = CreateObject(11726, 1932.4416, -2000.0859, 20.0466, 0.0000, 0.0000, 0.0000, 1500); //HangingLight1
	a_Object[74] = CreateObject(19999, 1930.3193, -1996.3402, 12.5607, 0.0000, 0.0000, 25.5000); //CutsceneChair2
	a_Object[75] = CreateObject(1080, 1927.5312, -2001.7303, 16.4706, 0.0000, 0.0000, 0.0000, 1500); //wheel_sr5
	a_Object[76] = CreateObject(2232, 1931.8780, -2003.5344, 16.4909, 0.0000, 180.0000, 180.0000, 1500); //MED_SPEAKER_4
	a_Object[77] = CreateObject(2605, 1930.4427, -1997.6844, 12.9350, 0.0000, 0.0000, 180.0000, 1500); //POLCE_DESK1
	a_Object[78] = CreateObject(2607, 1928.8802, -1996.2486, 12.9575, 0.0000, 0.0000, -89.5998); //POLCE_DESK2
	a_Object[79] = CreateObject(1726, 1935.6158, -1998.5279, 12.4903, 0.0000, 0.0000, -89.1996); //mrk_seating2
	a_Object[80] = CreateObject(1727, 1934.0865, -2001.8308, 12.4903, 0.0000, 0.0000, 164.3999); //mrk_seating2b
	a_Object[81] = CreateObject(1827, 1933.6424, -1999.6019, 12.5101, 0.0000, 0.0000, 0.0000, 1500); //man_sdr_tables
	a_Object[82] = CreateObject(1726, 1932.9421, -1997.4394, 12.5003, 0.0000, 0.0000, 0.0000, 1500); //mrk_seating2
	a_Object[83] = CreateObject(1085, 1927.4442, -1998.1208, 16.5606, 0.0000, 0.0000, 0.0000, 1500); //wheel_gn2
	a_Object[84] = CreateObject(1073, 1927.4289, -1999.9753, 15.6106, 0.0000, 0.0000, 0.0000, 1500); //wheel_sr6
	a_Object[85] = CreateObject(1980, 1935.2185, -2037.4925, 12.5003, 0.2998, 89.9000, 90.0000, 1500); //wilshire7dr1_law
	SetObjectMaterial(a_Object[85], 0, -1, "none", "none", 0xFF000000);
	a_Object[86] = CreateObject(1096, 1927.5754, -1996.0760, 15.6604, 0.0000, 0.0000, 0.0000, 1500); //wheel_gn3
	a_Object[87] = CreateObject(11726, 1932.4416, -2029.5671, 20.0466, 0.0000, 0.0000, 0.0000, 1500); //HangingLight1
	a_Object[88] = CreateObject(11726, 1945.4526, -2029.5671, 20.0466, 0.0000, 0.0000, 0.0000, 1500); //HangingLight1
	a_Object[89] = CreateObject(11726, 1945.4526, -2002.7862, 20.0466, 0.0000, 0.0000, 0.0000, 1500); //HangingLight1
	a_Object[90] = CreateObject(19786, 1927.3259, -2037.6706, 15.9202, 0.0000, 0.0000, 90.0000, 1500); //LCDTVBig1
	SetObjectMaterialText(a_Object[90], "SF", 1, OBJECT_MATERIAL_SIZE_32x32, "Arial", 24, 1, 0xFFFFFFFF, 0xFF6495ED, 1);
	a_Object[91] = CreateObject(1980, 1935.2185, -2029.4320, 12.5143, 0.2998, 89.9000, 90.0000, 1500); //wilshire7dr1_law
	SetObjectMaterial(a_Object[91], 0, -1, "none", "none", 0xFF000000);
	a_Object[92] = CreateObject(1980, 1935.2185, -2021.7518, 12.5277, 0.2998, 89.9000, 90.0000, 1500); //wilshire7dr1_law
	SetObjectMaterial(a_Object[92], 0, -1, "none", "none", 0xFF000000);
	a_Object[93] = CreateObject(1980, 1935.2185, -2014.2602, 12.5410, 0.2998, 89.9000, 90.0000, 1500); //wilshire7dr1_law
	SetObjectMaterial(a_Object[93], 0, -1, "none", "none", 0xFF000000);
	a_Object[94] = CreateObject(19425, 1931.7539, -2037.5017, 12.5578, 0.0000, 0.0000, 90.0000, 1500); //speed_bump01
	a_Object[95] = CreateObject(19425, 1931.7539, -2029.4204, 12.5578, 0.0000, 0.0000, 90.0000, 1500); //speed_bump01
	a_Object[96] = CreateObject(19425, 1931.7539, -2021.7308, 12.5775, 0.0000, 0.0000, 90.0000, 1500); //speed_bump01
	a_Object[97] = CreateObject(19425, 1931.7539, -2014.2102, 12.6176, 0.0000, 0.0000, 90.0000, 1500); //speed_bump01
	a_Object[98] = CreateObject(19786, 1927.3259, -2029.5194, 15.9202, 0.0000, 0.0000, 90.0000, 1500); //LCDTVBig1
	SetObjectMaterialText(a_Object[98], "LS", 1, OBJECT_MATERIAL_SIZE_32x32, "Arial", 24, 1, 0xFFFFFFFF, 0xFF6495ED, 1);
	a_Object[99] = CreateObject(19786, 1927.3259, -2021.5692, 15.9202, 0.0000, 0.0000, 90.0000, 1500); //LCDTVBig1
	SetObjectMaterialText(a_Object[99], "LV", 1, OBJECT_MATERIAL_SIZE_32x32, "Arial", 24, 1, 0xFFFFFFFF, 0xFF6495ED, 1);
	a_Object[100] = CreateObject(19903, 1932.5100, -2035.0865, 12.5927, 0.0000, 0.0000, -51.8997); //MechanicComputer1
	a_Object[101] = CreateObject(19903, 1932.4305, -2026.8509, 12.5927, 0.0000, 0.0000, -51.8997); //MechanicComputer1
	a_Object[102] = CreateObject(19903, 1933.0139, -2019.0854, 12.5927, 0.0000, 0.0000, -51.8997); //MechanicComputer1
	a_Object[103] = CreateObject(19903, 1932.9427, -2011.5029, 12.5927, 0.0000, 0.0000, -51.8997); //MechanicComputer1
	a_Object[104] = CreateObject(19900, 1933.6074, -2035.0709, 12.5530, 0.0000, 0.0000, 0.0000, 1500); //ToolCabinet2
	a_Object[105] = CreateObject(19900, 1933.6074, -2027.0295, 12.5530, 0.0000, 0.0000, 0.0000, 1500); //ToolCabinet2
	a_Object[106] = CreateObject(19900, 1934.0874, -2019.2590, 12.5530, 0.0000, 0.0000, 0.0000, 1500); //ToolCabinet2
	a_Object[107] = CreateObject(19900, 1934.0874, -2011.5981, 12.5530, 0.0000, 0.0000, 0.0000, 1500); //ToolCabinet2
	a_Object[108] = CreateObject(19899, 1927.8620, -2033.9001, 12.3007, 0.0000, 0.0000, 0.0000, 1500); //ToolCabinet1
	a_Object[109] = CreateObject(19899, 1927.8620, -2031.3902, 12.3007, 0.0000, 0.0000, 0.0000, 1500); //ToolCabinet1
	a_Object[110] = CreateObject(19143, 1951.3061, -2042.0583, 20.7604, 0.0000, 0.0000, 35.9999); //PinSpotLight1
	a_Object[111] = CreateObject(19929, 1927.9625, -2020.0410, 12.5297, 0.0000, 0.0000, 0.0000, 1500); //MKWorkTop5
	a_Object[112] = CreateObject(631, 1935.8044, -2002.7690, 13.4783, 0.0000, 0.0000, 0.0000, 1500); //veg_palmkb9
	a_Object[113] = CreateObject(644, 1938.9675, -1996.7995, 12.7586, 0.0000, 0.0000, 0.0000, 1500); //pot_02
	a_Object[114] = CreateObject(639, 1947.3183, -1994.0216, 18.7467, 0.0000, 0.0000, 90.0000, 1500); //veg_ivy_balcny_kb3
	a_Object[115] = CreateObject(639, 1943.2574, -1994.0216, 18.7467, 0.0000, 0.0000, 90.0000, 1500); //veg_ivy_balcny_kb3
	a_Object[116] = CreateObject(956, 1937.7379, -1999.4560, 12.8535, 0.0000, 0.0000, 90.0000, 1500); //CJ_EXT_CANDY
	a_Object[117] = CreateObject(19815, 1927.3729, -2023.1782, 14.4006, 0.0000, 0.0000, 90.0000, 1500); //ToolBoard1
	a_Object[118] = CreateObject(19815, 1927.3729, -2020.1876, 14.4006, 0.0000, 0.0000, 90.0000, 1500); //ToolBoard1
	a_Object[119] = CreateObject(3660, 1927.8641, -1984.4785, 15.2184, 0.0000, 0.0000, 90.0000, 1500); //lasairfbed_LAS
	a_Object[120] = CreateObject(4642, 1949.8634, -1972.3835, 13.5445, 0.0000, 0.0000, 0.0000, 1500); //paypark_lan
	a_Object[121] = CreateObject(19816, 1934.0843, -2019.2291, 13.4882, 0.0000, 87.2994, 0.0000, 1500); //OxygenCylinder1
	a_Object[122] = CreateObject(1723, 1948.5609, -2033.2978, 12.6511, 0.0000, 0.0000, 270.0000, 1500); //mrk_seating1
	a_Object[123] = CreateObject(1723, 1948.5609, -2023.4482, 12.6511, 0.0000, 0.0000, 270.0000, 1500); //mrk_seating1
	a_Object[124] = CreateObject(1723, 1948.5609, -2013.7877, 12.6511, 0.0000, 0.0000, 270.0000, 1500); //mrk_seating1
	a_Object[125] = CreateObject(2644, 1948.5760, -2012.3951, 13.0094, 0.0000, 0.0000, 0.0000, 1500); //CJ_BURG_TABLE
	a_Object[126] = CreateObject(2644, 1948.5760, -2022.1462, 13.0094, 0.0000, 0.0000, 0.0000, 1500); //CJ_BURG_TABLE
	a_Object[127] = CreateObject(2644, 1948.5760, -2032.0577, 13.0094, 0.0000, 0.0000, 0.0000, 1500); //CJ_BURG_TABLE
	a_Object[128] = CreateObject(934, 1928.3647, -2039.5738, 13.7089, 0.0000, 0.0000, 180.0000, 1500); //GENERATOR_BIG
	a_Object[129] = CreateObject(2690, 1927.4825, -2027.3800, 14.9670, 0.0000, 0.0000, 0.0000, 1500); //CJ_FIRE_EXT
	a_Object[130] = CreateObject(2690, 1927.4825, -2026.5594, 14.9670, 0.0000, 0.0000, 0.0000, 1500); //CJ_FIRE_EXT
	a_Object[131] = CreateObject(1010, 1927.3631, -2017.2983, 15.7103, 0.0000, 90.0000, 0.0000, 1500); //nto_b_tw
	a_Object[132] = CreateObject(1008, 1927.3885, -2016.1490, 15.8212, 0.0000, 90.0000, 0.0000, 1500); //nto_b_l
	a_Object[133] = CreateObject(955, 1937.6617, -2002.2104, 12.8535, 0.0000, 0.0000, 90.0000, 1500); //CJ_EXT_SPRUNK
	a_Object[134] = CreateObject(19449, 1933.8387, -1971.4404, 11.9568, 0.0000, 0.0000, 90.0000, 1500); //wall089
	a_Object[135] = CreateObject(19425, 1947.5445, -1994.8426, 12.5500, 0.0000, 0.0000, 0.0000, 1500); //speed_bump01
	a_Object[136] = CreateObject(19425, 1943.4742, -1994.8426, 12.5500, 0.0000, 0.0000, 0.0000, 1500); //speed_bump01
	a_Object[137] = CreateObject(19806, 1937.9383, -2018.4350, 20.8705, 0.0000, 0.0000, 0.0000, 1500); //Chandelier1
	a_Object[138] = CreateObject(703, 1927.6080, -1972.3469, 11.9137, 0.0000, 0.0000, 0.0000, 1500); //sm_veg_tree7_big
	a_Object[139] = CreateObject(2066, 1933.6612, -2039.6230, 12.6386, 0.0000, 0.0000, 130.8999); //CJ_M_FILEING2
	a_Object[140] = CreateObject(2066, 1933.7478, -2031.6888, 12.6386, 0.0000, 0.0000, 130.8999); //CJ_M_FILEING2
	a_Object[141] = CreateObject(2066, 1933.5688, -2024.4869, 12.6386, 0.0000, 0.0000, 130.8999); //CJ_M_FILEING2
	a_Object[142] = CreateObject(2066, 1934.0229, -2016.8686, 12.6386, 0.0000, 0.0000, 130.8999); //CJ_M_FILEING2
	a_Object[143] = CreateObject(1348, 1928.2087, -2013.0941, 13.2767, 0.0000, 0.0000, -91.9000); //CJ_O2Tanks
	a_Object[144] = CreateObject(1348, 1928.1330, -2015.3828, 13.2767, 0.0000, 0.0000, -91.9000); //CJ_O2Tanks
	a_Object[145] = CreateObject(1080, 1927.4790, -2010.6706, 16.2705, 0.0000, 0.0000, 0.0000, 1500); //wheel_sr5
	a_Object[146] = CreateObject(1073, 1927.5511, -2009.1606, 16.1805, 0.0000, 0.0000, 0.0000, 1500); //wheel_sr6
	a_Object[147] = CreateObject(1079, 1927.6031, -2007.7209, 16.4706, 0.0000, 0.0000, 0.0000, 1500); //wheel_sr1
	a_Object[148] = CreateObject(1081, 1927.4936, -2006.3802, 16.4006, 0.0000, 0.0000, 0.0000, 1500); //wheel_sr4
	a_Object[149] = CreateObject(1082, 1927.5931, -2009.8946, 14.6406, 0.0000, 0.0000, 0.0000, 1500); //wheel_gn1
	a_Object[150] = CreateObject(1085, 1927.5942, -2008.2436, 15.1302, 0.0000, 0.0000, 0.0000, 1500); //wheel_gn2
	a_Object[151] = CreateObject(1096, 1927.5415, -2006.8535, 14.5003, 0.0000, 0.0000, 0.0000, 1500); //wheel_gn3
	a_Object[152] = CreateObject(19126, 1951.5091, -1984.5677, 13.1020, 0.0000, 0.0000, 0.0000, 1500); //BollardLight6
	a_Object[153] = CreateObject(19449, 1943.4090, -1971.4404, 11.9568, 0.0000, 0.0000, 90.0000, 1500); //wall089
	a_Object[154] = CreateObject(19449, 1951.5566, -1989.5046, 11.7665, 0.0000, 0.0000, 0.0000, 1500); //wall089
	a_Object[155] = CreateObject(1256, 1937.4836, -1973.1599, 13.2285, 0.0000, 0.0000, 90.0000, 1500); //Stonebench1
	a_Object[156] = CreateObject(1256, 1942.7646, -1973.1599, 13.2285, 0.0000, 0.0000, 90.0000, 1500); //Stonebench1
	a_Object[157] = CreateObject(2315, 1944.9819, -1997.4062, 20.8875, 0.0000, 0.0000, 0.0000, 1500); //CJ_TV_TABLE4
	a_Object[158] = CreateObject(11685, 1946.4387, -1999.3487, 20.9477, 0.0000, 0.0000, 180.0000, 1500); //CutsceneCouch4
	a_Object[159] = CreateObject(11685, 1945.2181, -1999.3487, 20.9477, 0.0000, 0.0000, 180.0000, 1500); //CutsceneCouch4
	a_Object[160] = CreateObject(11685, 1945.2181, -1999.3487, 20.9477, 0.0000, 0.0000, 180.0000, 1500); //CutsceneCouch4
	a_Object[161] = CreateObject(11684, 1947.9785, -1998.0378, 20.7852, 0.0000, 0.0000, 180.0000, 1500); //CutsceneCouch3
	a_Object[162] = CreateObject(11683, 1943.5511, -1997.6418, 20.9178, 0.0000, 0.0000, 180.0000, 1500); //CutsceneCouch2
	a_Object[163] = CreateObject(16151, 1951.3974, -2000.1612, 21.1532, 0.0000, 0.0000, 0.0000, 1500); //ufo_bar
	a_Object[164] = CreateObject(1568, 1928.3050, -1994.7949, 20.8474, 0.0000, 0.0000, 0.0000, 1500); //chinalamp_sf
	a_Object[165] = CreateObject(19126, 1951.5091, -1973.5644, 13.1020, 0.0000, 0.0000, 0.0000, 1500); //BollardLight6
	a_Object[166] = CreateObject(1568, 1947.8033, -1971.7755, 12.5375, 0.0000, 0.0000, 0.0000, 1500); //chinalamp_sf
	a_Object[167] = CreateObject(639, 1950.9824, -2000.0958, 16.1205, 0.0000, 0.0000, 180.0000, 1500); //veg_ivy_balcny_kb3
	a_Object[168] = CreateObject(949, 1948.7209, -2011.0666, 13.1639, 0.0000, 0.0000, 0.0000, 1500); //Plant_Pot_4
	a_Object[169] = CreateObject(639, 1950.9824, -2011.5262, 16.1205, 0.0000, 0.0000, 180.0000, 1500); //veg_ivy_balcny_kb3
	a_Object[170] = CreateObject(639, 1950.9824, -2028.4665, 16.1205, 0.0000, 0.0000, 180.0000, 1500); //veg_ivy_balcny_kb3
	a_Object[171] = CreateObject(813, 1949.8513, -2039.3149, 14.1302, 0.0000, 0.0000, 0.0000, 1500); //genVEG_bush17
	a_Object[172] = CreateObject(627, 1950.0056, -1998.0394, 14.3247, 0.0000, 0.0000, 0.0000, 1500); //veg_palmkb3
	a_Object[173] = CreateObject(19786, 1927.3259, -2013.9383, 15.9202, 0.0000, 0.0000, 90.0000, 1500); //LCDTVBig1
	SetObjectMaterialText(a_Object[173], "FIX", 1, OBJECT_MATERIAL_SIZE_32x32, "Arial", 24, 1, 0xFFFFFFFF, 0xFF6495ED, 1);
	a_Object[174] = CreateObject(6056, 1951.3774, -1991.0710, 16.3747, 0.0000, 0.0000, 0.0000, 1500); //jettysign_law
	SetObjectMaterial(a_Object[174], 0, 14786, "ab_sfgymbeams", "knot_wood128", 0x00000000);
	SetObjectMaterialText(a_Object[174], "Gara LS-VN", 2, OBJECT_MATERIAL_SIZE_128x32, "Arial", 20, 1, 0xFF000000, 0xFFFFFFFF, 1);
	a_Object[175] = CreateObject(19376, 1927.2690, -2037.5837, 15.5642, 0.0000, 180.0000, 180.0000, 1500); //wall024
	SetObjectMaterial(a_Object[175], 0, 10765, "airportgnd_sfse", "white", 0xFFFFFFFF);
	a_Object[176] = CreateObject(1251, 1930.6118, -1981.3103, 12.5043, 0.0000, 90.0000, 90.0000, 1500); //smashbar
	SetObjectMaterial(a_Object[176], 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	a_Object[177] = CreateObject(1251, 1930.6118, -1984.5935, 12.5043, 0.0000, 90.0000, 90.0000, 1500); //smashbar
	SetObjectMaterial(a_Object[177], 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	a_Object[178] = CreateObject(1251, 1930.6118, -1978.1018, 12.5043, 0.0000, 90.0000, 90.0000, 1500); //smashbar
	SetObjectMaterial(a_Object[178], 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	a_Object[179] = CreateObject(1251, 1930.6118, -1974.6888, 12.5043, 0.0000, 90.0000, 90.0000, 1500); //smashbar
	SetObjectMaterial(a_Object[179], 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	
    for(new i; i < MAX_PLAYERS; i++)
	{
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0) TogglePlayerControllable(i, false);
	}
	
	// TEST
	new test;
	test = CreateDynamicObject(1533, 282.270935, 19.545118, 1000.426574, -0.841595, 0.000000, -174.899917);
	SetDynamicObjectMaterial(test, 1, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	test = CreateDynamicObject(19464, 283.598724, 30.231563, 1003.042541, 0.000000, 0.000000, -86.900016);
	SetDynamicObjectMaterial(test, 0, 18065, "ab_sfammumain", "breezewall5", 0xFF333333);
	SetDynamicObjectMaterial(test, 11, 18065, "ab_sfammumain", "breezewall5", 0x00000000);
	test = CreateDynamicObject(18038, 298.698944, 35.664680, 1002.664306, -0.041595, 0.000000, 3.141590);
	SetDynamicObjectMaterial(test, 0, 18065, "ab_sfammumain", "ab_stripped_floor", 0x00000000);
	SetDynamicObjectMaterial(test, 1, 18065, "ab_sfammumain", "ab_stripped_floor", 0x00000000);
	SetDynamicObjectMaterial(test, 2, 18065, "ab_sfammumain", "ab_stripped_floor", 0x00000000);
	SetDynamicObjectMaterial(test, 3, 18065, "ab_sfammumain", "ab_stripped_floor", 0xFF003333);
	SetDynamicObjectMaterial(test, 4, 18065, "ab_sfammumain", "ab_stripped_floor", 0x00000000);
	SetDynamicObjectMaterial(test, 5, 18065, "ab_sfammumain", "breezewall5", 0xFF333333);
	SetDynamicObjectMaterial(test, 6, 18065, "ab_sfammumain", "ab_stripped_floor", 0x00000000);
	SetDynamicObjectMaterial(test, 7, 2589, "ab_ab", "ab_sheetSteel", 0x00000000);
	SetDynamicObjectMaterial(test, 8, 2589, "ab_ab", "ab_sheetSteel", 0x00000000);
	SetDynamicObjectMaterial(test, 9, -1, "none", "none", 0xFF333333);
	SetDynamicObjectMaterial(test, 10, 18065, "ab_sfammumain", "breezewall5", 0xFF333333);
	SetDynamicObjectMaterial(test, 11, 18065, "ab_sfammumain", "breezewall5", 0xFF333333);
	SetDynamicObjectMaterial(test, 12, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	test = CreateDynamicObject(18042, 288.014282, 25.462953, 1000.900512, 0.258392, 0.000000, 3.141590);
	SetDynamicObjectMaterial(test, 0, 5397, "barrio1_lae", "cargo7_128", 0x00000000);
	SetDynamicObjectMaterial(test, 1, 5397, "barrio1_lae", "cargo7_128", 0x00000000);
	SetDynamicObjectMaterial(test, 2, 5397, "barrio1_lae", "cargo7_128", 0x00000000);
	test = CreateDynamicObject(1533, 280.757202, 19.410013, 1000.426574, -0.841595, 0.000000, -174.899917);
	SetDynamicObjectMaterial(test, 1, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	test = CreateDynamicObject(19464, 277.766906, 29.925718, 1003.042541, 0.000000, 0.000000, 92.999923);
	SetDynamicObjectMaterial(test, 0, 18065, "ab_sfammumain", "breezewall5", 0xFF333333);
	test = CreateDynamicObject(1533, 295.348602, 30.847312, 1000.414367, 0.258404, 0.000000, 3.199920);
	SetDynamicObjectMaterial(test, 0, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	SetDynamicObjectMaterial(test, 1, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	SetDynamicObjectMaterial(test, 12, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	SetDynamicObjectMaterial(test, 13, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	SetDynamicObjectMaterial(test, 14, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	SetDynamicObjectMaterial(test, 15, 18065, "ab_sfammumain", "carp20S", 0x00000000);
	test = CreateDynamicObject(2400, 291.671295, 20.169178, 1001.974487, 0.000000, 0.000000, -176.999740);
	SetDynamicObjectMaterial(test, 1, 19165, "gtamap", "metal1-128x128", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	test = CreateDynamicObject(2068, 289.900512, 25.738578, 1004.513610, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(2043, 289.311889, 25.441869, 1001.544189, 0.000000, 0.000000, 33.300003);
	test = CreateDynamicObject(2358, 291.227600, 25.589580, 1001.534484, 0.000000, 0.000000, -18.900001);
	test = CreateDynamicObject(-1071, 284.561706, 24.906341, 999.394897, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(-1071, 290.469635, 30.116359, 999.634704, 0.000000, 0.000000, 56.299991);
	test = CreateDynamicObject(831, 287.492462, 29.636095, 1001.313781, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(840, 280.188537, 24.985078, 1001.558410, 0.699997, 73.399978, 146.999984);
	test = CreateDynamicObject(835, 295.733673, 29.232917, 1002.755432, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(19603, 290.456634, 22.961547, 1000.450195, 1.599999, 0.000000, 17.100009);
	test = CreateDynamicObject(2040, 289.921813, 25.441869, 1001.464355, 0.000000, 0.000000, -68.899986);
	test = CreateDynamicObject(2043, 292.264770, 25.715517, 1001.544189, 0.000000, 0.000000, -4.399996);
	test = CreateDynamicObject(2358, 288.547302, 25.725204, 1001.534484, 0.000000, 0.000000, -152.100006);
	test = CreateDynamicObject(2035, 291.459320, 20.173051, 1002.921203, 88.299942, 0.000000, 2.999999);
	test = CreateDynamicObject(2035, 289.170898, 20.077190, 1003.731872, 88.299942, 0.000000, 2.999999);
	test = CreateDynamicObject(2036, 289.625518, 20.073499, 1003.011291, 89.299987, 0.000000, 2.799999);
	test = CreateDynamicObject(1654, 297.815093, 25.533998, 1000.825622, 0.000000, 0.000000, -68.399993);
	test = CreateDynamicObject(1654, 297.821380, 24.622203, 1000.795654, 0.000000, 0.000000, -107.699981);
	test = CreateDynamicObject(1580, 283.749908, 20.433425, 1000.564086, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(1575, 285.782440, 20.504505, 1001.254455, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(1575, 285.782440, 20.504505, 1001.044250, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(1580, 283.749908, 20.433425, 1001.314453, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(1580, 284.959991, 20.433425, 1001.314453, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(2064, 293.994506, 21.832113, 1000.965454, 0.000000, 0.000000, 163.999984);
	test = CreateDynamicObject(3013, 293.012817, 25.758495, 1001.516357, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(1271, 289.044830, 20.513605, 1000.835327, 0.000000, 0.000000, 22.000001);
	test = CreateDynamicObject(1271, 289.870025, 20.847002, 1000.835327, 0.000000, 0.000000, -5.999996);
	test = CreateDynamicObject(2034, 287.610290, 24.654020, 1001.136230, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(2034, 287.610290, 23.464031, 1001.136230, 0.000000, 0.000000, 22.900001);
	test = CreateDynamicObject(2034, 287.542449, 24.151937, 1001.136230, 0.000000, 0.000000, -39.499992);
	test = CreateDynamicObject(2061, 287.470916, 21.019836, 1000.896850, 0.000000, 0.000000, 0.000000);
	test = CreateDynamicObject(2061, 287.470916, 21.829841, 1000.896850, 0.000000, 0.000000, -30.700000);
	
	// LONG NABATI
	CreateDynamicObject(19450, 1280.51086, -791.87030, 88.90000,   0.26000, 0.10000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1270.89282, -791.89728, 89.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1290.13208, -791.89001, 88.86080,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16151, 1280.82300, -792.90546, 87.66000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1545, 1282.68164, -792.06451, 89.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19823, 1279.45337, -793.93011, 88.28690,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19819, 1278.22827, -793.90088, 88.36720,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1509, 1281.01819, -793.95428, 88.48300,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1665, 1280.80908, -794.12299, 88.31880,   0.00000, 0.00000, 10.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11743, 1277.42810, -792.19812, 88.28620,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1277.51099, -793.59039, 88.38000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19897, 1279.02686, -794.00043, 88.29890,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19625, 1279.03918, -794.00043, 88.31160,   0.00000, 0.00000, 160.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2714, 1280.34131, -792.20972, 89.99420,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1896, 1288.21350, -793.48688, 88.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2125, 1288.27197, -795.23059, 87.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2125, 1287.12402, -795.02185, 87.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2125, 1289.47339, -795.04572, 87.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1288.29358, -793.79913, 88.31069,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1288.29309, -793.81848, 88.32290,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1288.29651, -793.82220, 88.33110,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1906, 1288.29041, -793.82123, 88.33930,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1906, 1288.29480, -793.83423, 88.34720,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1907, 1288.29468, -793.83008, 88.35300,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1907, 1288.30261, -793.81879, 88.35790,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1936, 1288.33752, -793.85712, 88.36350,   -20.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1287.99182, -793.58600, 88.33550,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1288.05334, -793.60608, 88.33340,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1288.01819, -793.60632, 88.33740,   10.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1907, 1288.53381, -793.58722, 88.32930,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1907, 1288.42810, -793.59094, 88.33952,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1923, 1288.69397, -793.74524, 88.31100,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1923, 1288.70020, -793.75177, 88.31830,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1928, 1288.69629, -793.75110, 88.32560,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1928, 1288.69141, -793.77417, 88.33180,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1928, 1288.68701, -793.76080, 88.33880,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1928, 1288.04065, -793.23376, 88.33909,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1928, 1287.57104, -793.23773, 88.33290,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1919, 1287.83508, -793.77515, 88.31086,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1919, 1287.83508, -793.77509, 88.31890,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1919, 1287.84424, -793.80359, 88.32940,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1922, 1287.83142, -793.81915, 88.34203,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1287.83179, -793.81995, 88.35471,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1287.84229, -793.83118, 88.36739,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1905, 1287.74988, -793.80579, 88.31115,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1919, 1288.44861, -793.24280, 88.33927,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1919, 1288.54321, -793.18658, 88.32107,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1928, 1288.69067, -793.76477, 88.35018,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1919, 1288.71741, -793.78412, 88.36175,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2964, 1295.44885, -804.89923, 87.31030,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3003, 1295.20117, -804.45166, 88.24000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3002, 1295.50476, -804.68945, 88.24000,   150.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3101, 1295.60706, -805.56342, 88.24000,   170.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(338, 1295.66699, -806.07013, 87.62000,   5.00000, -10.00000, -100.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(338, 1294.60315, -803.72852, 88.34000,   0.00000, 90.00000, -30.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1279.14050, -801.50269, 86.99130,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1284.82544, -801.53607, 86.99320,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1273.43494, -801.53601, 86.98290,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1287.63647, -805.70117, 86.96920,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1270.58691, -805.71722, 86.97530,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1646, 1289.48303, -803.94226, 87.58400,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1646, 1289.54382, -807.71271, 87.58400,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1646, 1268.68066, -807.70703, 87.58400,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1646, 1268.85535, -804.05560, 87.58400,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1895, 1273.02344, -792.14630, 89.14390,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1895, 1288.00024, -792.11755, 88.92830,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1287.58118, -805.72760, 84.36730,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1270.68323, -805.70618, 84.35110,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19825, 1278.63806, -791.99152, 89.66970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1775, 1269.94641, -792.53052, 88.42000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3035, 1263.65698, -792.65869, 87.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19079, 1280.03931, -812.82758, 88.85660,   0.00000, -90.00000, 40.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19079, 1279.47766, -812.80511, 88.84860,   0.00000, -90.00000, 10.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19079, 1278.88904, -812.60193, 88.81250,   0.00000, -90.00000, 160.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19079, 1278.46814, -812.81787, 88.84860,   0.00000, -90.00000, -20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1287.91992, -801.36499, 88.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1270.28650, -801.28094, 88.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1270.21960, -810.19293, 88.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1287.84631, -810.10962, 88.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(642, 1268.44897, -805.81628, 88.59000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(642, 1289.82581, -805.81635, 88.59000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18661, 1292.77148, -792.01392, 88.77610,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19608, 1259.53076, -808.42004, 87.30960,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19128, 1263.70703, -810.38739, 87.30950,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19128, 1263.71228, -806.40509, 87.29320,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(321, 1283.24817, -793.88208, 88.26710,   90.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1736, 1280.31995, -792.78003, 91.01200,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19609, 1258.96484, -808.46667, 87.35430,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2232, 1257.94287, -804.79846, 88.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2232, 1257.81433, -812.13531, 88.00000,   0.00000, 0.00000, 120.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1257.29871, -810.50208, 88.30960,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1257.33362, -806.47388, 88.31540,   0.00000, -0.02000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1273.03015, -792.48499, 90.77640,   -70.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1287.97546, -792.48602, 90.74960,   -70.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	
	// GARAGE
	new gara2;
	gara2 = CreateDynamicObject(7313, 1991.079711, -1991.939819, 15.756876, 0.000000, 0.000000, -89.600021, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(gara2, 0, "{FF00FF} Los Santos Rifa Garage", 70, "Calibri", 30, 0, 0x00000000, 0x00000000, 1);
	gara2 = CreateDynamicObject(19460, 1987.011840, -1980.375854, 14.266875, 0.000000, 0.000000, -90.299972, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(gara2, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	gara2 = CreateDynamicObject(19463, 1977.317871, -1980.406738, 14.276874, 0.000000, 0.000000, 90.199966, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(gara2, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicObject(18650, 1971.607910, -1988.017089, 12.546875, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18650, 1971.618896, -1990.303833, 12.546875, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18650, 1971.598876, -1992.462402, 12.546875, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18650, 1971.581420, -1994.570922, 12.553901, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18650, 1971.608764, -1996.813354, 12.546875, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18650, 1971.733032, -1999.136474, 12.546875, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18761, 1972.324096, -1991.734985, 14.436883, 0.000000, 0.000000, 90.400047, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19419, 1991.220458, -1991.801879, 15.521165, -85.399963, -9.700008, 80.699966, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8615, 1974.592651, -1996.702270, 15.173910, 0.000000, 0.000000, -89.399841, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14791, 1998.155151, -1988.541381, 20.790019, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1728, 1977.006469, -2006.247802, 19.000000, 0.000000, 0.000000, -122.699996, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3525, 1974.636962, -2005.698364, 18.049985, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3525, 1995.536254, -1991.601440, 20.772964, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3525, 2000.921142, -1991.556884, 20.783874, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3525, 1995.558593, -1986.251586, 20.783863, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3525, 2000.967651, -1986.015991, 20.693885, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1726, 1977.571655, -2003.303100, 19.000000, 0.000000, 0.000000, -92.799964, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19463, 1991.806274, -1985.170410, 14.226867, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	/*armybase = CreateDynamicObject(18766,2720.445,-2369.644,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(3279,2725.225,-2395.754,12.625,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(3279,2725.091,-2494.407,12.625,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(3279,2802.428,-2335.595,12.625,0.000,0.000,180.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(3279,2565.049,-2335.595,12.625,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(3279,2672.595,-2557.633,12.625,0.000,0.000,180.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(3279,2802.428,-2557.633,12.625,0.000,0.000,180.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(3279,2605.083,-2376.396,12.625,0.000,0.000,-15.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.475,-2414.468,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.495,-2396.305,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.495,-2386.305,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.495,-2376.904,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.485,-2369.684,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(19370,2722.579,-2490.540,10.920,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2722.584,-2487.156,10.920,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2722.602,-2483.758,10.920,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(3578,2650.871,-2382.218,13.370,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	armybase = CreateDynamicObject(3578,2709.077,-2382.218,13.370,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "ferry_build14", 0x00000000);
	armybase = CreateDynamicObject(8061,2648.597,-2434.656,17.621,0.000,0.000,-90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(3279,2610.234,-2415.929,12.625,0.000,0.000,-16.700, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.465,-2414.478,14.001,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.465,-2396.293,14.032,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.465,-2386.296,14.012,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.465,-2405.167,9.972,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.465,-2378.250,13.331,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.465,-2369.675,13.331,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2494.816,13.992,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2513.157,13.992,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2484.830,14.002,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2503.799,10.012,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2415.412,16.992,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2410.431,16.992,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2405.482,16.991,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2400.511,16.991,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2395.553,16.992,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2390.573,16.992,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2385.579,16.992,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2380.606,16.332,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.446,-2375.631,16.332,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2370.636,16.332,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2367.176,16.312,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2488.207,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2493.191,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2498.152,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2503.136,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2508.114,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2513.107,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2517.940,16.332,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2474.873,14.002,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2483.220,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2478.266,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.445,-2473.286,16.982,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18766,2715.061,-2494.237,10.171,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2705.070,-2494.237,10.171,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2698.239,-2494.237,10.170,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2693.740,-2488.944,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2693.740,-2478.998,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2673.550,-2489.254,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18762,2670.586,-2493.750,12.171,90.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18762,2668.527,-2493.750,12.171,90.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2673.550,-2479.322,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2673.550,-2469.378,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2673.550,-2459.419,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2715.084,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2705.126,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2695.233,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2685.291,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2675.372,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2665.396,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2655.417,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2645.477,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2635.553,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2625.572,-2395.450,10.152,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2622.400,-2395.450,10.149,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2613.636,-2387.481,10.149,0.000,0.000,-63.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2615.569,-2391.274,10.152,0.000,0.000,-63.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2699.469,-2471.312,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2714.947,-2473.974,10.171,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2704.956,-2473.974,10.171,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2719.465,-2488.747,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(18766,2719.465,-2478.764,10.171,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 7978, "vgssairport", "newall_harling_sless", 0x00000000);
	armybase = CreateDynamicObject(19370,2697.129,-2477.915,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2699.878,-2477.915,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2694.320,-2477.915,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2703.559,-2476.065,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2707.218,-2476.065,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2710.800,-2476.065,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2714.460,-2476.065,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2718.160,-2476.065,10.920,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2717.370,-2490.540,10.920,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2717.370,-2487.156,10.920,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(19370,2717.370,-2483.758,10.920,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18835, "mickytextures", "smileyface1", 0x00000000);
	armybase = CreateDynamicObject(18762,2746.864,-2561.872,15.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2762.399,-2561.872,15.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2806.998,-2501.786,15.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2806.998,-2408.620,15.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2720.465,-2420.406,16.992,90.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2700.457,-2330.916,15.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2700.457,-2330.916,10.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2686.998,-2330.916,15.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2686.989,-2330.916,10.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2782.389,-2520.375,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2762.399,-2561.872,10.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2746.864,-2561.872,10.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2806.998,-2408.620,10.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2806.998,-2501.786,10.751,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(1499,2756.718,-2373.314,12.630,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(1499,2757.719,-2389.214,12.630,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18770,2745.407,-2388.295,-80.946,180.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18770,2745.407,-2350.445,-80.946,180.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18770,2745.407,-2369.460,-80.946,180.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2376.318,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2371.318,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2366.326,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2361.325,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2356.331,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2352.148,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2381.808,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2386.784,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2376.797,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2371.813,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18770,2757.620,-2338.503,-2338.503,180.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 19107, "armyhelmets", "armyhelmet6", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2366.834,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2361.843,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2747.607,-2354.259,19.108,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2747.607,-2363.903,19.108,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2747.607,-2373.483,19.108,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2747.607,-2383.113,19.108,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2753.472,-2354.259,19.109,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2753.472,-2363.903,19.109,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2753.472,-2373.483,19.109,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2753.472,-2383.113,19.109,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2747.607,-2384.479,19.109,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(19911,2753.412,-2384.479,19.109,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2384.792,13.133,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2379.799,13.133,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2374.806,13.133,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2371.030,13.130,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2366.019,13.133,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2361.078,13.133,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2356.134,13.133,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2351.989,13.130,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.907,-2384.812,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.907,-2379.837,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.907,-2374.854,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.917,-2369.859,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.907,-2364.903,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.907,-2359.908,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.907,-2354.920,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2744.908,-2352.020,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2754.127,-2388.295,12.173,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2748.886,-2388.295,12.173,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2386.298,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2751.538,-2381.297,12.183,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2356.863,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2756.140,-2351.940,18.652,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4828, "airport3_las", "gnhotelwall02_128", 0x00000000);
	armybase = CreateDynamicObject(18762,2748.886,-2350.156,12.173,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2754.127,-2350.156,12.173,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(11505,2788.156,-2524.490,17.021,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(11505,2788.156,-2540.754,17.021,0.000,0.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	armybase = CreateDynamicObject(18762,2779.397,-2522.376,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2787.347,-2520.375,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2792.319,-2520.375,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2796.698,-2522.376,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2793.718,-2520.392,12.152,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2796.698,-2527.345,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2796.698,-2532.330,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2796.698,-2537.300,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2796.698,-2542.295,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2779.397,-2527.343,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2779.397,-2532.305,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2779.397,-2537.287,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2779.397,-2542.274,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2779.397,-2544.679,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2796.698,-2544.677,12.149,0.000,90.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2782.389,-2546.679,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2787.363,-2546.679,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2792.334,-2546.679,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18762,2793.722,-2546.679,12.149,0.000,90.000,0.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(19479,2627.194,-2383.278,22.072,0.000,0.000,-89.999, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	SetDynamicObjectMaterialText(armybase, 0, "LOS - SANTOS", 130, "Ariel", 80, 1, 0xFF000000, 0x00000000, 1);
	armybase = CreateDynamicObject(19479,2627.194,-2383.278,19.862,0.000,0.000,-89.999, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0x00000000);
	SetDynamicObjectMaterialText(armybase, 0, "Army base", 130, "Ariel", 80, 1, 0xFF000000, 0x00000000, 1);
	armybase = CreateDynamicObject(2974,2794.385,-2545.483,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2781.721,-2545.483,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2781.721,-2529.256,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2794.385,-2537.812,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2781.721,-2537.812,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2794.385,-2529.256,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2794.385,-2521.548,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(2974,2781.721,-2521.548,12.820,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 4510, "barrierblk", "yellow_64", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2414.468,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2396.305,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2386.305,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2376.904,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.445,-2369.684,10.811,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.475,-2474.882,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.485,-2484.838,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.485,-2494.821,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.515,-2513.154,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.435,-2513.154,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.435,-2494.821,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.435,-2484.838,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	armybase = CreateDynamicObject(18766,2720.436,-2474.882,11.121,0.000,0.000,90.000, .streamdistance = 700);
	SetDynamicObjectMaterial(armybase, 0, 18886, "electromagnet1", "hazardtile13-128x128", 0x00000000);
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	armybase = CreateDynamicObject(987,2666.831,-2514.226,12.041,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.831,-2526.057,12.041,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.831,-2537.974,12.041,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.831,-2549.936,12.041,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.780,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2678.744,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2690.670,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2702.672,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2714.669,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2726.604,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2734.436,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2762.850,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2774.804,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2786.737,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2795.158,-2561.872,12.041,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2561.929,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2549.987,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2538.044,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2526.113,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2806.998,-2514.211,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2408.170,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2396.242,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2384.334,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2372.383,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2360.441,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2348.470,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.094,-2342.293,12.041,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2807.139,-2330.365,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2795.212,-2330.365,12.041,0.000,0.000,180.300, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2783.293,-2330.425,12.041,0.000,0.000,180.729, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2771.385,-2330.596,12.041,0.000,0.000,181.500, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2759.444,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2747.500,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2735.610,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2723.656,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2712.887,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2686.424,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2674.480,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2662.539,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2650.593,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2638.663,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2626.743,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2614.844,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2599.728,-2380.541,12.041,0.000,0.000,-15.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10771,2831.312,-2449.358,5.610,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10770,2838.852,-2446.082,38.840,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10772,2831.288,-2447.863,17.400,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11237,2838.852,-2446.082,38.842,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11146,2830.749,-2458.355,12.460,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11149,2836.510,-2455.425,12.149,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10832,2724.797,-2383.482,14.402,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11145,2831.301,-2512.229,4.427,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11334,2840.049,-2438.757,11.119,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3800,2842.114,-2441.651,10.360,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3800,2842.114,-2441.651,11.440,0.000,0.000,-72.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3798,2842.497,-2433.257,10.359,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3798,2840.155,-2433.347,10.359,0.000,0.000,-4.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3800,2836.989,-2441.716,10.340,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(0,2834.139,-2421.392,10.372,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3794,2842.921,-2431.334,10.892,0.000,0.000,181.080, .streamdistance = 700);
	armybase = CreateDynamicObject(3794,2839.388,-2431.334,10.892,0.000,0.000,181.080, .streamdistance = 700);
	armybase = CreateDynamicObject(3791,2833.857,-2418.873,10.832,0.000,0.000,181.080, .streamdistance = 700);
	armybase = CreateDynamicObject(3791,2833.857,-2416.420,10.832,0.000,0.000,181.080, .streamdistance = 700);
	armybase = CreateDynamicObject(3791,2833.857,-2414.083,10.832,0.000,0.000,181.080, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2819.748,-2435.537,11.432,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2819.743,-2446.625,11.432,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2829.678,-2469.567,11.432,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2823.876,-2380.517,11.857,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2834.283,-2380.517,11.857,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2819.995,-2394.888,11.857,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2842.994,-2484.295,3.226,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2843.066,-2494.909,3.226,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2819.524,-2505.165,3.226,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2824.927,-2477.922,3.684,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3115,2831.488,-2548.369,17.074,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3115,2831.228,-2548.369,17.074,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11697,2811.996,-2498.588,12.949,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11698,2816.838,-2498.588,12.348,-8.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11698,2819.739,-2498.588,11.888,-10.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(11698,2822.638,-2498.588,11.244,-15.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19305,2732.698,-2556.411,26.313,0.000,0.000,-176.900, .streamdistance = 700);
	armybase = CreateDynamicObject(967,2719.260,-2411.115,12.629,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(8168,2716.332,-2397.867,14.468,0.000,0.000,16.700, .streamdistance = 700);
	armybase = CreateDynamicObject(967,2721.709,-2411.115,12.629,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(8168,2739.142,-2515.008,14.474,0.000,0.000,-163.300, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2838.828,-2486.053,11.857,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2842.043,-2492.394,11.857,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2842.043,-2532.763,11.857,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2819.915,-2532.763,11.857,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2842.603,-2502.976,11.432,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2842.603,-2522.283,11.432,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2819.828,-2522.626,11.432,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(970,2821.941,-2502.316,10.866,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(970,2821.941,-2506.420,10.866,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(970,2821.941,-2510.522,10.866,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(970,2821.941,-2514.641,10.866,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(970,2819.853,-2516.722,10.866,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(970,2819.853,-2495.497,10.866,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2809.287,-2488.666,13.692,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2809.359,-2462.252,13.692,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3785,2833.160,-2439.480,20.599,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3785,2839.828,-2449.723,19.853,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3785,2833.494,-2442.435,13.508,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3785,2839.528,-2442.177,12.704,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3785,2844.442,-2421.377,12.647,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2582.820,-2363.604,12.041,0.000,0.000,-45.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2574.326,-2355.130,12.041,0.000,0.000,-45.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2591.298,-2372.084,12.041,0.000,0.000,-45.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2565.842,-2346.669,12.041,0.000,0.000,-45.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2557.370,-2338.195,12.041,0.000,0.000,-45.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2550.389,-2331.208,12.041,0.000,0.000,-45.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2602.917,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2590.979,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2579.000,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2567.001,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2562.770,-2330.916,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3268,2788.156,-2417.789,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3268,2788.156,-2455.882,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3268,2788.156,-2493.984,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10832,2724.807,-2374.034,14.402,0.000,0.000,179.799, .streamdistance = 700);
	armybase = CreateDynamicObject(3761,2797.290,-2422.353,14.546,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3761,2797.290,-2413.407,14.546,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10965,2665.465,-2362.358,25.041,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2719.611,-2383.588,26.703,-360.000,360.000,360.000, .streamdistance = 700);
	armybase = CreateDynamicObject(7090,2679.512,-2383.263,31.322,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(7090,2699.516,-2383.263,31.322,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2611.743,-2383.588,26.703,-360.000,360.000,360.000, .streamdistance = 700);
	armybase = CreateDynamicObject(9241,2634.108,-2365.235,29.519,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(9241,2677.522,-2364.852,35.519,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1694,2706.938,-2358.761,48.405,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(8613,2654.415,-2378.224,30.419,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1226,2637.351,-2412.457,16.414,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1226,2659.306,-2412.457,16.414,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2777.776,-2405.790,26.703,-360.000,360.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2777.776,-2506.306,26.703,-360.000,360.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1226,2674.942,-2493.868,16.414,360.000,360.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2737.613,-2522.451,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(8168,2716.332,-2496.553,14.468,0.000,0.000,16.700, .streamdistance = 700);
	armybase = CreateDynamicObject(967,2721.660,-2509.800,12.629,0.000,0.000,1.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.626,-2493.959,12.641,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.626,-2482.050,12.641,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.626,-2470.111,12.641,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2666.626,-2458.190,12.641,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2611.332,-2383.774,12.041,0.000,0.000,85.000, .streamdistance = 700);
	armybase = CreateDynamicObject(8038,2711.024,-2528.305,32.287,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1595,2672.539,-2539.145,26.437,0.000,0.000,-50.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1595,2743.447,-2526.030,56.897,0.000,0.000,135.000, .streamdistance = 700);
	armybase = CreateDynamicObject(967,2719.220,-2509.800,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10610,2722.650,-2436.042,22.808,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(10610,2722.638,-2460.068,22.808,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(7091,2744.500,-2446.106,25.962,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18764,2696.692,-2473.812,10.171,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(967,2672.311,-2492.516,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(987,2678.767,-2514.264,12.041,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2614.387,-2383.620,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2618.853,-2383.634,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2623.312,-2383.672,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2627.788,-2383.708,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2632.301,-2383.719,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2636.853,-2383.719,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(18014,2640.912,-2383.719,13.063,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2799.563,-2417.789,13.692,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19305,2720.004,-2409.908,13.890,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19305,2720.919,-2409.908,13.890,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19305,2720.919,-2508.471,13.890,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19305,2720.004,-2508.471,13.890,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1290,2694.500,-2493.419,18.655,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3939,2785.284,-2558.533,14.177,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3030,2789.789,-2559.533,12.433,0.000,0.000,-156.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3031,2787.803,-2554.832,14.194,0.000,0.000,115.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2008,2787.431,-2560.775,12.632,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(14819,2785.105,-2561.226,13.759,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1721,2786.623,-2559.352,12.633,0.000,0.000,178.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2787.404,-2556.866,12.628,0.000,0.000,270.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3939,2777.956,-2558.533,14.177,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2008,2780.126,-2560.775,12.632,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1721,2779.397,-2559.352,12.633,0.000,0.000,178.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2779.958,-2556.866,12.628,0.000,0.000,270.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3031,2779.885,-2555.137,14.194,0.000,0.000,98.000, .streamdistance = 700);
	armybase = CreateDynamicObject(14819,2777.664,-2561.226,13.759,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3939,2770.601,-2558.533,14.177,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2008,2772.797,-2560.775,12.632,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1721,2771.955,-2559.352,12.633,0.000,0.000,178.000, .streamdistance = 700);
	armybase = CreateDynamicObject(14819,2770.393,-2561.226,13.759,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2772.621,-2556.866,12.628,0.000,0.000,270.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3031,2772.740,-2555.137,14.194,0.000,0.000,98.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2762.399,-2561.872,13.703,-360.000,360.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2746.864,-2561.872,13.703,-360.000,360.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2806.998,-2501.786,13.703,-360.000,360.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2806.998,-2408.620,13.703,-360.000,360.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2700.457,-2330.916,13.703,-360.000,360.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1278,2686.998,-2330.916,13.703,-360.000,360.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3574,2624.729,-2339.801,14.960,356.858,0.000,3.141, .streamdistance = 700);
	armybase = CreateDynamicObject(3574,2605.190,-2358.533,14.960,357.000,360.000,270.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3268,2771.624,-2379.293,12.629,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3268,2771.624,-2359.443,12.629,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19799,2783.871,-2389.109,14.114,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19799,2786.425,-2367.129,14.114,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19799,2785.755,-2349.622,14.114,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19799,2759.387,-2349.622,14.114,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2737.613,-2522.451,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3576,2758.831,-2367.709,14.127,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2758.125,-2355.704,13.669,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2765.277,-2351.111,13.669,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2974,2760.911,-2370.376,12.628,0.000,0.000,83.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2974,2758.091,-2370.255,12.628,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3761,2764.028,-2359.866,14.546,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3761,2772.227,-2359.866,14.546,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3761,2768.140,-2359.866,14.546,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3633,2757.596,-2365.278,13.127,0.000,0.000,-76.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3633,2757.501,-2363.611,13.127,0.000,0.000,-97.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3015,2760.330,-2366.967,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3015,2760.408,-2366.412,12.629,0.000,0.000,-21.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2991,2773.281,-2350.557,13.248,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2991,2773.301,-2350.554,14.488,0.000,0.000,1.000, .streamdistance = 700);
	armybase = CreateDynamicObject(922,2773.750,-2359.886,13.628,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3791,2768.186,-2363.741,13.089,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3796,2784.382,-2359.167,12.622,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2977,2784.989,-2358.436,12.724,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2977,2784.999,-2360.091,12.724,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2977,2783.640,-2359.231,12.724,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3791,2784.069,-2361.945,13.089,0.000,0.000,2.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3791,2784.274,-2364.032,13.089,0.000,0.000,-5.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2785.264,-2354.373,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2778.483,-2350.680,15.048,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2973,2784.642,-2367.778,12.629,0.000,0.000,12.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2973,2781.905,-2367.966,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2777.806,-2360.324,12.628,0.000,0.000,-6.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2777.806,-2360.324,13.568,0.000,0.000,-26.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2777.370,-2361.208,13.288,90.000,0.000,-6.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2785.053,-2375.190,13.669,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2778.008,-2374.113,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2778.008,-2379.291,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2773.436,-2374.113,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2773.436,-2379.291,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3761,2785.714,-2384.676,14.546,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2763.390,-2389.218,13.288,90.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3015,2765.016,-2388.337,13.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(937,2761.640,-2388.626,13.110,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3016,2761.662,-2388.963,13.904,0.000,0.000,-7.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3016,2762.173,-2388.991,13.904,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2764.809,-2388.524,12.628,0.000,0.000,-6.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2762.093,-2388.356,12.956,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2761.292,-2388.403,12.956,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2040,2764.938,-2388.865,13.697,0.000,0.000,-33.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2040,2764.622,-2388.837,13.697,0.000,0.000,-3.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2040,2764.305,-2388.764,13.697,0.000,0.000,-3.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2769.128,-2374.113,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(939,2769.128,-2379.291,15.048,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3799,2770.745,-2387.633,12.630,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3799,2770.680,-2387.587,14.730,0.000,0.000,1.000, .streamdistance = 700);
	armybase = CreateDynamicObject(937,2757.335,-2385.742,13.110,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(937,2757.335,-2383.001,13.110,0.000,0.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3015,2756.985,-2386.465,13.689,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3015,2756.972,-2385.893,13.689,0.000,0.000,-13.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2757.455,-2383.587,12.956,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2757.467,-2382.703,12.956,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2757.123,-2382.573,13.696,0.000,0.000,79.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2757.375,-2385.799,12.956,0.000,0.000,28.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3052,2757.445,-2385.754,13.316,0.000,0.000,67.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2509,2756.782,-2383.001,14.532,0.000,90.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2509,2756.782,-2385.742,14.532,0.000,90.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(356,2756.840,-2386.422,14.354,0.000,0.000,95.000, .streamdistance = 700);
	armybase = CreateDynamicObject(356,2756.840,-2386.422,14.994,0.000,0.000,95.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2475,2761.924,-2389.155,13.630,0.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(356,2756.840,-2386.422,14.631,0.000,0.000,95.000, .streamdistance = 700);
	armybase = CreateDynamicObject(358,2756.841,-2385.367,14.305,-4.000,-84.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(358,2756.841,-2385.000,14.305,-4.000,-84.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(355,2756.840,-2383.627,14.354,0.000,0.000,95.000, .streamdistance = 700);
	armybase = CreateDynamicObject(349,2756.835,-2383.598,14.956,20.000,6.000,98.000, .streamdistance = 700);
	armybase = CreateDynamicObject(358,2756.841,-2382.227,14.305,-4.000,-84.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3016,2761.147,-2389.033,13.904,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(363,2762.471,-2389.016,14.731,0.000,0.000,194.000, .streamdistance = 700);
	armybase = CreateDynamicObject(363,2761.987,-2389.015,14.731,0.000,0.000,175.000, .streamdistance = 700);
	armybase = CreateDynamicObject(363,2761.353,-2388.858,14.507,-90.000,90.000,-9.000, .streamdistance = 700);
	armybase = CreateDynamicObject(364,2761.459,-2388.529,13.584,0.000,0.000,-13.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1672,2762.338,-2389.071,15.234,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1672,2762.168,-2389.088,15.234,0.000,0.000,193.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1672,2762.264,-2388.914,15.234,0.000,0.000,193.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2040,2761.772,-2389.028,15.223,0.000,0.000,73.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2040,2761.221,-2389.066,15.223,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(342,2756.891,-2383.750,13.585,95.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(342,2757.029,-2383.452,13.585,103.000,-18.000,-25.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1672,2757.178,-2383.661,13.668,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1672,2757.134,-2383.801,13.668,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1672,2757.518,-2383.671,13.668,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2778.723,-2387.667,13.669,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2761.522,-2377.258,14.082,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3799,2771.171,-2383.718,12.630,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3799,2771.171,-2383.718,14.840,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2779.204,-2383.970,13.669,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2973,2780.711,-2371.896,12.629,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(2973,2780.731,-2371.874,15.070,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(964,2762.347,-2376.787,14.666,90.000,0.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3066,2762.349,-2378.020,16.438,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3630,2762.571,-2378.681,14.082,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3255,2732.652,-2555.362,12.590,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3643,2725.291,-2555.218,17.634,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3643,2719.665,-2555.218,17.634,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3643,2714.585,-2555.218,17.634,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2781.721,-2521.548,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2794.385,-2521.548,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2794.385,-2529.256,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2781.721,-2529.256,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2794.385,-2537.812,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2781.721,-2537.812,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2794.385,-2545.483,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(3465,2781.721,-2545.483,14.094,0.000,0.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2762.966,-2521.584,12.595,-180.000,90.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2762.946,-2531.232,12.595,-180.000,90.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2762.966,-2540.883,12.595,-180.000,90.000,90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2765.445,-2548.920,12.595,-180.000,90.000,140.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2772.563,-2550.724,12.595,-180.000,90.000,-900.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2788.424,-2550.724,12.595,-180.000,90.000,-900.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2797.772,-2550.236,12.595,-180.000,90.000,-139.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2797.783,-2541.826,12.595,-180.000,90.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2797.783,-2533.714,12.595,-180.000,90.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2797.783,-2525.246,12.595,-180.000,90.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2801.961,-2537.575,12.595,-180.000,90.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2801.854,-2527.254,12.595,-180.000,90.000,-60.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2737.613,-2531.610,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2737.613,-2531.610,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2746.821,-2531.610,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2746.821,-2531.610,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2767.988,-2395.538,12.595,-180.000,90.000,180.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2786.728,-2395.263,12.595,-180.000,90.000,219.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2792.579,-2388.341,12.595,-180.000,90.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2792.575,-2369.722,12.595,-180.000,90.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2792.579,-2351.155,12.595,-180.000,90.000,-90.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2786.655,-2344.006,12.595,-180.000,90.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2771.560,-2344.006,12.595,-180.000,90.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2757.785,-2344.220,12.595,-180.000,90.000,40.000, .streamdistance = 700);
	armybase = CreateDynamicObject(1318,2751.325,-2344.183,12.595,-180.000,90.000,40.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2746.821,-2522.624,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2746.821,-2522.624,52.576,0.000,0.000,0.000, .streamdistance = 700);
	armybase = CreateDynamicObject(19290,2746.821,-2522.624,52.576,0.000,0.000,0.000, .streamdistance = 700);*/
	
	//LS MAP
	new gobj;
	gobj = CreateDynamicObject(3077,1800.387,-1864.347,12.472,0.000,0.000,0.000, .worldid = 0, .streamdistance = 1000);
	SetDynamicObjectMaterial(gobj, 1, 2589, "ab_ab", "ab_sheetSteel", 0);
	SetDynamicObjectMaterial(gobj, 0, 19171, "gtamap", "GTASAMapBit4", 0);
	gobj = CreateDynamicObject(3077,1629.500,-2330.764,12.443,0.000,0.000,0.000, .worldid = 0, .streamdistance = 1000);
	SetDynamicObjectMaterial(gobj, 1, 2589, "ab_ab", "ab_sheetSteel", 0);
	SetDynamicObjectMaterial(gobj, 0, 19171, "gtamap", "GTASAMapBit4", 0);
	gobj = CreateDynamicObject(3077,815.318,-1337.343,12.441,0.000,0.000,0.000, .worldid = 0, .streamdistance = 1000);
	SetDynamicObjectMaterial(gobj, 1, 2589, "ab_ab", "ab_sheetSteel", 0);
	SetDynamicObjectMaterial(gobj, 0, 19171, "gtamap", "GTASAMapBit4", 0);
	gobj = CreateDynamicObject(3077,1187.171,-1369.021,12.443,0.000,0.000,90.000, .worldid = 0, .streamdistance = 1000);
	SetDynamicObjectMaterial(gobj, 1, 2589, "ab_ab", "ab_sheetSteel", 0);
	SetDynamicObjectMaterial(gobj, 0, 19171, "gtamap", "GTASAMapBit4", 0);
	gobj = CreateDynamicObject(3077,385.296,-1600.141,28.595,0.000,0.000,-0.059, .worldid = 0, .streamdistance = 1000);
	SetDynamicObjectMaterial(gobj, 1, 2589, "ab_ab", "ab_sheetSteel", 0);
	SetDynamicObjectMaterial(gobj, 0, 19171, "gtamap", "GTASAMapBit4", 0);
	gobj = CreateDynamicObject(3077,572.671,-1245.395,16.347,0.000,0.000,25.000, .worldid = 0, .streamdistance = 1000);
	SetDynamicObjectMaterial(gobj, 1, 2589, "ab_ab", "ab_sheetSteel", 0);
	SetDynamicObjectMaterial(gobj, 0, 19171, "gtamap", "GTASAMapBit4", 0);
	
	// PRISON ACCOUNT
	CreateDynamicObject(14412, -289.92578, 1883.05273, 38.23661,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	
	// HILTOP MILITA
	//RNE Palamino Military Base - Mapped by Arnold Brok
    new g_NEObject;

	g_NEObject = CreateDynamicObject(3095, 3162.1999, -48.7999, 16.8999, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_jetdoor
	SetDynamicObjectMaterial(g_NEObject, 0, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(10832, 3358.6005, 2.2000, 11.6000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gatehouse2_SFSe
	SetDynamicObjectMaterial(g_NEObject, 0, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 1, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 2, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 3, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3095, 3157.7878, -49.8428, 12.3737, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_jetdoor
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	//g_NEObject = CreateDynamicObject(9241, 3174.7902, -18.6001, 31.2000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //copbits_sfn
	SetDynamicObjectMaterial(g_NEObject, 1, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 2, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 3, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3279, 3279.1770, -58.2262, 6.1300, 0.0000, 0.0000, 359.8991, .worldid = 0, .streamdistance = 700); //a51_spottower
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(16093, 3273.7998, -32.4001, 10.3000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_gatecontrol
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "concretemanky", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3266.1987, 54.9574, 6.6588, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8247, 3285.1005, -93.9001, 10.1000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //pltschlhnger69_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3064.6635, 74.7305, 6.6286, 0.0000, 0.0000, 179.9002, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3082.8122, 84.9861, -5.7698, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3099.2280, 19.0377, 6.6785, 0.0000, 0.0000, -1.4996, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3100.5168, 64.5114, 6.6588, 0.0000, 0.0000, -89.9000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3266.1987, 74.9074, 6.6588, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3257.2792, 57.1972, 6.6687, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(10833, 3238.3000, 46.7000, 1.6000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //navybase_02_SFSe
	SetDynamicObjectMaterial(g_NEObject, 0, 3884, "samsite_sfxrf", "sam_camobits-navy", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 1, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3266.3395, 18.5074, 6.6687, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3165.2971, 84.9861, -5.7599, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3140.6289, 84.9861, -5.7698, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8171, 3179.5522, 64.9669, 6.6399, 0.0000, 0.0000, 90.2994, .worldid = 0, .streamdistance = 700); //vgsSairportland06
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8171, 3179.6613, 33.7671, 6.6497, 0.0000, 0.0000, 90.2994, .worldid = 0, .streamdistance = 700); //vgsSairportland06
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3266.2800, 37.2074, 6.6687, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	//g_NEObject = CreateDynamicObject(9241, 3174.7902, -76.2001, 31.2000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //copbits_sfn
	SetDynamicObjectMaterial(g_NEObject, 1, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 2, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 3, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	//g_NEObject = CreateDynamicObject(9241, 3215.0810, -18.6001, 31.2000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //copbits_sfn
	SetDynamicObjectMaterial(g_NEObject, 1, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 2, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 3, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(19327, 3271.3122, 40.0972, 14.2633, 0.0000, 0.0000, 179.6000, .worldid = 0, .streamdistance = 700); //7_11_sign02
	SetDynamicObjectMaterialText(g_NEObject, 0, "Joe Goose\nMemorial Hanger", 90, "Arial", 36, 1, 0xFF473532, 0, 1);

	g_NEObject = CreateDynamicObject(3095, 3162.1972, -39.7929, 16.7837, 0.0000, 12510.0000, 180.0000, .worldid = 0, .streamdistance = 700); //a51_jetdoor
	SetDynamicObjectMaterial(g_NEObject, 0, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3095, 3157.7998, -41.2000, 12.3999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_jetdoor
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3884, 3148.7001, -14.5993, 30.2000, 0.0000, 0.0000, 45.3988, .worldid = 0, .streamdistance = 700); //samsite_SFXRF
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "a51_metal1", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3277, 3148.7001, -14.5993, 30.2000, 0.0000, 0.0000, 259.9970, .worldid = 0, .streamdistance = 700); //mil_sambase
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(5711, 3357.9003, -5.2996, 9.6997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //cem02_law
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3190.0568, 84.9861, -5.7698, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3884, 3148.7001, -76.7994, 30.2000, 0.0000, 0.0000, 139.9989, .worldid = 0, .streamdistance = 700); //samsite_SFXRF
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "a51_metal1", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3214.9116, 84.9869, -5.7729, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3115.7985, 84.9861, -5.7599, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(10833, 3238.3000, 46.7000, 1.6000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //navybase_02_SFSe
	SetDynamicObjectMaterial(g_NEObject, 0, 3884, "samsite_sfxrf", "sam_camobits-navy", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 1, 3884, "samsite_sfxrf", "sam_camo-navy", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3279, 3112.9003, -27.7000, 6.5998, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_spottower
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3934, 3358.8000, 2.2999, 13.3000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //helipad01
	SetDynamicObjectMaterial(g_NEObject, 0, 3816, "bighangarsfxr", "ws_breezeblocks", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 1, 10631, "queensammo_sfs", "ammu_camo1", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(10826, 3189.7998, -45.5996, 13.5000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //subpen_ext_SFSe
	SetDynamicObjectMaterial(g_NEObject, 1, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3277, 3148.7001, -76.5996, 30.2000, 0.0000, 0.0000, 259.9970, .worldid = 0, .streamdistance = 700); //mil_sambase
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3064.4680, 20.1578, 6.6785, 0.0000, 0.0000, -1.4996, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3064.9201, 38.5665, 6.6487, 0.0000, 0.0000, 1.4002, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3099.2849, 34.8474, 6.6487, 0.0000, 0.0000, -0.1995, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8661, 3080.8500, 64.9199, 6.6487, 0.0000, 0.0000, -89.3996, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	SetDynamicObjectMaterial(g_NEObject, 0, 10765, "airportgnd_sfse", "ws_runwaytarmac", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(8325, 3124.7995, -45.7015, 17.3106, 0.0000, 0.0000, -179.7998, .worldid = 0, .streamdistance = 700); //vgsbboardsigns12
	SetDynamicObjectMaterial(g_NEObject, 0, 10756, "airportroads_sfse", "Heliconcrete", 0xFFFFFFFF);
	SetDynamicObjectMaterialText(g_NEObject, 1, "Hilltop Militia", 90, "Arial", 46, 1, 0xFF341A1E, 0, 1);

	g_NEObject = CreateDynamicObject(18981, 3090.8308, 84.9861, -5.7599, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3057.7631, 84.9861, -5.7599, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3044.8212, 72.9841, -5.5598, 0.0000, 0.0000, -0.0996, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3044.7775, 47.9640, -5.5499, 0.0000, 0.0000, -0.0996, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3044.7338, 23.0543, -5.5398, 0.0000, 0.0000, -0.0996, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3057.6347, 10.6793, -5.5197, 0.0000, 0.0000, -91.5998, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3082.6108, 9.9815, -5.5197, 0.0000, 0.0000, -91.5998, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(18981, 3107.5505, 9.2847, -5.5197, 0.0000, 0.0000, -91.5998, .worldid = 0, .streamdistance = 700); //Concrete1mx25mx25m
	SetDynamicObjectMaterial(g_NEObject, 0, 915, "airconext", "CJ_plating", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(3279, 3112.9003, -63.5996, 6.5998, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_spottower
	SetDynamicObjectMaterial(g_NEObject, 0, 16640, "a51", "redmetal", 0xFFFFFFFF);

	//g_NEObject = CreateDynamicObject(9241, 3216.2001, -76.2001, 31.2000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //copbits_sfn
	SetDynamicObjectMaterial(g_NEObject, 1, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 2, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 3, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	//g_NEObject = CreateDynamicObject(9241, 3347.4003, -91.5996, 7.9000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //copbits_sfn
	SetDynamicObjectMaterial(g_NEObject, 1, 16640, "a51", "redmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 2, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);
	SetDynamicObjectMaterial(g_NEObject, 3, 16640, "a51", "scratchedmetal", 0xFFFFFFFF);

	g_NEObject = CreateDynamicObject(19805, 3156.3681, 84.3298, 2.6388, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //Whiteboard1
	SetDynamicObjectMaterialText(g_NEObject, 0, "Extension designed by\nChris Hayes", 90, "Arial", 24, 1, 0xFF840410, 0xFF2A77A1, 1);

	g_NEObject = CreateDynamicObject(19805, 3267.7065, 75.4213, 8.9760, 0.0000, 0.0000, -90.1999, .worldid = 0, .streamdistance = 700); //Whiteboard1
	SetDynamicObjectMaterialText(g_NEObject, 0, "Rodrigo Dusmetov\nRadar Tower", 90, "Arial", 24, 1, 0xFFFFFFFF, 0xFF304F45, 1);

	g_NEObject = CreateDynamicObject(19327, 3241.3034, 40.3067, 14.2633, 0.0000, 0.0000, 179.6000, .worldid = 0, .streamdistance = 700); //7_11_sign02
	SetDynamicObjectMaterialText(g_NEObject, 0, "Andre Stallone\nMemorial Hanger", 90, "Arial", 36, 1, 0xFF473532, 0, 1);

	CreateDynamicObject(966, -1572.2031, 658.8358, 6.0781, 356.8583, 0.0000, -1.5707, .worldid = 0, .streamdistance = 700); //bar_gatebar01
	CreateDynamicObject(966, -1572.2031, 658.8358, 6.0781, 356.8583, 0.0000, -1.5707, .worldid = 0, .streamdistance = 700); //bar_gatebar01
	CreateDynamicObject(987, 3366.0000, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3366.0000, 73.3000, 6.5998, 0.0000, 0.0000, 89.9950, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3366.0000, 68.9000, 6.5998, 0.0000, 0.0000, 89.9840, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3359.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(6959, 3366.0000, 65.4000, -14.0000, 0.0000, 90.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(11353, 3365.4003, 24.7999, 10.6000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //station5new
	CreateDynamicObject(6959, 3366.0000, 47.7000, -14.0000, 0.0000, 90.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(987, 3347.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3345.9445, 74.9570, 6.6388, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(996, 3356.6005, 27.5000, 7.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(16564, 3346.1005, 60.4000, 6.5998, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //des_stmedicentre_
	CreateDynamicObject(3113, 3362.0000, 20.2000, -4.6999, 179.9949, 104.9960, 179.9949, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(3113, 3354.9003, 28.0000, 2.5499, 179.9949, 14.9799, 270.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(3928, 3342.0000, 45.4000, 12.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //helipad
	CreateDynamicObject(987, 3335.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3344.8696, 37.5069, 6.6890, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(996, 3347.7998, 27.5000, 7.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(3113, 3354.7998, 8.3000, 2.0999, 179.9949, 14.9960, 90.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(8661, 3336.8706, 54.9771, 6.6388, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(16095, 3358.7998, -11.4003, 13.1997, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //des_a51guardbox02
	CreateDynamicObject(3113, 3350.7998, 20.2000, -4.6999, 0.0049, 284.9960, 359.9949, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(1536, 3352.7001, -1.4003, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //Gen_doorEXT15
	CreateDynamicObject(11353, 3365.4003, -29.5000, 10.6000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //station5new
	//CreateDynamicObject(1616, 3352.4003, -5.4003, 9.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //nt_securecam1_01
	CreateDynamicObject(12987, 3347.9003, 9.5000, 3.5999, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //cos_sbanksteps06
	CreateDynamicObject(8661, 3356.1005, -11.1399, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(1536, 3352.7373, -4.4003, 6.1999, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //Gen_doorEXT15
	CreateDynamicObject(8661, 3336.8706, 37.3572, 6.6188, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3366.0000, -11.0993, -14.4600, 0.0000, 90.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(996, 3348.5000, 3.4000, 6.9000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(996, 3339.0000, 27.5000, 7.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(11496, 3344.2998, 10.1997, 0.6000, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //des_wjetty
	CreateDynamicObject(996, 3348.5000, -5.7996, 6.9000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(987, 3323.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(19121, 3341.7197, 14.1400, 1.9098, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //BollardLight1
	CreateDynamicObject(996, 3341.0000, 8.6000, 6.9000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(1892, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //security_gatsh
	CreateDynamicObject(8661, 3344.8696, -2.3626, 6.2189, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(3113, 3339.6005, 20.2000, -4.6999, 179.9949, 104.9906, 179.9949, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(996, 3348.5000, -15.1997, 6.9000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(19601, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //SnowPlow1
	CreateDynamicObject(3113, 3332.2998, 28.0000, 2.5499, 179.9949, 14.9910, 270.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(996, 3330.0000, 27.5000, 7.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(996, 3332.2998, 8.6000, 6.9000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(3113, 3332.2001, 8.3000, 2.0999, 179.9949, 14.9910, 90.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(17070, 3337.7998, -10.4003, 6.1999, 0.0000, 0.0000, 92.2470, .worldid = 0, .streamdistance = 700); //carspaces03
	CreateDynamicObject(3627, 3354.9003, -45.7000, 10.0000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //dckcanpy
	CreateDynamicObject(8661, 3336.1706, -11.1399, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(3113, 3328.4003, 20.2000, -4.6999, 179.9949, 104.9906, 179.9949, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(996, 3320.8999, 27.5000, 7.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(987, 3311.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(11496, 3328.2998, 10.1997, 0.6000, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //des_wjetty
	CreateDynamicObject(8661, 3356.1005, -51.1198, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3366.0000, -51.0996, -14.4600, 0.0000, 90.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(996, 3319.9003, 25.2098, 6.9000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(996, 3323.2998, 8.6000, 6.9000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(1696, 3317.1005, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(3113, 3319.6005, 20.2000, 2.0999, 179.9949, 14.9910, 0.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(8661, 3305.9912, 74.9570, 6.6388, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(18234, 3325.5827, 79.1063, 6.4899, 0.0000, 0.0000, 89.9950, .worldid = 0, .streamdistance = 700); //cuntw_shed2_
	CreateDynamicObject(1696, 3311.7001, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(3113, 3317.2001, 20.2000, -4.6999, 179.9949, 104.9906, 179.9949, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(11353, 3365.4003, -83.7994, 10.6000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //station5new
	CreateDynamicObject(987, 3299.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(3113, 3309.7001, 28.0000, 2.5499, 179.9949, 14.9799, 270.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(1696, 3287.5185, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(1696, 3306.2998, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(8661, 3318.5000, -11.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3336.1201, -51.1198, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(3113, 3309.6005, 8.3000, 2.0999, 179.9949, 14.9910, 90.0000, .worldid = 0, .streamdistance = 700); //CARRIER_DOOR_SFSE
	CreateDynamicObject(8661, 3297.1091, 57.3372, 6.6388, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(673, 3323.9003, -35.0000, 6.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sm_bevhiltree
	CreateDynamicObject(1696, 3300.9003, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(8661, 3297.1091, 37.4275, 6.6388, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3299.9504, 17.5074, 6.2188, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3304.8500, -2.3626, 6.2189, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3356.1005, -91.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3366.0000, -91.0195, -14.4600, 0.0000, 90.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(1696, 3295.5000, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(11245, 3316.7998, -46.5000, 22.8999, 0.0000, 289.9949, 259.9970, .worldid = 0, .streamdistance = 700); //sfsefirehseflag
	CreateDynamicObject(987, 3287.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(18234, 3317.3034, 54.4281, 6.1999, 0.0000, 0.0000, -90.0000, .worldid = 0, .streamdistance = 700); //cuntw_shed2_
	CreateDynamicObject(673, 3323.9003, -57.0000, 6.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sm_bevhiltree
	CreateDynamicObject(11489, 3316.7998, -46.0000, 6.4000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //dam_statues
	CreateDynamicObject(18234, 3325.5827, 79.1063, 6.4899, 0.0000, 0.0000, 89.9950, .worldid = 0, .streamdistance = 700); //cuntw_shed2_
	CreateDynamicObject(7981, 3280.0007, 77.1994, 11.6169, 0.0000, 0.0000, -0.3998, .worldid = 0, .streamdistance = 700); //smallradar02_lvS
	CreateDynamicObject(18234, 3304.3723, 79.1082, 6.4899, 0.0000, 0.0000, 89.9950, .worldid = 0, .streamdistance = 700); //cuntw_shed2_
	CreateDynamicObject(673, 3309.5000, -35.0000, 6.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sm_bevhiltree
	CreateDynamicObject(8661, 3336.1474, -80.9188, 6.1880, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3298.6005, -11.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(1696, 3289.9995, 24.8999, 6.0900, 349.9970, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(996, 3319.9003, 16.6599, 6.9000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(1215, 3327.1005, -80.2001, 6.9000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //bollardlight
	CreateDynamicObject(4199, 3282.6005, 13.8000, 8.3000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //garages1_LAn
	CreateDynamicObject(987, 3275.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(14397, 3308.9003, -52.7998, 5.4000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //girders07
	CreateDynamicObject(18234, 3290.4182, 30.1102, 6.1999, 0.0000, 0.0000, -179.9044, .worldid = 0, .streamdistance = 700); //cuntw_shed2_
	CreateDynamicObject(1696, 3288.9321, 24.2602, 6.0837, -9.8029, -0.5000, 87.9999, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(673, 3309.5000, -57.0996, 6.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sm_bevhiltree
	CreateDynamicObject(1696, 3288.8449, 21.5918, 6.0609, -9.8029, -0.5000, 87.9999, .worldid = 0, .streamdistance = 700); //roofstuff15
	CreateDynamicObject(8661, 3336.1474, -99.7891, 6.1781, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(3268, 3271.3571, 30.0648, 6.5307, 0.0000, 0.0000, -89.8000, .worldid = 0, .streamdistance = 700); //mil_hangar1_
	CreateDynamicObject(11353, 3337.7001, -110.4001, 10.6000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //station5new
	CreateDynamicObject(8661, 3298.4003, -51.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(973, 3298.9035, 24.4736, 7.1405, 0.0000, 4.6999, -91.1996, .worldid = 0, .streamdistance = 700); //sub_roadbarrier
	CreateDynamicObject(8661, 3278.7001, -11.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3346.1005, -111.0000, -14.4600, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(987, 3263.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3318.2998, -91.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(1215, 3305.7998, -80.2001, 6.9000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //bollardlight
	CreateDynamicObject(4199, 3267.4003, 1.2000, 8.3000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //garages1_LAn
	CreateDynamicObject(996, 3280.1005, -35.9001, 7.0000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(6959, 3110.4916, 13.4637, -14.0000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(1714, 3274.7998, -32.0996, 10.3999, 0.0000, 0.0000, 329.9960, .worldid = 0, .streamdistance = 700); //kb_swivelchair1
	CreateDynamicObject(2921, 3276.1005, -35.7998, 10.1000, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //kmb_cam
	CreateDynamicObject(2929, 3270.7998, -20.5995, 8.0000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //a51_blastdoorL
	CreateDynamicObject(17546, 3260.5000, -4.2996, 22.7000, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //hydro3_LAe
	CreateDynamicObject(2774, 3268.4003, -34.9001, 28.7000, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(3397, 3273.5000, -33.7000, 10.3999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //a51_sdsk_1_
	CreateDynamicObject(2774, 3268.4003, -34.9001, 27.0000, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(6959, 3269.2001, -18.0000, 6.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(16638, 3273.9003, -33.4001, 8.6000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //a51_gatecon_a
	CreateDynamicObject(2774, 3268.4003, -34.9001, 25.2999, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(6959, 3330.4003, -111.0000, -14.4600, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(7090, 3269.2001, -38.0996, 17.7999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasflag1
	CreateDynamicObject(8661, 3278.5000, -51.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(996, 3280.1005, -55.5000, 7.0000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(987, 3251.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(2774, 3268.3413, -35.7288, 13.2650, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3268.4003, -37.2998, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3268.2998, -45.9001, 23.7000, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3268.2998, -45.9001, 22.0000, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(8661, 3298.4003, -91.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(2774, 3268.2998, -45.9001, 20.2999, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3268.4003, -58.5000, 28.7000, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(7090, 3269.2001, -53.2998, 17.7999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasflag1
	CreateDynamicObject(2774, 3268.4003, -58.5000, 27.0000, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3268.4003, -58.5000, 25.2999, 90.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(8661, 3254.0000, -10.2002, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(2774, 3268.4003, -52.5000, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(7605, 3316.6005, -45.7000, 6.3000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNroad08
	CreateDynamicObject(2774, 3268.4003, -54.0996, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(996, 3270.6005, -55.5000, 7.0000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //lhouse_barrier1
	CreateDynamicObject(16773, 3250.7998, -9.9003, 10.6000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //door_savhangr1
	CreateDynamicObject(1569, 3269.2001, -57.5000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //ADAM_V_DOOR
	CreateDynamicObject(1569, 3269.2001, -60.5000, 6.1999, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //ADAM_V_DOOR
	CreateDynamicObject(11102, 3270.7001, -67.5000, 8.3999, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //burgalrydoor_SFS
	CreateDynamicObject(10183, 3275.7998, -77.4001, 6.1999, 0.0000, 0.0000, 225.5000, .worldid = 0, .streamdistance = 700); //ferspaces
	CreateDynamicObject(987, 3239.6005, 85.1996, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3238.3000, 46.7000, 1.6000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3269.2001, -74.0996, 6.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3278.5000, -91.0000, 6.1999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(10832, 3247.7998, -45.7998, 31.2999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //gatehouse2_SFSe
	CreateDynamicObject(8661, 3257.5927, -53.1327, 8.7629, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(18449, 3254.4858, -45.4900, 5.6697, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //cs_roadbridge01
	CreateDynamicObject(6959, 3246.4003, -24.7000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3249.2001, -45.5000, 19.5000, 0.0000, 179.9949, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3237.5000, 4.9000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3247.5893, -37.9000, 6.3000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(11353, 3283.4003, -110.4001, 10.6000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //station5new
	CreateDynamicObject(8661, 3234.1005, -10.2002, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(17546, 3260.5000, -86.7994, 22.7000, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //hydro3_LAe
	CreateDynamicObject(6959, 3290.4003, -111.0000, -14.4600, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3254.0000, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3270.6855, -94.2500, -10.0298, 0.0000, 90.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3247.4003, -66.5000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(1411, 3270.3000, -111.5000, 12.1997, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(2634, 3269.5000, -111.0000, 12.0000, 0.0000, 0.0000, 180.0000, .worldid = 0, .streamdistance = 700); //ab_vaultDoor
	CreateDynamicObject(6959, 3224.6005, 4.9000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(987, 3215.7189, 85.2016, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(16773, 3250.8000, -81.3999, 10.6000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //door_savhangr1
	CreateDynamicObject(987, 3203.7905, 85.2027, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3237.6027, -53.1327, 8.7629, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3224.5000, -24.7000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3223.2998, -45.5000, 19.5000, 0.0000, 179.9949, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3214.0397, -10.2002, 14.8484, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3247.7001, -96.0000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3234.1005, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3217.6052, -37.9286, 9.4259, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3222.3000, -53.2000, 6.5000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3224.7001, -66.5000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3217.6025, -53.1327, 8.7629, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3250.6005, -106.4941, -14.0000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(987, 3191.8200, 85.2039, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3179.8781, 85.2048, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3194.3007, -10.2002, 14.8599, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3224.7001, -96.0000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3214.2001, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3197.6250, -37.9286, 9.3238, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(10834, 3197.6938, 61.0638, 1.5456, 0.0000, 0.0000, -179.6999, .worldid = 0, .streamdistance = 700); //navybase_03_SFSe
	CreateDynamicObject(8661, 3197.6027, -53.1327, 8.7629, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3184.6005, 4.9000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3184.5000, -24.7000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3220.7998, -106.4941, -14.0000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3183.4003, -45.5000, 19.5000, 0.0000, 179.9949, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(987, 3167.9350, 85.2058, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3156.0019, 85.2068, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8661, 3194.2998, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3174.4003, -10.2002, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3177.6447, -37.9286, 9.4238, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3181.0000, -53.2000, 6.6999, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3184.7001, -66.5000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8171, 3190.0000, -81.2001, 6.5998, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //vgsSairportland06
	CreateDynamicObject(8661, 3177.6125, -53.1327, 8.7629, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(18449, 3174.5170, -45.4900, 5.6697, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //cs_roadbridge01
	CreateDynamicObject(19810, 3267.7067, 80.2838, 8.3755, 0.0000, 0.0000, 89.7000, .worldid = 0, .streamdistance = 700); //StaffOnlySign1
	CreateDynamicObject(6959, 3184.7001, -96.0000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(7091, 3162.8999, -35.7999, 15.3999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //vegasflag02
	CreateDynamicObject(8661, 3174.4003, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(9819, 3160.7998, -42.2000, 13.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //shpbridge_sfw02
	CreateDynamicObject(2985, 3160.1005, -39.7000, 12.8999, 0.0000, 159.9989, 15.9960, .worldid = 0, .streamdistance = 700); //minigun_base
	CreateDynamicObject(1671, 3159.9003, -40.4001, 13.3999, 0.0000, 0.0000, 139.9989, .worldid = 0, .streamdistance = 700); //swivelchair_A
	CreateDynamicObject(7091, 3162.8999, -55.5000, 15.3999, 0.0000, 0.0000, 89.9950, .worldid = 0, .streamdistance = 700); //vegasflag02
	CreateDynamicObject(8661, 3154.5000, -10.2002, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(987, 3144.0522, 85.2079, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(1671, 3159.5000, -43.0000, 13.3999, 0.0000, 0.0000, 69.9990, .worldid = 0, .streamdistance = 700); //swivelchair_A
	CreateDynamicObject(1569, 3158.5000, -38.0996, 12.8999, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //ADAM_V_DOOR
	CreateDynamicObject(9818, 3160.2998, -50.2998, 14.6000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //shpbridge_sfw01
	CreateDynamicObject(8661, 3157.6638, -37.9286, 9.2187, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(987, 3132.1027, 85.2089, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8171, 3190.0000, -9.8999, 6.5998, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //vgsSairportland06
	CreateDynamicObject(2985, 3160.1005, -51.7000, 12.8999, 0.0000, 159.9989, 345.9920, .worldid = 0, .streamdistance = 700); //minigun_base
	CreateDynamicObject(1569, 3155.5000, -38.0996, 12.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //ADAM_V_DOOR
	CreateDynamicObject(16782, 3157.7001, -53.0996, 16.0000, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //a51_radar_scan
	CreateDynamicObject(1886, 3156.7001, -45.7000, 12.5000, 24.9939, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //shop_sec_cam
	CreateDynamicObject(923, 3154.5000, -39.2998, 13.8000, 0.0000, 0.0000, 279.9978, .worldid = 0, .streamdistance = 700); //Packing_carates2
	CreateDynamicObject(3851, 3153.4003, -40.2000, 18.8999, 0.0000, 0.0000, 180.0000, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(3851, 3153.3999, -40.2000, 18.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(3015, 3154.8999, -40.5998, 13.0000, 0.0000, 0.0000, 50.0000, .worldid = 0, .streamdistance = 700); //cr_cratestack
	CreateDynamicObject(3851, 3153.3999, -40.2000, 14.8999, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(3851, 3153.3999, -40.2000, 14.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(2976, 3153.2998, -42.7000, 12.6997, 0.0000, 270.0000, 0.0000, .worldid = 0, .streamdistance = 700); //green_gloop
	CreateDynamicObject(3851, 3153.3999, -51.5000, 18.8999, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(3851, 3153.3999, -51.5000, 18.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(944, 3154.2001, -50.2998, 13.8000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //Packing_carates04
	CreateDynamicObject(2976, 3153.2998, -48.4001, 12.6997, 0.0000, 270.0000, 0.0000, .worldid = 0, .streamdistance = 700); //green_gloop
	CreateDynamicObject(3851, 3153.4003, -51.5000, 14.8999, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(3851, 3153.3999, -51.5000, 14.8999, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //carshowwin_SFSX
	CreateDynamicObject(6959, 3180.7998, -106.4941, -14.0000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	//CreateDynamicObject(1622, 3152.2001, -52.7998, 12.8999, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //nt_securecam2_01
	CreateDynamicObject(6959, 3144.6005, 4.9000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3144.5000, -24.7000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(8661, 3143.7099, -45.5000, 19.5000, 0.0000, 179.9949, 0.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3154.5000, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3134.6757, -10.2002, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(8661, 3137.6738, -37.9286, 9.4257, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(6959, 3144.7001, -66.5000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3141.1999, -53.2000, 6.5000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(987, 3120.1728, 85.2099, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3108.2216, 85.2109, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(2774, 3127.7202, -37.4799, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(6959, 3144.7001, -96.0000, 6.5998, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(2774, 3126.3100, -37.5000, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(3877, 3121.2998, 2.5000, 16.6000, 0.0000, 270.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sf_rooflite
	CreateDynamicObject(2774, 3124.6794, -37.5499, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(8661, 3134.6005, -81.2994, 14.8450, 179.9949, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //gnhtelgrnd_lvs
	CreateDynamicObject(2774, 3127.3703, -53.9001, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3124.0000, -35.9001, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3125.5302, -50.3903, 18.4799, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3124.0000, -37.5000, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3125.6599, -50.3903, 16.8299, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3125.6198, -50.3903, 16.0300, 0.0000, 12510.0000, 90.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(3877, 3121.2998, -22.7998, 16.6000, 0.0000, 270.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sf_rooflite
	CreateDynamicObject(1411, 3121.7001, -5.2996, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(1411, 3121.7001, -10.5000, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(2774, 3125.6997, -53.9001, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(1411, 3121.7001, -15.6997, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(2774, 3124.0000, -53.9001, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3124.0000, -55.5000, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 3122.2995, -53.9001, 14.1997, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(6959, 3120.9003, -4.6736, -14.0000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(3877, 3121.2998, -68.7001, 16.6000, 0.0000, 270.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sf_rooflite
	CreateDynamicObject(6959, 3140.8798, -106.4941, -14.0000, 0.0000, 90.0000, 90.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(6959, 3120.8999, -46.5998, -14.5000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(1411, 3121.7001, -76.9001, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(987, 3110.6005, 1.0000, 6.5998, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3110.7001, 12.8999, 6.5998, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(1411, 3121.7001, -82.0996, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(1411, 3121.7001, -87.2994, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(3877, 3121.2998, -94.0000, 16.6000, 0.0000, 270.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sf_rooflite
	CreateDynamicObject(1411, 3121.7001, -90.0000, 6.3000, 270.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //DYN_MESH_1
	CreateDynamicObject(6959, 3120.9003, -86.5380, -14.0000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vegasNbball1
	CreateDynamicObject(18449, 3094.5773, -45.4900, 5.6697, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //cs_roadbridge01
	CreateDynamicObject(8263, 3064.7001, -38.0996, 9.3000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vgsSelecfence14
	CreateDynamicObject(8263, 3064.7001, -53.2998, 9.3000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vgsSelecfence14
	CreateDynamicObject(18449, 3014.5878, -45.4900, 5.6697, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //cs_roadbridge01
	CreateDynamicObject(3264, 2998.4506, -51.8650, 5.7698, 0.0000, 0.0000, -142.8018, .worldid = 0, .streamdistance = 700); //privatesign3
	CreateDynamicObject(3877, 2976.3078, -51.9737, 7.7912, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sf_rooflite
	CreateDynamicObject(3265, 2972.7099, -38.7000, 10.3000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //privatesign4
	CreateDynamicObject(2774, 2973.5000, -38.5000, 3.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(3265, 2972.7099, -52.7000, 10.3000, 0.0000, 0.0000, 270.0000, .worldid = 0, .streamdistance = 700); //privatesign4
	CreateDynamicObject(2774, 2973.5000, -52.9000, 3.4000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(3264, 2970.8999, -38.7999, 6.3000, 0.0000, 0.0000, 300.0000, .worldid = 0, .streamdistance = 700); //privatesign3
	CreateDynamicObject(3264, 2971.1000, -52.5000, 6.3000, 0.0000, 0.0000, 239.9980, .worldid = 0, .streamdistance = 700); //privatesign3
	CreateDynamicObject(2774, 2961.8999, -38.5000, 5.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 2961.8999, -52.9000, 5.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(8263, 2944.7998, -38.0996, 9.3000, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //vgsSelecfence14
	CreateDynamicObject(8263, 2944.7998, -53.2998, 9.3000, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //vgsSelecfence14
	CreateDynamicObject(8832, 2938.0000, -48.0000, 10.6997, 0.0000, 188.5000, 0.0000, .worldid = 0, .streamdistance = 700); //pirtebrdg01_lvS
	CreateDynamicObject(2774, 2938.3000, -38.5000, 5.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 2938.3999, -52.9000, 5.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 2914.6999, -38.5000, 5.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(2774, 2914.8000, -52.9000, 5.4000, 0.0000, 90.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_AIRP_PILLARS
	CreateDynamicObject(19124, 2899.9470, -53.4556, 19.2192, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //BollardLight4
	CreateDynamicObject(19124, 2898.4174, -37.8258, 18.1592, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //BollardLight4
	CreateDynamicObject(987, 3227.6728, 85.2005, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8355, 3113.7304, 58.5774, 6.6711, 0.0000, 0.0000, 89.6997, .worldid = 0, .streamdistance = 700); //vgsSairportland18
	CreateDynamicObject(987, 3096.2529, 85.2120, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3084.2934, 85.2132, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3072.3105, 85.2142, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3060.3674, 85.2152, 6.5998, 0.0000, 0.0000, 179.9949, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8674, 3049.9750, 85.0644, 8.0346, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3044.7719, 79.9216, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3044.7153, 69.6418, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3044.6616, 59.3521, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3044.6076, 49.0722, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3044.5534, 38.7723, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(987, 3098.7177, 9.3399, 6.5998, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3086.9467, 9.7343, 6.5998, 0.0000, 0.0000, -1.5000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3075.0417, 10.0461, 6.5998, 0.0000, 0.0000, -1.5000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3063.1027, 10.3586, 6.5998, 0.0000, 0.0000, -1.5000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(987, 3051.1767, 10.6709, 6.5998, 0.0000, 0.0000, -1.5000, .worldid = 0, .streamdistance = 700); //elecfence_BAR
	CreateDynamicObject(8674, 3044.4978, 28.4724, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3044.4433, 18.1926, 8.0346, 0.0000, 0.0000, -90.2998, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(8674, 3049.4086, 11.7857, 8.0346, 0.0000, 0.0000, 166.1999, .worldid = 0, .streamdistance = 700); //csrsfence02_lvs
	CreateDynamicObject(3268, 3241.3950, 29.9601, 6.5307, 0.0000, 0.0000, -89.8000, .worldid = 0, .streamdistance = 700); //mil_hangar1_
	CreateDynamicObject(16398, 3319.5593, 42.7108, 6.5946, 0.0000, 0.0000, 90.0000, .worldid = 0, .streamdistance = 700); //desn2_peckfac1
	CreateDynamicObject(939, -301.5903, 2685.3359, 72.7894, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //CJ_DF_UNIT
	CreateDynamicObject(3877, 2976.3078, -39.0637, 7.7912, 0.0000, 0.0000, 0.0000, .worldid = 0, .streamdistance = 700); //sf_rooflite
	CreateDynamicObject(1682, 3282.6965, 78.4823, 22.5426, 0.0000, 0.0000, 56.0998, .worldid = 0, .streamdistance = 700); //ap_radar1_01
	CreateDynamicObject(8355, 3217.2309, 58.0351, 6.6911, 0.0000, 0.0000, 89.6997, .worldid = 0, .streamdistance = 700); //vgsSairportland18

	// CAU CA
	/*CreateDynamicObject(8947, 2123.67041, -91.63580, -0.98000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8947, 2134.07788, -102.03700, -0.98000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2112.11401, -102.86764, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2105.91895, -109.05490, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2099.70752, -115.26900, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2093.52979, -121.44336, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10832, 2129.64429, -110.07430, 3.76600,   0.00000, 0.00000, -135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2116.45679, -107.24044, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2110.26318, -113.43410, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2104.05664, -119.63850, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3406, 2097.84473, -125.84960, 0.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2138.76685, -107.64089, 0.88200,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2144.51172, -101.90430, 0.88200,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2113.25952, -91.76950, 0.88200,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2120.05225, -84.97670, 0.88200,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2123.82227, -81.20720, 0.88300,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2144.42896, -95.13700, 0.88300,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19456, 2137.62305, -88.33580, 0.88300,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19364, 2128.32007, -79.03770, 0.88300,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19364, 2111.08960, -96.29090, 0.88300,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19364, 2113.04370, -98.24030, 0.88320,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19364, 2122.83789, -108.02260, 0.88320,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19364, 2121.10010, -106.28430, 0.88350,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19381, 2140.72241, -98.88200, 2.28770,   0.00000, 90.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2139.89648, -92.95260, 0.87060,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2137.65186, -95.19730, 0.87060,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2135.39111, -97.45940, 0.87060,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2134.74316, -98.10940, 0.87080,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2134.82764, -100.33670, 0.87080,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2137.06494, -102.57060, 0.87080,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19397, 2139.25464, -104.75650, 0.87080,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(817, 2140.59277, -98.84183, 2.38810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(717, 2140.62231, -98.45491, 2.37108,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(817, 2139.64771, -98.02149, 2.38810,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(817, 2141.50244, -96.99537, 2.38810,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2112.37695, -95.09450, 2.01160,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2115.72998, -91.66180, 2.01160,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2118.99097, -88.42820, 2.01160,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2122.35254, -85.13284, 2.01160,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2125.55298, -81.90790, 2.01160,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2111.96558, -93.35284, 2.00760,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2115.35205, -89.97598, 2.00760,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2118.62183, -86.66588, 2.00760,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2121.77271, -83.52849, 2.00760,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2125.14331, -80.16141, 2.00760,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2960, 2125.69116, -79.62010, 1.99960,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 2134.28516, -84.97620, 0.70000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 2129.39111, -80.11440, 0.70000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);*/
	
	// NHA HANG , LS VIP
	/*new Coffe= CreateDynamicObject(16389, 1783.44238, -1654.49463, 12.36890,   0.00000, 0.00000, 270.00000);
	SetObjectMaterial(Coffe, 6, 5711,"cemetery_law","cemebuild03_law");
	SetObjectMaterial(Coffe, 1, 6217, "venicegb02_law", "tileornateg256");
	SetObjectMaterial(Coffe, 0, 19381, "all_walls", "desgreengrass");
	SetObjectMaterial(Coffe, 5, 12865, "ce_ground12", "sw_stones", 0xFF8B4726);
	SetObjectMaterial(Coffe, 4, -1, "none", "none", 0xFF000000);
	SetObjectMaterial(Coffe, 3, 6048, "mall_law", "wolf3");
	Chao[0]= CreateDynamicObject(19445, 1756.16626, -1633.28064, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[1]= CreateDynamicObject(19445, 1756.17065, -1642.88818, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[2]= CreateDynamicObject(19445, 1756.16650, -1652.49829, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[3]= CreateDynamicObject(19445, 1756.15479, -1662.10901, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[4]= CreateDynamicObject(19445, 1756.14111, -1671.72009, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[5]= CreateDynamicObject(19445, 1756.14453, -1681.34814, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[6]= CreateDynamicObject(19445, 1756.16650, -1623.95007, 12.28500,   0.00000, 90.00000, 0.00000);
	Chao[7]= CreateDynamicObject(8661, 1777.33386, -1629.20618, 12.36350,   0.00000, 0.00000, 0.00000);
	Chao[8]= CreateDynamicObject(8661, 1817.20911, -1630.15442, 12.37350,   0.00000, 0.00000, 0.00000);
	Chao[9]= CreateDynamicObject(8661, 1809.53809, -1659.79810, 12.37350,   0.00000, 0.00000, 269.01959);
	Chao[10]= CreateDynamicObject(8661, 1803.73511, -1689.73730, 12.37350,   0.00000, 0.00000, 0.00000);
	Chao[11]= CreateDynamicObject(8661, 1763.77637, -1689.17419, 12.37350,   0.00000, 0.00000, 0.00000);
	for(new i = 0; i != 12; i++) SetObjectMaterial(Chao[i],0,11301, "carshow_sfse", "ws_carpark2", 0xFF4F4F4F);
	Terra[0]= CreateDynamicObject(19446, 1758.68372, -1615.89185, 12.25500,   0.00000, 90.00000, 306.30710);
	Terra[1]= CreateDynamicObject(19446, 1762.33032, -1617.36914, 12.24500,   0.00000, 90.00000, 306.30710);
	Terra[2]= CreateDynamicObject(19446, 1766.07007, -1618.04065, 12.25500,   0.00000, 90.00000, 306.30710);
	Terra[3]= CreateDynamicObject(19446, 1774.49170, -1619.06372, 12.25500,   0.01000, 90.00000, 254.52022);
	Terra[4]= CreateDynamicObject(19446, 1769.09631, -1618.40820, 12.24500,   0.01000, 90.00000, 258.88651);
	for(new i = 0; i != 5; i++) SetObjectMaterial(Terra[i],0,12865, "ce_ground12", "sw_stones", 0xFF8B4726);
	CreateDynamicObject(14411, 1755.74451, -1644.01855, 9.75080,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(14411, 1755.73547, -1643.32898, 9.75090,   0.00000, 0.00000, 270.00000);
	Chao1[0]= CreateDynamicObject(19375, 1777.82166, -1642.93530, 13.12980,   0.00000, 90.00000, 0.00000);
	Chao1[1]= CreateDynamicObject(19375, 1788.29797, -1642.93579, 13.12950,   0.00000, 90.00000, 0.00000);
	Chao1[2]= CreateDynamicObject(19375, 1795.12280, -1642.92090, 13.11950,   0.00000, 90.00000, 0.00000);
	Chao1[3]= CreateDynamicObject(19375, 1795.13562, -1649.39014, 13.12910,   0.00000, 90.00000, 0.00000);
	Chao1[4]= CreateDynamicObject(19375, 1784.65271, -1649.39282, 13.12990,   0.00000, 90.00000, 0.00000);
	Chao1[5]= CreateDynamicObject(19375, 1777.81384, -1649.37195, 13.12940,   0.00000, 90.00000, 0.00000);
	Chao1[6]= CreateDynamicObject(19375, 1778.69055, -1658.51929, 13.12950,   0.00000, 90.00000, 0.00000);
	Chao1[7]= CreateDynamicObject(19375, 1778.70105, -1662.68555, 13.12930,   0.00000, 90.00000, 0.00000);
	for(new i = 0; i != 8; i++) SetObjectMaterial(Chao1[i],0,14594, "papaerchaseoffice", "ab_mottleGrey");
	PartB[0]= CreateDynamicObject(19376, 1772.64404, -1642.94836, 7.95300,   0.00000, 0.00000, 0.00000);
	PartB[1]= CreateDynamicObject(19376, 1772.64331, -1649.36707, 7.95300,   0.00000, 0.00000, 0.00000);
	PartB[2]= CreateDynamicObject(19376, 1773.52820, -1658.30237, 7.95300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18762, 1773.08032, -1653.68323, 11.92650,   0.00000, 0.00000, 0.00000);
	PartB[3]= CreateDynamicObject(19376, 1773.52734, -1662.70044, 7.95300,   0.00000, 0.00000, 0.00000);
	PartB[4]= CreateDynamicObject(19376, 1778.27258, -1667.44226, 7.95300,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(18762, 1783.51697, -1667.01819, 13.97760,   0.00000, 0.00000, 0.00000);
	PartB[5]= CreateDynamicObject(19376, 1783.87463, -1661.85681, 7.95300,   0.00000, 0.00000, 0.00000);
	PartB[6]= CreateDynamicObject(19376, 1783.86804, -1652.46265, 7.95300,   0.00000, 0.00000, 0.00000);
	PartB[7]= CreateDynamicObject(19376, 1788.44678, -1654.14563, 7.95300,   0.00000, 0.00000, 90.00000);
	PartB[8]= CreateDynamicObject(19376, 1795.52075, -1654.14514, 7.95300,   0.00000, 0.00000, 90.00000);
	PartB[9]= CreateDynamicObject(19376, 1800.29956, -1649.41016, 7.95300,   0.00000, 0.00000, 0.00000);
	PartB[10]= CreateDynamicObject(19376, 1800.3062, -1642.9219, 7.9530,   0.00000, 0.00000, 0.00000);
	PartB[11]= CreateDynamicObject(19376, 1795.56824, -1638.18726, 7.95300,   0.00000, 0.00000, 90.00000);
	PartB[12]= CreateDynamicObject(19376, 1786.96387, -1638.19019, 7.95300,   0.00000, 0.00000, 90.00000);
	PartB[13]= CreateDynamicObject(19376, 1777.37134, -1638.20593, 7.95300,   0.00000, 0.00000, 90.00000);
	PartB[14]= CreateDynamicObject(19376, 1773.47595, -1637.73975, 7.71300,   0.00000, 0.00000, 0.00000);
	PartB[15]= CreateDynamicObject(19376, 1773.76074, -1633.62390, 7.72300,   0.00000, 0.00000, 90.00000);
	PartB[16]= CreateDynamicObject(19376, 1777.37903, -1654.10144, 7.95300,   0.00000, 0.00000, 90.00000);
	for(new i = 0; i != 17; i++) SetObjectMaterial(PartB[i],0,2200, "cj_office", "white32", 0xFFFFFFFF);
	Chao2[0]= CreateDynamicObject(19443, 1793.50623, -1640.02393, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[1]= CreateDynamicObject(19443, 1793.49902, -1643.51465, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[2]= CreateDynamicObject(19443, 1796.03784, -1644.45874, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[3]= CreateDynamicObject(19443, 1798.61426, -1644.45935, 13.13050,   0.00000, 90.00000, 0.00000);
	Chao2[4]= CreateDynamicObject(19443, 1799.56128, -1646.99292, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[5]= CreateDynamicObject(19443, 1799.57458, -1650.47485, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[6]= CreateDynamicObject(19443, 1799.56287, -1652.45276, 13.13050,   0.00000, 90.00000, 90.00000);
	Chao2[7]= CreateDynamicObject(19443, 1793.49731, -1646.98474, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[8]= CreateDynamicObject(19443, 1790.98169, -1647.93555, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[9]= CreateDynamicObject(19443, 1787.50525, -1647.93481, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[10]= CreateDynamicObject(19443, 1784.02991, -1647.93115, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[11]= CreateDynamicObject(19443, 1780.53198, -1647.92737, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[12]= CreateDynamicObject(19443, 1777.04895, -1647.93176, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[13]= CreateDynamicObject(19443, 1774.3892, -1647.9343, 13.1309,   0.00000, 90.00000, 0.00000);
	Chao2[14]= CreateDynamicObject(19443, 1790.96985, -1642.09509, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[15]= CreateDynamicObject(19443, 1787.47180, -1642.09924, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[16]= CreateDynamicObject(19443, 1783.98633, -1642.09705, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[17]= CreateDynamicObject(19443, 1780.49280, -1642.09241, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[18]= CreateDynamicObject(19443, 1776.99646, -1642.09155, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[19]= CreateDynamicObject(19443, 1774.35645, -1642.09766, 13.13090,   0.00000, 90.00000, 0.00000);
	Chao2[20]= CreateDynamicObject(19443, 1774.26111, -1655.84729, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[21]= CreateDynamicObject(19443, 1774.24573, -1659.33533, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[22]= CreateDynamicObject(19443, 1774.25134, -1662.81079, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[23]= CreateDynamicObject(19443, 1774.25549, -1665.75159, 13.13080,   0.00000, 90.00000, 90.00000);
	Chao2[24]= CreateDynamicObject(19443, 1776.79407, -1666.69519, 13.13080,   0.00000, 90.00000, 0.00000);
	Chao2[25]= CreateDynamicObject(19443, 1780.27576, -1666.69092, 13.13080,   0.00000, 90.00000, 0.00000);
	Chao2[26]= CreateDynamicObject(19443, 1782.20081, -1666.69385, 13.13060,   0.00000, 90.00000, 0.00000);
	Chao2[27]= CreateDynamicObject(19443, 1783.13611, -1664.17297, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[28]= CreateDynamicObject(19443, 1783.13135, -1660.69397, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[29]= CreateDynamicObject(19443, 1783.12988, -1657.21118, 13.13060,   0.00000, 90.00000, 90.00000);
	Chao2[30]= CreateDynamicObject(19443, 1783.1229, -1655.9666, 13.1309,   0.00000, 90.00000, 90.00000);
	for(new i = 0; i != 31; i++) SetObjectMaterial(Chao2[i],0,2576, "cj_hotel_poor", "CJ_WOOD6", 0xFF006400);
	CreateDynamicObject(19443, 1783.12292, -1655.96655, 13.13090,   0.00000, 90.00000, 90.00000);
	CreateDynamicObject(18762, 1773.93848, -1667.01440, 14.56980,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(18762, 1783.44226, -1654.72803, 13.97720,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1783.92004, -1656.95288, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1783.92200, -1660.37915, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1783.92529, -1663.81274, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1783.94324, -1665.53589, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1781.30542, -1667.50269, 13.69220,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3850, 1777.87158, -1667.49902, 13.69220,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3850, 1775.21155, -1667.49841, 13.69220,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(3850, 1773.46399, -1664.79565, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1773.47205, -1661.36938, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1773.47266, -1657.91382, 13.69220,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(3850, 1773.48047, -1654.94067, 13.69220,   0.00000, 0.00000, 0.00000);
	Arvore[0]= CreateDynamicObject(641, 1782.90564, -1676.45300, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[1]= CreateDynamicObject(641, 1793.14307, -1676.35339, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[2]= CreateDynamicObject(641, 1802.47046, -1676.25757, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[3]= CreateDynamicObject(641, 1788.12476, -1676.28979, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[4]= CreateDynamicObject(641, 1798.35291, -1676.41931, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[5]= CreateDynamicObject(641, 1780.73816, -1631.90759, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[6]= CreateDynamicObject(641, 1785.26453, -1631.74634, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[7]= CreateDynamicObject(641, 1790.12073, -1632.19360, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[8]= CreateDynamicObject(641, 1800.75684, -1632.49658, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[9]= CreateDynamicObject(641, 1795.58154, -1632.58704, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[10]= CreateDynamicObject(641, 1770.95593, -1618.01343, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[11]= CreateDynamicObject(641, 1765.30310, -1617.27515, 8.46561,   0.00000, 0.00000, 0.00000);
	Arvore[12]= CreateDynamicObject(641, 1760.03711, -1617.00134, 8.46561,   0.00000, 0.00000, 0.00000);
	for(new i = 0; i != 13; i++) SetObjectMaterial(Arvore[i],0,-1, "none", "none", 0xFF003300);
	for(new i = 0; i != 13; i++) SetObjectMaterial(Arvore[i],1,-1, "none", "none", 0xFF8B4726);
	CreateDynamicObject(19446, 1751.00574, -1620.84363, 12.25500,   0.00000, 90.00000, 306.30710);
	CreateDynamicObject(19430, 1755.83606, -1617.89807, 11.93780,   -90.00000, 0.00000, 314.38821);
	CreateDynamicObject(19430, 1756.25696, -1619.16809, 11.93780,   -90.00000, 0.00000, 269.15021);
	CreateDynamicObject(19430, 1757.71460, -1616.06372, 11.93780,   -90.00000, 0.00000, 314.38821);
	CreateDynamicObject(19430, 1759.11963, -1614.70325, 11.93780,   -90.00000, 0.00000, 314.38821);
	CreateDynamicObject(19430, 1761.93982, -1614.03564, 11.93780,   -90.00000, 0.00000, 252.24110);
	CreateDynamicObject(19430, 1765.22925, -1615.00720, 11.93780,   -90.00000, 0.00000, 254.79056);
	CreateDynamicObject(19430, 1768.51782, -1615.89355, 11.93780,   -90.00000, 0.00000, 254.79060);
	CreateDynamicObject(19430, 1771.75012, -1616.82446, 11.93780,   -90.00000, 0.00000, 254.00951);
	CreateDynamicObject(19430, 1774.67859, -1617.65527, 11.93780,   -90.00000, 0.00000, 254.00951);
	CreateDynamicObject(19430, 1777.36340, -1618.42004, 11.93780,   -90.00000, 0.00000, 254.00951);
	CreateDynamicObject(19430, 1780.03333, -1618.95520, 11.93780,   -90.00000, 0.00000, 259.66959);
	CreateDynamicObject(19454, 1762.79675, -1619.19934, 10.99230,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1772.40674, -1619.19617, 10.99230,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(19454, 1776.35229, -1619.19653, 10.99230,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1255, 1798.93726, -1657.19104, 12.89580,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1255, 1798.98340, -1661.10718, 12.89580,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1255, 1798.99585, -1666.09424, 12.89580,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1255, 1798.98889, -1671.41150, 12.89580,   0.00000, 0.00000, 180.00000);
	CreateDynamicObject(1255, 1793.47485, -1670.89636, 12.89580,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(1255, 1788.13696, -1670.98071, 12.89580,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(14411, 1770.71570, -1643.88818, 10.02500,   0.00000, 0.00000, 270.00000);
	Vidro[0]= CreateDynamicObject(19325, 1772.62427, -1640.19360, 13.36710,   -90.00000, 0.00000, 0.00000);
	PartC[8]= CreateDynamicObject(19441, 1772.67615, -1639.07739, 14.95200,   0.00000, 0.00000, 0.00000);
	PartC[9]= CreateDynamicObject(19441, 1773.38306, -1638.20593, 14.95200,   0.00000, 0.00000, 90.00000);
	Vidro[1]= CreateDynamicObject(19325, 1772.64612, -1648.00952, 13.36710,   -90.00000, 0.00000, 0.00000);
	PartC[10]= CreateDynamicObject(19441, 1772.67285, -1649.28491, 14.95200,   0.00000, 0.00000, 0.00000);
	Vidro[2]= CreateDynamicObject(19325, 1772.62573, -1652.10828, 13.36710,   -90.00000, 0.00000, 0.00000);
	PartC[11]= CreateDynamicObject(19441, 1772.66248, -1653.37500, 14.95200,   0.00000, 0.00000, 0.00000);
	PartC[12]= CreateDynamicObject(19441, 1773.37195, -1654.09546, 14.95200,   0.00000, 0.00000, 90.00000);
	Vidro[3]= CreateDynamicObject(19325, 1774.80920, -1654.12195, 13.36710,   -90.00000, 0.00000, 90.00000);
	Vidro[4]= CreateDynamicObject(19325, 1782.33423, -1654.21301, 13.36710,   -90.00000, 0.00000, 90.00000);
	PartC[13]= CreateDynamicObject(19441, 1783.60925, -1654.12463, 14.95200,   0.00000, 0.00000, 90.00000);
	Vidro[5]= CreateDynamicObject(19325, 1786.41577, -1654.20215, 13.36710,   -90.00000, 0.00000, 90.00000);
	Vidro[6]= CreateDynamicObject(19325, 1790.48254, -1654.19275, 13.36710,   -90.00000, 0.00000, 90.00000);
	PartC[14]= CreateDynamicObject(19441, 1791.88647, -1654.11572, 14.95200,   0.00000, 0.00000, 90.00000);
	Vidro[7]= CreateDynamicObject(19325, 1794.22266, -1654.20215, 13.36710,   -90.00000, 0.00000, 90.00000);
	Vidro[8]= CreateDynamicObject(19325, 1798.30896, -1654.20239, 13.36710,   -90.00000, 0.00000, 90.00000);
	PartC[15]= CreateDynamicObject(19441, 1800.28491, -1653.40552, 14.95200,   0.00000, 0.00000, 0.00000);
	Vidro[9]= CreateDynamicObject(19325, 1800.34375, -1650.54517, 13.36710,   -90.00000, 0.00000, 0.00000);
	Vidro[10]= CreateDynamicObject(19325, 1800.33618, -1646.42566, 13.36710,   -90.00000, 0.00000, 0.00000);
	Vidro[11]= CreateDynamicObject(19325, 1800.33142, -1642.32104, 13.36710,   -90.00000, 0.00000, 0.00000);
	PartC[16]= CreateDynamicObject(19441, 1800.29395, -1638.91455, 14.95200,   0.00000, 0.00000, 0.00000);
	PartC[17]= CreateDynamicObject(19441, 1800.29456, -1639.62329, 14.95200,   0.00000, 0.00000, 0.00000);
	Vidro[12]= CreateDynamicObject(19325, 1798.17004, -1638.15149, 13.36710,   -90.00000, 0.00000, 90.00000);
	Vidro[13]= CreateDynamicObject(19325, 1794.05005, -1638.15125, 13.36710,   -90.00000, 0.00000, 90.00000);
	PartC[18]= CreateDynamicObject(19441, 1791.89648, -1638.22644, 14.95200,   0.00000, 0.00000, 90.00000);
	Vidro[14]= CreateDynamicObject(19325, 1789.02185, -1638.19263, 13.36710,   -90.00000, 0.00000, 90.00000);
	Vidro[15]= CreateDynamicObject(19325, 1784.91626, -1638.19531, 13.36710,   -90.00000, 0.00000, 90.00000);
	PartC[19]= CreateDynamicObject(19441, 1782.08813, -1638.22791, 14.95200,   0.00000, 0.00000, 90.00000);
	Vidro[16]= CreateDynamicObject(19325, 1779.26965, -1638.17249, 13.36710,   -90.00000, 0.00000, 90.00000);
	Vidro[17]= CreateDynamicObject(19325, 1775.15405, -1638.17920, 13.36710,   -90.00000, 0.00000, 90.00000);
	for(new i = 0; i != 18; i++) SetObjectMaterial(Vidro[i],0,-1, "none", "none", 0xFFE8E8E8);
	PartC[0]= CreateDynamicObject(19450, 1789.20276, -1654.12915, 12.36960,   0.00000, 0.00000, 90.00000);
	PartC[1]= CreateDynamicObject(19450, 1795.39331, -1654.12585, 12.36960,   0.00000, 0.00000, 90.00000);
	PartC[2]= CreateDynamicObject(19450, 1800.28186, -1647.79553, 12.36960,   0.00000, 0.00000, 0.00000);
	PartC[3]= CreateDynamicObject(19450, 1800.26990, -1645.22644, 12.36960,   0.00000, 0.00000, 0.00000);
	PartC[4]= CreateDynamicObject(19450, 1795.39563, -1638.20789, 12.36960,   0.00000, 0.00000, 90.00000);
	PartC[5]= CreateDynamicObject(19450, 1785.77856, -1638.20825, 12.36960,   0.00000, 0.00000, 90.00000);
	PartC[6]= CreateDynamicObject(19450, 1778.98071, -1638.21130, 12.36960,   0.00000, 0.00000, 90.00000);
	Teto[0]= CreateDynamicObject(18766, 1778.41357, -1656.49695, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[1]= CreateDynamicObject(18766, 1778.41455, -1661.46704, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[2]= CreateDynamicObject(18766, 1778.41003, -1666.44653, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[3]= CreateDynamicObject(18762, 1783.52649, -1666.45276, 16.93170,   -90.00000, 0.00000, 0.00000);
	Teto[4]= CreateDynamicObject(18762, 1783.53955, -1661.47278, 16.93170,   -90.00000, 0.00000, 0.00000);
	Teto[5]= CreateDynamicObject(18762, 1783.52344, -1656.50806, 16.93170,   -90.00000, 0.00000, 0.00000);
	Teto[6]= CreateDynamicObject(18766, 1777.55225, -1651.68640, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[7]= CreateDynamicObject(18766, 1777.55640, -1646.72815, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[8]= CreateDynamicObject(18766, 1777.56116, -1641.81714, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[9]= CreateDynamicObject(18980, 1785.06445, -1638.90881, 16.91630,   0.00000, 90.00000, 0.00000);
	Teto[10]= CreateDynamicObject(18980, 1785.06714, -1637.92773, 16.91630,   0.00000, 90.00000, 0.00000);
	Teto[11]= CreateDynamicObject(18766, 1787.53906, -1641.81775, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[12]= CreateDynamicObject(18766, 1796.45691, -1639.94629, 16.94240,   -90.00000, 90.00000, 90.00000);
	Teto[13]= CreateDynamicObject(18766, 1796.44775, -1644.90881, 16.94240,   -90.00000, 90.00000, 90.00000);
	Teto[14]= CreateDynamicObject(18766, 1796.44641, -1649.89771, 16.94240,   -90.00000, 90.00000, 90.00000);
	Teto[15]= CreateDynamicObject(18766, 1796.43652, -1652.82178, 16.94290,   -90.00000, 90.00000, 90.00000);
	Teto[16]= CreateDynamicObject(18766, 1787.41663, -1652.81592, 16.94240,   -90.00000, 90.00000, 90.00000);
	Teto[17]= CreateDynamicObject(18766, 1787.40295, -1646.78552, 16.93240,   -90.00000, 90.00000, 90.00000);
	Teto[18]= CreateDynamicObject(18766, 1787.27881, -1651.31152, 16.95240,   -90.00000, 90.00000, 90.00000);
	for(new i = 0; i != 19; i++) SetObjectMaterial(Teto[i],0,-1, "none", "none", 0xFF000000);
	CreateDynamicObject(3532, 1772.96448, -1618.03674, 12.33040,   0.00000, 0.00000, 79.58300);
	CreateDynamicObject(3532, 1767.68506, -1616.95032, 12.33040,   0.00000, 0.00000, 79.58300);
	CreateDynamicObject(3532, 1763.76978, -1615.97620, 12.33040,   0.00000, 0.00000, 79.58300);
	CreateDynamicObject(3532, 1759.78870, -1615.78113, 12.53140,   0.00000, 0.00000, 128.76013);
	CreateDynamicObject(3532, 1759.37988, -1618.07507, 12.63970,   0.00000, 0.00000, 96.83040);
	CreateDynamicObject(3532, 1763.30310, -1618.14294, 12.63970,   0.00000, 0.00000, 88.98788);
	CreateDynamicObject(3532, 1767.21521, -1618.16321, 12.63970,   0.00000, 0.00000, 88.98788);
	CreateDynamicObject(1825, 1782.16101, -1656.51208, 13.19570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1825, 1782.55774, -1665.57654, 13.19570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1825, 1778.82373, -1660.38306, 13.19570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1825, 1775.20691, -1664.81934, 13.19570,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1825, 1776.34583, -1655.38733, 13.19570,   0.00000, 0.00000, 0.00000);
	PartC[20]= CreateDynamicObject(19441, 1799.41467, -1654.12756, 14.95200,   0.00000, 0.00000, 90.00000);
	PartC[21]= CreateDynamicObject(19441, 1799.57544, -1638.20044, 14.95200,   0.00000, 0.00000, 90.00000);
	PartC[22]= CreateDynamicObject(19441, 1785.16931, -1654.13025, 14.95200,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2808,  1784.8488, -1653.1145, 13.8309,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2637, 1786.23364, -1652.99915, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2638, 1787.89465, -1653.01941, 13.87860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2637, 1789.61523, -1652.94666, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2638, 1791.19104, -1653.00574, 13.87860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2637, 1792.89722, -1652.99268, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2808, 1797.84265, -1652.94934, 13.83090,   0.00000, 0.00000, 90.00040);
	CreateDynamicObject(2637, 1783.82556, -1639.35767, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2638, 1785.63342, -1639.36865, 13.87860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2637, 1787.25623, -1639.35547, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2638, 1788.81995, -1639.40601, 13.87860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2637, 1790.53296, -1639.37146, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2808, 1791.83325, -1639.40381, 13.83090,   0.00000, 0.00000, 90.00040);
	PartC[23]= CreateDynamicObject(19441, 1799.57544, -1638.21045, 12.36804,   0.00000, 0.00000, 90.00000);
	PartC[24]= CreateDynamicObject(19441, 1799.41467, -1654.11755, 12.39840,   0.00000, 0.00000, 90.00000);
	for(new i = 0; i != 25; i++) SetObjectMaterial(PartC[i],0,11301, "carshow_sfse", "ws_carpark2", 0xFF8B4513);
	CreateDynamicObject(2305, 1799.71216, -1638.78625, 13.20450,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2138, 1798.73486, -1638.78857, 13.20590,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2139, 1797.75305, -1638.80542, 13.20480,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2303, 1796.75745, -1638.78125, 13.20730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2135, 1799.70764, -1639.73584, 13.20530,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2136, 1799.71216, -1640.68054, 13.20450,   0.00000, 0.00000, 270.00000);
	new F= CreateDynamicObject(2133, 1797.60352, -1641.98291, 13.20470,   0.00000, 0.00000, 90.00000);
	SetObjectMaterial(F, 0, 2143, "cj_kitchen", "CJ_Black_metal");
	SetObjectMaterial(F, 2, 2117, "cj_tables", "marble1");
	new F1= CreateDynamicObject(2133, 1796.58838, -1641.95642, 13.20470,   0.00000, 0.00000, 270.00000);
	SetObjectMaterial(F1, 0, 2143, "cj_kitchen", "CJ_Black_metal");
	SetObjectMaterial(F1, 2, 2117, "cj_tables", "marble1");
	new F2= CreateDynamicObject(2133, 1796.58923, -1642.94885, 13.20470,   0.00000, 0.00000, 270.00000);
	SetObjectMaterial(F2, 0, 2143, "cj_kitchen", "CJ_Black_metal");
	SetObjectMaterial(F2, 2, 2117, "cj_tables", "marble1");
	new F3= CreateDynamicObject(2133, 1797.60522, -1642.97205, 13.20470,   0.00000, 0.00000, 90.00000);
	SetObjectMaterial(F3, 0, 2143, "cj_kitchen", "CJ_Black_metal");
	SetObjectMaterial(F3, 2, 2117, "cj_tables", "marble1");
	new F4= CreateDynamicObject(2133, 1797.53516, -1642.97205, 13.21470,   0.00000, 0.00000, 90.00000);
	SetObjectMaterial(F4, 0, 2143, "cj_kitchen", "CJ_Black_metal");
	SetObjectMaterial(F4, 2, 2117, "cj_tables", "marble1");
	new Fogao= CreateDynamicObject(2613, 1797.84973, -1642.32898, 13.88000,   0.00000, 0.00000, 0.00000);
	SetObjectMaterial(Fogao, 0, 19184, "mapmarkers", "Red-2", 0xFFA60202);
	new Fogao1= CreateDynamicObject(2613, 1797.84973, -1641.79895, 13.88000,   0.00000, 0.00000, 0.00000);
	SetObjectMaterial(Fogao1, 0, 19184, "mapmarkers", "Red-2", 0xFFA60202);
	new Fogao2= CreateDynamicObject(2613, 1797.49976, -1641.79895, 13.88000,   0.00000, 0.00000, 0.00000);
	SetObjectMaterial(Fogao2, 0, 19184, "mapmarkers", "Red-2", 0xFFA60202);
	new Fogao3= CreateDynamicObject(2613, 1797.50964, -1642.32898, 13.88000,   0.00000, 0.00000, 0.00000);
	SetObjectMaterial(Fogao3, 0, 19184, "mapmarkers", "Red-2", 0xFFA60202);
	CreateDynamicObject(19348, 1797.78882, -1643.28931, 14.20750,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(19348, 1797.78882, -1643.21936, 14.20750,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(19348, 1797.78882, -1643.14941, 14.20750,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(19348, 1797.78882, -1643.05945, 14.20750,   180.00000, 0.00000, 0.00000);
	CreateDynamicObject(2445, 1794.47937, -1638.79688, 13.21520,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2445, 1794.48303, -1639.78674, 13.21520,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2445, 1794.48621, -1640.76636, 13.21520,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2445, 1794.48071, -1641.75720, 13.21520,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2445, 1794.47949, -1642.74231, 13.21520,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2445, 1794.47241, -1643.73059, 13.21520,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2445, 1794.66956, -1643.94824, 13.21550,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2445, 1795.65259, -1643.94214, 13.21550,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2445, 1796.64111, -1643.94702, 13.21550,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2445, 1797.62683, -1643.94885, 13.21550,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2445, 1798.60388, -1643.95056, 13.21550,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(1502, 1798.68713, -1644.09680, 11.60650,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2638, 1794.71692, -1652.96045, 13.87860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2637, 1796.49646, -1652.52588, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2638, 1782.08667, -1639.52075, 13.87860,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2637, 1780.43640, -1639.56982, 13.61430,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2808, 1779.06567, -1639.43884, 13.83190,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2635, 1780.01453, -1644.60669, 13.63300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1781.07129, -1644.60547, 13.63300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, 1780.01599, -1645.42395, 13.80420,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2636, 1781.03284, -1645.40869, 13.80420,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2636, 1780.10925, -1643.73816, 13.80420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2636, 1781.12720, -1643.74756, 13.80420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2635, 1783.67590, -1644.58508, 13.63300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1784.72217, -1644.59265, 13.63300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, 1784.77905, -1643.80054, 13.80420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2636, 1783.66211, -1643.76245, 13.80420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2636, 1783.74500, -1645.52197, 13.80420,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2636, 1784.74316, -1645.53345, 13.80420,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2635, 1787.19226, -1644.69434, 13.63300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2635, 1788.26904, -1644.69324, 13.63300,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(2636, 1787.21680, -1645.60339, 13.80420,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2636, 1788.26355, -1645.57422, 13.80420,   0.00000, 0.00000, 270.00000);
	CreateDynamicObject(2636, 1787.24792, -1643.95874, 13.80420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(2636, 1788.18408, -1643.91370, 13.80420,   0.00000, 0.00000, 90.00000);
	CreateDynamicObject(6964, 1793.90308, -1661.58789, 10.53730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6964, 1793.90308, -1661.58789, 10.73730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6964, 1793.90308, -1661.58789, 10.93730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6964, 1793.90308, -1661.58789, 11.12730,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(6964, 1793.90308, -1661.58789, 11.31730,   0.00000, 0.00000, 0.00000);
	new Faixa= CreateDynamicObject(10183, 1810.30664, -1648.44531, 12.45990,   0.00000, 0.00000, 135.62039);
	SetObjectMaterial(Faixa, 0, -1, "none", "none", 0xFFFFFFFF);
	new Faixa1= CreateDynamicObject(10183, 1810.24573, -1658.42896, 12.45990,   0.00000, 0.00000, 135.62039);
	SetObjectMaterial(Faixa1, 0, -1, "none", "none", 0xFFFFFFFF);
	CreateDynamicObject(18762, 1792.20044, -1644.23267, 14.02870,   0.00000, 0.00000, 0.00000);
	new TV= CreateDynamicObject(2737, 1791.65930, -1644.89612, 15.36430,   0.00000, 0.00000, 270.00000);
	SetObjectMaterial(TV, 0, 1786, "cj_tv", "CJ_Black_metal", 0xFF888888);
	SetObjectMaterial(TV, 1, 1786, "cj_tv", "CJ_Black_metal", 0xFF000000);
	CreateDynamicObject(18762, 1792.20959, -1645.16064, 14.02870,   0.00000, 0.00000, 0.00000);
	CreateDynamicObject(19430, 1783.41638, -1619.70276, 11.93780,   -90.00000, 0.00000, 255.95058);
	CreateDynamicObject(19430, 1786.80762, -1620.51135, 11.93780,   -90.00000, 0.00000, 257.07230);*/

	// KHU VUC LSPD
	new ikea_2_blue = CreateDynamicObject(19327, 1531.3564, -1582.2591, 17.0506, 0.0000, 0.0000, 0.0, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(ikea_2_blue, 0, ".", 50, "Arial", 24, 0, -16776961, -16776961, 1);
	new Vikea_2 = CreateDynamicObject(19327, 1531.3193, -1582.2610, 17.1328, 0.0000, 0.0000, 0.0, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(Vikea_2, 0, "VIKEA", 140, "Arial", 180, 0, -256, 0, 1);
	new mob_de_maison_2 = CreateDynamicObject(19327, 1531.3548, -1582.2610, 16.5328, 0.0000, 0.0000, 0.0, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(mob_de_maison_2, 0, "- Mobilier de maison -", 140, "Arial", 60, 0, -256, 0, 1);
	new vikea_test = CreateDynamicObject(19327, 1531.3815, -1582.2785, 17.5328, 0.0000, 0.0000, -0.0876, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(vikea_test, 0, "B", 140, "webdings", 100, 0, -256, 0, 1);
 	new passage1 = CreateDynamicObject(19454,1516.673,-1566.283,12.4779,0.000,90.000,90.000, .worldid = 0, .streamdistance = 700);
 	SetDynamicObjectMaterialText(passage1, 0,"IIIIIIII", 30, "Arial", 135, 1, -1, 0, 1);
	new passage2 = CreateDynamicObject(19454,1507.042,-1566.283,12.4779,0.000,90.000,90.000, .worldid = 0, .streamdistance = 700);
 	SetDynamicObjectMaterialText(passage2, 0,"IIIIIIII", 30, "Arial", 135, 1, -1, 0, 1);
	new passage3 = CreateDynamicObject(19454,1497.409,-1566.283,12.4779,0.000,90.000,90.000, .worldid = 0, .streamdistance = 700);
 	SetDynamicObjectMaterialText(passage3, 0,"IIIIIIII", 30, "Arial", 135, 1, -1, 0, 1);
//_______________________________________________________________________________________________________________________
	CreateObject(6257, 1478.80798, -1512.63000, 19.80500,   0.00000, 0.00000, 0.00000, 700);
	new MappingTexture;
	MappingTexture = CreateDynamicObject(6977,1516.695,-1491.990,12.248,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 14690, "7_11_posters", "CJ_7_11_POST2", 0);
	SetDynamicObjectMaterial(MappingTexture, 1, 9514, "711_sfw", "ws_carpark2", 0);
	MappingTexture = CreateDynamicObject(12944,1543.172,-1520.887,12.561,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 4572, "stolenbuild02", "sl_zippendant1", 0);
	SetDynamicObjectMaterial(MappingTexture, 1, 5709, "melrose17_lawn", "shopface02bl_law", 0);
	SetDynamicObjectMaterial(MappingTexture, 2, 5709, "melrose17_lawn", "shopface02bl_law", 0);
	SetDynamicObjectMaterial(MappingTexture, 6, 5709, "melrose17_lawn", "shopface02bl_law", 0);
	MappingTexture = CreateDynamicObject(7596,1471.637,-1557.319,16.921,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 1, 4101, "stapl", "sl_laexpowall1", 0);
	SetDynamicObjectMaterial(MappingTexture, 2, 6338, "sunset01_law2", "melrorg_law", 0);
	SetDynamicObjectMaterial(MappingTexture, 3, 6338, "sunset01_law2", "melrorg_law", 0);
	SetDynamicObjectMaterial(MappingTexture, 6, 6056, "venice_law", "law_terra2", 0);
	MappingTexture = CreateDynamicObject(6257,1478.808,-1512.630,19.805,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 4830, "airport2", "brnstucco1", 0);
	MappingTexture = CreateDynamicObject(8041,1509.055,-1580.914,18.171,0.000,0.000,-90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 2, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
	MappingTexture = CreateDynamicObject(3578,1518.350,-1545.617,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(8866,1509.055,-1553.854,12.759,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 8130, "vgsschurch", "vgschurchwall04_256", 0);
	MappingTexture = CreateDynamicObject(3578,1499.399,-1537.204,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(3578,1509.055,-1573.318,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(3578,1518.350,-1558.748,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(3578,1518.350,-1573.747,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(3578,1499.399,-1573.391,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(3578,1499.399,-1559.163,12.488,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 3442, "vegashse4", "Est_corridor_ceiling", 0);
	MappingTexture = CreateDynamicObject(8866,1509.851,-1524.672,12.759,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 8130, "vgsschurch", "vgschurchwall04_256", 0);
	MappingTexture = CreateDynamicObject(3660,1471.497,-1564.167,14.981,0.000,0.000,-180.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 15054, "savesfmid", "AH_wdpanel", 0);
	MappingTexture = CreateDynamicObject(3660,1462.330,-1551.820,14.981,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 15054, "savesfmid", "AH_wdpanel", 0);
	MappingTexture = CreateDynamicObject(3660,1475.243,-1542.348,14.981,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 15054, "savesfmid", "AH_wdpanel", 0);
	MappingTexture = CreateDynamicObject(8653,1466.700,-1514.736,13.381,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
	SetDynamicObjectMaterial(MappingTexture, 1, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
	MappingTexture = CreateDynamicObject(8653,1466.700,-1484.961,13.381,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 0, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
	SetDynamicObjectMaterial(MappingTexture, 1, 10101, "2notherbuildsfe", "Bow_Abpave_Gen", 0);
	MappingTexture = CreateDynamicObject(3852,1515.520,-1577.457,11.093,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 1, 2415, "cj_ff", "CJ_KITCHEN_DETAIL", 0);
	MappingTexture = CreateDynamicObject(3852,1511.917,-1577.457,11.093,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(MappingTexture, 1, 2415, "cj_ff", "CJ_KITCHEN_DETAIL", 0);
	MappingTexture = CreateDynamicObject(19454,1516.673,-1566.2852,12.4759,0.000,90.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial ( MappingTexture, 0, 6213, "lawwhitebuilds", "pinkpave", 0xFFCCCCCC);
	MappingTexture = CreateDynamicObject(19454,1507.042,-1566.2852,12.4759,0.000,90.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial ( MappingTexture, 0, 6213, "lawwhitebuilds", "pinkpave", 0xFFCCCCCC);
	MappingTexture = CreateDynamicObject(19454,1497.409,-1566.2852,12.4759,0.000,90.000,90.000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial ( MappingTexture, 0, 6213, "lawwhitebuilds", "pinkpave", 0xFFCCCCCC);
	MappingTexture = CreateDynamicObject(3578,1513.503,-1543.739,11.778,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
    SetDynamicObjectMaterial( MappingTexture, 0,4598, "crparkgm_lan2", "sl_cparkbarrier1", 0xFFCCCCCC);
	MappingTexture = CreateDynamicObject(3578,1504.191,-1578.179,11.768,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
    SetDynamicObjectMaterial( MappingTexture, 0,4598, "crparkgm_lan2", "sl_cparkbarrier1", 0xFFCCCCCC);

	MappingTexture = CreateDynamicObject(19966, 1499.89111, -1578.17444, 12.54970,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8494,1538.880,-1557.031,17.746,0.000,0.000,-90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(10183,1516.623,-1513.634,12.576,0.000,0.000,45.599, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(984,1503.002,-1509.907,13.190,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(984,1530.170,-1509.903,13.190,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(983,1516.695,-1509.907,13.285,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(984,1496.575,-1516.346,13.190,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8843,1513.687,-1565.603,12.554,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8843,1504.140,-1549.314,12.554,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1483,1552.713,-1537.979,14.207,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8536,1448.427,-1580.341,27.975,0.000,0.000,-45.120, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8526,1522.033,-1580.715,14.915,0.000,0.000,110.940, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8408,1525.420,-1580.430,19.675,0.000,0.000,-160.320, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1509.055,-1566.283,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1290,1509.079,-1543.843,18.758,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1290,1509.013,-1563.916,18.758,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(19976,1517.926,-1543.743,12.551,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(19984,1517.930,-1571.437,12.548,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1518.350,-1566.283,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1499.399,-1566.283,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1497.745,-1582.119,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1497.708,-1576.775,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1497.634,-1563.457,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1497.438,-1542.543,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1494.898,-1521.702,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1495.615,-1509.116,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1508.629,-1509.069,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1524.505,-1508.996,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1536.120,-1508.891,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1519.565,-1563.457,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1519.565,-1541.744,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(717,1519.565,-1576.775,12.638,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(712,1508.998,-1562.595,17.896,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(712,1509.034,-1545.452,17.976,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8990,1509.033,-1553.867,12.750,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1280,1496.264,-1536.968,12.892,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1280,1496.607,-1559.216,12.873,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1280,1496.628,-1571.041,12.873,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1280,1520.964,-1573.518,12.873,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1280,1520.963,-1559.262,12.873,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1359,1520.853,-1557.484,13.232,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1359,1496.825,-1569.302,13.232,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1359,1496.360,-1538.706,13.232,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1496.533,-1533.007,12.548,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1496.485,-1561.077,12.548,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1496.455,-1581.704,12.548,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1520.980,-1577.248,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1520.959,-1555.651,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1520.969,-1534.330,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(983,1536.604,-1513.091,13.285,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(983,1536.082,-1532.042,13.285,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1432,1490.349,-1519.203,12.666,0.000,0.000,-21.540, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1432,1494.478,-1517.767,12.666,0.000,0.000,24.840, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1432,1491.161,-1513.947,12.666,0.000,0.000,2.160, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1432,1494.700,-1511.498,12.666,0.000,0.000,33.060, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1432,1489.491,-1507.371,12.666,0.000,0.000,55.680, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1290,1499.953,-1524.603,18.758,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1290,1519.707,-1524.643,18.758,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(712,1518.699,-1524.742,17.976,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(712,1500.961,-1524.685,17.976,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(8990,1509.889,-1524.645,12.750,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(640,1508.711,-1503.122,14.368,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(640,1524.745,-1503.122,14.368,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1482.878,-1563.497,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1485.317,-1563.497,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1483.379,-1543.857,12.545,0.000,0.000,-90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1465.957,-1543.809,12.545,0.000,0.000,-90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1463.765,-1551.459,12.545,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1465.342,-1562.714,12.545,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1480.261,-1562.718,12.545,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(10183,1462.577,-1512.885,12.577,0.000,0.000,-44.760, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1466.182,-1528.013,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1466.209,-1517.943,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1466.163,-1507.830,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1223,1466.263,-1497.790,12.548,0.000,0.000,180.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1522,1487.734,-1511.118,12.517,0.000,0.000,90.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1522,1515.182,-1502.459,13.668,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1521.699,-1509.759,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1511.534,-1509.759,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);
	MappingTexture = CreateDynamicObject(1214,1466.607,-1531.413,12.4445,0.000,0.000,0.000, .worldid = 0, .streamdistance = 700);

	// SHOP XE MARKET
	CreateDynamicObject(19379, 1277.76379, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1236.79810, 12.46000,   0.00000, 90.02000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1236.79810, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1236.79810, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1246.27100, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1246.26550, -125.82080, 12.54140,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1246.27100, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1246.27100, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1246.27100, -1236.79810, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1235.77295, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1235.77295, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1235.77295, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1228.77661, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1228.77283, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1228.77661, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1225.27600, -1265.67188, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1225.27600, -1256.03650, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1225.27600, -1246.40979, 12.46000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1265.69995, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1256.07996, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1246.45496, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1265.69995, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1256.07996, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1246.45496, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1265.69995, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1256.07996, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1246.45496, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.24438, -1272.22998, 12.45200,   180.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1240.86890, -1272.22998, 12.45200,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1250.51660, -1272.22998, 12.45000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1260.00000, -1272.16602, 12.44000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.66162, -1270.50854, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.30396, -1270.50854, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.66162, -1270.50854, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.30396, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.66162, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.30396, -1270.50854, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1242.94653, -1270.50854, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1242.94653, -1270.50854, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1242.94653, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.58398, -1270.50854, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.58398, -1270.50854, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.58398, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1256.21045, -1270.50854, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1256.21045, -1270.50854, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1256.21045, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1274.50000, -1270.49048, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1274.50000, -1270.49048, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1276.13196, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1231.25000, -1242.66638, 14.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1231.25000, -1242.66638, 17.50000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1231.25000, -1242.66638, 21.00000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1240.88403, -1242.66638, 14.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1240.88403, -1242.66638, 17.50000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1240.88403, -1242.66638, 21.00000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1265.66272, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1265.66272, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1265.66272, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1256.02197, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91492, -1256.02197, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1256.02197, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1246.40356, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1246.40356, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1246.39563, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1236.76794, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91357, -1236.76794, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1282.91663, -1236.77173, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1247.38000, -1236.78796, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1247.38000, -1236.78796, 17.50000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1247.38000, -1236.78796, 21.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1278.45154, -1232.00000, 14.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1278.45154, -1232.00000, 17.50000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1278.45154, -1232.00000, 21.00000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1252.19995, -1232.00000, 14.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1252.19995, -1232.00000, 17.50000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1249.57605, -1232.00000, 21.00000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1258.76453, -1231.98035, 14.50000,   90.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1265.32715, -1232.00000, 14.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1271.88892, -1232.00000, 14.50000,   90.00000, -90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1265.32715, -1232.00000, 17.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1259.19995, -1232.00000, 21.00000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1268.83606, -1232.00000, 21.00000,   0.00000, 180.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1265.43237, -1241.32874, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1265.43237, -1241.32874, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1265.43237, -1241.32874, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1272.06396, -1241.32874, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1272.06396, -1241.32874, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1272.06396, -1241.32874, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1258.79199, -1241.32874, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1258.79199, -1241.32874, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1258.79199, -1241.32874, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1232.95447, -1270.93994, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1241.00745, -1270.93994, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1249.06396, -1270.93994, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(792, 1236.01929, -1288.55249, 12.70000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1256, 1238.79749, -1288.50000, 13.15000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(792, 1242.65295, -1288.56543, 12.75000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1328, 1241.08472, -1288.56201, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2774, 1246.61926, -1241.99170, 10.30000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1671, 1265.42529, -1234.77649, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2184, 1264.37097, -1236.77100, 12.51470,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19893, 1265.43079, -1236.28198, 13.28820,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1895, 1265.48584, -1232.16174, 14.50000,   0.00000, 5.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1895, 1268.23792, -1232.16406, 14.00000,   0.00000, -40.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1895, 1262.70520, -1232.16003, 14.00000,   0.00000, 49.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19897, 1265.05286, -1236.19971, 13.30170,   0.00000, 0.00000, 190.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19625, 1265.03735, -1236.19360, 13.31470,   0.00000, 0.00000, -30.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1727, 1265.86401, -1238.94263, 12.54560,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1727, 1263.90356, -1238.76904, 12.54710,   0.00000, 0.00000, 160.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1727, 1267.75012, -1238.40027, 12.54720,   0.00000, 0.00000, -160.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2174, 1247.96204, -1236.76611, 12.57850,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1806, 1249.20862, -1236.12988, 12.54590,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2009, 1272.79150, -1234.32764, 12.54580,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2185, 1257.32935, -1235.31580, 12.54573,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2181, 1282.30273, -1235.57190, 12.53580,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1806, 1280.74548, -1236.00464, 12.53800,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1720, 1271.90649, -1234.38721, 12.54580,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1720, 1258.04065, -1234.46729, 12.54520,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1829, 1271.50903, -1232.74524, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1829, 1259.18347, -1232.79175, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1550, 1270.78552, -1232.44006, 13.00000,   0.00000, 0.00000, 120.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1550, 1259.84033, -1232.39160, 13.00000,   0.00000, 0.00000, -160.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1550, 1265.40723, -1234.17346, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1550, 1264.93091, -1234.50671, 13.00000,   0.00000, -10.00000, -180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1550, 1265.95361, -1234.50012, 13.00000,   0.00000, 10.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1212, 1271.52112, -1232.22754, 13.47650,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1212, 1271.31555, -1232.49023, 13.47830,   0.00000, 0.00000, -80.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1212, 1271.65698, -1232.49475, 13.47830,   0.00000, 0.00000, 40.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1212, 1259.01941, -1232.36475, 13.47400,   0.00000, 0.00000, -40.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1212, 1259.29968, -1232.28076, 13.47800,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1212, 1259.24939, -1232.57629, 13.47800,   0.00000, 0.00000, 40.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19941, 1264.58398, -1236.20605, 13.28810,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19941, 1264.50256, -1236.16907, 13.28810,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19941, 1264.66785, -1236.23413, 13.28810,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19941, 1264.63184, -1236.23413, 13.33200,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19941, 1264.53979, -1236.20605, 13.33200,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19941, 1264.58374, -1236.21411, 13.37600,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10281, 1265.47534, -1232.90002, 17.56130,   0.00000, -15.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1231.74500, -1259.00000, 12.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1210, 1266.75916, -1236.34985, 12.70000,   -20.00000, 0.00000, 120.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 1276.72192, -1232.60840, 12.54580,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 1251.09973, -1232.60974, 12.54580,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11743, 1251.09790, -1232.53040, 13.47970,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2369, 1266.39624, -1235.83191, 13.26490,   0.00000, 0.00000, 30.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2814, 1252.71643, -1232.56287, 13.48060,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1251.80847, -1232.49792, 13.57000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1251.58020, -1232.69958, 13.57000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1251.60474, -1232.49207, 13.57000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1251.78723, -1232.72473, 13.57000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1257.72131, -1235.33533, 13.45000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1272.71362, -1234.79578, 13.45000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 1282.18689, -1236.53394, 13.45000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 1254.10413, -1232.37842, 12.54575,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2484, 1277.64014, -1232.59998, 14.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1282.80469, -1237.10156, 20.50000,   -70.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1247.50000, -1237.10156, 20.50000,   -70.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1265.35181, -1232.11743, 20.50000,   -80.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1236.68811, -1259.00000, 12.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1241.81250, -1259.00000, 12.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1226.82056, -1259.00000, 12.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1231.77295, -1258.80005, 12.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1246.94800, -1259.00000, 12.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1241.82031, -1258.80005, 12.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19279, 1226.49805, -1258.80005, 17.80000,   -70.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1266.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 12820.81934, -1268.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1270.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1268.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1264.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1262.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1260.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1258.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1256.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1254.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1252.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1250.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1248.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1246.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1244.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1242.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1240.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1238.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1236.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1234.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.81958, -1232.00000, 15.74000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1282.72156, -1232.18469, 15.74000,   0.00000, 0.00000, 140.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1278.43750, -1231.97546, 14.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1281.00000, -1232.06482, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1279.00000, -1232.06482, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1277.00000, -1232.06482, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1275.00000, -1232.06482, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1272.97205, -1232.06482, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1270.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1268.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1266.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1264.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1262.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1260.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1258.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1256.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1254.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1252.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1250.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1248.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1246.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1244.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1226.42004, -1260000.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1227.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1229.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1243.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1245.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1247.46960, -1240.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1247.46960, -1238.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1247.46960, -1236.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1247.46960, -1234.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1247.46960, -1232.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1247.46960, -12330000.00000, 15.74000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1249.02441, -1232.09253, 15.74000,   0.00000, 0.00000, -180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1251.02441, -1232.09253, 15.74000,   0.00000, 0.00000, -180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1253.02441, -1232.09253, 15.74000,   0.00000, 0.00000, -180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1255.02441, -1232.09253, 15.74000,   0.00000, 0.00000, -180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1257.59998, -1232.09253, 15.74000,   0.00000, 0.00000, -180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19817, 1265.37744, -1247.30457, 11.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19817, 1270.10864, -1251.20703, 11.00000,   0.00000, 0.00000, -15.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19817, 1260.47144, -1251.20703, 11.00000,   0.00000, 0.00000, 15.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1280.50000, -1265.28381, 13.00000,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1280.50000, -1262.50000, 13.00000,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1280.50000, -1259.50000, 13.00000,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1280.50000, -1256.50000, 13.00000,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1280.50000, -1253.50000, 13.00000,   90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1912, 1281.43506, -1261.22791, 12.54194,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1282.50195, -1265.24524, 13.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1282.50195, -1262.36401, 13.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1282.50195, -1259.38684, 13.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1282.50195, -1256.29150, 13.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18874, 1264.91272, -1235.90027, 13.28930,   0.00000, 0.00000, 160.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19617, 1252.04663, -1232.09082, 14.35222,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1736, 1259.19214, -1232.40002, 14.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1736, 1271.44995, -1232.40002, 14.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2286, 1282.81006, -1259.49597, 14.50000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2195, 1276.07495, -1241.40454, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2195, 1254.84900, -1241.40454, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1265.67188, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1256.03650, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1246.40979, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1277.76379, -1236.79810, 22.70000,   0.00000, 90.02000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1236.79810, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1236.79810, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1246.27100, -1236.79810, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1246.40979, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1246.40979, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1256.03650, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1267.26648, -1265.67188, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1265.67188, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1256.76978, -1256.03650, 22.70000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.10400, -1245.12402, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 1228.61731, -1243.25244, 12.40000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1703, 1230.73975, -1243.12061, 12.54610,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 1265.35803, -1262.34143, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1265.35645, -1264.08289, 13.50000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1266.11731, -1263.91199, 13.50000,   90.00000, 0.00000, 25.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1266.69910, -1263.44409, 13.50000,   90.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1267.07935, -1262.70239, 13.50000,   90.00000, 0.00000, 75.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1267.06348, -1261.95972, 13.50000,   90.00000, 0.00000, 100.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1266.74426, -1261.27649, 13.50000,   90.00000, 0.00000, 125.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1266.11279, -1260.77515, 13.50000,   90.00000, 0.00000, 150.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1265.37537, -1260.60400, 13.50000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1264.61951, -1260.76538, 13.50000,   90.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1263.99878, -1261.24719, 13.50000,   90.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1263.65100, -1261.94067, 13.50000,   90.00000, 0.00000, 75.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1263.66052, -1262.71802, 13.50000,   90.00000, 0.00000, 100.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1263.98669, -1263.41199, 13.50000,   90.00000, 0.00000, 125.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1264.60095, -1263.93091, 13.50000,   90.00000, 0.00000, 150.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1494, 1282.74915, -1245.00000, 12.55000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1281.14001, -1270.48755, 12.45000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1281.14001, -1270.48755, 16.57500,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1282.76392, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1249.07617, -1270.91003, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1240.94714, -1270.91003, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1232.91797, -1270.91003, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1820, 1235.00696, -1244.64807, 12.54634,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2811, 1227.05518, -1245.97864, 12.54680,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1248.08008, -1242.11658, 12.55000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3471, 1271.75000, -1271.56152, 13.60000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3471, 1258.95874, -1271.56152, 13.60000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1257, 1252.00024, -1274.61377, 13.80000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1228.92505, -1270.91992, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1236.98804, -1270.91992, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1245.03003, -1270.91992, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1256.59998, -1270.07056, 23.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1257.09998, -1270.93994, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1257.09998, -1270.91003, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1277.72644, -1270.91992, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1273.68604, -1270.93994, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1273.69995, -1270.91003, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1262.84998, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1269.49011, -1270.50854, 20.70000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1080, 1282.57532, -1268.71912, 13.25000,   0.00000, -20.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1098, 1282.32324, -1269.19299, 12.70000,   0.00000, -90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1085, 1282.24890, -1268.26599, 12.70000,   0.00000, -90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1081, 1281.91272, -1269.12476, 12.83260,   0.00000, -130.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1294, 1232.91797, -1276.83289, 17.07810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1294, 1241.08374, -1276.83289, 17.07810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1231.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1233.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1235.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1237.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1239.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19280, 1241.42004, -1242.75696, 15.74000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3586, 1240.65918, -1244.77881, 15.79000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.10400, -1248.62329, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.10400, -1252.12463, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.10400, -1255.62402, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.10400, -1259.12415, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1240.73596, -1259.12415, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1240.73596, -1255.62402, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1240.73596, -1252.12463, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1240.73596, -1248.62329, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1228.00000, -1268.89514, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1228.00000, -1265.69397, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1228.00000, -1262.48389, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1231.10400, -1241.62000, 19.10000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1231.49976, -1268.89587, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1235.00012, -1268.89587, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1238.50195, -1268.89587, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1242.00012, -1268.89587, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1245.50000, -1268.89514, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1231.49976, -1262.48389, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1235.00012, -1262.48389, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1238.50195, -1262.48389, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1242.00012, -1262.48389, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1245.50000, -1262.48389, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1245.50000, -1265.69397, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1231.49976, -1265.69397, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1235.00012, -1265.69397, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1238.50195, -1265.69397, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19370, 1242.00012, -1265.69397, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1247.30396, -1256.06006, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1247.30798, -125.00000, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1250.80396, -1256.06006, 19.10000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1252.46399, -1256.05212, 20.92800,   180.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1251.60803, -1256.05212, 20.92800,   180.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14416, 1248.72229, -1262.91003, 19.59000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14416, 1248.70239, -1268.53809, 19.59000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1242.94397, -1247.10254, 20.00000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1245.40002, -1247.10254, 20.00000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1240.49194, -1247.10254, 20.00000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1238.03601, -1247.10254, 20.00000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2811, 1245.06982, -1247.47644, 19.18667,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1245.37976, -1247.11292, 19.75000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1245.40002, -1247.10254, 20.00000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 124.00000, -1247.10254, 20.00000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1245.40002, -1249.00000, 20.00000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1245.37976, -1251.54211, 19.75000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1245.35657, -1251.54211, 20.00000,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1247.81812, -1251.54211, 20.00000,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1250.00000, -1251.54211, 20.00000,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1245.37976, -1260.52710, 19.75000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1245.35657, -1260.52710, 20.00000,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1247.81812, -1260.52710, 20.00000,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1250.00000, -1260.52710, 20.00000,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1246.30005, -1265.62915, 19.40000,   0.00000, 58.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1249.00000, -1265.62915, 21.09000,   0.00000, 58.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19462, 1252.19922, -1265.62915, 21.99200,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1245.37976, -1265.70557, 19.75000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1251.69043, -1265.71069, 23.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1245.38245, -1265.67322, 20.00000,   0.00000, 120.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1247.10803, -1265.67249, 20.99600,   0.00000, 120.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1248.50000, -1265.67200, 21.79800,   0.00000, 120.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19087, 1249.61182, -1265.67200, 22.43900,   0.00000, 120.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1240.88403, -1242.66638, 24.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1231.25000, -1242.66638, 24.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1246.45496, 24.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1256.07996, 24.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 1226.33118, -1265.69995, 24.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.66162, -1270.50854, 24.82000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.30396, -1270.50854, 24.82000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1242.94653, -1270.50854, 24.82000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.58398, -1270.50854, 24.82000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1268.44263, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1264.31702, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1260.19189, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1256.06836, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1251.94202, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1247.81726, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1229.74109, -1243.69104, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1268.44263, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1264.31702, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1260.19189, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1256.06836, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1251.94202, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1247.81726, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1236.38367, -1243.69104, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1268.44263, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1264.31702, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1260.19189, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1256.06836, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1251.94202, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1247.81726, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1243.02588, -1243.69104, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1251.86462, -1257.34998, 24.82000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1251.86462, -1250.70801, 24.82000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1251.86462, -1244.06799, 24.82000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1248.53845, -1241.62561, 24.82000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1268.44263, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1264.31702, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1260.19189, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1256.06836, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1251.94202, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1247.81726, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19325, 1249.66809, -1243.69104, 26.25000,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1235.48450, -1247.11292, 19.75000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3928, 1273.75830, -1242.84717, 22.80000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3928, 1260.25403, -1242.84717, 22.80000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3928, 1266.80005, -1257.00000, 22.80000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1281.76526, -1270.93994, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19121, 1281.69995, -1270.91003, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1703, 1226.95239, -1245.12024, 12.54610,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1704, 1233.67676, -1244.16760, 12.54500,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1704, 1236.42773, -1244.16760, 12.54500,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1704, 1239.04639, -1244.16760, 12.54500,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1820, 1237.70447, -1244.64807, 12.54630,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8132, 1265.00000, -1268.66394, 25.35500,   0.00000, 0.00000, -77.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10281, 1265.90002, -1270.36792, 24.65410,   0.00000, -15.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10281, 1265.80005, -1267.59998, 24.65410,   0.00000, -15.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1273.50000, -1270.07056, 23.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1279.69995, -1270.07056, 23.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1253.09802, -1270.91992, 13.23000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);

	// PIZZA
	/*new resto_ran;
	resto_ran = CreateDynamicObject(19378, 2096.006592, -1817.099365, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 5813, "lawnabv", "vgs_rockwall01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19378, 2105.624023, -1817.096069, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 5813, "lawnabv", "vgs_rockwall01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19378, 2096.456055, -1796.750488, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 5813, "lawnabv", "vgs_rockwall01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19378, 2106.055908, -1796.749268, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 5813, "lawnabv", "vgs_rockwall01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(8661, 2114.418213, -1775.937134, 12.375900, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13006, "sw_office", "ws_carparknew2", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19454, 2104.258789, -1764.204590, 12.300000, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13006, "sw_office", "ws_carparknew2", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19454, 2113.887695, -1764.206665, 12.300000, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13006, "sw_office", "ws_carparknew2", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19454, 2123.504395, -1764.210449, 12.300000, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13006, "sw_office", "ws_carparknew2", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19454, 2114.771729, -1762.381714, 10.641800, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13006, "sw_office", "ws_carparknew2", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19454, 2124.400391, -1762.387939, 10.641800, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13006, "sw_office", "ws_carparknew2", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19353, 2095.720947, -1804.707642, 14.106800, 0.000000, 0.000000, 179.927902, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(resto_ran, 0, "VN", 50, "Script MT Bold", 35, 0, 0xFF0A0A0A, 0, 1);
	resto_ran = CreateDynamicObject(19353, 2096.086182, -1806.703125, 15.695700, -6.899900, 0.000000, -179.852097, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(resto_ran, 0, "NHA HANG", 50, "Arial", 15, 1, 0xFFFFFFFF, 0, 1);
	resto_ran = CreateDynamicObject(19353, 2095.730957, -1806.530151, 14.126800, 0.000000, 0.000000, 179.978302, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(resto_ran, 0, "Food", 50, "Script MT Bold", 35, 0, 0xFF0A0A0A, 0, 1);
	resto_ran = CreateDynamicObject(19353, 2122.734619, -1800.658325, 13.483000, 0.000000, 0.000000, 0.220000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterialText(resto_ran, 0, "Enjoy!", 50, "Script MT Bold", 25, 1, 0xFFFFFFFF, 0, 1);
	CreateDynamicObject(1223, 2099.542480, -1761.946777, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1223, 2110.358398, -1761.671997, 12.288200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2105.511230, -1762.292847, 11.025800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2103.876465, -1764.317993, 10.654200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 2107.195068, -1764.333496, 10.654200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1223, 2123.791260, -1762.102051, 12.288200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2098.952148, -1766.547974, 11.010800, 0.000000, 0.000000, 75.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2127.044922, -1766.037720, 10.639200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2129.088379, -1767.316650, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2127.044922, -1770.037720, 10.639200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2096.348389, -1776.190796, 11.025800, 0.000000, 0.000000, 75.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2127.044922, -1774.037720, 10.639200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2129.077637, -1774.500488, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2127.044922, -1778.037720, 10.639200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 2098.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 2102.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 2106.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 2110.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2093.773438, -1785.816284, 11.025800, 0.000000, 0.000000, 75.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(18766, 2129.099609, -1781.105591, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2114.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2099.197510, -1785.617065, 11.025800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2118.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2109.150146, -1785.620483, 11.025800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19353, 2122.909424, -1783.581909, 10.639200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(727, 2098.871826, -1788.208984, 11.918940, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2119.129150, -1785.615112, 11.025800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(14400, 2097.549316, -1788.742188, 12.524700, 0.000000, 0.000000, 178.638733, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2097.913574, -1788.737061, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 2096.539551, -1788.738647, 11.467800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2101.052002, -1788.544556, 11.356250, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2104.552246, -1788.666260, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2104.154053, -1788.765503, 12.524700, 0.000000, 0.000000, 178.638733, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(647, 2101.720703, -1789.093628, 12.371350, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19380, 2136.402588, -1784.159058, 12.342100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 8671, "vegassland62", "greystones01_128", 0xFFFFFFFF);
	CreateDynamicObject(1223, 2091.656494, -1791.175537, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18762, 2092.366211, -1791.103149, 11.025800, 0.000000, 0.000000, -15.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(732, 2121.093018, -1787.999512, 12.102020, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.800537, -1787.840942, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2094.258301, -1791.516968, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2133.611084, -1785.630371, 12.769600, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2097.671387, -1791.520142, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2101.088867, -1791.525146, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2102.791260, -1791.511963, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19452, 2127.599609, -1787.654785, 12.315000, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(14400, 2120.824707, -1789.156860, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2120.864502, -1789.179199, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2106.215820, -1791.525513, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1223, 2135.081787, -1786.414185, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2135.299072, -1786.538696, 12.158070, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.511719, -1787.836304, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2135.743408, -1787.287598, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19452, 2137.202393, -1787.657959, 12.315000, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2122.800293, -1791.281616, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2128.570068, -1788.151367, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.743408, -1788.060669, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18747, 2132.271973, -1790.311401, 12.391100, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2133.309326, -1790.415405, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.509521, -1791.271973, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.100586, -1794.146606, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19376, 2127.602295, -1794.647949, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(2636, 2123.571045, -1795.665771, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2112, 2125.085693, -1795.630737, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2128.842773, -1792.944092, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.751953, -1792.862183, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2133.408203, -1793.874146, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2126.628418, -1795.665894, 12.956200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.512207, -1794.697510, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2133.642822, -1794.900391, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.070068, -1796.994141, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19380, 2136.402588, -1794.640137, 12.342100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 8671, "vegassland62", "greystones01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19545, 2098.963867, -1800.769897, 12.376400, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 9495, "vict_sfw", "Grass_128HV", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19376, 2137.227783, -1794.647461, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2093.784668, -1801.980225, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1223, 2090.904053, -1802.209229, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2097.224365, -1801.979248, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2100.645264, -1801.978394, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2104.067383, -1801.972168, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19545, 2113.945557, -1800.769775, 12.376400, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 9495, "vict_sfw", "Grass_128HV", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2131.523926, -1798.104370, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2135.743896, -1797.288452, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(2636, 2128.122559, -1799.248413, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2128.807617, -1797.383789, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.748291, -1797.302856, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19811, 2127.617676, -1800.467529, 13.229300, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2126.545898, -1800.654907, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2093.562988, -1804.746948, 11.356250, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19811, 2127.620361, -1800.767822, 13.229300, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2112, 2128.080322, -1800.682861, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2098.535400, -1804.806763, 12.524700, 0.000000, 0.000000, 178.638733, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19545, 2128.939941, -1800.764526, 12.376400, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 9495, "vict_sfw", "Grass_128HV", 0xFFFFFFFF);
	CreateDynamicObject(727, 2102.901123, -1804.686279, 11.918940, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2135.213867, -1799.577759, 12.158070, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9812, 2136.802002, -1799.191772, 8.758900, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2128.048340, -1802.115967, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.532715, -1801.531006, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2104.189697, -1805.848145, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(6056, 2096.697998, -1806.546387, 12.105770, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 1, 12954, "sw_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(resto_ran, 0, 12954, "sw_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	SetDynamicObjectMaterial(resto_ran, 2, 8675, "wddngchpl02", "vgschapelwall01_64", 0xFFFFFFFF);
	CreateDynamicObject(767, 2098.769531, -1806.421387, 12.183080, 0.000000, 0.000000, 290.777924, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2091.545410, -1807.006592, 11.025800, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(18747, 2132.250244, -1801.793091, 12.448800, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(647, 2097.808350, -1806.911865, 12.371350, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2101.502197, -1806.681396, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 2098.372070, -1807.060913, 11.467800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2094.364990, -1807.665527, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.148193, -1804.319214, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2095.396973, -1808.338379, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2128.879150, -1802.263428, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.743164, -1802.202881, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2123.510254, -1805.701294, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2103.443604, -1808.527832, 11.356250, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19376, 2127.603516, -1805.134644, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(2112, 2125.102051, -1805.714355, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2100.057617, -1809.111816, 12.524700, 0.000000, 0.000000, 178.638733, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2126.624023, -1805.768799, 12.956200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.532227, -1804.952148, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(647, 2104.773438, -1809.221558, 12.371350, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(16021, 2113.676270, -1808.114990, 12.053800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 8, 13002, "sw_smlfarm", "des_woodslats1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(resto_ran, 0, 13002, "sw_smlfarm", "des_woodslats1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(resto_ran, 1, 13002, "sw_smlfarm", "des_woodslats1", 0xFFFFFFFF);
	SetDynamicObjectMaterial(resto_ran, 5, 12954, "sw_furniture", "CJ_WOOD5", 0xFFFFFFFF);
	CreateDynamicObject(19841, 2128.918945, -1804.282837, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.090576, -1807.153564, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2135.495117, -1804.989990, 12.158070, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2133.835205, -1805.451172, 12.158070, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.822021, -1807.912109, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19380, 2136.407715, -1805.124512, 12.342100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 8671, "vegassland62", "greystones01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19376, 2137.223877, -1805.122559, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(1223, 2090.928711, -1811.815186, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2093.774902, -1811.866333, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2097.193604, -1811.875854, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2100.596191, -1811.873413, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2104.018799, -1811.871216, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2105.721436, -1811.861694, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2135.740479, -1807.248657, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2131.536133, -1808.382568, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2120.371338, -1810.518433, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2128.832764, -1807.184326, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.717529, -1807.122314, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2128.104492, -1809.319336, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2120.918945, -1810.400269, 11.356250, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.805664, -1811.353760, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2126.453857, -1810.735352, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2195, 2111.661621, -1813.354004, 13.794800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2112, 2128.082275, -1810.765381, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(767, 2120.864746, -1812.740356, 12.183080, 0.000000, 0.000000, 290.777924, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2134.348877, -1810.358887, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1223, 2135.122803, -1810.452515, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18747, 2132.585693, -1811.160400, 12.385400, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2128.042236, -1812.143799, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.541016, -1811.822632, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2121.049316, -1813.706055, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2195, 2113.174561, -1815.421265, 13.794800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.789795, -1814.754883, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.149902, -1814.586670, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.730957, -1812.682251, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2129.964111, -1812.658081, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 2124.903809, -1815.582642, 13.259000, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2120.469971, -1816.335083, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2123.625000, -1816.036743, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 2121.021973, -1816.385498, 11.467800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2134.823242, -1813.929810, 12.158070, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2112, 2125.107666, -1816.006714, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19376, 2127.600586, -1815.622437, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(2636, 2126.580811, -1816.014893, 12.956200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19835, 2125.270264, -1816.442017, 13.259000, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.549316, -1815.262695, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.058350, -1817.397461, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.805908, -1818.176147, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19380, 2136.413330, -1815.609131, 12.342100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 8671, "vegassland62", "greystones01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19376, 2137.222900, -1815.622559, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(1223, 2091.045654, -1822.382568, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2093.896973, -1822.334595, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2097.317383, -1822.319092, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.720215, -1816.502197, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2100.735596, -1822.311768, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2129.214844, -1816.561768, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2121.074463, -1819.834717, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2135.733398, -1817.224609, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2104.153320, -1822.323608, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2107.574951, -1822.336548, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.552979, -1818.677124, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19452, 2117.986572, -1821.626343, 12.315000, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(2636, 2128.128418, -1820.202759, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.718262, -1818.282227, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1726, 2111.671631, -1822.981445, 13.194800, 0.000000, 0.000000, 130.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18747, 2132.454590, -1819.900391, 12.385500, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(647, 2098.939453, -1824.810791, 12.371350, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2134.337158, -1819.666992, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2126.592529, -1821.521729, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2096.616699, -1825.421509, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2112, 2128.104248, -1821.566406, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19893, 2128.098389, -1821.910645, 13.154100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2129.875488, -1820.068237, 0.116030, 0.000000, 0.000000, 287.264954, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2121.086426, -1823.422363, 12.912200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2135.209229, -1820.600464, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2826, 2113.040283, -1824.698853, 13.744500, 0.000000, 0.000000, 15.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2107.838623, -1825.249512, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2134.389893, -1821.205444, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2094.734375, -1826.758179, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.556885, -1822.097046, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2311, 2113.461670, -1825.227051, 13.239800, 0.000000, 0.000000, 130.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2128.089355, -1823.012817, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2102.357910, -1826.541382, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2106.780762, -1826.177490, 12.524700, 0.000000, 0.000000, 178.638733, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2091.667725, -1827.208008, 11.025800, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(3515, 2100.112793, -1827.290894, 11.467800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(727, 2105.468994, -1826.937012, 11.918940, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2095.472412, -1827.704224, 11.356250, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(732, 2096.979004, -1827.712769, 12.102020, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2098.678467, -1827.802368, 12.524700, 0.000000, 0.000000, 178.638733, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.812744, -1825.112549, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 2101.629639, -1828.289185, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2110.506348, -1827.482178, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2108.756836, -1827.546143, 11.356250, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2125.166016, -1825.808716, 12.956200, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(732, 2121.292480, -1826.487549, 12.102020, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.712891, -1823.403931, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19841, 2129.475586, -1823.476929, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1726, 2115.694092, -1827.801392, 13.194800, 0.000000, 0.000000, 130.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 2111.472900, -1828.230347, 11.467800, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14400, 2120.735596, -1827.211182, 12.524700, 0.000000, 0.000000, 105.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19376, 2127.601807, -1826.106812, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(1215, 2120.991211, -1827.245605, 12.374100, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.567139, -1825.517822, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(647, 2112.836426, -1828.594604, 12.371350, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2123.581055, -1827.203979, 12.956200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1305, 2134.396484, -1825.239380, 12.158070, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2112, 2125.168213, -1827.239502, 12.763200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 2071.541016, -1831.414307, 13.546900, -0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2636, 2126.667969, -1827.197754, 12.956200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2100, 2118.030762, -1828.625244, 13.239700, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2122.805176, -1828.533081, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(19380, 2136.412598, -1826.099731, 12.342100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 8671, "vegassland62", "greystones01_128", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(18766, 2096.180420, -1831.718262, 12.769600, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(19376, 2137.227295, -1826.107544, 12.297100, 0.000000, 90.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 17009, "truth_farm", "des_ghotwood1", 0xFFFFFFFF);
	CreateDynamicObject(2636, 2125.100098, -1828.525391, 12.956200, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2106.160889, -1831.723511, 12.769600, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	resto_ran = CreateDynamicObject(18766, 2135.733887, -1827.204956, 12.769600, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(3850, 2122.790283, -1830.254028, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.569580, -1828.957520, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3675, 2136.718018, -1827.825439, 10.250010, 0.000000, 0.000000, 90.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2116.143066, -1831.729370, 12.769600, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(19841, 2128.890625, -1827.976685, 0.116030, 0.000000, 0.000000, -90.000000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3850, 2131.584473, -1830.494507, 12.912200, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2126.124023, -1831.735107, 12.769600, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(1223, 2134.999512, -1830.877686, 12.348200, 0.000000, 0.000000, 180.000000, .worldid = 0, .streamdistance = 700);
	resto_ran = CreateDynamicObject(18766, 2131.230713, -1831.732300, 12.754600, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);
	SetDynamicObjectMaterial(resto_ran, 0, 13691, "bevcunto2_lahills", "aamanbev96x", 0xFFFFFFFF);
	CreateDynamicObject(1305, 2135.187988, -1830.902222, 11.047480, 0.000000, 0.000000, 0.000000, .worldid = 0, .streamdistance = 700);*/

	// BANK
	CreateDynamicObject(14789, 2926.69922, -1780.19922, 1194.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2935.59961, -1794.09961, 1190.02490,   0.00000, 0.00000, 88.99475, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2929.30005, -1774.09998, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2928.60010, -1774.09998, 1190.90002,   0.00000, 0.00000, 1.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2928.60010, -1774.09998, 1193.09998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2928.60010, -1774.09998, 1195.30005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2928.60010, -1774.09998, 1197.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2932.80005, -1774.09998, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2936.30005, -1774.09998, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2939.69995, -1774.09998, 1191.09998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2939.69995, -1774.09998, 1193.30005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2940.50000, -1774.09961, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2944.89990, -1774.09998, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2944.00000, -1774.00000, 1191.19995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2944.00000, -1774.00000, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.50000, -1774.09998, 1190.09998,   0.00000, 0.00000, 269.75000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.50000, -1777.59998, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.50000, -1781.09998, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.50000, -1784.59998, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1788.00000, 1191.19995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1788.00000, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.39941, -1788.89941, 1190.09998,   0.00000, 0.00000, 269.74182, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.39941, -1792.39941, 1191.19995,   0.00000, 0.00000, 1.24146, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.39990, -1792.40002, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.39990, -1793.19995, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.39990, -1796.69995, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2947.39990, -1800.19995, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1803.00000, 1191.09998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1803.00000, 1193.30005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1803.00000, 1195.50000,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1803.00000, 1197.69995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2939.69995, -1774.09998, 1195.50000,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2939.69995, -1774.09998, 1197.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2944.00000, -1774.00000, 1195.50000,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2944.00000, -1774.00000, 1197.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.39990, -1792.40002, 1195.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.39990, -1792.40002, 1197.80005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1788.00000, 1195.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2947.50000, -1788.00000, 1197.69995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1784.30005, 1191.19995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1784.30005, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1784.30005, 1195.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1784.30005, 1197.80005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1797.00000, 1191.19995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1797.00000, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1797.00000, 1195.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2934.10010, -1797.00000, 1197.80005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.89990, -1784.30005, 1191.19995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.89990, -1784.30005, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.89990, -1784.30005, 1195.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.89990, -1784.30005, 1197.80005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.80005, -1797.00000, 1191.19995,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.80005, -1797.00000, 1193.40002,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.80005, -1797.00000, 1195.59998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2941.80005, -1797.00000, 1197.80005,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1808, 2927.50000, -1804.30005, 1190.09998,   0.00000, 0.00000, 183.25003, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2932.50000, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2934.30005, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2936.10010, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2937.89990, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2007, 2939.69995, -1770.30005, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2007, 2940.69922, -1770.29980, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2943.50000, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2945.30005, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2947.10010, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2948.89990, -1769.90002, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1770.80005, 1190.09998,   0.00000, 0.00000, 270.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1772.59998, 1190.09998,   0.00000, 0.00000, 269.75000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1774.40002, 1190.09998,   0.00000, 0.00000, 270.24951, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1776.19995, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1778.00000, 1190.09998,   0.00000, 0.00000, 270.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1779.80005, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1781.59998, 1190.00000,   0.00000, 0.00000, 270.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1783.40002, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1785.19995, 1190.09998,   0.00000, 0.00000, 270.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1787.00000, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2007, 2950.10010, -1788.80005, 1190.09998,   0.00000, 0.00000, 269.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2007, 2950.09961, -1789.79980, 1190.09998,   0.00000, 0.00000, 269.24744, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1792.59998, 1190.09998,   0.00000, 0.00000, 270.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1794.40002, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1796.19995, 1190.09998,   0.00000, 0.00000, 270.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2162, 2950.60010, -1798.00000, 1190.09998,   0.00000, 0.00000, 269.74731, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2164, 2950.60010, -1799.80005, 1190.09998,   0.00000, 0.00000, 270.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1808, 2949.60010, -1804.30005, 1190.00000,   0.00000, 0.00000, 185.25003, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2935.59961, -1789.69922, 1190.02490,   0.00000, 0.00000, 88.98926, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2940.39941, -1792.09961, 1190.04993,   0.00000, 0.00000, 270.24170, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2940.39941, -1787.59961, 1189.99988,   0.00000, 0.00000, 270.23621, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2937.00000, -1784.79980, 1190.02490,   0.00000, 0.00000, 359.24194, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2357, 2938.00000, -1793.40002, 1190.00000,   0.00000, 0.00000, 90.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2357, 2938.00000, -1789.19995, 1190.00000,   0.00000, 0.00000, 90.24719, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2852, 2937.89990, -1788.30005, 1190.40002,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2852, 2938.00000, -1790.90002, 1190.40002,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2852, 2937.89990, -1794.40002, 1190.40002,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(16780, 2938.80005, -1788.69995, 1198.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2106, 2947.30005, -1791.50000, 1191.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2106, 2947.39990, -1788.80005, 1191.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2106, 2940.60010, -1774.19995, 1191.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2106, 2943.10010, -1774.19995, 1191.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2190, 2941.66309, -1774.36743, 1191.00000,   0.00000, 0.00000, 183.99902, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2190, 2947.16821, -1790.55603, 1191.00000,   0.00000, 0.00000, 85.99548, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2614, 2950.60010, -1790.59998, 1195.50000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2614, 2941.89990, -1769.90002, 1195.80005,   0.00000, 0.00000, 359.99451, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3964, 2926.80005, -1788.59998, 1195.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(3964, 2926.80005, -1788.59998, 1193.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2286, 2926.71729, -1781.81079, 1195.47595,   0.00000, 0.00000, 89.99976, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2942, 2938.10010, -1804.09998, 1190.69995,   0.00000, 0.00000, 179.99994, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2942, 2927.19995, -1785.69995, 1190.69995,   0.00000, 0.00000, 89.99451, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2925.91382, -1781.02039, 1190.02490,   0.00000, 0.00000, 88.98926, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2925.89990, -1795.00000, 1190.00000,   0.00000, 0.00000, 88.99475, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2927.19922, -1801.32617, 1190.04993,   0.00000, 0.00000, 87.98926, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2932.00000, -1803.89941, 1189.99988,   0.00000, 0.00000, 180.74158, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2926.00000, -1796.19995, 1191.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2926.00000, -1792.00000, 1191.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2935.00000, -1796.69995, 1191.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2941.10010, -1797.00000, 1191.09998,   0.00000, 0.00000, 62.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2941.89990, -1785.09998, 1191.09998,   0.00000, 0.00000, 61.99585, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2934.30005, -1785.00000, 1191.09998,   0.00000, 0.00000, 61.99585, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2926.19995, -1777.90002, 1191.09998,   0.00000, 0.00000, 61.99585, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2926.19995, -1782.40002, 1191.09998,   0.00000, 0.00000, 61.99585, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1723, 2927.24146, -1789.27393, 1190.02490,   0.00000, 0.00000, 88.98926, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2927.10010, -1770.09998, 1191.09998,   0.00000, 0.00000, 61.99585, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(630, 2950.30005, -1804.00000, 1191.09998,   0.00000, 0.00000, 61.99585, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2245, 2929.60010, -1774.30005, 1191.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2245, 2947.30005, -1801.90002, 1191.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2245, 2947.39990, -1793.40002, 1191.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2245, 2947.50000, -1774.40002, 1191.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2245, 2938.89990, -1774.19995, 1191.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1494, 2945.60010, -1804.59998, 1190.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2984.60010, -1891.40002, 1192.09998,   0.00000, 0.00000, 1.24695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(9131, 2946.30005, -1804.90002, 1192.80005,   0.00000, 270.00000, 359.99701, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1663, 2948.61133, -1790.31726, 1190.52588,   0.00000, 0.00000, 274.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1663, 2941.27759, -1772.99500, 1190.52588,   0.00000, 0.00000, 3.99902, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1719, 2947.48291, -1789.33167, 1190.99463,   0.00000, 0.00000, 94.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1719, 2942.48926, -1774.05762, 1191.01965,   0.00000, 0.00000, 181.99402, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2894, 2941.19043, -1773.94141, 1190.96521,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2894, 2947.53735, -1790.02112, 1190.96521,   0.00000, 0.00000, 269.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2163, 2941.72656, -1769.79956, 1190.06567,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2163, 2950.58203, -1790.79395, 1190.11279,   0.00000, 0.00000, 270.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2332, 2950.43555, -1791.64172, 1191.50439,   0.00000, 0.00000, 269.99997, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2332, 2950.44482, -1790.80896, 1191.50439,   0.00000, 0.00000, 269.99451, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2332, 2941.72363, -1769.95398, 1191.45410,   0.00000, 0.00000, 359.24451, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2332, 2942.54395, -1769.94629, 1191.45410,   0.00000, 0.00000, 359.24194, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2005, 2941.62329, -1769.93311, 1191.36084,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2005, 2942.57568, -1770.07422, 1191.36084,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2005, 2950.33521, -1791.62805, 1191.64404,   0.00000, 0.00000, 268.50000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2005, 2950.31519, -1790.78076, 1191.64404,   0.00000, 0.00000, 268.49487, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2921, 2950.22949, -1769.63989, 1196.22119,   0.00000, 354.00000, 100.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2921, 2941.76147, -1797.10046, 1196.62451,   0.00000, 353.99597, 69.49756, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2921, 2950.69727, -1804.27649, 1196.59424,   0.00000, 353.99597, 333.49402, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2921, 2934.17603, -1784.11646, 1195.75586,   0.00000, 353.99597, 267.48999, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2921, 2926.48047, -1770.00610, 1196.85010,   0.00000, 353.99597, 179.23962, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2773, 2940.56152, -1775.70886, 1190.58289,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2773, 2942.35498, -1775.65039, 1190.58289,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2773, 2945.90430, -1789.47571, 1190.58289,   0.00000, 0.00000, 271.25000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2773, 2945.83643, -1791.33789, 1190.58289,   0.00000, 0.00000, 269.99695, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(14576, 2942.58911, -1789.95166, 1185.58911,   0.00000, 0.00000, 0.60001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1566, 2948.44165, -1805.66345, 1187.00916,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(2208, 2929.30005, -1774.09998, 1190.09998,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1566, 2946.01831, -1804.65845, 1187.00916,   0.00000, 0.00000, 0.30001, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.77197, -1774.65247, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2939.87231, -1771.96765, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.05737, -1770.47095, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.75342, -1772.12427, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.29541, -1773.36926, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2940.89893, -1771.59338, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.00244, -1768.56824, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.87939, -1769.71423, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2943.67383, -1769.65881, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.69043, -1768.02551, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2940.69629, -1769.34326, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.82202, -1771.22241, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.92896, -1768.70056, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.92896, -1768.70020, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.73438, -1771.52759, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2943.83984, -1770.25293, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2944.39209, -1768.23743, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2944.29272, -1770.87671, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2944.58081, -1771.48438, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.87793, -1770.87891, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.27637, -1770.46606, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.66968, -1769.21887, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2940.81226, -1769.99280, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2940.38770, -1770.09082, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.39038, -1771.91296, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.39038, -1772.37158, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2940.25439, -1770.43652, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2945.03076, -1769.63733, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.54956, -1768.74609, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.81274, -1770.25928, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.10962, -1767.32410, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2942.94165, -1769.86499, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1212, 2941.21631, -1770.53699, 1177.40747,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1550, 2940.31519, -1768.02576, 1177.80774,   0.00000, 0.00000, 172.49994, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1550, 2941.48755, -1768.00916, 1177.80774,   0.00000, 0.00000, 172.49994, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1550, 2942.66821, -1768.00366, 1177.80774,   0.00000, 0.00000, 172.49994, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1550, 2943.86377, -1768.03040, 1177.80774,   0.00000, 0.00000, 172.49994, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1829, 2939.90796, -1779.05237, 1177.83752,   0.00000, 0.00000, 90.54000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1829, 2939.92432, -1777.10486, 1177.83752,   0.00000, 0.00000, 90.54000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1829, 2939.88330, -1775.02173, 1177.83752,   0.00000, 0.00000, 90.54000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1829, 2940.10669, -1773.06665, 1177.83752,   0.00000, 0.00000, 90.54000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(1829, 2940.06323, -1771.08496, 1177.83752,   0.00000, 0.00000, 90.54000, .worldid = 0, .streamdistance = 300);
	CreateDynamicObject(19305, 2944.62988, -1803.85254, 1178.73132,   0.00000, 0.00000, -88.80000, .worldid = 0, .streamdistance = 300);

	// LS MAPPING - TAXI - HOTEL
	CreateDynamicObject(1256, 1769.30005, -1835.90002, 13.20000,   0.00000, 0.00000, 255.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1797.00000, -1742.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1801.09998, -1742.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1805.19995, -1742.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1771.00000, -1836.40002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1767.59998, -1835.40002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1359, 1845.09998, -1860.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1359, 1766.59998, -1835.19995, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1359, 1726.30005, -1860.80005, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1359, 1798.40002, -1721.90002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 1721.80005, -1714.00000, 12.70000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3877, 1761.40002, -1697.69995, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3877, 1761.30005, -1703.00000, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3877, 1807.00000, -1721.90002, 14.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3877, 1799.50000, -1721.90002, 14.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9833, 1715.00000, -1911.90002, 15.25212,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2670, 1806.80005, -1720.59998, 12.63000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2673, 1762.89941, -1696.79980, 12.53000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1549, 1762.00000, -1695.69995, 12.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1449, 1804.00000, -1687.50000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1442, 1810.09998, -1692.50000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1442, 1809.80005, -1691.69995, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1440, 1806.69995, -1687.80005, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1430, 1803.19995, -1688.19995, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1415, 1809.40002, -1687.69995, 12.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1372, 1810.19995, -1690.19995, 12.60000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1359, 1810.00000, -1694.50000, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1265, 1804.09998, -1688.40002, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2670, 1807.40002, -1690.19995, 12.63000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1363, 1811.80005, -1878.50000, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1363, 1811.69995, -1876.69995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1346, 1830.69995, -1765.80005, 13.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1342, 1697.90002, -1872.40002, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1341, 1695.19995, -1872.40002, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1340, 1700.50000, -1870.19995, 13.70000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1703.59998, -1911.50000, 18.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1754.80005, -1695.80005, 18.40000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1717.90002, -1932.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1713.69995, -1932.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1711.30005, -1910.50000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1711.19995, -1913.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1719.09998, -1910.50000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1718.90002, -1913.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1719.30005, -1889.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1727.19995, -1910.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1727.19995, -1913.80005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1704.30005, -1897.50000, 13.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1704.30005, -1923.90002, 13.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1707.09998, -1942.80005, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10183, 1781.69995, -1691.09998, 12.55000,   0.00000, 0.00000, 45.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1745.90002, -1864.40002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3935, 1715.00000, -1880.00000, 15.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8558, 1782.00000, -1689.69995, 14.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3380, 1809.30005, -1848.90002, 12.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(830, 1723.00000, -1939.00000, 13.20000,   0.00000, 0.00000, 9.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(615, 1702.09998, -1940.90002, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(718, 1689.19922, -1871.79980, 12.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1760.50000, -1696.19995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1760.50000, -1687.59998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1760.50000, -1704.80005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1809.50000, -1720.19922, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1698.69995, -1880.90002, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1850.59998, -1864.50000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1854.59998, -1864.69995, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1708.19995, -1712.40002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1710.00000, -1712.19995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1711.90002, -1710.40002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1708.09998, -1709.59998, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1710.19995, -1709.19995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1713.50000, -1708.69995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1708.00000, -1706.69995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1710.30005, -1707.09998, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1711.80005, -1707.90002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1714.19995, -1705.90002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1714.09998, -1702.69995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1714.30005, -1700.00000, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1712.00000, -1704.90002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1709.40002, -1704.50000, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1708.19995, -1701.90002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1711.90002, -1701.50000, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1708.19995, -1698.19995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1714.19995, -1698.19995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1711.69995, -1698.09998, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1709.80005, -1698.50000, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1710.00000, -1700.69995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.80005, -1708.30005, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1731.40002, -1709.90002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1733.19995, -1711.59998, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.50000, -1712.59998, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.59998, -1709.80005, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.59998, -1706.80005, 13.40000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.59998, -1704.19995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.50000, -1701.59998, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.50000, -1698.90002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1732.09998, -1707.19995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.19995, -1707.00000, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.50000, -1704.40002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1733.69995, -1706.90002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1732.40002, -1704.30005, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.30005, -1701.50000, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1732.80005, -1701.30005, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.59998, -1695.90002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1731.40002, -1702.69995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.40002, -1693.40002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.59998, -1690.69995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1732.00000, -1690.80005, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.30005, -1690.80005, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1733.40002, -1692.00000, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1731.69995, -1693.50000, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1732.00000, -1696.69995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1731.50000, -1699.19995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1733.80005, -1698.90002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.59998, -1698.19995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1734.50000, -1695.90002, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.30005, -1693.69995, 13.40000,   0.00000, 0.00000, 44.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1701.19995, -1941.40002, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1703.09998, -1941.40002, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1703.09998, -1939.50000, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1701.80005, -1938.59998, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1709.00000, -1937.30005, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1710.30005, -1936.80005, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(871, 1719.19995, -1941.50000, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1597, 1801.40002, -1846.59998, 15.20000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1281, 1697.90002, -1876.40002, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1281, 1695.90002, -1879.69995, 13.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1408, 1696.90002, -1882.00000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1408, 1694.09998, -1879.19995, 13.10000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(7894, 1722.90002, -1855.00000, 13.00000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16052, 1703.90002, -1862.69995, 14.20000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1700.19995, -1848.50000, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1700.19995, -1844.40002, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1703.90002, -1870.00000, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1703.90002, -1865.90002, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1703.90002, -1859.50000, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1419, 1701.90002, -1857.40002, 13.10000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(861, 1699.90002, -1857.40002, 12.70000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1702.09998, -1858.59998, 12.80000,   0.00000, 0.00000, 300.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1701.80005, -1848.40002, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1701.00000, -1826.00000, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1725.80005, -1848.40002, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1727.69995, -1848.30005, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.69995, -1848.30005, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1731.69995, -1848.19995, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1733.50000, -1848.30005, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1735.50000, -1848.40002, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1737.69995, -1848.50000, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1740.19995, -1849.59998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1745.80005, -1849.59998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1234, 1811.69995, -1880.09998, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1234, 1827.40002, -1765.00000, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2745, 1728.00000, -1845.50000, 13.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3462, 1702.09998, -1859.00000, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3471, 1711.09998, -1866.69995, 13.80000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3521, 1715.20117, -1857.80957, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3471, 1719.09998, -1866.69995, 13.80000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1809.50000, -1715.89941, 13.20000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1809.39941, -1704.39941, 13.20000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1809.39941, -1710.29980, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1809.39941, -1698.00000, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1706.40002, -1939.09998, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1685.59998, -1891.50000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1684.90002, -1911.59998, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1684.50000, -1894.50000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1684.09998, -1876.19995, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1682.90002, -1880.40002, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1680.30005, -1878.09998, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1676.90002, -1881.09998, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1727.69995, -1875.09998, 12.80000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1727.80005, -1885.09998, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1727.80005, -1880.59998, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(646, 1703.69922, -1889.00000, 14.00000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1702.69995, -1879.80005, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1702.40002, -1884.69995, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1702.40002, -1875.09998, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1702.00000, -1845.09998, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1702.40002, -1831.40002, 12.80000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1701.09998, -1828.69995, 12.80000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1731.69995, -1831.80005, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1729.40002, -1831.90002, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1723.80005, -1829.50000, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1734.40002, -1830.50000, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1808.09998, -1944.69995, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1808.30005, -1948.80005, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1810.40002, -1946.90002, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1848.69995, -1969.40002, 12.80000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1805.09998, -1866.00000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1752.59998, -1891.90002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1811.69995, -1864.80005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1740.09998, -1864.40002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1319, 1725.30005, -1850.00000, 13.10000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1319, 1725.69995, -1860.00000, 13.10000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1257, 1785.40002, -1839.30005, 13.80000,   0.00000, 0.00000, 255.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 1796.90002, -1849.59998, 15.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 1768.40002, -1849.69995, 15.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1223, 1725.19995, -1860.80005, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(4003, 1769.69995, -1867.69995, 25.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1720.50000, -1858.40002, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1713.09998, -1850.00000, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1714.50000, -1848.30005, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1715.00000, -1850.30005, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2799, 1764.30005, -1914.40002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2799, 1763.50000, -1929.30005, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2799, 1764.00000, -1921.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2799, 1767.59998, -1927.40002, 13.10000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2800, 1764.00000, -1921.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2801, 1761.00000, -1916.59998, 12.88000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1761.69995, -1932.69995, 12.90000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1760.90002, -1924.69995, 12.90000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1764.30005, -1925.69995, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1766.90002, -1931.90002, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1696.59998, -1948.30005, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1708.40002, -1948.30005, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1727.00000, -1948.40002, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1730.69995, -1948.40002, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1740.80005, -1948.40002, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1764.00000, -1948.50000, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1767.69995, -1948.50000, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1771.40002, -1948.50000, 13.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1727.80005, -1976.40002, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1727.80005, -1972.80005, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1727.80005, -1969.19995, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1730.80005, -1976.30005, 13.60000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1730.80005, -1972.69995, 13.60000,   0.00000, 0.00000, 269.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1730.80005, -1969.09998, 13.60000,   0.00000, 0.00000, 269.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1731.80005, -1972.69995, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1731.80005, -1976.30005, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1731.80005, -1969.09998, 13.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1726.80005, -1969.19995, 13.60000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1726.80005, -1972.80005, 13.60000,   0.00000, 0.00000, 269.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3657, 1726.80005, -1976.40002, 13.60000,   0.00000, 0.00000, 269.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1767.19995, -1922.09998, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1761.00000, -1916.59998, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2802, 1766.19995, -1917.50000, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2801, 1766.19995, -1917.50000, 12.88000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2801, 1760.90002, -1924.69995, 12.88000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2801, 1764.30005, -1925.69995, 12.88000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2801, 1766.90002, -1931.90002, 12.88000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2801, 1761.69995, -1932.69995, 12.88000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2800, 1763.50000, -1929.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2800, 1767.59998, -1927.40002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2800, 1764.30005, -1914.50000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1670, 1767.30005, -1921.80005, 13.25000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1670, 1767.19995, -1922.19995, 13.25000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2001, 1767.69995, -1919.40002, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2001, 1763.19995, -1908.80005, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(625, 1766.80005, -1911.50000, 13.30000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(628, 1753.00000, -1909.19995, 14.60000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(628, 1753.00000, -1915.00000, 14.60000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1751.59998, -1925.50000, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1757.00000, -1905.80005, 13.30000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1764.30005, -1934.09998, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1755.80005, -1933.00000, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1759.39941, -1909.79980, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(644, 1752.89941, -1932.50000, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2001, 1768.00000, -1929.80005, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2001, 1760.09998, -1914.50000, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2001, 1763.50000, -1918.09998, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2001, 1761.19995, -1930.40002, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3461, 1757.09998, -1903.90002, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3461, 1755.30005, -1900.80005, 14.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(638, 1753.50000, -1900.80005, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3515, 1764.93250, -1896.06665, 12.46475,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8856, 1773.50000, -1916.69995, 12.80000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10183, 1802.80005, -1920.30005, 12.43000,   0.00000, 0.00000, 315.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(10183, 1778.19995, -1915.30005, 12.44000,   0.00000, 0.00000, 135.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1758.80005, -1910.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1758.80005, -1914.00000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1758.80005, -1918.40002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1758.80005, -1922.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1758.90002, -1926.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1758.90002, -1929.59998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1700.59998, -1942.19995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1713.69995, -1936.00000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1713.80005, -1938.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1713.80005, -1942.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1717.90002, -1936.00000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1717.80005, -1938.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1717.80005, -1942.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1806.40002, -1935.19995, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1774.59998, -1935.30005, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1774.00720, -1894.72583, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1806.09998, -1899.90002, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1774.03638, -1890.38574, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1790.90002, -1935.19995, 18.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1791.00000, -1885.30005, 18.40000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(6299, 1664.19995, -1889.50000, 14.59000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1773.50000, -1900.00000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1752.50000, -1894.30005, 13.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1787.00000, -1941.00000, 13.00000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1757.40002, -1884.69995, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1770.09998, -1884.59998, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1723, 1756.50000, -1931.19995, 12.60000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1724, 1752.90002, -1929.69995, 12.60000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2725, 1752.19995, -1916.80005, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2725, 1757.59998, -1925.69995, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11665, 1753.59998, -1921.00000, 13.30000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1774.09998, -1886.90002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1774.09998, -1902.90002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1774.09998, -1898.09998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16052, 1756.30005, -1902.30005, 14.20000,   0.00000, 0.00000, 120.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1752.59998, -1896.40002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1772.59998, -1884.59998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1767.30005, -1884.50000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1760.19995, -1884.40002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1754.50000, -1884.50000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1762.00000, -1906.69995, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1766.09998, -1906.69995, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1773.50000, -1902.40002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1773.59998, -1897.80005, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1764.00000, -1906.50000, 13.00000,   0.00000, 0.00000, 269.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1799.19995, -1940.90002, 13.00000,   0.00000, 0.00000, 269.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1810.40002, -1929.30005, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1810.59998, -1912.50000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1785.19995, -1941.00000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1788.80005, -1941.00000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1797.40002, -1941.09998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1801.00000, -1941.09998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1810.59998, -1931.19995, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1810.69995, -1927.40002, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1810.59998, -1914.30005, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1810.59998, -1910.69995, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(848, 1824.80005, -1947.50000, 13.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1811.69995, -1845.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1302, 1739.00000, -1943.00000, 12.60000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1776, 1728.40002, -1943.09998, 13.70000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14872, 1819.40002, -1944.00000, 13.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(844, 1716.69995, -1828.69995, 13.50000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(738, 1780.30005, -1942.30005, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(792, 1761.80005, -1941.90002, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(628, 1700.00000, -1835.50000, 14.50000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(628, 1700.09998, -1841.40002, 14.50000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(628, 1744.80005, -1835.59998, 14.60000,   0.00000, 0.00000, 179.99500, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1713.30005, -1834.90002, 13.20000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1732.59998, -1835.00000, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1709.09998, -1841.90002, 13.20000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1727.00000, -1841.80005, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1732.00000, -1866.09998, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1776.19995, -1867.30005, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(640, 1763.69995, -1867.30005, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1795.00000, -1866.00000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1722.59998, -1834.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1705.69995, -1834.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1717.50000, -1842.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1735.19995, -1842.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1740.40002, -1834.69995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1746.00000, -1842.50000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1740.09998, -1842.40002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1833.80005, -1878.50000, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1837.90002, -1878.30005, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1842.09998, -1878.30005, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(869, 1846.59998, -1878.30005, 12.90000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1782.19995, -1948.30005, 19.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1735.90002, -1948.30005, 19.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1290, 1702.40002, -1948.00000, 19.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1764.30005, -1941.69995, 13.00000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1767.00000, -1941.69995, 13.00000,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1767.40002, -1936.00000, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1280, 1764.69995, -1936.00000, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(760, 1798.09998, -1966.00000, 12.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(761, 1837.59998, -1945.19995, 12.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(950, 1761.90002, -1936.00000, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(950, 1760.09998, -1938.50000, 13.10000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1760.09998, -1940.59998, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1760.09998, -1936.50000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(949, 1769.19995, -1936.00000, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1364, 1792.50000, -1704.69995, 13.30000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1360, 1796.30005, -1704.50000, 13.30000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1361, 1762.59998, -1704.69995, 13.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1768.00000, -1934.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1759.80005, -1934.30005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1768.00000, -1911.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1768.19995, -1922.80005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1725.19995, -1872.40002, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1725.19922, -1872.39941, 17.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1706.19995, -1872.69995, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1706.19922, -1872.69922, 17.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1724.59998, -1887.59998, 17.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1706.19995, -1887.59998, 17.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1706.19922, -1887.59961, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1724.59998, -1887.59998, 13.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1719.09998, -1884.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1719.19995, -1875.80005, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1719.19995, -1880.09998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1711.00000, -1875.59998, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1711.09998, -1884.19995, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1215, 1711.09998, -1879.90002, 13.10000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 1808.51404, -1860.39160, 15.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 1784.78967, -1860.31860, 15.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1232, 1750.83044, -1860.40527, 15.20000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1761.33923, -1691.69812, 13.08756,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1831.69373, -1870.75842, 13.02860,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	//CreateDynamicObject(983, 1833.73193, -1853.74927, 13.02860,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19381, 1763.58386, -1894.35889, 12.50139,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378, 1763.58765, -1899.53040, 7.59540,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378, 1763.58936, -1889.18677, 7.59540,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378, 1758.85168, -1894.36646, 8.03300,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378, 1768.31689, -1894.36108, 8.03296,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(744, 1761.29382, -1892.35461, 9.13243,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1760.54797, -1897.58203, 12.81729,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1764.84302, -1890.90479, 12.81729,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1766.60364, -1890.98767, 12.81729,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1766.71912, -1892.50232, 12.81729,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);

	// PRISON ACCOUNT
	CreateDynamicObject(14464,-292.82714844,1872.89453125,30.15856934,0.00000000,0.00000000,0.00000000); //object(gs_cages) (1)
	CreateDynamicObject(14464,-296.24218750,1893.34277344,30.08351707,0.00000000,0.00000000,178.68164062); //object(gs_cages) (2)
	//CreateDynamicObject(14412,-289.92578125,1883.05273438,38.23661041,0.00000000,0.00000000,0.00000000); //object(carter_drugfloor) (1)
	CreateDynamicObject(14459,-294.58789062,1882.96484375,35.67080688,0.00000000,0.00000000,0.00000000); //object(carter-cage) (1)
	CreateDynamicObject(14409,-310.74121094,1890.87792969,29.88073158,0.00000000,0.00000000,180.58227539); //object(carter-stairs02) (1)
	CreateDynamicObject(1508,-272.65234375,1875.08984375,30.55100441,0.00000000,0.00000000,0.00000000); //object(dyn_garage_door) (1)
	CreateDynamicObject(7191,-280.23730469,1850.82226562,30.76751137,0.00000000,0.00000000,1.49963379); //object(vegasnnewfence2b) (1)
	CreateDynamicObject(974,-289.07910156,1869.54003906,30.19556618,0.00000000,0.00000000,268.37402344); //object(tall_fence) (1)
	CreateDynamicObject(974,-297.23437500,1869.55761719,30.22050858,0.00000000,0.00000000,268.23120117); //object(tall_fence) (2)
	CreateDynamicObject(974,-300.16333008,1896.78515625,30.26559067,0.00000000,0.00000000,272.82543945); //object(tall_fence) (3)
	CreateDynamicObject(8324,-300.13281250,1897.22558594,29.71084785,0.00000000,0.00000000,0.00000000); //object(vgsbboardsigns10) (1)
	CreateDynamicObject(8324,-290.73632812,1897.12695312,29.68095207,0.00000000,0.00000000,0.00000000); //object(vgsbboardsigns10) (2)
	CreateDynamicObject(974,-291.86914062,1896.56152344,30.24546242,0.00000000,0.00000000,270.08239746); //object(tall_fence) (3)
	CreateDynamicObject(1771,-307.50390625,1895.21875000,29.52649117,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (1)
	CreateDynamicObject(1771,-300.80761719,1895.07519531,29.47652435,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (2)
	CreateDynamicObject(1771,-298.87011719,1895.00097656,29.52652359,0.00000000,0.00000000,358.01147461); //object(cj_bunk_bed1) (3)
	CreateDynamicObject(1771,-292.75683594,1895.06152344,29.52652359,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (4)
	CreateDynamicObject(1771,-290.97363281,1894.99707031,29.52652740,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (5)
	CreateDynamicObject(1771,-283.14355469,1894.83984375,29.50152779,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (6)
	CreateDynamicObject(1771,-298.32128906,1871.30371094,29.60152626,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (7)
	CreateDynamicObject(1771,-305.99023438,1871.20214844,29.52653122,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (8)
	CreateDynamicObject(1771,-290.02050781,1871.46093750,29.52653122,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (9)
	CreateDynamicObject(1771,-296.19335938,1871.43066406,29.47652054,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (10)
	CreateDynamicObject(1771,-281.80566406,1871.42578125,29.47652817,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (11)
	CreateDynamicObject(1771,-288.02148438,1871.40234375,29.52652740,0.00000000,0.00000000,0.00000000); //object(cj_bunk_bed1) (12)
	CreateDynamicObject(2514,-292.54785156,1870.04492188,28.89286041,0.00000000,0.00000000,180.53833008); //object(cj_toilet1) (1)
	CreateDynamicObject(2514,-283.54882812,1870.04296875,28.89285278,0.00000000,0.00000000,180.53833008); //object(cj_toilet1) (2)
	CreateDynamicObject(2514,-300.87792969,1870.04296875,28.89286041,0.00000000,0.00000000,180.53833008); //object(cj_toilet1) (3)
	CreateDynamicObject(2514,-305.56347656,1896.36035156,28.89285278,0.00000000,0.00000000,0.00000000); //object(cj_toilet1) (4)
	CreateDynamicObject(2514,-296.82812500,1896.26953125,28.86785698,0.00000000,0.00000000,0.00000000); //object(cj_toilet1) (5)
	CreateDynamicObject(2514,-288.41308594,1896.16601562,28.89285088,0.00000000,0.00000000,0.00000000); //object(cj_toilet1) (6)
	CreateDynamicObject(2518,-288.18200684,1896.19519043,28.74287033,0.00000000,0.00000000,0.00000000); //object(cj_b_sink2) (1)
	CreateDynamicObject(2518,-296.55566406,1896.13183594,28.76785851,0.00000000,0.00000000,0.00000000); //object(cj_b_sink2) (2)
	CreateDynamicObject(2518,-305.06054688,1896.34179688,28.69285583,0.00000000,0.00000000,0.00000000); //object(cj_b_sink2) (3)
	CreateDynamicObject(2518,-283.84765625,1870.08007812,28.64286041,0.00000000,0.00000000,180.24719238); //object(cj_b_sink2) (4)
	CreateDynamicObject(2518,-292.80273438,1870.03125000,28.69286346,0.00000000,0.00000000,177.99499512); //object(cj_b_sink2) (5)
	CreateDynamicObject(2518,-301.17871094,1870.07519531,28.66787148,0.00000000,0.00000000,180.49987793); //object(cj_b_sink2) (6)
	CreateDynamicObject(14420,-306.69628906,1874.82128906,36.28714752,0.00000000,0.00000000,0.00000000); //object(madddoggs09) (1)
	CreateDynamicObject(12814,-335.48046875,1870.79492188,32.99287033,0.00000000,0.00000000,0.00000000); //object(cuntyeland04) (1)
	CreateDynamicObject(5066,-335.21386719,1873.20800781,34.48791885,0.00000000,0.00000000,270.26916504); //object(mondoshave_las) (1)
	CreateDynamicObject(10671,-327.54980469,1881.49414062,34.91539764,0.00000000,0.00000000,269.76928711); //object(savehousegdoor_sfs) (1)
	CreateDynamicObject(10671,-332.48828125,1881.45410156,34.94038391,0.00000000,0.00000000,269.76379395); //object(savehousegdoor_sfs) (2)
	CreateDynamicObject(10671,-337.27636719,1877.66308594,34.76529694,0.00000000,0.00000000,179.53857422); //object(savehousegdoor_sfs) (3)
	CreateDynamicObject(10671,-327.29003906,1873.20898438,34.86539459,0.00000000,0.00000000,269.51660156); //object(savehousegdoor_sfs) (4)
	CreateDynamicObject(5066,-321.35449219,1879.57910156,34.56295395,0.00000000,0.00000000,179.78576660); //object(mondoshave_las) (2)
	CreateDynamicObject(5066,-321.37304688,1876.54589844,34.66297531,0.00000000,0.00000000,0.57678223); //object(mondoshave_las) (3)
	CreateDynamicObject(2571,-325.10937500,1878.87500000,33.02564240,0.00000000,0.00000000,0.00000000); //object(hotel_single_1) (1)
	CreateDynamicObject(1671,-329.60351562,1878.75390625,33.49754333,0.00000000,0.00000000,0.00000000); //object(swivelchair_a) (1)
	CreateDynamicObject(3386,-313.76562500,1893.38671875,33.03193665,0.00000000,0.00000000,0.00000000); //object(a51_srack2_) (1)
	CreateDynamicObject(3386,-313.77148438,1881.31445312,33.05690765,0.00000000,0.00000000,0.00000000); //object(a51_srack2_) (2)
	CreateDynamicObject(3390,-313.80761719,1888.47851562,33.05686188,0.00000000,0.00000000,0.00000000); //object(a51_sdsk_ncol1_) (1)
	CreateDynamicObject(3393,-313.81768799,1884.89514160,33.05687714,0.00000000,0.00000000,0.00000000); //object(a51_sdsk_ncol4_) (1)
	CreateDynamicObject(3390,-313.70019531,1878.69628906,33.05693817,0.00000000,0.00000000,0.00000000); //object(a51_sdsk_ncol1_) (2)
	CreateDynamicObject(3389,-313.75390625,1882.49707031,33.05698395,0.00000000,0.00000000,0.00000000); //object(a51_srack1_) (1)
	CreateDynamicObject(16377,-320.32519531,1896.32031250,34.03723907,0.00000000,0.00000000,232.46520996); //object(tv_stand_by) (1)
	CreateDynamicObject(14455,-321.08496094,1885.83496094,34.72728348,0.00000000,0.00000000,270.26916504); //object(gs_bookcase) (1)
	CreateDynamicObject(14455,-321.11621094,1891.54296875,34.72866821,0.00000000,0.00000000,270.26916504); //object(gs_bookcase) (2)
	CreateDynamicObject(1491,-313.08691406,1872.79296875,33.05696869,0.00000000,0.00000000,269.42321777); //object(gen_doorint01) (1)
	CreateDynamicObject(1491,-313.06542969,1869.78125000,33.05776978,0.00000000,0.00000000,90.66052246); //object(gen_doorint01) (2)
	CreateDynamicObject(9339,294.25390625,-89.07614136,1001.19128418,0.00000000,0.00000000,0.00000000); //object(sfnvilla001_cm) (1)
	CreateDynamicObject(9339,294.29431152,-89.05236816,1002.56713867,0.00000000,0.00000000,0.00000000); //object(sfnvilla001_cm) (2)
	CreateDynamicObject(9339,294.31811523,-89.31446075,1003.81567383,0.00000000,0.00000000,0.00000000); //object(sfnvilla001_cm) (3)
	CreateDynamicObject(9339,294.30813599,-89.36283112,1005.06567383,0.00000000,0.00000000,0.00000000); //object(sfnvilla001_cm) (4)
	CreateDynamicObject(3109,294.45178223,-79.09735870,1001.70721436,0.00000000,0.00000000,0.00000000); //object(imy_la_door) (1)
	CreateDynamicObject(14782,297.68670654,-56.70806885,1001.53167725,0.00000000,0.00000000,0.87548828); //object(int3int_boxing30) (1)
	CreateDynamicObject(14782,296.84014893,-75.49538422,1001.56732178,0.00000000,0.00000000,181.41381836); //object(int3int_boxing30) (2)
	CreateDynamicObject(643,300.71426392,-84.38822174,1000.96264648,0.00000000,0.00000000,0.00000000); //object(kb_chr_tbl_test) (1)
	CreateDynamicObject(1808,303.18844604,-80.37129974,1000.51281738,0.00000000,0.00000000,271.35070801); //object(cj_watercooler2) (1)
	CreateDynamicObject(2149,303.03906250,-82.31344604,1001.69067383,0.00000000,0.00000000,270.27026367); //object(cj_microwave1) (1)
	CreateDynamicObject(2051,314.15786743,-58.41595840,1000.93804932,0.00000000,0.00000000,270.27026367); //object(cj_target4) (1)
	CreateDynamicObject(2049,316.21932983,-60.19829941,1000.93676758,0.00000000,0.00000000,269.77026367); //object(cj_target1) (1)
	CreateDynamicObject(2051,318.10388184,-62.75136185,1000.93804932,0.00000000,0.00000000,270.26916504); //object(cj_target4) (2)
	CreateDynamicObject(2049,320.25091553,-65.29923248,1000.93676758,0.00000000,0.00000000,269.76928711); //object(cj_target1) (2)
	CreateDynamicObject(2051,323.30984497,-67.89936829,1000.93804932,0.00000000,0.00000000,270.26916504); //object(cj_target4) (3)
	CreateDynamicObject(2049,327.35992432,-70.75315094,1000.93676758,0.00000000,0.00000000,269.76928711); //object(cj_target1) (3)
	CreateDynamicObject(9339,292.08593750,-68.24868774,1002.24206543,0.00000000,0.00000000,0.00000000); //object(sfnvilla001_cm) (5)
	CreateDynamicObject(5066,226.40736389,1874.05761719,14.19673920,0.00000000,0.00000000,359.75000000); //object(mondoshave_las) (2)

    //taxi int
	CreateDynamicObject(19376, 1486.33960, -803.01935, 1084.61389,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1491.63269, -799.82813, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1481.90820, -803.08752, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1486.76196, -798.33514, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1557, 1485.20520, -798.38684, 1084.65356,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1557, 1488.17200, -798.38501, 1084.65356,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2184, 1484.52466, -802.70331, 1084.70715,   0.00000, 0.00000, -205.32007, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1482.49170, -804.16968, 1084.68127,   0.00000, 0.00000, 147.48006, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2190, 1482.74084, -802.03363, 1085.48193,   0.00000, 0.00000, 7.62000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1702, 1490.98694, -798.52307, 1084.69580,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1702, 1490.98218, -800.62573, 1084.69580,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2251, 1484.17395, -803.16412, 1086.32239,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1484.75012, -798.85846, 1084.69482,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1482.69714, -805.71582, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1486.72473, -817.22882, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19376, 1486.34668, -812.47717, 1084.61340,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1491.63269, -812.62860, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1481.90857, -812.65741, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1487.42444, -813.71332, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19384, 1487.42480, -807.36786, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1486.84180, -816.65900, 1084.68335,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1484.88147, -816.65417, 1084.68335,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1482.51099, -814.27740, 1084.68335,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1482.51099, -812.33643, 1084.68335,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1482.51099, -810.39563, 1084.68335,   0.00000, 0.00000, 90.89999, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1482.46289, -808.45459, 1084.68335,   0.00000, 0.00000, 91.02000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1483.97009, -809.72668, 1084.68127,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1484.00793, -807.83417, 1084.68127,   0.00000, 0.00000, 266.46011, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1484.12866, -811.50372, 1084.68127,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1483.97290, -813.60663, 1084.68127,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1484.32483, -815.27533, 1084.68127,   0.00000, 0.00000, 352.38010, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1485.99133, -815.27533, 1084.68127,   0.00000, 0.00000, 352.38013, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19384, 1489.12549, -809.61688, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1495.39795, -809.61639, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1488.93518, -814.94556, 1084.68335,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1489.54077, -816.47034, 1084.68127,   0.00000, 0.00000, -180.11987, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1489.60693, -813.26459, 1084.68127,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1742, 1491.67542, -810.24310, 1084.69397,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2277, 1490.80713, -816.62323, 1085.77356,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2254, 1489.53040, -817.09119, 1086.97925,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2268, 1488.22888, -816.64862, 1085.77356,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1488.33398, -809.63690, 1084.57043,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1487.44226, -808.11273, 1084.57043,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1486.46875, -812.61292, 1088.03015,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1486.42004, -803.07501, 1088.03052,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1482.43726, -816.72101, 1084.69031,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1482.40051, -806.24176, 1084.69031,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3806, 1485.29602, -805.21301, 1086.86584,   0.00000, 0.00000, 89.46002, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19384, 1491.63220, -806.22552, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19376, 1496.76184, -805.30103, 1084.61340,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1500.06665, -804.80090, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19376, 1496.75000, -795.79968, 1084.61389,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1496.40234, -791.27887, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1500.06665, -795.19208, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19446, 1491.63269, -790.31580, 1086.30176,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1491.64282, -806.96674, 1084.57043,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2964, 1494.44714, -802.32458, 1084.69983,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(338, 1493.99719, -802.64594, 1085.69714,   -4.00000, -273.00000, 17.76000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(338, 1493.92932, -802.38391, 1085.69714,   -4.00000, -273.00000, 12.12000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2297, 1499.72913, -806.97089, 1084.67957,   0.00000, 0.00000, -134.20015, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1702, 1495.73035, -809.44366, 1084.69373,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1702, 1495.72815, -807.34326, 1084.69373,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1776, 1492.30396, -809.22015, 1085.77649,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1209, 1493.48096, -809.22504, 1084.69031,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1496.29053, -805.33960, 1088.03101,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1494.90320, -797.51721, 1084.69434,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1494.90320, -795.57062, 1084.69482,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1494.90320, -799.44202, 1084.69434,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1495.58923, -794.54510, 1084.69434,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1495.57397, -796.49719, 1084.69397,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1495.57397, -798.42230, 1084.69434,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1496.41895, -794.54639, 1084.69397,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1496.39905, -796.51318, 1084.69434,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2169, 1496.39905, -798.41669, 1084.69434,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1493.33875, -798.88367, 1084.68127,   0.00000, 0.00000, 95.88020, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19354, 1493.30542, -800.28058, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19354, 1496.48645, -800.28058, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19384, 1499.03479, -800.28027, 1086.30176,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1493.41553, -795.11969, 1084.68127,   0.00000, 0.00000, 95.88020, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1493.33875, -798.88367, 1084.68127,   0.00000, 0.00000, 95.88020, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1493.36194, -797.05157, 1084.68127,   0.00000, 0.00000, 95.88020, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1498.07703, -794.90558, 1084.68127,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1498.04773, -796.52588, 1084.68127,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1498.16150, -798.47717, 1084.68127,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1495.55920, -792.86597, 1084.68127,   0.00000, 0.00000, 2.10000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19372, 1495.67029, -791.29199, 1085.70288,   0.00000, 0.00000, 89.94000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2233, 1493.57434, -791.12811, 1088.16284,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2233, 1497.01440, -791.12811, 1088.16284,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1496.63965, -796.16180, 1088.03003,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1491.23071, -809.19250, 1084.69482,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3802, 1496.88098, -801.06299, 1087.04077,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1498.24121, -800.29315, 1084.57043,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18075, 1495.69873, -806.68335, 1087.94006,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18075, 1495.47778, -794.52808, 1087.94006,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18075, 1487.16260, -799.80328, 1087.94006,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18075, 1486.68115, -811.16046, 1087.94006,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18075, 1483.26318, -811.16357, 1087.94006,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1488.42114, -798.85852, 1084.69482,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	
	// LSPD - Interior
    CreateDynamicObject(19379,299.88211, -1517.82251, 3266.00854,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,310.27435, -1518.00623, 3266.00781,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.91248, -1527.30579, 3266.00806,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,310.26889, -1527.39111, 3266.00903,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.85605, -1536.91101, 3266.00903,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,310.29681, -1536.43250, 3266.00806,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.89551, -1546.05872, 3266.00806,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,310.36481, -1545.85132, 3266.00708,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,300.26907, -1508.36621, 3266.00879,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,290.60022, -1514.87988, 3266.00610,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,290.19910, -1524.27686, 3266.00708,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,316.21066, -1525.03235, 3266.00806,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,289.63120, -1541.05005, 3266.03003,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,289.68469, -1533.91907, 3266.03101,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,310.13281, -1555.42712, 3266.00684,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.75879, -1555.42017, 3266.00488,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,310.03101, -1564.81128, 3266.00293,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.75726, -1564.81860, 3266.00659,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,309.93771, -1574.34497, 3266.00684,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.78400, -1574.28882, 3266.00610,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,309.90900, -1583.83215, 3266.00659,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.77631, -1583.80493, 3266.00488,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,299.81061, -1593.37610, 3266.00659,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,309.84760, -1593.34314, 3266.00610,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,289.39520, -1570.09485, 3266.00488,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,289.35062, -1579.52930, 3266.00391,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379,289.40091, -1589.07813, 3266.00293,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,285.77182, -1557.43286, 3262.58252,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,275.32718, -1557.43481, 3262.58203,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,264.98361, -1557.42261, 3262.58252,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,285.75070, -1547.87549, 3262.58105,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,275.26031, -1547.88074, 3262.58203,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,265.00021, -1547.85986, 3262.58105,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,278.19754, -1566.88037, 3262.58203,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,267.80206, -1566.88147, 3262.58105,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,259.26065, -1538.51306, 3262.57690,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,249.03397, -1538.50989, 3262.57593,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,254.62630, -1557.42297, 3262.58203,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378,254.63510, -1547.86609, 3262.57788,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378, 259.14734, -1528.93433, 3262.57593,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19378, 248.82201, -1528.92676, 3262.57495,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	//---
	CreateDynamicObject(19358, 307.00385, -1514.69299, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 306.27228, -1516.20850, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 311.77905, -1513.14392, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 308.43875, -1535.86182, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 305.55438, -1514.57458, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 305.90695, -1520.98633, 3265.53003,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 306.29089, -1525.72217, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 313.10715, -1518.05884, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 318.97321, -1523.94299, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 313.64172, -1523.38245, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 308.44046, -1532.70032, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 307.16278, -1526.43591, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 305.39801, -1526.43518, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 306.29089, -1527.14990, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 302.58197, -1530.03589, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 307.90817, -1530.58862, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 301.63065, -1525.25989, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 303.79251, -1526.34619, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 301.62482, -1521.54431, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 302.17105, -1516.22375, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 304.28448, -1515.66492, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 308.44498, -1538.96741, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 308.44839, -1542.08569, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 308.44080, -1545.13403, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 309.73901, -1547.27698, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 308.43536, -1546.73926, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 307.13000, -1547.28003, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 301.75638, -1547.82007, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 292.59576, -1544.36670, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 292.59464, -1534.77637, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 293.07727, -1530.04077, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 297.40524, -1526.34534, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 292.66711, -1516.91492, 3266.55005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 292.67752, -1520.59839, 3266.55005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 292.65158, -1524.10083, 3266.55103,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 312.13608, -1553.98621, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 315.52664, -1547.33105, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 320.26285, -1529.86304, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 321.52063, -1528.29810, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 321.51981, -1525.55859, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 325.58990, -1530.40271, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 327.17264, -1527.30945, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 306.53262, -1525.16064, 3266.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 306.53259, -1523.20532, 3266.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 306.53259, -1521.22437, 3266.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 306.53201, -1519.29407, 3266.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 306.53259, -1517.48767, 3266.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 301.29449, -1510.54614, 3266.09326,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2614, 301.77271, -1520.90588, 3268.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.03400, -1524.12939, 3266.00098,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 292.54919, -1517.79285, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 292.56378, -1527.25830, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 296.84521, -1525.01917, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 301.62393, -1521.53723, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 302.14816, -1516.18250, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 327.68265, -1530.97119, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 305.51523, -1510.81396, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 305.05154, -1512.53894, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 299.69031, -1510.42712, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 325.57977, -1530.42957, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 289.10574, -1513.09656, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2595, 306.27542, -1523.12451, 3267.65991,   0.00000, 0.00000, 165.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2595, 306.29037, -1518.88818, 3267.65991,   0.00000, 0.00000, 245.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 306.67520, -1521.18286, 3271.55005,   180.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 306.69400, -1512.35022, 3271.55005,   180.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 303.01041, -1526.39612, 3266.03003,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 308.44431, -1531.91223, 3266.03003,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 308.48721, -1542.00122, 3266.50000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14791, 300.08823, -1540.42542, 3267.98999,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2630, 297.29309, -1531.15930, 3266.09009,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2628, 301.36136, -1531.63574, 3266.09106,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2629, 307.23645, -1535.89709, 3266.09131,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2630, 299.16815, -1531.20776, 3266.09009,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2628, 303.10730, -1531.59790, 3266.09106,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2630, 305.09857, -1531.36426, 3266.09009,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2629, 307.27499, -1545.17627, 3266.09131,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 294.59683, -1545.38892, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2631, 293.71790, -1535.05981, 3266.08960,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2632, 293.71997, -1537.36694, 3266.09009,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2632, 293.65073, -1532.73645, 3266.09009,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 327.57620, -1528.54614, 3265.58008,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 292.93231, -1520.64917, 3267.43994,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 293.16571, -1519.39368, 3267.41992,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 292.86163, -1518.19299, 3267.44995,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 292.91867, -1518.23706, 3268.26001,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 293.17209, -1519.41260, 3268.19995,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 292.93231, -1520.64917, 3268.21997,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 293.11761, -1521.77393, 3267.39990,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 293.08810, -1522.90393, 3267.39990,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 293.11157, -1522.87610, 3268.22998,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 293.06000, -1515.89307, 3267.37012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 293.01959, -1514.70996, 3268.19995,   0.00000, 2.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 292.83389, -1514.73291, 3268.23999,   0.00000, 3.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 292.83157, -1515.86926, 3268.23999,   0.00000, 3.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 292.73434, -1517.03967, 3268.23999,   0.00000, 3.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 293.10532, -1515.86194, 3268.19995,   0.00000, 2.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 293.05289, -1517.04907, 3268.19995,   0.00000, 2.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 292.95706, -1519.40039, 3268.19995,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 292.91916, -1519.41333, 3267.41992,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 293.16190, -1520.55359, 3267.41992,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 293.19125, -1520.54102, 3268.21997,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 293.16180, -1518.23071, 3268.26001,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 293.20206, -1518.26038, 3267.44995,   0.00000, 6.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 292.98102, -1521.71960, 3268.22998,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 292.80630, -1521.70496, 3267.39990,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 292.76657, -1522.90808, 3267.39990,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 292.92822, -1524.07520, 3267.39990,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 292.91837, -1524.09106, 3268.22998,   0.00000, 7.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 327.69299, -1530.95435, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 329.10709, -1526.16150, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 315.53796, -1534.60486, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 315.53354, -1537.78125, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 315.51385, -1537.30908, 3266.50000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(16770, 323.16626, -1536.80286, 3267.69995,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 315.52609, -1540.97681, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 333.02707, -1538.32312, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 333.14178, -1533.68994, 3267.80005,   0.00000, 0.00000, 55.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 315.53986, -1547.17078, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19401, 315.52890, -1540.97998, 3267.80103,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19401, 315.54233, -1537.81580, 3267.80103,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19401, 315.54596, -1534.61084, 3267.80103,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 315.56586, -1556.71252, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 315.58807, -1566.24170, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 320.31039, -1529.94189, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 333.04263, -1547.83044, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 333.03662, -1557.32849, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 333.03598, -1566.64368, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 333.08542, -1533.65137, 3267.80005,   0.00000, 0.00000, 55.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 304.25311, -1515.65015, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 294.43930, -1512.52844, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2608, 301.90030, -1524.83582, 3266.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18092, 318.95166, -1530.98608, 3266.50391,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18092, 322.99048, -1530.97693, 3266.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 319.66962, -1531.05261, 3267.03003,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1744, 316.43011, -1529.88159, 3267.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1744, 320.42358, -1529.85425, 3267.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1744, 323.74179, -1529.89380, 3267.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1744, 332.55679, -1533.34375, 3267.50000,   0.00000, 0.00000, -65.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 320.60547, -1531.47327, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(353, 322.97067, -1531.03625, 3267.05005,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 317.79257, -1530.87598, 3267.05005,   -90.00000, 19.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 318.25433, -1530.93372, 3267.05005,   -90.00000, 19.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 318.75455, -1530.96838, 3267.05005,   -90.00000, 19.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 319.23792, -1530.99231, 3267.05005,   -90.00000, 19.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 320.04123, -1531.01440, 3267.03003,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 321.53049, -1531.03345, 3267.03003,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 321.88358, -1531.00281, 3267.03003,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 322.20673, -1531.00562, 3267.03003,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 322.54111, -1530.98218, 3267.03003,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(353, 323.37146, -1531.07239, 3267.05005,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(353, 323.73911, -1531.07898, 3267.05005,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(353, 324.10675, -1531.08557, 3267.05005,   -90.00000, 10.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 320.99017, -1531.46497, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 320.99408, -1531.03809, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 320.60934, -1531.04639, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 324.66113, -1531.45740, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 325.08521, -1531.44189, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 324.69189, -1531.06616, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 325.13568, -1531.04724, 3267.03003,   -90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2043, 316.78137, -1531.21228, 3267.10010,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2043, 316.90387, -1530.69849, 3267.10010,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 317.62674, -1530.25513, 3267.95996,   0.00000, 0.00000, 55.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 316.26764, -1530.25134, 3267.95996,   0.00000, 0.00000, 30.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 316.99475, -1530.23450, 3267.95996,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 320.18015, -1530.21899, 3267.95996,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 321.25555, -1530.21411, 3267.95996,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 323.51297, -1530.23657, 3267.95996,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 324.81512, -1530.28235, 3267.95996,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2043, 320.90805, -1530.68445, 3267.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2043, 324.87643, -1530.51221, 3267.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2043, 324.90274, -1530.77429, 3267.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 321.64249, -1531.05054, 3271.00000,   180.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 319.97299, -1531.05383, 3271.00000,   180.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 315.53314, -1531.42139, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 315.55679, -1531.44849, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 321.51199, -1529.04993, 3266.03003,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 321.47598, -1524.77820, 3266.03003,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 328.43646, -1530.91162, 3266.03003,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2595, 332.75742, -1533.91455, 3268.19995,   0.00000, 0.00000, 210.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14782, 302.01230, -1547.37854, 3267.10010,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14782, 295.20404, -1545.40088, 3267.10010,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 292.63617, -1516.63184, 3266.55005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 292.70001, -1515.89685, 3267.42993,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 293.07367, -1514.71191, 3267.37012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 292.73483, -1514.67639, 3267.42993,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 292.69949, -1517.06482, 3267.42993,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(349, 293.08551, -1517.07104, 3267.37012,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.03409, -1522.14844, 3266.00195,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.03400, -1520.22107, 3266.00293,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.03409, -1518.23193, 3266.00195,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.03400, -1516.24695, 3266.00098,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.03101, -1514.24072, 3266.00195,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 293.01917, -1525.95667, 3266.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 294.81921, -1524.52795, 3266.00146,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 296.77850, -1524.52783, 3266.00098,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 298.74359, -1524.52795, 3266.00146,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, -301.38947, -1711.91553, 3266.00098,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 300.74680, -1524.52783, 3266.00146,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 301.19669, -1523.57141, 3266.00098,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 301.19681, -1521.64929, 3266.00073,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 301.19650, -1519.70190, 3266.00098,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2414, 301.19669, -1517.76074, 3266.00000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 292.81012, -1520.22778, 3272.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 292.82681, -1525.04871, 3268.29004,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 292.68967, -1524.74036, 3268.29004,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 295.76877, -1525.06628, 3266.55005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 299.47650, -1525.07239, 3266.55103,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 299.17105, -1525.09802, 3266.55005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 301.54797, -1524.77869, 3268.29004,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 301.30301, -1524.98926, 3268.29004,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 301.49863, -1524.94348, 3268.29004,   0.00000, 90.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 292.80859, -1525.02454, 3268.29004,   0.00000, 90.00000, -125.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 292.90823, -1513.10168, 3268.29004,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 292.78558, -1513.11682, 3268.29004,   0.00000, 90.00000, 130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 292.66025, -1513.31982, 3268.29004,   0.00000, 90.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 295.79718, -1524.65369, 3268.21997,   0.00000, 6.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 296.47122, -1524.66589, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 294.60544, -1524.72009, 3268.21997,   0.00000, 6.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 294.62598, -1524.68030, 3267.39990,   0.00000, 6.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(358, 295.78595, -1524.69543, 3267.39990,   0.00000, 6.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 296.77014, -1524.69153, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 297.09073, -1524.69897, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 297.39313, -1524.68481, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 297.69000, -1524.68481, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 297.99438, -1524.69666, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 298.27512, -1524.70068, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 298.55585, -1524.70471, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 298.85825, -1524.69067, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 299.13898, -1524.69507, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(356, 299.41974, -1524.69922, 3267.69995,   0.00000, -60.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 292.80725, -1511.38477, 3272.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 297.18503, -1524.69702, 3272.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 301.49402, -1521.31873, 3266.55103,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 301.10239, -1525.05469, 3266.55005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2400, 301.52579, -1517.68579, 3266.55005,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 301.06009, -1518.73364, 3268.33008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2043, 301.09576, -1519.64819, 3267.14990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2040, 301.02548, -1517.85339, 3267.14990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 301.09839, -1518.14209, 3268.33008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 301.05420, -1517.54834, 3268.33008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 301.07925, -1519.34033, 3268.33008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 301.06543, -1519.91797, 3268.33008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(346, 301.06036, -1520.53931, 3268.33008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 301.02811, -1521.17163, 3268.39990,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 301.00394, -1521.77295, 3268.39990,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 300.99808, -1522.38232, 3268.39990,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 301.02682, -1522.96338, 3268.39990,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(348, 301.00092, -1523.52832, 3268.39990,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(971, 301.07977, -1521.63379, 3272.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 304.59125, -1518.25439, 3266.69995,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 304.39893, -1522.68445, 3266.69995,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 302.67358, -1516.55090, 3266.69995,   0.00000, 0.00000, 130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 305.04813, -1515.69446, 3266.03003,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 304.51624, -1511.19861, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 296.29132, -1511.96155, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 301.03171, -1511.21118, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1569, 308.53583, -1513.19751, 3266.09497,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 302.77539, -1510.54150, 3266.09326,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1569, 311.53616, -1513.20825, 3266.09497,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 321.49695, -1526.93555, 3267.50000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 328.88101, -1545.80298, 3265.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 319.97910, -1545.83960, 3265.50098,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 328.86981, -1554.74707, 3265.50098,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 319.98349, -1554.71741, 3265.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 328.82700, -1563.66980, 3265.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 319.87070, -1563.66187, 3265.50098,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 320.07416, -1565.42542, 3267.00000,   -45.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3095, 328.40466, -1565.40466, 3267.00000,   -45.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2630, 293.93842, -1539.42981, 3266.09009,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2630, 293.88593, -1541.84180, 3266.09009,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 310.28043, -1548.57629, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 308.43246, -1550.45313, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 309.73401, -1549.90112, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 307.13126, -1549.90625, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 303.25177, -1552.75452, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 312.32611, -1513.91479, 3269.55005,   25.00000, 0.00000, -35.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 307.51480, -1513.78223, 3269.55005,   25.00000, 0.00000, 35.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 304.93280, -1526.41479, 3267.60010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 303.20328, -1515.77454, 3267.60010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 302.66058, -1516.73645, 3269.55005,   25.00000, 0.00000, 35.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 307.43140, -1531.06812, 3269.55005,   25.00000, 0.00000, -35.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 329.28662, -1532.10254, 3269.55005,   25.00000, 0.00000, -35.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 332.10635, -1538.33801, 3269.55005,   10.00000, 0.00000, 230.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 317.07709, -1538.06287, 3269.55005,   10.00000, 0.00000, -235.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 309.23047, -1545.88806, 3269.55005,   10.00000, 0.00000, 155.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 295.00000, -1556.13098, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 295.07999, -1559.18323, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2737, 315.35880, -1544.30334, 3267.89990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2612, 332.85904, -1536.72363, 3268.00000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2606, 306.16040, -1517.37158, 3267.48999,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2606, 306.31094, -1524.54700, 3267.48999,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 315.38510, -1530.95215, 3268.00000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 315.37268, -1548.09949, 3268.00000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2604, 316.53406, -1524.57642, 3266.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2604, 302.27649, -1520.40442, 3266.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2627, 306.35132, -1538.33936, 3266.09082,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2627, 306.37604, -1540.59546, 3266.09082,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2627, 306.41327, -1542.79199, 3266.09082,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2099, 293.15878, -1530.77100, 3266.13306,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 299.85242, -1557.66626, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14407, 292.52252, -1557.27649, 3262.89990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 292.70010, -1559.18323, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 292.70010, -1556.13098, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 287.95694, -1557.65710, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 292.69775, -1556.11499, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 292.74350, -1559.19092, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 287.95758, -1557.62817, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 299.85916, -1569.62268, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 299.86215, -1563.23694, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 299.86276, -1571.97449, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.39108, -1530.44116, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.38168, -1531.57263, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.38016, -1532.73645, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.34286, -1533.88379, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.35144, -1536.25073, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.38202, -1539.25305, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.29114, -1542.48157, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.39066, -1545.94019, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.41238, -1546.98022, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 313.00162, -1516.63464, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 312.99539, -1518.10181, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 312.98425, -1519.42163, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 313.43335, -1523.57690, 3266.09009,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 310.00336, -1547.11340, 3266.09009,   0.00000, 0.00000, 130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 295.05396, -1568.06189, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 285.62762, -1568.05078, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 289.12143, -1572.75659, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 289.12408, -1581.77356, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 299.86200, -1575.12256, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 299.86279, -1577.61975, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 299.86200, -1580.16223, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 299.86279, -1582.64075, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 295.13477, -1584.14941, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 288.38751, -1582.23596, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 299.82358, -1568.83606, 3266.03003,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 299.88693, -1572.72424, 3266.03003,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 299.90085, -1581.29321, 3266.50000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 309.03934, -1557.08032, 3267.80005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 305.65979, -1565.19678, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 306.20697, -1567.31555, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 311.52011, -1567.84998, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 315.15076, -1572.71704, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 305.65979, -1573.00000, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 317.84677, -1572.56042, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 307.24075, -1571.48059, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 311.47729, -1572.55945, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 309.36804, -1572.02686, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 305.66504, -1576.12695, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 305.67010, -1579.31580, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19404, 305.67697, -1582.50500, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 288.58206, -1554.89661, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 287.35132, -1555.46216, 3264.30005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 279.61639, -1553.38940, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 287.38354, -1559.80322, 3264.30005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 288.58209, -1560.40002, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 283.26208, -1554.35388, 3264.30005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 283.24945, -1560.93347, 3264.30005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 281.13751, -1553.09058, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 281.02432, -1562.20520, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 279.49988, -1561.90723, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 278.95999, -1564.02002, 3264.30005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 276.84491, -1564.55273, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 273.78455, -1564.55078, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 282.70212, -1566.25073, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 278.71930, -1560.39441, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 278.00000, -1561.90723, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 276.69330, -1561.50195, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 273.82043, -1561.50208, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 272.26300, -1563.01270, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 270.76904, -1562.88867, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 269.25000, -1563.01270, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 267.70337, -1561.49194, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 268.72153, -1565.11926, 3264.30005,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 268.11301, -1566.99988, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 277.94107, -1570.93164, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 268.35034, -1570.93640, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 272.82336, -1567.23523, 3262.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 272.79767, -1566.08691, 3264.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 304.26230, -1584.14111, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 315.13965, -1582.22998, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 313.82004, -1584.13953, 3267.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 305.65994, -1562.03259, 3267.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 312.19962, -1572.51489, 3266.03003,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 316.51117, -1575.94092, 3267.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 290.10995, -1568.27734, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 291.46851, -1568.27246, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.83179, -1568.24866, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 294.28223, -1568.20459, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.75085, -1568.17224, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 297.21945, -1568.17542, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 298.73016, -1568.16370, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 297.80151, -1570.74890, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 296.40045, -1570.76733, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.01633, -1570.80359, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 293.53647, -1570.78552, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.13730, -1570.70837, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 290.79739, -1570.69202, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 291.49939, -1572.18469, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.87976, -1572.16406, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 294.29980, -1572.16357, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.77966, -1572.18420, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 297.20016, -1572.16467, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 296.47708, -1573.46533, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.04611, -1573.51233, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 293.59546, -1573.55579, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.17511, -1573.54395, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 290.77444, -1573.53564, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 297.88519, -1573.44055, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 297.20044, -1574.72510, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.69638, -1574.74536, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 294.25439, -1574.75757, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.83466, -1574.76294, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 291.41422, -1574.74756, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.20270, -1576.15759, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 290.71213, -1576.17188, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 293.64053, -1576.13013, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.13492, -1576.14050, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 296.56131, -1576.09631, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 298.01163, -1576.03320, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 297.34924, -1577.51538, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.87073, -1577.56531, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 294.41412, -1577.55908, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.95834, -1577.55493, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 291.43210, -1577.56653, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 292.16171, -1578.81934, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 293.62491, -1578.83008, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.16696, -1578.83228, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 296.72998, -1578.82849, 3266.08008,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 305.68735, -1582.11816, 3266.50000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 272.75595, -1571.80591, 3266.50000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 272.79770, -1568.86377, 3264.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 272.79770, -1571.62207, 3264.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2604, 270.14301, -1570.26050, 3263.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 270.74417, -1569.15820, 3263.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 268.80374, -1568.58374, 3263.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 268.74478, -1567.41235, 3263.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 269.99539, -1562.93628, 3262.53003,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 281.76675, -1562.15894, 3262.53003,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2199, 268.63681, -1565.40247, 3262.66870,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1826, 275.48032, -1567.30383, 3262.66846,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 275.98938, -1564.69141, 3264.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 276.06558, -1565.77209, 3262.66943,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 275.99893, -1568.95581, 3262.66943,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 273.62808, -1570.68579, 3262.66943,   0.00000, 0.00000, -10.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 278.79382, -1554.90100, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 277.92068, -1553.38477, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 276.30743, -1554.90027, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 274.16660, -1554.90442, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 279.07605, -1551.27942, 3264.30005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 276.98471, -1550.73767, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 274.17682, -1550.73291, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 272.65854, -1552.28711, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 272.66156, -1553.22156, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 271.13824, -1552.64417, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 270.35400, -1552.67920, 3262.53003,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 269.61472, -1552.79456, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19431, 269.07831, -1550.68005, 3264.30005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 268.52792, -1547.99353, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 274.34805, -1546.89148, 3262.00000,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 274.34964, -1547.23376, 3266.50000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 274.38766, -1549.36475, 3264.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 274.39133, -1546.50781, 3264.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 274.38867, -1543.66479, 3264.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 282.73001, -1549.04004, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 281.87436, -1553.07385, 3262.53003,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19358, 267.00806, -1561.15820, 3264.30005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 261.09583, -1560.05798, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 264.60596, -1549.41138, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 264.82248, -1554.31140, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 264.85922, -1554.17834, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 262.11572, -1554.36768, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 260.09134, -1549.73926, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 263.76041, -1555.77356, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19388, 263.76132, -1558.42480, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 263.75208, -1555.79395, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 263.74747, -1558.40771, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 258.91461, -1559.98535, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 261.58826, -1554.35571, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 254.22224, -1560.37622, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 264.59543, -1540.34656, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 260.09091, -1546.58569, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 261.67264, -1548.77869, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 264.82983, -1548.76685, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 261.63000, -1544.96582, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 264.16818, -1544.97705, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 260.10675, -1543.47534, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 260.10190, -1541.12024, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 261.69980, -1540.42456, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 264.76669, -1540.41553, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19428, 260.10602, -1539.61426, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 260.10916, -1537.37512, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 264.85300, -1535.80347, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 245.89539, -1536.47205, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 249.63019, -1541.33667, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 249.47710, -1555.60083, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 249.64529, -1550.86011, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 258.50735, -1535.80603, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 255.40849, -1535.80725, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19385, 252.24538, -1535.80493, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 260.99713, -1530.88123, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 256.73947, -1530.94788, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 253.52754, -1530.99756, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 250.60918, -1531.73926, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 251.11281, -1531.77490, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19447, 260.46646, -1531.77478, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19355, 260.07748, -1552.76660, 3264.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 258.36948, -1535.78772, 3263.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 255.22557, -1535.83191, 3263.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 252.10757, -1535.84656, 3263.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 260.06412, -1537.24768, 3263.89990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 260.07440, -1543.38940, 3263.89990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 260.07532, -1546.48987, 3263.89990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19302, 260.08542, -1549.62207, 3263.89990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2616, 249.77083, -1553.89075, 3265.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18637, 301.47482, -1518.59570, 3267.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18637, 301.49750, -1519.81201, 3267.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18637, 301.46518, -1521.05652, 3267.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18637, 301.45963, -1522.28357, 3267.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18637, 301.45764, -1523.42969, 3267.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2186, 253.49162, -1555.10522, 3262.66455,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2199, 249.82352, -1552.08740, 3262.66284,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2199, 249.83957, -1538.81934, 3262.66284,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 252.24362, -1550.62024, 3262.66406,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 252.77477, -1545.48755, 3262.66406,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 252.19534, -1540.94189, 3262.66406,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 254.08179, -1551.66553, 3262.66943,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 254.27200, -1546.44482, 3262.66943,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 253.92216, -1541.76196, 3262.66943,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 250.91762, -1551.58093, 3263.30005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 251.24728, -1546.41675, 3263.30005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 250.83401, -1541.69189, 3263.30005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 310.60071, -1584.09668, 3267.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2602, 260.74149, -1553.66492, 3263.19995,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2602, 260.69220, -1548.27527, 3263.19995,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2602, 260.53415, -1541.05676, 3263.19995,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2602, 260.72290, -1539.90308, 3263.19995,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 263.21219, -1536.64978, 3263.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 263.21155, -1541.18481, 3263.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 263.23428, -1545.83923, 3263.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 263.21802, -1553.38721, 3263.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 258.86374, -1533.22693, 3263.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 255.10767, -1533.21521, 3263.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1771, 251.37132, -1533.14807, 3263.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 254.38081, -1557.94153, 3264.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 249.77737, -1540.76758, 3264.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 285.29843, -1555.16663, 3262.66479,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 268.74393, -1554.57068, 3262.66479,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14892, 313.55099, -1494.14880, 3266.69995,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14892, 314.19046, -1602.96069, 3265.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14892, 288.69440, -1596.53748, 3266.60010,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14892, 298.60327, -1583.30151, 3265.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2108, 313.84662, -1573.86035, 3266.09106,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2108, 305.99066, -1571.86316, 3266.09106,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 312.69092, -1581.70520, 3266.09229,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 312.64545, -1578.94019, 3266.09229,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 312.64767, -1576.19141, 3266.09229,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 310.10162, -1575.18115, 3266.09229,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 310.07214, -1577.91345, 3266.09229,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 310.13367, -1580.60657, 3266.09229,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 306.29382, -1580.86377, 3266.09229,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 306.24194, -1577.67188, 3266.09229,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2172, 306.27496, -1574.24451, 3266.09229,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 306.71777, -1582.13550, 3266.60010,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 306.75546, -1579.00439, 3266.60010,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 306.82803, -1575.57813, 3266.60010,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 313.34140, -1578.35193, 3266.60010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 313.17847, -1575.56543, 3266.60010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 313.10028, -1581.10498, 3266.60010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 309.53348, -1581.04065, 3266.60010,   0.00000, 0.00000, 215.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 309.52954, -1578.41760, 3266.60010,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 309.58264, -1575.53796, 3266.60010,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.51407, -1572.04395, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.50739, -1573.57629, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.54745, -1575.17334, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.52097, -1566.49963, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.48242, -1565.29333, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.46887, -1564.07410, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.50656, -1562.89209, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.50107, -1561.78015, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 305.48361, -1560.70642, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2108, 306.68399, -1550.05310, 3266.09326,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2108, 300.28513, -1556.32092, 3266.09326,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2108, 314.60001, -1568.33118, 3266.09326,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.01379, -1569.03882, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 315.01627, -1571.63013, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 314.95892, -1570.36304, 3266.08008,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2748, 305.75003, -1551.20862, 3266.89990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2748, 304.33078, -1552.63940, 3266.89990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2748, 301.56384, -1555.42651, 3266.89990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2748, 302.91745, -1554.02234, 3266.89990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2614, 300.02975, -1564.02917, 3268.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 305.97128, -1567.42944, 3266.09009,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 296.21481, -1583.65063, 3266.08398,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 293.83469, -1583.65002, 3266.08472,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 291.47421, -1583.65063, 3266.08398,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 297.74945, -1582.75452, 3266.08398,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 291.52350, -1582.88928, 3266.08423,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 295.44876, -1581.25708, 3266.08472,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 293.10083, -1581.27283, 3266.08398,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2321, 291.46420, -1581.26538, 3266.08447,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 291.37521, -1584.01648, 3268.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 298.73474, -1584.01294, 3268.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 293.79581, -1581.36829, 3266.55005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 295.29755, -1583.01978, 3266.55005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 293.99252, -1583.06995, 3266.55005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 306.21127, -1559.70679, 3266.08008,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 308.64389, -1557.34485, 3266.08008,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 309.68848, -1556.22034, 3266.08008,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 311.81812, -1554.10840, 3266.08008,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 312.82242, -1553.13513, 3266.08008,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1494, 308.06430, -1557.94751, 3266.08569,   0.00000, 0.00000, -135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1494, 311.34451, -1554.63757, 3266.08569,   0.00000, 0.00000, -135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1494, 314.60773, -1551.39636, 3266.08569,   0.00000, 0.00000, -135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 278.19092, -1544.16882, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19450, 270.40680, -1544.16614, 3264.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2604, 270.47906, -1544.79614, 3263.39990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 271.59021, -1546.45764, 3263.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 273.29572, -1544.75134, 3263.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 269.06973, -1549.47302, 3263.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 269.05655, -1547.12585, 3263.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1826, 277.78741, -1546.91931, 3262.66846,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 278.30283, -1548.52820, 3262.66943,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 278.23566, -1545.37585, 3262.66943,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2612, 293.70071, -1584.01306, 3268.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 293.30228, -1582.29895, 3266.56006,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1651, 296.14148, -1582.72327, 3266.58008,   0.00000, 90.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 309.50800, -1517.98535, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 309.47339, -1522.37183, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 309.45999, -1527.34143, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 311.27179, -1531.88135, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 317.62640, -1536.09802, 3269.60010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 322.33228, -1536.16846, 3269.60010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 327.75739, -1536.08496, 3269.60010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 311.18781, -1537.69958, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 311.07501, -1543.43860, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 299.89636, -1540.37244, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 308.32401, -1553.92664, 3270.00000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 305.60181, -1556.87524, 3270.00000,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 302.56967, -1562.52710, 3270.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 302.36884, -1569.81140, 3270.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 302.29568, -1575.87610, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 301.92969, -1580.50891, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 293.66431, -1569.72473, 3270.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 293.87820, -1575.10547, 3270.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 294.02649, -1579.05566, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 310.79330, -1575.93665, 3269.99902,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 310.85211, -1581.57104, 3270.00000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 311.51828, -1570.40491, 3269.99902,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 297.62811, -1558.06824, 3269.99902,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 291.87381, -1558.04236, 3269.99902,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 281.25720, -1557.92957, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 273.92725, -1557.68945, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 266.88196, -1557.54529, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 260.97519, -1557.64282, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 257.01001, -1557.69788, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 256.92999, -1552.47046, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 256.90530, -1547.29028, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 256.91870, -1542.28979, 3266.50000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 275.59830, -1567.40161, 3266.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 278.01199, -1546.88245, 3266.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 286.64111, -1555.82874, 3266.00000,   25.00000, 0.00000, -35.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 285.70786, -1559.32568, 3266.00000,   10.00000, 0.00000, 250.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 281.31445, -1569.79810, 3266.00000,   10.00000, 0.00000, 245.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1886, 281.93521, -1544.92432, 3266.00000,   10.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 304.87051, -1522.90381, 3270.03003,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 304.84406, -1547.95044, 3270.03101,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 304.85480, -1572.89063, 3270.03003,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 279.86295, -1572.87439, 3270.03101,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 329.65121, -1555.86829, 3270.03198,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 329.64230, -1530.99854, 3270.03296,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 275.53540, -1555.15344, 3266.52002,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 279.90601, -1551.61743, 3270.02808,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 255.63631, -1530.34265, 3266.53003,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 255.58650, -1555.24023, 3266.50000,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(18981, 275.82431, -1575.52136, 3266.53003,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19443, 306.37640, -1523.98108, 3267.20093,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19443, 306.37601, -1520.50146, 3267.19995,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19443, 306.37640, -1517.06982, 3267.20093,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	
	// HOSPITAL
	CreateDynamicObject(19377, 1574.73584, -1270.18079, 3352.33008,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(4563, 1589.75110, -1248.92102, 3178.07007,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(4563, 1589.68323, -1303.22668, 3178.08301,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(4563, 1573.39014, -1248.92480, 3178.06494,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(4563, 1649.71338, -1258.78503, 3178.09009,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	//--------
	CreateDynamicObject(19445, 1572.60522, -1259.19238, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1586.62280, -1244.28149, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19399, 1587.13538, -1274.44861, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1579.76453, -1263.95068, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1579.62610, -1257.55945, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1570.12073, -1252.57605, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1574.89355, -1256.00012, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1567.87329, -1254.44141, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1575.01965, -1247.00891, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1572.60522, -1243.47998, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1567.87329, -1248.22803, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1579.75476, -1242.27197, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1580.97534, -1240.62000, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1569, 1570.17297, -1252.78979, 3352.41455,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1569, 1570.18823, -1249.82629, 3352.41455,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2403, 1581.58167, -1242.10535, 3350.85010,   0.00000, 0.00000, -105.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1587.34033, -1243.56824, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1590.55884, -1240.61755, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1574.80859, -1255.38440, 3352.41260,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1577.91821, -1255.35962, 3352.41260,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1574.97864, -1265.36816, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1580.38477, -1260.79517, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1579.65833, -1260.06152, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1579.65271, -1261.51233, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1579.76501, -1262.36133, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1579.58997, -1263.95068, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19379, 1574.50354, -1261.05591, 3352.32397,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1579.63184, -1259.23230, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1578.27295, -1260.76489, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1578.99304, -1262.31616, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1578.27014, -1257.64172, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1579.27026, -1266.97546, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1579.76794, -1266.31030, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1579.02307, -1267.01733, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1573.43018, -1264.40051, 3354.10010,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1579.05774, -1268.52258, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1579.23669, -1267.68030, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1574.23694, -1267.71826, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1578.34180, -1267.75830, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1569.54163, -1272.58459, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1574.40161, -1274.44800, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1588.47839, -1268.49707, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	//CreateDynamicObject(19377, 1574.73584, -1270.18079, 3352.33008,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1585.13416, -1270.30884, 3352.32007,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1595.58630, -1269.63684, 3352.33008,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1605.97168, -1270.95374, 3352.32495,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19377, 1616.31689, -1270.88464, 3352.32397,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1590.31519, -1274.45105, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19399, 1583.94714, -1274.45581, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1598.80432, -1273.03186, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1598.81396, -1272.99109, 3352.41064,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1598.73328, -1269.96191, 3352.41064,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1593.39551, -1274.44751, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1596.40906, -1274.43640, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1598.80432, -1270.00000, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1599.52075, -1273.89026, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1598.08911, -1273.77832, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1598.08923, -1269.24365, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1599.52344, -1269.28149, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1597.36670, -1268.50537, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1603.32080, -1268.51001, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1604.20581, -1274.54993, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1602.50916, -1268.59473, 3352.34009,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1591.07068, -1274.37793, 3352.34009,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19399, 1608.00000, -1268.49805, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.29175, -1268.00867, 3352.42651,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.27502, -1265.32361, 3352.42603,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1586.58337, -1265.33264, 3352.42603,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1588.65222, -1265.33948, 3352.42505,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.29224, -1266.84631, 3352.42651,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.29297, -1266.84619, 3352.89990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.29175, -1268.00867, 3352.90088,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.27502, -1265.32361, 3352.90405,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1586.58337, -1265.33264, 3352.89893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1588.65222, -1265.33948, 3352.90210,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1586.58337, -1265.90002, 3352.90088,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1584.27502, -1265.90698, 3352.90210,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1592.61035, -1263.67981, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1588.21997, -1258.78503, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1591.96423, -1260.01147, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1588.21997, -1258.60498, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1596.73608, -1261.53003, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1591.43103, -1258.88806, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1592.69482, -1258.50781, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1593.40613, -1259.25293, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1587.34387, -1257.14014, 3352.42358,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1587.32300, -1254.34827, 3352.42358,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1587.27661, -1256.77930, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1587.10559, -1257.14465, 3352.42358,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1587.11206, -1254.37061, 3352.42310,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1587.28320, -1255.06702, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1587.27246, -1253.33264, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.71960, -1246.59399, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.72205, -1250.90906, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.72485, -1250.18579, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.71179, -1249.45093, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.72107, -1248.72986, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.73035, -1248.00854, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.71997, -1247.30542, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.91089, -1246.55627, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.90491, -1247.26746, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.90967, -1247.96179, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.90173, -1248.69763, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.90662, -1249.41174, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.90967, -1250.14111, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.87268, -1250.86487, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.75342, -1250.87366, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.75122, -1250.16833, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.75916, -1249.41785, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.76147, -1248.70947, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.76428, -1248.00598, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.75452, -1247.28674, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.76038, -1246.54651, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.75195, -1245.82544, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.75830, -1251.56128, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.15002, -1249.41846, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.16077, -1250.14734, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.14819, -1250.85999, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.14490, -1248.70691, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.15759, -1248.00525, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.15039, -1247.30505, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.16309, -1246.60364, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.13599, -1245.84265, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.92773, -1253.41418, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.90881, -1254.24402, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.93213, -1254.97327, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.93591, -1255.76038, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.92249, -1256.52490, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.93384, -1257.25244, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.13940, -1257.21741, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.12793, -1256.48987, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.14148, -1255.72510, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.15479, -1254.96057, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.12646, -1254.21106, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.12476, -1253.38696, 3352.40991,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1593.03491, -1256.92810, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1827, 1591.02625, -1256.21582, 3352.42261,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1593.02368, -1257.64343, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1593.03601, -1256.25549, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1593.02563, -1255.58350, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1593.01526, -1254.91150, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.07593, -1249.54504, 3352.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1595.09070, -1247.48389, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1594.37659, -1248.29590, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1595.09070, -1249.00989, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1595.80505, -1248.29590, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1594.81531, -1250.45996, 3352.42358,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1594.60852, -1250.46179, 3352.42358,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1594.70850, -1249.02490, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1594.72925, -1249.97937, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1594.61951, -1246.07104, 3352.42358,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1594.75952, -1246.06885, 3352.42310,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1594.74304, -1245.73169, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1594.72998, -1244.69995, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2774, 1603.47888, -1240.57422, 3355.76001,   0.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1593.51941, -1240.61780, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1583.56750, -1247.07520, 3351.93091,   0.00000, 0.00000, -68.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1584.93518, -1246.28577, 3351.92993,   0.00000, 0.00000, -53.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1585.96619, -1245.17017, 3351.93091,   0.00000, 0.00000, -33.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1580.37073, -1240.74121, 3352.42554,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1586.45618, -1255.75098, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1603.72046, -1245.35474, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1603.58862, -1242.57715, 3352.42554,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1603.58252, -1244.06738, 3352.42554,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1603.72021, -1254.89893, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1600.79333, -1258.87878, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1595.41174, -1249.57813, 3352.89990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1595.27893, -1246.94263, 3352.89990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1588.91992, -1243.21777, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1580.48096, -1247.43201, 3351.93091,   0.00000, 0.00000, 85.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1594.77478, -1252.28564, 3352.42627,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1594.69275, -1244.35657, 3352.42627,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.07568, -1250.44812, 3352.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.08240, -1251.32129, 3352.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.09680, -1246.95325, 3352.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.09778, -1246.02991, 3352.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.09875, -1245.10596, 3352.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2252, 1580.41235, -1247.34766, 3354.08008,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1671, 1582.74731, -1244.64233, 3352.86011,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1671, 1581.00513, -1244.93616, 3352.86011,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1671, 1584.14465, -1243.66284, 3352.86011,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14772, 1586.06311, -1244.94946, 3353.89990,   0.00000, 0.00000, -115.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14772, 1581.48877, -1247.40796, 3353.89990,   0.00000, 0.00000, -175.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1598.29358, -1240.65991, 3352.41919,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1601.31348, -1240.61792, 3352.41919,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1606.11267, -1240.62976, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1596.20703, -1235.86133, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1615.55542, -1236.16772, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1613.90198, -1240.61060, 3352.41919,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1610.87634, -1240.64038, 3352.41919,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2774, 1595.11279, -1252.35217, 3356.10010,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1609.85767, -1231.08276, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1600.80664, -1231.07324, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1613.94885, -1240.56360, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1614.69653, -1239.84741, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1614.74561, -1241.28455, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1620.26306, -1241.28369, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 1587.01147, -1244.43555, 3352.42383,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 1597.93848, -1240.70996, 3353.82153,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 1603.69690, -1249.78467, 3353.82153,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1775, 1588.29590, -1243.79382, 3353.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1776, 1589.88708, -1243.71899, 3353.60010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1671, 1586.64209, -1267.15747, 3352.86011,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14772, 1585.18994, -1265.82434, 3353.57007,   0.00000, 0.00000, 30.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1594.92603, -1257.34680, 3352.42358,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1553, 1594.74243, -1257.34595, 3352.42310,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1594.85571, -1256.02637, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2930, 1594.85767, -1257.13501, 3354.93994,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1603.57617, -1255.89172, 3352.42554,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1603.59521, -1254.42456, 3352.42554,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1602.31531, -1258.75818, 3352.42554,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1600.87109, -1258.75464, 3352.42554,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 1602.80786, -1258.84119, 3353.82153,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1613.71301, -1230.59351, 3354.10010,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1609.39478, -1240.39038, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1608.58423, -1240.40332, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1607.71045, -1240.41431, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.86926, -1240.39465, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.05872, -1240.40759, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1605.27307, -1240.43396, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.45679, -1240.42773, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1603.69031, -1240.44836, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1602.93726, -1240.44409, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1603.27417, -1238.85327, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.10876, -1238.84021, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.94910, -1238.81189, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1605.73254, -1238.82849, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.51636, -1238.84448, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1607.29834, -1238.84106, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1608.08203, -1238.85742, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1608.88391, -1238.85242, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1608.48694, -1237.44080, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1607.72461, -1237.44275, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.94080, -1237.42700, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.13879, -1237.43237, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1605.35645, -1237.43591, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.59448, -1237.43787, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1603.81226, -1237.44165, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.16650, -1236.26636, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.94836, -1236.26855, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1605.73035, -1236.27063, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.51270, -1236.27283, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1607.29333, -1236.29761, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1608.05396, -1236.32227, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1607.66626, -1235.15540, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.86011, -1235.19031, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1606.07605, -1235.22534, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1605.32239, -1235.23389, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1604.49109, -1235.25085, 3352.40991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.85022, -1240.09546, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.67224, -1239.19153, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.53931, -1238.29431, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.55005, -1237.40588, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.51672, -1236.50842, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.54834, -1235.65869, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1596.52026, -1234.89038, 3352.40991,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1601.97546, -1239.99316, 3352.42627,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1610.33618, -1240.20215, 3352.42627,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2010, 1614.83093, -1239.12012, 3352.42627,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1609.57642, -1233.10608, 3352.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1607.99707, -1233.59607, 3352.30103,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1605.63123, -1233.58789, 3352.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1603.28381, -1233.58594, 3352.30103,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2314, 1603.29260, -1232.89307, 3352.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1649, 1607.49573, -1230.99390, 3352.80200,   -90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1649, 1605.32043, -1230.98474, 3352.80103,   -90.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 1606.38074, -1231.22668, 3354.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2204, 1611.00720, -1231.28064, 3352.42407,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2199, 1596.83374, -1231.94421, 3352.42383,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2206, 1607.11938, -1233.44031, 3352.69995,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1601.76587, -1231.82495, 3353.39990,   0.00000, 0.00000, 195.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1607.08862, -1231.76123, 3352.80005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1605.48706, -1231.75098, 3352.80005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 1581.91980, -1274.42993, 3352.42114,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 1611.39148, -1268.54517, 3352.42114,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1588.46924, -1269.22693, 3352.98999,   0.00000, 0.00000, 92.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1594.49353, -1269.20715, 3352.98999,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 1579.80811, -1262.92993, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1579.82129, -1264.70447, 3352.37988,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1714, 1575.74597, -1257.32019, 3352.39990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1576.82251, -1260.26892, 3353.00000,   0.00000, 0.00000, -65.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1574.80200, -1260.26782, 3353.00000,   0.00000, 0.00000, -120.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2385, 1575.10583, -1256.10559, 3353.89990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1578.48230, -1247.18469, 3352.40991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1577.23108, -1247.17456, 3352.40991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1576.48950, -1247.18311, 3352.40991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1575.33582, -1247.19495, 3352.40991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1574.65662, -1247.19800, 3352.40991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1573.45898, -1247.22083, 3352.40991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(932, 1570.96045, -1268.65808, 3352.39990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1571.44202, -1273.55811, 3352.41260,   0.00000, 0.00000, 88.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1574.49878, -1273.53455, 3352.41260,   0.00000, 0.00000, 95.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1577.39185, -1273.66101, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1574.22766, -1268.74780, 3352.41260,   0.00000, 0.00000, 82.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(932, 1572.07300, -1268.31555, 3352.39990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(932, 1576.45264, -1268.43530, 3352.39990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(932, 1577.43262, -1268.39563, 3352.39990,   0.00000, 0.00000, 20.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1577.42432, -1279.25476, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2252, 1588.52295, -1265.51379, 3353.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1587.23047, -1259.10181, 3352.42480,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.12244, -1259.09656, 3352.42480,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1588.97034, -1259.09680, 3352.42480,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1589.87439, -1259.11743, 3352.42480,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1590.77869, -1259.13843, 3352.42480,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1591.53320, -1259.30237, 3355.33154,   0.00000, 1.00000, -130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1580.05676, -1240.92493, 3355.33154,   0.00000, 1.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1591.26770, -1269.14648, 3352.41260,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1596.72534, -1273.69604, 3352.41260,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1603.74048, -1273.89246, 3352.41260,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1607.18896, -1273.75403, 3352.41260,   0.00000, 0.00000, -85.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1597.76208, -1274.09009, 3355.44238,   0.00000, 10.00000, 130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2961, 1597.98633, -1273.42456, 3354.15796,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2961, 1597.96277, -1269.60400, 3354.15796,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2961, 1583.95923, -1268.62549, 3354.15796,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2961, 1586.88269, -1259.02112, 3354.15796,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2961, 1579.35596, -1247.10400, 3354.15796,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1582.11853, -1279.93604, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1583.82031, -1278.56702, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1579.94568, -1278.75964, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1586.64038, -1278.76526, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1591.61499, -1279.93225, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1589.98987, -1278.77271, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1591.65698, -1279.21997, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1577.65991, -1274.45874, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1581.87549, -1274.33789, 3352.42554,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1569.64380, -1273.04834, 3352.42554,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1569.65015, -1271.55371, 3352.42554,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1742, 1573.67249, -1264.73584, 3352.42676,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2164, 1572.68823, -1257.45740, 3352.42432,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2165, 1576.23486, -1258.71423, 3352.42554,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1587.24268, -1269.24060, 3352.98999,   0.00000, 0.00000, 85.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1586.09131, -1269.20313, 3352.98999,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1811, 1585.01514, -1268.95032, 3352.98999,   0.00000, -60.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19173, 1572.70166, -1260.80713, 3354.74683,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19174, 1583.62109, -1240.70313, 3354.69995,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3051, 1603.62244, -1247.59851, 3353.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3051, 1603.61426, -1248.77197, 3353.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3051, 1603.58032, -1250.92285, 3353.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3051, 1603.56909, -1252.10400, 3353.80005,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2774, 1598.82056, -1272.01135, 3356.10010,   0.00000, 90.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.85596, -1257.31836, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1606.02478, -1261.52588, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1613.80005, -1268.49854, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1605.63147, -1268.50000, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1619.04016, -1275.08630, 3354.10010,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1610.57947, -1274.55090, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19399, 1613.73645, -1274.55164, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19399, 1616.92651, -1274.55347, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1619.15198, -1267.95557, 3354.10010,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1608.72852, -1252.03735, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1612.69202, -1259.02051, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.78271, -1255.46094, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.84314, -1252.22070, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.83435, -1250.55042, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.78198, -1247.00415, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.75745, -1244.67114, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1604.74927, -1242.65344, 3352.41260,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1608.52051, -1257.22522, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1609.17053, -1252.18530, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1608.42175, -1245.57751, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1609.18762, -1250.30066, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1609.40979, -1261.52527, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1614.24500, -1263.74756, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1609.99854, -1257.87915, 3354.10010,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1612.68286, -1246.28796, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1614.24658, -1251.02319, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1614.24707, -1257.38696, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1608.41602, -1247.17700, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1607.70313, -1246.33838, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.61597, -1248.75366, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.61633, -1248.84998, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.62280, -1249.00488, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.62573, -1249.13904, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.60461, -1253.56848, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.61011, -1253.74866, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1604.61377, -1253.88867, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1608.70032, -1252.39026, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1607.59338, -1256.48450, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1608.31982, -1255.71326, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1608.36438, -1257.22046, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2774, 1604.86670, -1259.65576, 3356.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2774, 1604.86731, -1260.68030, 3356.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1619.68506, -1265.83679, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1619.67566, -1262.74866, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1619.67041, -1260.64221, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1619.58997, -1280.42419, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1624.41516, -1279.55835, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1624.98450, -1274.83313, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1625.00037, -1265.37561, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1618.15161, -1259.12256, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1615.88782, -1259.11523, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1624.99109, -1252.63647, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1624.98950, -1258.95044, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19353, 1609.69043, -1246.28210, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1624.98401, -1244.10449, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2403, 1624.81738, -1241.58215, 3350.85010,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1619.30762, -1242.15271, 3351.92993,   0.00000, 0.00000, 10.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1619.77515, -1243.62427, 3351.92993,   0.00000, 0.00000, 25.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1620.61218, -1244.96497, 3351.92993,   0.00000, 0.00000, 40.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1621.74805, -1246.04333, 3351.92993,   0.00000, 0.00000, 54.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1623.10950, -1246.78003, 3351.92993,   0.00000, 0.00000, 70.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1624.64893, -1247.19189, 3351.92993,   0.00000, 0.00000, 80.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1715, 1621.82446, -1242.67505, 3352.39990,   0.00000, 0.00000, -75.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1715, 1624.70203, -1242.77417, 3352.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1715, 1623.25256, -1244.40198, 3352.39990,   0.00000, 0.00000, -30.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19173, 1614.34546, -1254.77808, 3354.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2186, 1624.36414, -1245.01038, 3352.42310,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14772, 1622.12732, -1246.14966, 3353.86011,   0.00000, 0.00000, 150.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14772, 1619.65808, -1242.99084, 3353.86011,   0.00000, 0.00000, 105.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.39221, -1248.01978, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.38110, -1248.99695, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.38232, -1250.04492, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.37805, -1251.05713, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.37488, -1252.08350, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.37036, -1253.04382, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.36597, -1254.00427, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.36206, -1254.94470, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1618.76819, -1258.87195, 3352.39893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1617.46252, -1258.95996, 3352.39893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1616.14856, -1258.97632, 3352.39893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 1614.53625, -1246.82312, 3352.41846,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 1608.42664, -1245.30481, 3352.41846,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 1619.26807, -1274.97412, 3352.41846,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1611.36304, -1274.46729, 3352.34009,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1624.92883, -1258.18140, 3352.30005,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1523, 1619.67505, -1266.62659, 3352.34009,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3387, 1609.47241, -1256.19238, 3352.41772,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3387, 1609.53357, -1254.79517, 3352.41772,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3389, 1609.59216, -1253.37537, 3352.41797,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3389, 1609.58667, -1252.03662, 3352.41797,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3387, 1609.66602, -1250.72058, 3352.41772,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3387, 1609.61145, -1249.43445, 3352.41772,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3387, 1609.65430, -1248.12512, 3352.41772,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1624.40771, -1261.82117, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1619.03772, -1260.02771, 3353.39990,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1614.61292, -1268.17346, 3355.33154,   0.00000, 1.00000, 60.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1613.43164, -1246.26367, 3352.30005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1613.42786, -1258.98059, 3352.30005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1614.28552, -1258.13477, 3352.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.84058, -1249.51172, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.84363, -1250.52356, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.86963, -1251.46753, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.85413, -1252.39929, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.86487, -1253.34192, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.84949, -1254.27356, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.82813, -1255.18701, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.85889, -1256.12256, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1624.89014, -1257.06335, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1624.38354, -1270.55652, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1620.26392, -1262.30457, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1624.83459, -1273.29956, 3352.42554,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1624.84338, -1274.74097, 3352.42554,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1623.68701, -1279.44019, 3352.42554,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1622.20056, -1279.45447, 3352.42554,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1614.98108, -1241.40466, 3352.42554,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1533, 1616.41687, -1241.43408, 3352.42554,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3051, 1624.88440, -1265.90271, 3353.69995,   0.00000, 0.00000, 47.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3051, 1624.89319, -1264.71448, 3353.69995,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1629.77234, -1263.71179, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1629.73987, -1255.09900, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1632.97656, -1259.81689, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1624.45703, -1241.13513, 3353.89990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1585.84497, -1243.57996, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19426, 1586.58813, -1242.84570, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1582.04810, -1247.43506, 3351.93091,   0.00000, 0.00000, 95.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19430, 1586.21594, -1244.79907, 3351.93091,   0.00000, 0.00000, -33.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1585.84448, -1242.03259, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19383, 1590.45959, -1241.70605, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2186, 1582.95923, -1241.00562, 3352.42285,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1590.45581, -1242.45215, 3352.35010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1502, 1585.79456, -1241.24158, 3352.35010,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1721, 1592.15918, -1251.62097, 3352.40991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1578.99097, -1274.90576, 3353.80005,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1577.55212, -1279.13940, 3353.80005,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1614.71252, -1263.21997, 3353.80005,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1617.32898, -1260.56287, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1608.70959, -1251.51147, 3353.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1597.95483, -1267.99915, 3353.80005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1593.97388, -1263.68311, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1613.87817, -1268.19031, 3355.33154,   0.00000, 1.00000, 130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1613.53723, -1262.11829, 3353.39990,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1605.58118, -1262.42200, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1611.34058, -1262.62512, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1607.57971, -1262.65271, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1612.41968, -1267.33289, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1610.16785, -1267.33337, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1605.56091, -1267.27148, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1603.98474, -1262.71924, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1600.42786, -1262.66309, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1598.03101, -1262.64844, 3352.41260,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1606.90710, -1267.20239, 3353.39990,   0.00000, 0.00000, 130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1613.38416, -1267.52759, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1609.04309, -1267.79773, 3353.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1605.49634, -1268.23865, 3355.33154,   0.00000, 1.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1609.36462, -1261.90234, 3355.33154,   0.00000, 1.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1604.33362, -1261.86133, 3355.33154,   0.00000, 10.00000, -80.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1596.44629, -1261.88684, 3355.33154,   0.00000, 10.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2611, 1614.10583, -1265.08423, 3354.16064,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2639, 1594.42932, -1265.83545, 3353.00000,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1609.25464, -1262.48242, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1601.90417, -1263.10571, 3353.39990,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1596.47046, -1263.33398, 3353.39990,   0.00000, 0.00000, -45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1605.86108, -1263.28564, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1600.45862, -1264.85388, 3352.39893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1598.95801, -1264.89783, 3352.39893,   0.00000, 0.00000, 25.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1604.08337, -1267.09619, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1608.46289, -1266.67834, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1612.38831, -1265.15540, 3352.39893,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1613.96558, -1263.21899, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1613.97986, -1264.09900, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1597.30908, -1269.17566, 3353.39990,   0.00000, 0.00000, 135.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1584.77051, -1279.11377, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1581.27466, -1279.14380, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1587.88696, -1279.18140, 3353.39990,   0.00000, 0.00000, 100.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1591.08020, -1279.21851, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1591.22424, -1274.94275, 3355.33154,   0.00000, 1.00000, -130.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1775, 1614.70447, -1269.01697, 3353.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1776, 1617.13477, -1269.05615, 3353.50000,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1619.20068, -1268.08936, 3354.00000,   0.00000, 0.00000, 45.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1599.72241, -1269.30566, 3354.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1599.70691, -1273.69128, 3354.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1579.46594, -1267.76526, 3354.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1569.75037, -1269.12256, 3354.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1579.81909, -1256.38123, 3354.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1572.83069, -1247.73083, 3354.00000,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1624.35950, -1279.37720, 3354.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1608.12659, -1279.42432, 3354.10010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1611.59631, -1283.35352, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(19445, 1619.33032, -1283.35083, 3354.10010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1617.51135, -1281.99402, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1614.11462, -1281.90979, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1997, 1610.70325, -1281.95825, 3352.41260,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1608.28015, -1278.94202, 3353.80005,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1611.84607, -1282.32959, 3353.39990,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1612.74939, -1282.35840, 3353.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14604, 1616.44385, -1282.53699, 3353.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14867, 1618.89465, -1279.25342, 3353.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2690, 1618.19934, -1274.62610, 3354.00000,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3858, 1615.11121, -1274.61011, 3348.30005,   45.00000, 90.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1613.34094, -1276.44885, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1613.35352, -1277.64221, 3352.39893,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1614.71301, -1278.94824, 3352.39893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1615.93530, -1278.89465, 3352.39893,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1827, 1615.26099, -1277.04919, 3352.42261,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1617.35315, -1277.41772, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1722, 1617.31274, -1276.34363, 3352.39893,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2700, 1610.62183, -1274.90613, 3355.33154,   0.00000, 1.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2146, 1591.87488, -1266.06250, 3352.88989,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2146, 1591.86230, -1263.33545, 3352.88989,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2164, 1586.93652, -1268.36475, 3352.42432,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14782, 1628.92651, -1255.54932, 3353.39990,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14782, 1632.57520, -1259.33264, 3353.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14782, 1632.47131, -1266.05005, 3353.39990,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(14782, 1628.41443, -1263.26111, 3353.39990,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1368, 1628.98633, -1261.58594, 3353.15991,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1368, 1630.59888, -1258.40894, 3353.15991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1368, 1630.58545, -1260.73596, 3353.15991,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1368, 1628.98938, -1257.43872, 3353.15991,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1808, 1625.26306, -1260.37646, 3352.41846,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.28076, -1245.99976, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.68347, -1245.88696, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.72095, -1248.79944, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.35217, -1248.82751, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.77979, -1252.02893, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.33862, -1252.02429, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.27588, -1255.16846, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.71436, -1255.13318, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.69531, -1258.37524, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.74097, -1261.79614, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.15442, -1243.64307, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1611.63037, -1242.52454, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1611.49939, -1244.98584, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1608.32886, -1244.14160, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1612.46582, -1250.00195, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1612.46875, -1252.85193, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1612.47925, -1255.72607, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1608.26501, -1260.38635, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.74097, -1261.79614, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.76172, -1264.75720, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.74182, -1267.53845, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.72766, -1270.66907, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.71082, -1273.61902, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1621.72852, -1276.41125, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1628.23022, -1261.06311, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1628.22192, -1257.44348, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.01367, -1283.77734, 3355.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1613.70593, -1283.81641, 3355.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1610.13501, -1283.80701, 3355.00000,   90.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1614.75769, -1276.99011, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1611.42908, -1265.65613, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1609.34570, -1265.68628, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1607.34229, -1265.71997, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1605.17834, -1265.76672, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1603.21765, -1265.73132, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1601.27417, -1265.75793, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1598.91187, -1266.32581, 3355.80005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1617.30420, -1272.07385, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1612.80042, -1272.09631, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1608.31824, -1272.05994, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1604.25403, -1272.06812, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1600.50793, -1272.03186, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1596.14441, -1272.01062, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1591.94385, -1271.95105, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1587.85876, -1271.98462, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1583.59839, -1271.91101, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1588.58582, -1277.60095, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1585.02441, -1277.56482, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1581.37244, -1277.61340, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1579.59802, -1272.00183, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1576.03809, -1272.05750, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1572.89795, -1272.10632, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1570.17810, -1272.12854, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1575.25281, -1258.69971, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1574.44873, -1253.95288, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1574.26892, -1250.16296, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1579.07007, -1253.96814, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1579.02271, -1249.64832, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1583.11902, -1253.93738, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1587.82874, -1254.14929, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1587.73352, -1250.27393, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1581.06555, -1246.93237, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1586.89209, -1246.35657, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1591.58423, -1248.72583, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1591.66052, -1252.97437, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1591.71960, -1257.21045, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1591.53540, -1244.47583, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1597.24890, -1256.61633, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1599.89136, -1251.04236, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1597.17053, -1245.34607, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1602.34497, -1245.59607, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1602.28784, -1256.49695, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1599.49683, -1238.98889, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1599.54968, -1235.68835, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1599.57617, -1232.44849, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1605.70764, -1234.11206, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1605.78247, -1237.65527, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1611.69495, -1238.86523, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1611.76929, -1235.81580, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1611.76868, -1232.73608, 3356.30005,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1581.76868, -1266.90540, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1586.06580, -1263.46875, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1581.79016, -1259.22156, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1585.49329, -1259.17712, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1588.66907, -1262.07495, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1589.64929, -1265.89331, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1606.69788, -1252.11121, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1606.66785, -1245.93518, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1606.72302, -1257.43213, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2886, 1624.94666, -1266.82178, 3353.92456,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(8071, 1603.09900, -1249.12500, 3354.66992,   0.00000, 180.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1893, 1583.29626, -1246.98584, 3356.30005,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);

	// BOC VAC
	CreateDynamicObject(5131, 2041.93433, -1994.04138, 17.39683,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5259, 2012.41211, -2004.41736, 14.30687,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5132, 2025.75891, -2000.23340, 14.46688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5262, 2047.27197, -1995.47998, 15.41690,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5262, 2047.27197, -2005.07019, 15.41690,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5262, 2033.64148, -2002.66064, 15.41690,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(922, 2014.03015, -1999.90125, 13.37687,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(922, 2009.39929, -1999.90125, 13.37687,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5126, 2003.64148, -1952.86267, 27.56687,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(994, 1971.75476, -1978.82874, 12.59688,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 1987.86218, -1972.61877, 13.19411,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 2000.65393, -1972.61877, 13.18412,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 2013.46484, -1972.61877, 13.17411,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(994, 1971.75476, -1967.63745, 12.59688,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 2032.52991, -1972.61877, 13.18412,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2935, 2042.49097, -1974.24829, 14.02409,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2935, 2052.29346, -1974.24829, 14.02409,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1358, 2041.54810, -1986.64209, 13.75409,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1358, 2051.99072, -1986.64209, 13.75409,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3796, 2011.73718, -1998.56982, 12.49689,   0.00000, 0.00000, 270.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3564, 2004.97925, -1955.47827, 14.18411,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3585, 2023.46692, -1957.84973, 14.25688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 1978.25000, -1961.39587, 13.19411,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 1991.07056, -1961.39587, 13.19411,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(984, 2003.88098, -1961.39587, 13.19411,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1299, 2022.88330, -1958.32104, 13.87688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3585, 2031.54736, -1957.84973, 14.25688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3585, 2039.62842, -1957.84973, 14.25688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3585, 2047.70923, -1957.84973, 14.25688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3585, 2055.78223, -1957.84973, 14.25688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1299, 2031.04419, -1958.32104, 13.87688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1299, 2039.11450, -1958.32104, 13.87688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1299, 2047.16638, -1958.32104, 13.87688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1299, 2055.20654, -1958.32104, 13.87688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1472, 2023.44434, -1959.97131, 12.82688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1472, 2031.51709, -1959.97131, 12.82688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1472, 2039.59888, -1959.97131, 12.82688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1472, 2047.66101, -1959.97131, 12.82688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1472, 2055.76318, -1959.97131, 12.82688,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1340, 1970.00928, -1964.63721, 13.59688,   0.00000, 0.00000, 180.00000, .worldid = 0, .streamdistance = 700);

	// Trucker
	CreateDynamicObject(1504, 2532.44653, -2126.31934, 12.58785,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(7025, 2433.03613, -2139.33789, 16.00398,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3569, 2426.71216, -2125.28760, 14.87475,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(11015, 2531.67114, -2135.25146, 14.48062,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3474, 2531.50269, -2094.30688, 19.53716,   0.00000, 0.00000, -90.19997, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3761, 2429.21680, -2131.00171, 14.53737,   0.00000, 0.00000, 179.29993, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2567, 2429.54346, -2125.43140, 14.46176,   0.00000, 0.00000, -90.20004, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3761, 2429.35620, -2119.74219, 14.53737,   0.00000, 0.00000, 179.29993, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3287, 2426.95630, -2110.84180, 17.26057,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3287, 2426.95630, -2102.46240, 17.26057,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5170, 2379.07275, -1742.33423, 16.12723,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5170, 2322.78223, -1742.33423, 16.12723,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(5170, 2263.87158, -1742.33423, 16.12723,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);

	//LSPD
	CreateDynamicObject(1566, 1555.88745, -1674.03418, 16.68520,   0.00000, 0.00000, -90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1566, 1555.89404, -1677.20374, 16.68520,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.19580, -1666.52454, 24.42810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.19580, -1666.52454, 20.43610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.19580, -1666.52454, 16.43810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.19580, -1666.52454, 12.43610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17896, -1654.33191, 24.42810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17896, -1654.33191, 20.44010,   0.00000, 0.00000, -0.21200, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17896, -1654.33191, 16.44110,   0.00000, 0.00000, -0.07370, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17896, -1654.33191, 12.45610,   0.00000, 0.00000, -0.08890, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.18896, -1684.70691, 24.42810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.18896, -1684.70691, 20.44910,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.18896, -1684.70691, 16.48010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.18896, -1684.70691, 12.49510,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17383, -1697.16736, 24.42810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17383, -1697.16736, 20.42510,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17383, -1697.16736, 16.43010,   0.00000, 0.00000, 0.03290, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.17383, -1697.16736, 12.45110,   0.00000, 0.00000, 0.02870, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.77942, -1650.14807, 24.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.77942, -1650.14807, 20.45010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.77942, -1650.14807, 16.46610,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.77942, -1650.14807, 12.48210,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.10730, -1644.49255, 12.47810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.10730, -1644.49255, 16.46210,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.10730, -1644.49255, 20.44810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.10730, -1644.49255, 24.43210,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.16528, -1643.50659, 24.42010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.16528, -1643.50659, 20.44210,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.16528, -1643.50659, 16.45610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.16528, -1643.50659, 12.47210,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01257, -1706.69702, 24.42810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.67969, -1701.04614, 24.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.67969, -1701.04614, 20.42610,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.67969, -1701.04614, 16.42610,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.67969, -1701.04614, 12.45410,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01257, -1706.69702, 20.43610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01257, -1706.69702, 16.45310,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01257, -1706.69702, 12.47610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01465, -1708.22705, 24.42810,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01660, -1708.22705, 20.44610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01855, -1708.22705, 16.46010,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1543.01465, -1708.22302, 12.48610,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.68018, -1713.88428, 24.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1553.99060, -1713.86304, 24.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1553.99060, -1713.86304, 20.49010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1553.99060, -1713.86304, 16.50410,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1553.99060, -1713.86304, 12.51810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.68018, -1713.88428, 20.44410,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.68018, -1713.88428, 16.47410,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.68018, -1713.88428, 12.50510,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1564.79639, -1713.84412, 24.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1564.79639, -1713.84412, 20.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1564.79639, -1713.84412, 16.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1564.79639, -1713.84412, 12.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.61768, -1713.83618, 24.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.61768, -1713.83618, 20.45210,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.61768, -1713.83618, 16.52010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.61768, -1713.83618, 12.52810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.83545, -1637.72168, 24.43210,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.83545, -1637.72168, 20.46010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.83545, -1637.72168, 16.48010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1554.83545, -1637.72168, 12.50810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1565.41138, -1637.77039, 12.50810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1565.41138, -1637.77039, 16.46810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1565.41138, -1637.77039, 20.42810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1565.41138, -1637.77039, 24.42210,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.62402, -1637.82373, 24.42210,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.62402, -1637.82373, 20.45110,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.62402, -1637.82373, 16.44710,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1571.62402, -1637.82373, 12.45510,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.82764, -1637.83069, 24.43210,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.82764, -1637.83069, 20.45410,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.82764, -1637.83069, 16.47010,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3851, 1548.82764, -1637.83069, 12.51610,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1538.93250, -1648.22046, 13.20570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1540.53040, -1654.19861, 13.20770,   0.00000, 0.00000, 29.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1545.05676, -1667.79138, 13.21370,   0.00000, 0.00000, 68.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1542.09424, -1660.18359, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1542.09570, -1663.37305, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1551.18811, -1668.52502, 13.20970,   0.00000, 0.00000, 98.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1538.92944, -1641.81421, 13.20570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1538.91846, -1638.60010, 13.20570,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1542.07251, -1635.40881, 13.20570,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1548.12000, -1636.91174, 13.20570,   0.00000, 0.00000, 62.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1539.10840, -1703.00525, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1540.72278, -1697.01733, 13.20770,   0.00000, 0.00000, -29.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1542.26526, -1691.00562, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1542.26990, -1687.83533, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1545.24561, -1683.41772, 13.21370,   0.00000, 0.00000, -68.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1551.40088, -1682.71191, 13.20970,   0.00000, 0.00000, -98.50000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1539.10266, -1709.40137, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1539.07751, -1714.16333, 13.20970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1542.28601, -1717.38879, 13.20970,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(983, 1546.42224, -1714.33484, 13.20970,   0.00000, 0.00000, 163.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1539.83923, -1714.86194, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1539.76929, -1700.86572, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1539.92749, -1637.10400, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1539.88147, -1650.42993, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1256, 1541.68958, -1689.43604, 13.19380,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(1256, 1541.48560, -1661.79675, 13.19380,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9833, 1545.77637, -1690.11047, 15.23690,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(9833, 1545.90649, -1661.63293, 15.23690,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1546.33862, -1656.81567, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1546.37427, -1665.98828, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1546.45972, -1685.17395, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(736, 1546.44739, -1694.83862, 23.29970,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2244, 1546.35718, -1672.46155, 14.21450,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2244, 1546.35840, -1678.75940, 14.21450,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2244, 1550.94385, -1678.76404, 15.94250,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(2244, 1550.92981, -1672.38562, 15.94250,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1534.24487, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1533.44495, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1532.64490, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1531.84485, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1531.04492, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1530.24487, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1528.96289, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1528.16284, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1527.36292, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1526.56287, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1525.76294, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1524.96289, -1699.79761, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1534.04163, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1533.24158, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1532.44165, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1531.64160, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1530.84155, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1530.04163, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1529.04163, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1528.24158, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1527.44165, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1526.64160, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1525.84155, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(3578, 1525.04163, -1654.18628, 11.59810,   0.00000, 0.00000, 90.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1544.18982, -1714.00696, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.14453, -1713.92761, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.95496, -1713.92078, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.95007, -1711.80847, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.81714, -1710.88074, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.80298, -1708.66052, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.03833, -1706.30725, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.57532, -1704.80859, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.68481, -1702.93921, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.66919, -1701.61768, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.82092, -1701.79736, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.82556, -1703.51331, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.77478, -1705.22510, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.77283, -1706.88464, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.75439, -1708.46606, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.74878, -1710.10620, 13.14130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.26147, -1693.89648, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.22241, -1692.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.22241, -1690.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.22241, -1688.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.22241, -1686.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1546.72241, -1686.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.22241, -1686.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.22241, -1688.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.22241, -1690.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.22241, -1692.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.22241, -1694.03088, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1547.03333, -1693.03735, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1546.81726, -1690.99463, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1546.91089, -1688.60486, 13.10330,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.33337, -1665.17090, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.35400, -1663.39050, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.31348, -1661.99060, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.31348, -1660.49060, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.31348, -1658.99060, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1545.31348, -1657.49060, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1546.81348, -1657.49060, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.05359, -1657.53088, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.05359, -1659.03088, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.05359, -1660.53088, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.05359, -1662.03088, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.09424, -1663.29065, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1548.05359, -1665.03088, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1546.71533, -1664.04956, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1546.76367, -1660.98938, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1543.40515, -1637.70532, 13.09130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.42749, -1637.79321, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1637.77258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1639.27258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1640.77258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1642.27258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1643.77258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1645.27258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1646.77258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1648.27258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1540.78662, -1649.77258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1541.78662, -1649.77258, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.21960, -1647.70203, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.09290, -1645.67957, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.18201, -1643.63770, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.31042, -1641.44104, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	CreateDynamicObject(870, 1542.32129, -1639.46216, 13.07130,   0.00000, 0.00000, 0.00000, .worldid = 0, .streamdistance = 700);
	
	// VIP Garage Gold
	CreateDynamicObject(10010,-4398.91894531,871.42370605,985.81781006,0.00000000,0.00000000,356.03002930); //object(ugcarpark_sfe) (1)
	CreateDynamicObject(7891,-4432.70019531,906.73614502,988.49066162,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (2)
	CreateDynamicObject(7891,-4425.47021484,906.73535156,988.49066162,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (4)
	CreateDynamicObject(7891,-4432.70019531,906.73535156,993.03997803,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (5)
	CreateDynamicObject(7891,-4425.46972656,906.73535156,993.03997803,0.00000000,0.00000000,90.00000000); //object(vgwspry1) (6)
	
	// VIP Garage Silver
	CreateObject(10010, -4392.81250, 975.71643, 985.81781,   0.00000, 0.00000, 356.03003);
	CreateObject(16773, -4425.03076, 1011.15936, 989.31165,   0.00000, 0.00000, -4.38000);

	// New VIP Lounge
    CreateDynamicObject(14614,2533.68457031,1416.85351562,7705.11816406,0.00000000,0.00000000,0.00000000); //object(triad_main3) (1)
	CreateDynamicObject(14607,2533.54492188,1417.93652344,7705.11572266,0.00000000,0.00000000,359.74731445); //object(triad_main2) (2)
	CreateDynamicObject(14563,2533.70019531,1419.26757812,7705.11376953,0.00000000,0.00000000,0.00000000); //object(triad_main) (1)
	CreateDynamicObject(3533,2544.49926758,1432.28100586,7702.83007812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(3533,2544.46289062,1403.82421875,7702.83007812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(14561,2584.83007812,1417.66503906,7704.10937500,0.00000000,0.00000000,179.74731445); //object(triad_neon) (2)
	CreateDynamicObject(3533,2569.09399414,1406.85668945,7705.23632812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2569.12109375,1428.65820312,7705.23632812,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(1846,2502.62304688,1391.47949219,7699.94970703,90.00000000,90.00000000,269.98901367); //object(shop_shelf04) (1)
	CreateDynamicObject(8664,2470.62500000,1449.24902344,7707.08886719,0.00000000,179.99450684,269.98901367); //object(casrylegrnd_lvs) (2)
	CreateDynamicObject(3534,2522.69213867,1427.96093750,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (1)
	CreateDynamicObject(3534,2520.36645508,1407.96240234,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (2)
	CreateDynamicObject(3534,2505.93945312,1408.00488281,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (3)
	CreateDynamicObject(3534,2507.41162109,1428.69897461,7705.81347656,179.99450684,0.00000000,0.00000000); //object(trdlamp01) (4)
	CreateDynamicObject(14537,2555.20019531,1417.82421875,7700.75244141,0.00000000,0.00000000,269.74731445); //object(pdomesbar) (1)
	CreateDynamicObject(1703,2561.78857422,1430.46569824,7698.58447266,0.00000000,0.00000000,0.00000000); //object(kb_couch02) (1)
	CreateDynamicObject(1703,2565.56933594,1429.20166016,7698.58447266,0.00000000,0.00000000,269.75000000); //object(kb_couch02) (2)
	CreateDynamicObject(1703,2560.29028320,1427.15185547,7698.58447266,0.00000000,0.00000000,89.49731445); //object(kb_couch02) (3)
	CreateDynamicObject(2126,2562.40576172,1427.81384277,7698.58447266,0.00000000,0.00000000,0.00000000); //object(coffee_swank_5) (1)
	CreateDynamicObject(644,2565.03710938,1431.16113281,7698.78466797,0.00000000,0.00000000,0.00000000); //object(pot_02) (1)
	CreateDynamicObject(1703,2549.62744141,1430.27490234,7698.58447266,0.00000000,0.00000000,0.00000000); //object(kb_couch02) (4)
	CreateDynamicObject(1703,2548.02905273,1427.33349609,7698.58447266,0.00000000,0.00000000,89.49462891); //object(kb_couch02) (5)
	CreateDynamicObject(1703,2553.11743164,1429.18188477,7698.58447266,0.00000000,0.00000000,269.74731445); //object(kb_couch02) (6)
	CreateDynamicObject(2126,2550.10009766,1427.68005371,7698.58447266,0.00000000,0.00000000,0.00000000); //object(coffee_swank_5) (2)
	CreateDynamicObject(2208,2556.58935547,1430.02514648,7698.58447266,0.00000000,0.00000000,269.99996948); //object(med_office7_unit_1) (1)
	CreateDynamicObject(644,2556.64257812,1432.07714844,7698.78466797,0.00000000,0.00000000,0.00000000); //object(pot_02) (3)
	CreateDynamicObject(644,2545.51367188,1430.76379395,7698.78466797,0.00000000,0.00000000,0.00000000); //object(pot_02) (4)
	CreateDynamicObject(3528,2542.58496094,1414.42236328,7707.52832031,0.00000000,0.00000000,81.75000000); //object(vgsedragon) (1)
	CreateDynamicObject(13656,2549.15917969,1425.01318359,7691.92236328,0.00000000,0.00000000,0.00000000); //object(fuckknows) (1)
	CreateDynamicObject(1702,2500.81054688,1398.09545898,7696.57470703,0.00000000,0.00000000,0.00000000); //object(kb_couch06) (1)
	CreateDynamicObject(1702,2497.05859375,1398.17089844,7696.57470703,0.00000000,0.00000000,0.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1822,2499.40185547,1397.70947266,7696.57470703,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (1)
	CreateDynamicObject(1705,2496.42871094,1395.96105957,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_chair04) (1)
	CreateDynamicObject(1702,2508.76733398,1398.05688477,7696.57470703,0.00000000,0.00000000,269.99996948); //object(kb_couch06) (3)
	CreateDynamicObject(1702,2508.77172852,1391.88793945,7696.57470703,0.00000000,0.00000000,269.99450684); //object(kb_couch06) (4)
	CreateDynamicObject(1705,2508.75927734,1394.53845215,7696.57470703,0.00000000,0.00000000,269.74996948); //object(kb_chair04) (2)
	CreateDynamicObject(2010,2496.33740234,1398.38879395,7696.60791016,0.00000000,0.00000000,0.00000000); //object(nu_plant3_ofc) (1)
	CreateDynamicObject(3528,2541.61718750,1421.13610840,7707.52832031,0.00000000,0.00000000,284.00000000); //object(vgsedragon) (1)
	CreateDynamicObject(1557,2581.77954102,1416.19738770,7700.99072266,0.00000000,0.00000000,89.75000000); //object(gen_doorext19) (1)
	CreateDynamicObject(1557,2581.77709961,1419.24938965,7700.99072266,0.00000000,0.00000000,269.74731445); //object(gen_doorext19) (2)
	CreateDynamicObject(3533,2525.58374023,1403.63500977,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2525.65917969,1433.01574707,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2502.09692383,1403.54077148,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(3533,2502.05957031,1432.68359375,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(2232,2502.62475586,1404.12939453,7701.62158203,29.99816895,0.00000000,137.49841309); //object(med_speaker_4) (2)
	CreateDynamicObject(2232,2502.66284180,1432.12524414,7701.79736328,29.99267578,0.00000000,49.99328613); //object(med_speaker_4) (3)
	CreateDynamicObject(2232,2525.13916016,1432.33178711,7703.54345703,29.98718262,0.00000000,319.73925781); //object(med_speaker_4) (4)
	CreateDynamicObject(2232,2524.96215820,1404.17626953,7703.54345703,29.98168945,0.00000000,225.48889160); //object(med_speaker_4) (5)
	CreateDynamicObject(14434,2511.20556641,1425.14147949,7706.56093750,0.00000000,0.00000000,0.00000000); //object(carter-spotlight42) (1)
	CreateDynamicObject(14434,2517.55908203,1412.60461426,7706.56103516,0.00000000,0.00000000,179.74731445); //object(carter-spotlight42) (2)
	CreateDynamicObject(2802,2496.60351562,1452.96240234,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (1)
	CreateDynamicObject(2802,2500.60888672,1455.75598145,7696.91699219,0.00000000,0.00000000,83.75000000); //object(castable1) (2)
	CreateDynamicObject(2802,2505.04809570,1455.83142090,7696.91699219,0.00000000,0.00000000,83.74877930); //object(castable1) (3)
	CreateDynamicObject(2802,2508.61010742,1453.67211914,7696.91699219,0.00000000,0.00000000,185.49877930); //object(castable1) (4)
	CreateDynamicObject(2802,2508.56738281,1444.14099121,7696.91699219,0.00000000,0.00000000,185.49865723); //object(castable1) (5)
	CreateDynamicObject(2802,2508.53784180,1439.81018066,7696.91699219,0.00000000,0.00000000,10.24865723); //object(castable1) (6)
	CreateDynamicObject(2802,2496.62451172,1448.15747070,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (7)
	CreateDynamicObject(2802,2496.67675781,1443.45410156,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (8)
	CreateDynamicObject(2802,2496.61523438,1438.70251465,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (9)
	CreateDynamicObject(2802,2500.53320312,1452.66955566,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (10)
	CreateDynamicObject(2802,2504.76513672,1452.47546387,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (11)
	CreateDynamicObject(2802,2504.43212891,1447.91577148,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (12)
	CreateDynamicObject(2802,2504.61816406,1442.34155273,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (13)
	CreateDynamicObject(2802,2500.46679688,1442.34082031,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (14)
	CreateDynamicObject(2802,2500.64111328,1447.44116211,7696.91699219,0.00000000,0.00000000,0.00000000); //object(castable1) (15)
	CreateDynamicObject(8664,2460.33349609,1334.99987793,7705.18896484,0.00000000,179.99450684,358.98901367); //object(casrylegrnd_lvs) (2)
	CreateDynamicObject(8664,2466.37988281,1506.99414062,7705.18896484,0.00000000,179.99450684,269.98352051); //object(casrylegrnd_lvs) (2)
	CreateDynamicObject(1702,2496.41601562,1392.63623047,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2496.45556641,1388.72924805,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2496.42236328,1382.17553711,7696.57470703,0.00000000,0.00000000,90.00000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2499.56835938,1379.86389160,7696.57470703,0.00000000,0.00000000,180.25000000); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2503.86328125,1379.84350586,7696.57470703,0.00000000,0.00000000,180.24719238); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2508.63720703,1379.85156250,7696.57470703,0.00000000,0.00000000,180.24719238); //object(kb_couch06) (2)
	CreateDynamicObject(1702,2508.78320312,1384.55676270,7696.57470703,0.00000000,0.00000000,270.24722290); //object(kb_couch06) (2)
	CreateDynamicObject(1822,2495.96850586,1391.05432129,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (2)
	CreateDynamicObject(1822,2500.17749023,1379.41052246,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (4)
	CreateDynamicObject(1822,2504.73486328,1379.36376953,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (5)
	CreateDynamicObject(1822,2508.29492188,1381.23937988,7696.58007812,0.00000000,0.00000000,0.00000000); //object(coffee_swank_6) (6)
	CreateDynamicObject(2592,2502.65625000,1385.34570312,7697.48876953,0.00000000,0.00000000,0.00000000); //object(ab_slottable) (1)
	CreateDynamicObject(14391,2518.39965820,1395.66064453,7697.63281250,0.00000000,0.00000000,137.75000000); //object(dr_gsnew07) (1)
	CreateDynamicObject(2773,2513.80834961,1391.35119629,7697.49023438,0.00000000,0.00000000,287.00000000); //object(cj_airprt_bar) (1)
	CreateDynamicObject(2773,2511.01782227,1390.83972168,7697.49023438,0.00000000,0.00000000,273.74584961); //object(cj_airprt_bar) (2)
	CreateDynamicObject(2773,2511.01586914,1398.82482910,7697.49023438,0.00000000,0.00000000,285.49584961); //object(cj_airprt_bar) (3)
	CreateDynamicObject(2773,2513.54321289,1400.46667480,7697.47998047,0.00000000,0.00000000,322.49072266); //object(cj_airprt_bar) (4)
	CreateDynamicObject(2773,2514.37133789,1402.14062500,7697.49023438,0.00000000,0.00000000,345.23721313); //object(cj_airprt_bar) (5)
	CreateDynamicObject(2773,2516.00585938,1403.10449219,7697.49023438,0.00000000,358.50000000,270.74584961); //object(cj_airprt_bar) (6)
	CreateDynamicObject(2773,2518.39916992,1403.09533691,7697.49023438,0.00000000,358.49487305,269.99157715); //object(cj_airprt_bar) (7)
	CreateDynamicObject(2773,2521.51806641,1403.08837891,7697.49023438,0.00000000,358.49487305,269.98901367); //object(cj_airprt_bar) (8)
	CreateDynamicObject(2773,2522.30200195,1401.77014160,7697.49023438,0.00000000,358.49487305,173.23901367); //object(cj_airprt_bar) (9)
	CreateDynamicObject(2773,2521.81201172,1399.49047852,7697.49023438,0.00000000,358.49487305,163.23791504); //object(cj_airprt_bar) (10)
	CreateDynamicObject(1541,2503.42236328,1385.51770020,7698.08593750,0.00000000,0.00000000,179.75000000); //object(cj_beer_taps_1) (1)
	CreateDynamicObject(1545,2501.91772461,1385.48803711,7698.16455078,0.00000000,0.00000000,0.00000000); //object(cj_b_optic1) (1)
	CreateDynamicObject(14562,2487.84570312,1418.30541992,7699.85156250,0.00000000,0.00000000,0.00000000); //object(triad_lion) (1)
	CreateDynamicObject(16101,2517.80395508,1435.93750000,7696.97753906,0.00000000,0.00000000,0.00000000); //object(des_windsockpole) (1)
	CreateDynamicObject(3533,2511.56665039,1388.92163086,7700.82812500,0.00000000,0.00000000,0.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(1703,2533.08276367,1399.54919434,7696.58251953,0.00000000,0.00000000,259.00000000); //object(kb_couch02) (7)
	CreateDynamicObject(1703,2529.77880859,1391.14709473,7696.58251953,0.00000000,0.00000000,234.99719238); //object(kb_couch02) (8)
	CreateDynamicObject(1753,2518.78100586,1441.38500977,7696.97753906,0.00000000,0.49987793,308.24658203); //object(swank_couch_1) (3)
	CreateDynamicObject(1753,2521.59692383,1436.83740234,7696.97753906,0.00000000,0.49987793,283.99334717); //object(swank_couch_1) (4)
	CreateDynamicObject(14809,2514.50146484,1439.01867676,7698.00341797,0.00000000,0.00000000,269.75000000); //object(strip2_platforms) (1)
	CreateDynamicObject(16101,2517.80371094,1435.93750000,7705.97753906,0.00000000,180.00000000,0.00000000); //object(des_windsockpole) (3)
	CreateDynamicObject(2004,2547.08203125,1402.87194824,7700.60693359,0.00000000,0.00000000,180.75000000); //object(cr_safe_door) (1)
	CreateDynamicObject(18648,2574.30322266,1430.06726074,7705.38964844,0.00000000,0.00000000,90.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18648,2574.33300781,1405.45104980,7705.39013672,0.00000000,0.00000000,90.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18655,2523.20751953,1431.59301758,7696.54589844,0.00000000,0.00000000,50.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18655,2502.90087891,1404.33312988,7696.14160156,0.00000000,0.00000000,210.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18655,2523.31250000,1404.46948242,7696.14160156,0.00000000,0.00000000,310.00000000); //object(trdpillar01) (2)
	CreateDynamicObject(18655,2502.92797852,1431.71264648,7696.14599609,0.00000000,0.00000000,150.00000000); //object(trdpillar01) (1)
	CreateDynamicObject(18648,2514.53857422,1431.92138672,7706.11523438,0.00000000,0.00000000,264.49768066); //object(whiten) (1)
	CreateDynamicObject(18648,2502.94531250,1418.95727539,7705.86865234,0.00000000,0.00000000,358.25000000); //object(whiten) (1)
	CreateDynamicObject(18648,2512.54833984,1404.22753906,7706.46093750,0.00000000,0.00000000,88.24768066); //object(pinkn) (1)
	CreateDynamicObject(18648,2524.80029297,1417.05432129,7705.85693359,0.00000000,0.00000000,175.49768066); //object(pinkn) (1)
	CreateDynamicObject(19129,2513.15600586,1418.46594238,7696.64794922,0.00000000,0.00000000,0.00000000); //object(dancefloor) (1)
	CreateDynamicObject(18885,2561.32519531,1403.24609375,7699.56640625,0.00000000,0.00000000,179.50000000); //object(gunlocker) (1)
	CreateDynamicObject(14782,2555.62255859,1403.19152832,7699.47363281,0.00000000,0.00000000,179.49462891); //object(pdomesbar) (1)
	CreateDynamicObject(18885,2549.56079102,1403.30615234,7699.56640625,0.00000000,0.00000000,179.49462891); //object(gunlocker) (1)
	CreateDynamicObject(18646,2524.76708984,1404.45544434,7706.96542969,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2524.73706055,1431.57739258,7706.96777344,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2503.03784180,1431.67236328,7706.96777344,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2503.04516602,1404.47290039,7706.96337891,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2555.37280273,1413.67517090,7702.10400391,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	CreateDynamicObject(18646,2555.36938477,1421.85681152,7702.10400391,0.00000000,0.00000000,0.00000000); //object(pd light) (2)
	
	// Gold+ VIP room
	CreateDynamicObject(8378,2783.24511719,2408.79687500,1238.85534668,90.00000000,179.99450684,179.99450684); //object(vgsbighngrdoor)(1)
	CreateDynamicObject(8378,2783.02050781,2398.24707031,1238.85534668,90.00000000,179.99450684,179.98352051); //object(vgsbighngrdoor)(2)
	CreateDynamicObject(14639,2791.74658203,2411.67407227,1240.83117676,0.00000000,0.00000000,0.00000000); //object(tr_man_main)(1)
	CreateDynamicObject(2367,2785.66162109,2401.78881836,1239.50109863,0.00000000,0.00000000,90.00000000); //object(shop_counter_2)(1)
	CreateDynamicObject(2367,2785.66015625,2403.74072266,1239.50109863,0.00000000,0.00000000,90.00000000); //object(shop_counter_2)(2)
	CreateDynamicObject(2367,2785.73339844,2406.03417969,1239.50109863,0.00000000,0.00000000,90.00000000); //object(shop_counter_2)(3)
	CreateDynamicObject(2367,2785.35498047,2408.48022461,1239.50109863,0.00000000,0.00000000,146.25000000); //object(shop_counter_2)(4)
	CreateDynamicObject(2367,2788.91699219,2412.19091797,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(6)
	CreateDynamicObject(2367,2789.62158203,2411.74365234,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(8)
	CreateDynamicObject(2367,2791.66015625,2411.77294922,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(9)
	CreateDynamicObject(2367,2793.50781250,2411.80859375,1239.50109863,0.00000000,0.00000000,0.00000000); //object(shop_counter_2)(10)
	CreateDynamicObject(3037,2808.32519531,2394.46289062,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2792.66015625,2412.26855469,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(2)
	CreateDynamicObject(3037,2785.11450195,2404.68090820,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(4)
	CreateDynamicObject(3037,2785.14282227,2404.30737305,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(5)
	CreateDynamicObject(3037,2783.94091797,2394.24291992,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(6)
	CreateDynamicObject(3037,2784.58911133,2402.62988281,1241.72961426,0.00000000,0.00000000,0.00000000); //object(warehouse_door2b)(7)
	CreateDynamicObject(3037,2780.07910156,2390.04443359,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(10)
	CreateDynamicObject(3037,2784.13867188,2389.07861328,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(11)
	CreateDynamicObject(3037,2785.13769531,2388.53100586,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(12)
	CreateDynamicObject(3037,2790.27709961,2388.36987305,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(13)
	CreateDynamicObject(3037,2802.30566406,2389.04101562,1238.80969238,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(14)
	CreateDynamicObject(3037,2811.39453125,2389.04101562,1241.72961426,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(15)
	CreateDynamicObject(3037,2802.09179688,2389.01464844,1245.81933594,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(16)
	CreateDynamicObject(1557,2794.23217773,2388.58007812,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gen_doorext19)(1)
	CreateDynamicObject(1557,2794.23144531,2388.58007812,1242.03112793,0.00000000,0.00000000,0.00000000); //object(gen_doorext19)(3)
	CreateDynamicObject(3037,2800.37792969,2389.03662109,1238.80969238,0.00000000,0.00000000,90.00000000); //object(warehouse_door2b)(14)
	CreateDynamicObject(3037,2808.22973633,2402.06494141,1241.72961426,0.00000000,0.00000000,5.50000000); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2808.18774414,2403.19165039,1241.72961426,0.00000000,0.00000000,15.49865723); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2807.62158203,2405.21508789,1241.72961426,0.00000000,0.00000000,28.49621582); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2806.19482422,2407.65747070,1241.72961426,0.00000000,0.00000000,39.49304199); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2805.01196289,2409.15185547,1241.72961426,0.00000000,0.00000000,51.49035645); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2802.00463867,2411.15405273,1241.72961426,0.00000000,0.00000000,67.98742676); //object(warehouse_door2b)(1)
	CreateDynamicObject(3037,2802.19604492,2412.18774414,1241.72961426,0.00000000,0.00000000,89.00000000); //object(warehouse_door2b)(2)
	CreateDynamicObject(8378,2797.67089844,2398.59960938,1245.84448242,90.00000000,179.99450684,179.99450684); //object(vgsbighngrdoor)(1)
	CreateDynamicObject(8378,2799.55175781,2411.31054688,1245.84448242,90.00000000,179.99450684,179.99450684); //object(vgsbighngrdoor)(1)
	CreateDynamicObject(2367,2797.02856445,2411.85937500,1239.40112305,0.00000000,0.00000000,356.50000000); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2798.89013672,2411.65283203,1239.40112305,0.00000000,0.00000000,346.74536133); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2799.80737305,2411.35571289,1239.40112305,0.00000000,0.00000000,342.99499512); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2801.32983398,2410.95849609,1239.40112305,0.00000000,0.00000000,331.49316406); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2803.54150391,2409.68872070,1239.40112305,0.00000000,0.00000000,319.24047852); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2805.15649414,2408.32348633,1239.40112305,0.00000000,0.00000000,302.48522949); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2806.10351562,2406.79370117,1239.40112305,0.00000000,0.00000000,298.23107910); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2807.07128906,2404.81079102,1239.40112305,0.00000000,0.00000000,286.97937012); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2807.68261719,2402.74438477,1239.40112305,0.00000000,0.00000000,275.97937012); //object(shop_counter_2)(10)
	CreateDynamicObject(2367,2807.76220703,2401.86279297,1239.40112305,0.00000000,0.00000000,271.47656250); //object(shop_counter_2)(10)
	CreateDynamicObject(3854,2807.60595703,2400.44873047,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(1)
	CreateDynamicObject(3854,2807.54174805,2400.96850586,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(2)
	CreateDynamicObject(3854,2807.66699219,2400.67333984,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(3)
	CreateDynamicObject(3854,2808.34960938,2400.29492188,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(4)
	CreateDynamicObject(3854,2807.98095703,2400.43408203,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(5)
	CreateDynamicObject(3854,2808.13964844,2400.99804688,1239.53112793,0.00000000,0.00000000,0.00000000); //object(gay_telgrphpole)(6)
	CreateDynamicObject(1557,2785.17285156,2388.63671875,1242.03112793,0.00000000,0.00000000,90.24853516); //object(gen_doorext19)(5)
	CreateDynamicObject(1557,2785.15771484,2388.64892578,1239.53112793,0.00000000,0.00000000,89.99853516); //object(gen_doorext19)(6)
	CreateDynamicObject(3037,2788.37548828,2413.18457031,1241.72961426,0.00000000,0.00000000,126.50000000); //object(warehouse_door2b)(2)
	CreateDynamicObject(3037,2785.93969727,2411.70190430,1241.72961426,0.00000000,0.00000000,151.24658203); //object(warehouse_door2b)(2)
	CreateDynamicObject(3854,2797.07617188,2411.26171875,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(7)
	CreateDynamicObject(3854,2796.77734375,2411.25292969,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(8)
	CreateDynamicObject(3854,2796.40234375,2411.26660156,1239.53112793,0.00000000,0.00000000,313.74206543); //object(gay_telgrphpole)(9)
	CreateDynamicObject(3854,2796.39794922,2412.05029297,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(10)
	CreateDynamicObject(3854,2796.39697266,2411.70947266,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(11)
	CreateDynamicObject(3854,2797.14160156,2411.71044922,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(12)
	CreateDynamicObject(3854,2797.07104492,2412.25317383,1239.53112793,0.00000000,0.00000000,313.74755859); //object(gay_telgrphpole)(13)
	CreateDynamicObject(4028,2772.93994141,2325.31835938,1240.77282715,0.00000000,0.00000000,126.00000000); //object(lanstap)(2)
	CreateDynamicObject(4033,2714.31811523,2331.49536133,1226.63452148,0.00000000,0.00000000,0.00000000); //object(fightplaza1_lan)(1)
	CreateDynamicObject(4141,2714.29467773,2316.75903320,1244.14880371,0.00000000,0.00000000,0.00000000); //object(hotelexterior1_lan)(1)
	CreateDynamicObject(5408,2865.92114258,2292.19921875,1248.68542480,0.00000000,0.00000000,0.00000000); //object(laeexaminerbuild1)(1)
	CreateDynamicObject(5476,2875.73803711,2399.84887695,1234.00378418,0.00000000,0.00000000,0.00000000); //object(laeidleproj01)(2)
	CreateDynamicObject(4019,2772.02539062,2201.21777344,1226.07568359,0.00000000,0.00000000,0.00000000); //object(newbuildsm01)(1)
	CreateDynamicObject(4079,2799.79101562,2407.20996094,1242.81372070,0.00000000,0.00000000,267.99499512); //object(twintjail1_lan)(1)
	CreateDynamicObject(3984,2775.56787109,2327.20361328,1237.12023926,0.00000000,0.00000000,0.00000000); //object(churchprog1_lan)(1)
	CreateDynamicObject(4000,2779.60498047,2408.78369141,1225.83374023,0.00000000,0.00000000,0.00000000); //object(twintjail2_lan)(1)
	CreateDynamicObject(5474,2924.07031250,2396.92065430,1226.15185547,0.00000000,0.00000000,0.00000000); //object(laeidlewood02)(1)
	CreateDynamicObject(4156,2732.26074219,2372.28515625,1226.30834961,0.00000000,0.00000000,0.00000000); //object(roads17_lan)(2)
	// CreateDynamicObject(5441,1902.77539062,-1581.88366699,33.49028778,0.00000000,0.00000000,0.00000000); //object(laeroad12)(2)
	CreateDynamicObject(4125,2758.75415039,2468.06909180,1231.06738281,0.00000000,0.00000000,0.00000000); //object(gsfreeway1_lan)(1)
	CreateDynamicObject(6123,2741.86816406,2274.62622070,1226.15930176,0.00000000,0.00000000,0.00000000); //object(lawroads_law17)(2)
	CreateDynamicObject(6121,2814.07568359,2352.91967773,1226.34643555,0.00000000,0.00000000,270.00000000); //object(lawroads_law15)(1)
	CreateDynamicObject(6117,2862.17993164,2362.10473633,1226.35290527,0.00000000,0.00000000,0.00000000); //object(lawroads_law11)(1)
	CreateDynamicObject(6121,2816.98437500,2430.84741211,1226.34643555,0.00000000,0.00000000,270.00000000); //object(lawroads_law15)(2)
	CreateDynamicObject(4079,2755.83789062,2405.47851562,1242.71362305,0.00000000,0.00000000,87.98950195); //object(twintjail1_lan)(1)
	CreateDynamicObject(6121,2814.03857422,2213.08740234,1226.34643555,0.00000000,0.00000000,270.00000000); //object(lawroads_law15)(4)
	CreateDynamicObject(6117,2813.95507812,2274.86523438,1226.35290527,0.00000000,0.00000000,270.00000000); //object(lawroads_law11)(3)
	CreateDynamicObject(6117,2861.88159180,2222.50488281,1226.35290527,0.00000000,0.00000000,180.00000000); //object(lawroads_law11)(4)
	CreateDynamicObject(6117,2770.79345703,2242.87500000,1226.35290527,0.00000000,0.00000000,179.99450684); //object(lawroads_law11)(5)
	CreateDynamicObject(4027,2775.59765625,2272.69677734,1228.29064941,0.00000000,0.00000000,0.00000000); //object(langrasspatch)(1)
	CreateDynamicObject(4018,2784.31054688,2258.12451172,1226.47509766,0.00000000,0.00000000,0.00000000); //object(newbuildsm02)(1)
	CreateDynamicObject(5725,2854.03125000,2207.83813477,1235.39550781,0.00000000,0.00000000,0.00000000); //object(holpacific2_law)(1)
	CreateDynamicObject(5725,2833.26318359,2168.41357422,1235.39550781,0.00000000,0.00000000,0.00000000); //object(holpacific2_law)(2)
	CreateDynamicObject(5725,2828.74462891,2174.39013672,1235.39550781,0.00000000,0.00000000,90.00000000); //object(holpacific2_law)(3)
	CreateDynamicObject(1846,2807.22558594,2394.47656250,1242.29052734,90.00000000,179.99450684,269.99450684); //object(shop_shelf04)(5)
	CreateDynamicObject(1846,2807.22558594,2394.47656250,1242.29052734,90.00000000,179.99450684,269.99450684); //object(shop_shelf04)(6)
	CreateDynamicObject(1846,2807.22558594,2394.47656250,1242.29052734,90.00000000,179.99450684,269.99450684); //object(shop_shelf04)(7)
	CreateDynamicObject(18090,2791.54980469,2410.13671875,1242.09448242,0.00000000,0.00000000,90.00000000); //object(bar_bar1)(1)
	CreateDynamicObject(1649,2784.57153320,2405.92651367,1242.09692383,270.00000000,180.00000000,89.99923706); //object(wglasssmash)(1)
	CreateDynamicObject(1649,2784.56396484,2403.42846680,1242.09692383,270.00000000,179.99450684,89.99450684); //object(wglasssmash)(2)
	CreateDynamicObject(1518,2785.08325195,2407.61010742,1241.33691406,0.00000000,0.00000000,90.00000000); //object(dyn_tv_2)(1)
	CreateDynamicObject(1518,2785.10742188,2404.98974609,1241.33691406,0.00000000,0.00000000,90.00000000); //object(dyn_tv_2)(2)
	CreateDynamicObject(1518,2785.08471680,2401.91406250,1241.33691406,0.00000000,0.00000000,90.00000000); //object(dyn_tv_2)(3)
	CreateDynamicObject(1716,2795.83032227,2408.04321289,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(1)
	CreateDynamicObject(1716,2794.69970703,2408.02954102,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(2)
	CreateDynamicObject(1716,2793.31811523,2407.98242188,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(3)
	CreateDynamicObject(1716,2791.84155273,2407.92749023,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(4)
	CreateDynamicObject(1716,2790.09545898,2407.87158203,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(5)
	CreateDynamicObject(1716,2787.36865234,2408.00561523,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(6)
	CreateDynamicObject(1716,2787.41064453,2406.68554688,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(7)
	CreateDynamicObject(1716,2787.36914062,2405.31640625,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(8)
	CreateDynamicObject(1716,2787.37963867,2403.93701172,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(9)
	CreateDynamicObject(1716,2787.32519531,2402.48437500,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_slot_stool)(10)
	CreateDynamicObject(1665,2785.61328125,2407.02905273,1240.56286621,0.00000000,0.00000000,0.00000000); //object(propashtray1)(1)
	CreateDynamicObject(1665,2785.98754883,2404.33642578,1240.56286621,0.00000000,0.00000000,0.00000000); //object(propashtray1)(2)
	CreateDynamicObject(1665,2786.06811523,2401.39111328,1240.56286621,0.00000000,0.00000000,138.00000000); //object(propashtray1)(3)
	CreateDynamicObject(1548,2785.28466797,2406.21289062,1240.55468750,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(1)
	CreateDynamicObject(1548,2785.26513672,2402.81811523,1240.55468750,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(2)
	CreateDynamicObject(1551,2785.50585938,2407.99951172,1240.78259277,0.00000000,0.00000000,0.00000000); //object(dyn_wine_big)(1)
	CreateDynamicObject(1543,2785.77758789,2402.04467773,1240.54235840,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(1)
	CreateDynamicObject(1703,2799.90625000,2390.71191406,1239.49047852,0.00000000,0.00000000,179.99450684); //object(swank_couch_1)(1)
	CreateDynamicObject(1703,2796.70312500,2391.98242188,1239.49047852,0.00000000,0.00000000,90.00000000); //object(swank_couch_1)(2)
	CreateDynamicObject(1703,2796.70312500,2395.75585938,1239.49047852,0.00000000,0.00000000,90.00000000); //object(swank_couch_1)(3)
	CreateDynamicObject(1703,2798.08496094,2398.72656250,1239.49047852,0.00000000,0.00000000,0.00000000); //object(swank_couch_1)(4)
	CreateDynamicObject(1703,2805.83886719,2390.66210938,1239.49047852,0.00000000,0.00000000,179.99450684); //object(swank_couch_1)(5)
	CreateDynamicObject(1703,2803.88378906,2398.74121094,1239.49047852,0.00000000,0.00000000,0.00000000); //object(swank_couch_1)(6)
	CreateDynamicObject(3533,2795.77441406,2399.73144531,1243.77673340,0.00000000,0.00000000,0.00000000); //object(trdpillar01)(1)
	CreateDynamicObject(2236,2801.35351562,2390.20043945,1239.53112793,0.00000000,0.00000000,0.00000000); //object(coffee_swank_1)(1)
	CreateDynamicObject(2236,2798.57568359,2396.62695312,1239.53112793,0.00000000,0.00000000,0.00000000); //object(coffee_swank_1)(2)
	CreateDynamicObject(2236,2797.61718750,2393.25244141,1239.53112793,0.00000000,0.00000000,270.25000000); //object(coffee_swank_1)(3)
	CreateDynamicObject(1649,2799.71655273,2388.99877930,1242.13415527,0.00000000,0.00000000,180.00000000); //object(wglasssmash)(1)
	CreateDynamicObject(1649,2804.10473633,2388.99975586,1242.13415527,0.00000000,0.00000000,179.99450684); //object(wglasssmash)(2)
	CreateDynamicObject(2898,2804.73120117,2389.10864258,1241.96386719,359.75000000,89.98983765,270.00000000); //object(funturf_law)(4)
	CreateDynamicObject(2898,2799.32568359,2389.11669922,1241.96386719,359.74731445,89.98901367,269.99450684); //object(funturf_law)(5)
	CreateDynamicObject(2755,2795.38403320,2391.57495117,1241.26257324,0.00000000,0.00000000,269.99996948); //object(dojo_wall)(1)
	CreateDynamicObject(2755,2795.41625977,2397.44750977,1241.26257324,0.00000000,0.00000000,269.99450684); //object(dojo_wall)(2)
	CreateDynamicObject(2755,2798.25195312,2400.01684570,1241.26257324,0.00000000,0.00000000,179.99450684); //object(dojo_wall)(3)
	CreateDynamicObject(2755,2805.85229492,2400.03076172,1241.26257324,0.00000000,0.00000000,179.99450684); //object(dojo_wall)(4)
	CreateDynamicObject(2395,2795.35937500,2398.84057617,1242.23107910,0.00000000,90.00000000,269.99890137); //object(cj_sports_wall)(1)
	CreateDynamicObject(2395,2795.47705078,2396.08935547,1242.23107910,0.00000000,90.00000000,89.99203491); //object(cj_sports_wall)(2)
	CreateDynamicObject(2395,2795.33642578,2392.94360352,1242.23107910,0.00000000,90.00000000,269.99450684); //object(cj_sports_wall)(3)
	CreateDynamicObject(2395,2795.44580078,2390.18725586,1242.23107910,0.00000000,90.00000000,89.98901367); //object(cj_sports_wall)(4)
	CreateDynamicObject(3533,2795.41381836,2389.39672852,1243.77673340,0.00000000,0.00000000,0.00000000); //object(trdpillar01)(1)
	CreateDynamicObject(2395,2796.85400391,2399.93212891,1242.23107910,0.00000000,90.00000000,0.00000000); //object(cj_sports_wall)(5)
	CreateDynamicObject(2395,2799.59814453,2400.07226562,1242.23107910,0.00000000,90.00000000,180.00000000); //object(cj_sports_wall)(6)
	CreateDynamicObject(2395,2807.31396484,2400.06567383,1242.23107910,0.00000000,90.00000000,179.99450684); //object(cj_sports_wall)(7)
	CreateDynamicObject(2395,2804.48632812,2399.96484375,1242.23107910,0.00000000,90.00000000,0.00000000); //object(cj_sports_wall)(10)
	CreateDynamicObject(2231,2808.53466797,2392.17211914,1242.00842285,0.00000000,0.00000000,270.25000000); //object(swank_speaker_3)(1)
	CreateDynamicObject(2231,2808.43090820,2396.36840820,1242.00842285,0.00000000,0.00000000,270.24719238); //object(swank_speaker_3)(2)
	CreateDynamicObject(2230,2808.45214844,2394.35937500,1239.53112793,0.00000000,90.00000000,270.00000000); //object(swank_speaker_2)(1)
	CreateDynamicObject(2230,2808.45776367,2394.35888672,1240.13110352,180.00000000,90.00000000,90.00549316); //object(swank_speaker_2)(2)
	CreateDynamicObject(2230,2808.08081055,2388.95214844,1239.53112793,0.00000000,0.00000000,231.99998474); //object(swank_speaker_2)(3)
	CreateDynamicObject(2230,2808.41748047,2400.06494141,1239.53112793,0.00000000,0.00000000,325.99832153); //object(swank_speaker_2)(4)
	CreateDynamicObject(1670,2798.70971680,2397.14965820,1240.05664062,0.00000000,0.00000000,81.75000000); //object(propcollecttable)(1)
	CreateDynamicObject(1670,2798.24169922,2392.70068359,1240.05664062,0.00000000,0.00000000,81.74926758); //object(propcollecttable)(2)
	CreateDynamicObject(1235,2795.78417969,2411.50341797,1240.03417969,0.00000000,0.00000000,0.00000000); //object(wastebin)(1)
	CreateDynamicObject(2109,2803.70239258,2403.28247070,1239.92224121,0.00000000,0.00000000,0.00000000); //object(low_dinning_3)(1)
	CreateDynamicObject(1704,2803.28930664,2405.13476562,1239.53112793,0.00000000,0.00000000,0.00000000); //object(kb_chair03)(1)
	CreateDynamicObject(1704,2805.60058594,2403.64990234,1239.53112793,0.00000000,0.00000000,270.50000000); //object(kb_chair03)(2)
	CreateDynamicObject(1704,2804.23046875,2401.51000977,1239.53112793,0.00000000,0.00000000,179.24987793); //object(kb_chair03)(3)
	CreateDynamicObject(1704,2801.83837891,2402.81372070,1239.53112793,0.00000000,0.00000000,89.74740601); //object(kb_chair03)(4)
	CreateDynamicObject(1704,2797.39550781,2404.42773438,1239.53112793,0.00000000,0.00000000,358.25000000); //object(kb_chair03)(5)
	CreateDynamicObject(1704,2798.16625977,2400.81250000,1239.53112793,0.00000000,0.00000000,179.24743652); //object(kb_chair03)(6)
	CreateDynamicObject(2109,2797.77148438,2402.70410156,1239.92224121,0.00000000,0.00000000,0.00000000); //object(low_dinning_3)(2)
	CreateDynamicObject(1704,2798.51025391,2409.59643555,1239.53112793,0.00000000,0.00000000,80.75000000); //object(kb_chair03)(7)
	CreateDynamicObject(1704,2802.27539062,2409.52099609,1239.53112793,0.00000000,0.00000000,254.99987793); //object(kb_chair03)(8)
	CreateDynamicObject(2109,2800.38696289,2409.66967773,1239.92224121,0.00000000,0.00000000,356.25000000); //object(low_dinning_3)(3)
	CreateDynamicObject(2800,2800.28247070,2409.56176758,1240.14521484,0.00000000,0.00000000,0.00000000); //object(castable2top)(1)
	CreateDynamicObject(2894,2803.68530273,2403.32006836,1240.34521484,0.00000000,0.00000000,0.00000000); //object(kmb_rhymesbook)(1)
	CreateDynamicObject(1543,2794.46435547,2411.56835938,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(1)
	CreateDynamicObject(1543,2794.36425781,2411.56445312,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(2)
	CreateDynamicObject(1543,2794.26464844,2411.56054688,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(4)
	CreateDynamicObject(1543,2794.16503906,2411.55664062,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(5)
	CreateDynamicObject(1543,2794.06542969,2411.55273438,1241.20043945,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(6)
	CreateDynamicObject(1543,2793.96679688,2411.52392578,1241.20043945,0.00000000,0.00000000,44.00000000); //object(cj_beer_b_2)(7)
	CreateDynamicObject(1517,2792.72436523,2411.60913086,1240.91137695,0.00000000,0.00000000,96.00000000); //object(dyn_wine_break)(1)
	CreateDynamicObject(1517,2790.34960938,2411.65405273,1240.91137695,0.00000000,0.00000000,95.99853516); //object(dyn_wine_break)(2)
	CreateDynamicObject(1517,2791.64892578,2411.62329102,1240.91137695,0.00000000,0.00000000,95.99853516); //object(dyn_wine_break)(3)
	CreateDynamicObject(1520,2792.24121094,2411.63623047,1240.76379395,0.00000000,0.00000000,268.25003052); //object(dyn_wine_bounce)(1)
	CreateDynamicObject(1520,2790.91162109,2411.68750000,1240.76379395,0.00000000,0.00000000,268.24768066); //object(dyn_wine_bounce)(2)
	CreateDynamicObject(1664,2789.24487305,2411.44165039,1241.37060547,0.00000000,0.00000000,76.00000000); //object(propwinebotl2)(1)
	CreateDynamicObject(1664,2789.08227539,2411.49707031,1241.37060547,0.00000000,0.00000000,75.99792480); //object(propwinebotl2)(4)
	CreateDynamicObject(1664,2788.92797852,2411.48291016,1241.37060547,0.00000000,0.00000000,75.99792480); //object(propwinebotl2)(5)
	CreateDynamicObject(1664,2788.76953125,2411.46923828,1241.37060547,0.00000000,0.00000000,75.99792480); //object(propwinebotl2)(6)
	CreateDynamicObject(1667,2797.80859375,2403.21606445,1240.43383789,0.00000000,0.00000000,0.00000000); //object(propwineglass1)(1)
	CreateDynamicObject(1667,2797.75976562,2402.12622070,1240.43383789,0.00000000,0.00000000,0.00000000); //object(propwineglass1)(2)
	CreateDynamicObject(1543,2795.78393555,2408.86035156,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(8)
	CreateDynamicObject(1543,2793.28173828,2408.84179688,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(9)
	CreateDynamicObject(1543,2788.47802734,2408.77514648,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_2)(10)
	CreateDynamicObject(1544,2789.54907227,2408.86914062,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_1)(1)
	CreateDynamicObject(1544,2790.39624023,2408.71533203,1240.57849121,0.00000000,0.00000000,0.00000000); //object(cj_beer_b_1)(2)
	CreateDynamicObject(1546,2794.76269531,2408.80566406,1240.66760254,0.00000000,0.00000000,0.00000000); //object(cj_pint_glass)(1)
	CreateDynamicObject(1548,2791.97314453,2408.82666016,1240.59082031,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(1)
	CreateDynamicObject(1548,2794.80249023,2408.82958984,1240.59082031,0.00000000,0.00000000,0.00000000); //object(cj_drip_tray)(2)
	CreateDynamicObject(18650,2795.71875000,2411.61718750,1244.20742187,0.00000000,0.00000000,0.00000000); //object(gneon)(1)
	CreateDynamicObject(18650,2807.28515625,2399.69921875,1244.20739746,0.00000000,0.00000000,271.49963379); //object(gneon)(4)
	CreateDynamicObject(18885,2787.13037109,2389.61181641,1240.66625977,0.00000000,0.00000000,179.98596191); //object(locker)(4)
	
	// DOC INTERIOR
	CreateDynamicObject(19377, 1840.30005, -1721.59998, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.30005, -1731.19995, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.30005, -1712.00000, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1827.69995, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1712.00000, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1721.59998, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1731.19995, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.30005, -1731.69995, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1842.09998, -1711.69995, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1824.50000, -1721.50000, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.30005, -1712.00000, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.30005, -1721.59998, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.30005, -1731.19995, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1731.19995, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1721.59998, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1712.00000, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1819.30005, -1721.59998, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(14877, 1823.00000, -1719.19995, 5203.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1826.23999, -1724.09998, 5205.10010,   0.00000, 90.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1826.23999, -1720.90002, 5205.10010,   0.00000, 90.00000, 179.99001, .streamdistance = 700);
	CreateDynamicObject(19362, 1826.23999, -1717.69995, 5205.10010,   0.00000, 90.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1819.69995, -1719.09998, 5203.50000,   0.00000, 90.00000, 179.99001, .streamdistance = 700);
	CreateDynamicObject(19362, 1819.69995, -1722.30005, 5203.50000,   0.00000, 90.00000, 179.99001, .streamdistance = 700);
	CreateDynamicObject(19362, 1819.69995, -1725.40002, 5203.50000,   0.00000, 90.00000, 179.99001, .streamdistance = 700);
	CreateDynamicObject(19441, 1821.40002, -1721.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1725.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1819.69995, -1725.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1818.09998, -1723.69995, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1818.09998, -1720.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1818.09998, -1717.30005, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1819.69995, -1717.69995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1717.69995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1720.69995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1720.69995, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1722.30005, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1725.30005, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1819.69995, -1725.30005, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1818.09998, -1723.69995, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1818.09998, -1720.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1818.09998, -1717.30005, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1819.69995, -1717.69995, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.90002, -1717.69995, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1821.40002, -1721.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1825.50000, -1719.30005, 5205.10010,   0.00000, 90.00000, 179.99001, .streamdistance = 700);
	CreateDynamicObject(19377, 1822.80005, -1721.30005, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1716.09998, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1712.90002, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1731.69995, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1827.90002, -1725.19995, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1827.90002, -1721.69995, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1832.69922, -1716.39941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1826.23999, -1727.30005, 5205.10107,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1831.59998, -1711.69995, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1822.89941, -1722.29980, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1826.09998, -1709.40002, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1824.50000, -1717.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1824.50000, -1730.09998, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.79980, -1711.69922, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1822.80005, -1730.90002, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1827.69995, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1826.09961, -1709.39941, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1830.90002, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1834.09998, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1837.30005, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1840.50000, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1843.69995, -1714.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.30005, -1709.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.30005, -1709.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.29980, -1711.69922, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1843.69995, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1850.09961, -1714.29980, 5203.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1837.30005, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1834.09998, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1830.90002, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1843.69995, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.30005, -1709.50000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1840.50000, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1837.30005, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1834.09998, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1830.90002, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1827.69995, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.69995, -1707.59998, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1826.09961, -1709.39941, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.29980, -1709.50000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1832.50000, -1709.50000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1835.69995, -1709.50000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1838.90002, -1709.50000, 5210.29980,   0.00000, 0.00000, 0.25000, .streamdistance = 700);
	CreateDynamicObject(19460, 1842.09998, -1709.50000, 5210.29980,   0.00000, 0.00000, 0.24719, .streamdistance = 700);
	CreateDynamicObject(19460, 1852.19995, -1717.59998, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1848.90002, -1707.59998, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1824.50000, -1719.19995, 5210.39990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1824.50000, -1728.80005, 5210.39990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.89941, -1714.29980, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.79980, -1712.00000, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.79980, -1721.59961, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.29980, -1715.39941, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1840.50000, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69922, -1718.09961, 5205.10107,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(14877, 1849.19995, -1722.19995, 5206.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(14877, 1822.19922, -1723.79980, 5201.50000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1821.09998, -1711.69995, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1852.59961, -1711.69922, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1852.59961, -1721.29980, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.40002, -1712.80005, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1839.30005, -1707.59998, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.90002, -1714.30005, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1852.40002, -1717.59998, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1847.30005, -1714.90002, 5208.60010,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.50000, -1715.90002, 5210.39990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.90002, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69995, -1724.50000, 5208.60010,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1849.09998, -1720.69995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69922, -1721.29980, 5205.10107,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69995, -1724.50000, 5205.10107,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69995, -1727.69995, 5205.10205,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.50000, -1725.50000, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1852.29980, -1723.69922, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1856.69922, -1720.39941, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1856.69995, -1720.30005, 5210.39990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1852.29980, -1723.69922, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69922, -1721.29980, 5208.60010,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19362, 1845.69995, -1718.09998, 5208.60010,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1849.09998, -1720.69995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.80005, -1721.59998, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.80005, -1712.00000, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1831.00000, -1736.00000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.69995, -1707.59998, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1839.30005, -1707.59998, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1839.30005, -1707.59998, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1848.90002, -1707.59998, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1845.69995, -1707.59998, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.79980, -1731.19922, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1852.59961, -1730.89941, 5205.10107,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1824.50000, -1727.09998, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.29980, -1734.00000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1827.69995, -1714.30005, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1830.90002, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1834.09998, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1837.30005, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1840.50000, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1843.69995, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.90002, -1729.19995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1826.09961, -1734.09961, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1829.80005, -1731.69995, 5208.60107,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1840.29980, -1731.69922, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.50000, -1728.50000, 5210.39990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.79980, -1731.19922, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.69922, -1707.59961, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1840.59961, -1736.00000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1844.00000, -1718.09998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1836.00000, -1716.39941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1839.09961, -1716.39941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1842.19922, -1716.39941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1829.59961, -1716.39941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1827.69995, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1830.90002, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1834.09998, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1837.30005, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1840.50000, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1843.69995, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.89941, -1729.19922, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1826.09998, -1734.09998, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1831.00000, -1736.00000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1840.59998, -1736.00000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.29980, -1734.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1824.50000, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1826.09998, -1734.09998, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1827.69995, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1830.90002, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1834.09998, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1837.30005, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1840.50000, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1843.69995, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.90002, -1729.19995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1831.00000, -1736.00000, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1840.59998, -1736.00000, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.29980, -1734.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.29980, -1728.19922, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1827.89941, -1718.19922, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1844.00000, -1721.59998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1844.00000, -1725.09998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1842.19922, -1726.89941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1839.09961, -1726.89941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1836.19922, -1726.89941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1832.69922, -1726.89941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1829.69922, -1726.89941, 5205.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1827.90002, -1718.19995, 5209.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1827.90002, -1721.69995, 5209.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1827.90002, -1725.19995, 5209.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1844.00000, -1725.09998, 5209.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1844.00000, -1721.59998, 5209.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1844.00000, -1718.09998, 5209.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1842.09998, -1734.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1838.90002, -1734.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1835.69995, -1734.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1832.50000, -1734.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.30005, -1734.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.30005, -1734.00000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1832.50000, -1734.00000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1835.69995, -1734.00000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1838.90002, -1734.00000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1842.09998, -1734.00000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1842.09998, -1734.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1838.90002, -1734.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1835.69995, -1734.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1832.50000, -1734.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.30005, -1734.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.30005, -1709.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1832.50000, -1709.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1835.69995, -1709.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1838.90002, -1709.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1842.09998, -1709.50000, 5206.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1842.09998, -1709.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1838.90002, -1709.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1835.80005, -1709.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1832.50000, -1709.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1829.30005, -1709.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1847.29980, -1721.79980, 5203.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1853.29980, -1714.29980, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1847.29980, -1705.79980, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1856.50000, -1714.29980, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1852.30005, -1720.69995, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1852.30005, -1720.69995, 5210.39990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.29980, -1721.59961, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1849.19922, -1730.89941, 5208.60107,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19362, 1846.69995, -1722.30005, 5208.60107,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19304, 1829.59998, -1716.40002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1832.69995, -1716.40002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1836.00000, -1716.40002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1839.09998, -1716.40002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1842.19995, -1716.40002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1842.19995, -1726.90002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1839.09998, -1726.90002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1868.00000, -1733.09998, 5210.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1832.69995, -1726.90002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1829.69995, -1726.90002, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1858.00000, -1712.29980, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19414, 1851.40100, -1707.50098, 5203.30078,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19414, 1848.90100, -1707.50000, 5203.30078,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19414, 1853.90039, -1707.50000, 5203.30078,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.29980, -1712.00000, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19414, 1856.39941, -1707.50098, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1853.19922, -1719.09961, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1854.79980, -1719.09961, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1848.30005, -1740.69995, 5206.79980,   0.00000, 0.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1852.59998, -1702.40002, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1852.59961, -1702.39941, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1863.09961, -1702.39941, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1853.19995, -1701.00000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1854.00000, -1725.50000, 5203.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1854.00000, -1727.09961, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1854.79980, -1731.89941, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1853.19995, -1731.90002, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1850.00000, -1729.19995, 5203.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1853.19995, -1729.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(14416, 1857.40002, -1738.59998, 5205.39990,   0.00000, 0.00000, 359.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.80005, -1740.80005, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1846.69995, -1736.19995, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1853.79980, -1741.50000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1852.59961, -1731.89941, 5205.10205,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1848.29980, -1741.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1852.19995, -1741.00000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.50000, -1746.09961, 5205.00000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1847.29980, -1734.59961, 5203.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1848.29980, -1738.29980, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1854.00000, -1723.89941, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1852.19922, -1740.69922, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1843.50000, -1741.50000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1852.19922, -1738.29980, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1853.79980, -1736.19922, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.00000, -1746.09961, 5205.00000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1856.39941, -1717.09961, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.29980, -1721.59961, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.29980, -1731.19922, 5201.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.59998, -1746.30005, 5206.79980,   0.00000, 0.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(14416, 1850.19922, -1739.39941, 5201.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1859.69922, -1732.19922, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1855.40002, -1740.80005, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1866.19995, -1749.40002, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1859.40002, -1740.80005, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1850.30005, -1751.00000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.19995, -1740.50000, 5208.60107,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1864.19922, -1741.59961, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1859.90002, -1751.00000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1869.50000, -1751.00000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1866.20020, -1746.29980, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1855.39941, -1738.39941, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1866.19995, -1743.19995, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.19922, -1750.09961, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1860.59961, -1746.39941, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1871.09998, -1746.40002, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1864.59961, -1736.79980, 5208.60205,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1859.40002, -1738.40002, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1864.59961, -1732.19922, 5208.60107,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.30005, -1743.59998, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1850.09998, -1751.19995, 5210.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1845.29980, -1753.19922, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1859.69995, -1751.19995, 5210.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1869.30005, -1751.19995, 5210.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1855.40002, -1740.00000, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1869.79980, -1736.89941, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(14416, 1869.09998, -1725.09998, 5205.39990,   0.00000, 0.00000, 179.98901, .streamdistance = 700);
	CreateDynamicObject(19377, 1863.09961, -1725.89941, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(14416, 1859.69995, -1732.50000, 5201.89990,   0.00000, 0.00000, 89.98901, .streamdistance = 700);
	CreateDynamicObject(19460, 1869.80005, -1724.50000, 5206.89990,   0.00000, 0.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1858.09998, -1730.59998, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1863.00000, -1721.80005, 5203.29980,   0.00000, 0.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1867.79980, -1721.00000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1867.09998, -1726.90002, 5206.89990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1863.09961, -1716.29980, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1862.30005, -1727.50000, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.89941, -1722.69922, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1873.59961, -1717.39941, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1869.80103, -1724.09998, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1869.80005, -1730.50000, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1868.30005, -1722.40002, 5210.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1852.69922, -1727.50000, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1869.80005, -1714.90002, 5206.89990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1861.79980, -1717.59961, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1871.39941, -1717.59961, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1872.40002, -1717.69995, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1867.09998, -1722.69995, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1848.50000, -1727.59961, 5210.39990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1862.59998, -1730.59998, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1867.79980, -1722.59961, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1862.09998, -1733.30005, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1862.09961, -1733.29980, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1867.69922, -1735.39941, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1849.59998, -1731.80005, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1849.59998, -1725.40002, 5206.89990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1854.39941, -1727.39941, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1859.19995, -1722.59998, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.89941, -1713.09961, 5208.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1855.69995, -1730.40002, 5210.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1850.59998, -1737.19995, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1841.00000, -1737.19995, 5210.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1857.30005, -1734.90002, 5206.89990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1862.59998, -1732.19995, 5206.89990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19460, 1853.09998, -1736.59998, 5206.89990,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1866.50000, -1728.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1866.50000, -1718.89941, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1866.50000, -1709.29980, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1866.50000, -1699.69995, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1858.00000, -1696.30005, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1843.59998, -1701.00000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1862.50000, -1698.29980, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1863.09961, -1706.69922, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1863.09998, -1697.09998, 5205.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1868.00000, -1742.50000, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1869.59961, -1737.69922, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1859.40002, -1738.40002, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1859.39941, -1740.79980, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1857.00000, -1741.59998, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1860.19922, -1741.59961, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1857.00000, -1744.79980, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1858.59998, -1743.19995, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.50000, -1740.80005, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1850.50000, -1750.40002, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.00000, -1750.39941, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1871.50000, -1750.40002, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.00000, -1740.80005, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1871.50000, -1740.80005, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1861.29980, -1731.19922, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1871.80005, -1731.19995, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19377, 1871.80005, -1721.59998, 5212.10010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1859.19995, -1713.00000, 5206.89990,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1861.80005, -1738.40002, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1861.80005, -1740.80005, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19377, 1871.50000, -1746.09998, 5205.00000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1873.80005, -1741.59998, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1879.09998, -1751.00000, 5206.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1876.40002, -1746.50000, 5206.79980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19396, 1857.80005, -1729.00000, 5206.89990,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19396, 1862.80005, -1710.90002, 5203.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19362, 1860.80005, -1734.80005, 5205.10010,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19362, 1859.50000, -1734.80103, 5205.10010,   0.00000, 90.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1858.00000, -1706.69922, 5203.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1858.00000, -1701.90002, 5203.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19442, 1854.74121, -1710.22949, 5269.51172,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19442, 1855.19995, -1707.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19442, 1852.69995, -1707.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19442, 1850.09998, -1707.50000, 5203.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19466, 1851.40002, -1707.50000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19466, 1853.90002, -1707.50000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19466, 1856.40002, -1707.50000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19466, 1848.90002, -1707.50000, 5203.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19396, 1858.00000, -1704.29980, 5203.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1859.59998, -1710.90002, 5203.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1866.00000, -1710.90002, 5203.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(1569, 1860.80005, -1698.40002, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1569, 1863.80005, -1698.40002, 5201.60010,   0.00000, 0.00000, 179.79999, .streamdistance = 700);
	CreateDynamicObject(19370, 1859.69922, -1706.00000, 5200.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19370, 1864.79980, -1706.00000, 5200.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1859.79980, -1706.69922, 5202.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1864.69995, -1706.69995, 5202.50000,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19443, 1861.19922, -1706.69922, 5200.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19370, 1859.69922, -1707.39941, 5200.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19443, 1863.29980, -1706.69922, 5200.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19370, 1864.80005, -1707.40002, 5200.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2008, 1859.09961, -1707.09961, 5201.77002,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2008, 1864.09998, -1707.09998, 5201.77002,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19462, 1862.80005, -1706.00000, 5205.50000,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1859.79980, -1706.69922, 5203.79980,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1863.29980, -1706.69922, 5203.79980,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1866.79980, -1706.69922, 5203.79980,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2606, 1863.80005, -1707.19995, 5204.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2606, 1863.79980, -1707.19922, 5204.52979,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2608, 1861.19995, -1707.40002, 5204.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2608, 1859.31604, -1707.40002, 5204.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(16101, 1863.30005, -1707.40002, 5192.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(16101, 1861.19995, -1707.30005, 5192.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(16101, 1858.30005, -1707.40002, 5192.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(16101, 1866.09998, -1707.40002, 5192.79980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1806, 1860.00000, -1708.40002, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1806, 1865.00000, -1708.40002, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1865.90002, -1700.90002, 5202.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1865.90002, -1701.69995, 5202.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1865.90002, -1702.50000, 5202.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1865.89941, -1703.29980, 5202.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1848.89941, -1706.50000, 5202.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1851.40002, -1706.50000, 5202.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1854.00000, -1706.50000, 5202.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1856.59998, -1706.50000, 5202.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2007, 1855.40002, -1727.19995, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1856.40002, -1727.19995, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1857.40002, -1727.19995, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1858.40002, -1730.00000, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1858.40002, -1727.19995, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19370, 1857.30005, -1727.80005, 5202.70020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2007, 1857.40002, -1728.40002, 5201.60010,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1856.40002, -1728.40002, 5201.60010,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1855.40002, -1728.40002, 5201.60010,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1858.40002, -1727.19995, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1857.40002, -1727.19995, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1856.40002, -1727.19995, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1855.40002, -1727.19995, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1858.40002, -1728.40002, 5203.00000,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1857.40002, -1728.40002, 5203.00000,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1856.40002, -1728.40002, 5203.00000,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1855.40002, -1728.40002, 5203.00000,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1858.40002, -1728.40002, 5201.60010,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1857.40002, -1730.00000, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1856.40002, -1730.00000, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1855.40002, -1730.00000, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1855.40002, -1730.00000, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1856.40002, -1730.00000, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1857.40002, -1730.00000, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1858.39941, -1730.00000, 5203.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19370, 1854.80005, -1727.80103, 5202.70020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2303, 1865.90002, -1724.00000, 5201.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2303, 1865.89941, -1725.00000, 5201.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2303, 1865.90002, -1726.00000, 5201.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2303, 1865.90002, -1726.00000, 5202.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2303, 1865.89941, -1725.00000, 5202.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2303, 1865.90002, -1724.00000, 5202.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1892, 1862.59998, -1699.09998, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1892, 1861.00000, -1699.09998, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2008, 1856.69995, -1721.69995, 5201.60010,   0.00000, 0.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(2008, 1856.69995, -1718.90002, 5201.60010,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(1671, 1864.50000, -1719.00000, 5202.00000,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1671, 1855.80005, -1717.90002, 5202.00000,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2846, 1864.40002, -1724.40002, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2713, 1865.90002, -1723.00000, 5201.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2008, 1863.50000, -1719.90002, 5201.60010,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(2008, 1863.50000, -1716.59998, 5201.60010,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(2008, 1864.90002, -1711.59998, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1671, 1855.79980, -1720.69922, 5202.00000,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1671, 1864.50000, -1715.59998, 5202.00000,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1671, 1858.80005, -1712.50000, 5202.00000,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2186, 1866.00000, -1714.40002, 5201.60010,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2008, 1860.00000, -1711.69995, 5201.60010,   0.00000, 0.00000, 269.99451, .streamdistance = 700);
	CreateDynamicObject(2008, 1860.00000, -1715.59998, 5201.60010,   0.00000, 0.00000, 269.98901, .streamdistance = 700);
	CreateDynamicObject(1671, 1865.79980, -1712.39941, 5202.00000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(1671, 1858.90002, -1716.59998, 5202.00000,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(14401, 1853.90002, -1705.40002, 5205.50000,   0.00000, 0.00000, 180.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1859.09998, -1723.09998, 5206.89990,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(14782, 1862.39941, -1718.09961, 5206.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(14401, 1853.89941, -1706.50000, 5205.50000,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(19368, 1862.30005, -1723.09998, 5206.89990,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(14782, 1860.59961, -1722.63965, 5206.20020,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1859.90002, -1723.69995, 5205.20020,   0.00000, 0.00000, 359.99451, .streamdistance = 700);
	CreateDynamicObject(2007, 1860.90002, -1723.69995, 5205.20020,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1861.90002, -1723.69995, 5205.20020,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2007, 1862.90002, -1723.69995, 5205.20020,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(14791, 1871.59998, -1745.90002, 5206.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2290, 1853.40002, -1733.90002, 5205.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2290, 1850.30005, -1735.90002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2315, 1851.90002, -1734.19995, 5205.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1754, 1856.40002, -1735.69995, 5205.20020,   0.00000, 0.00000, 219.99817, .streamdistance = 700);
	CreateDynamicObject(2964, 1863.30005, -1727.50000, 5205.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19441, 1860.19995, -1736.80005, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(19441, 1861.00000, -1736.80103, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(18059, 1847.30005, -1739.30005, 5209.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(18059, 1847.30005, -1744.19995, 5209.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(18059, 1853.59998, -1749.19995, 5209.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(18059, 1869.30005, -1749.19995, 5209.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1746, 1850.40002, -1732.50000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2140, 1855.00000, -1728.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1851.15002, -1728.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2135, 1850.19922, -1728.97949, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2136, 1853.04980, -1727.99414, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2305, 1850.19995, -1728.00000, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1852.10938, -1728.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1850.20605, -1729.94995, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1848.80005, -1739.19995, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1852.00000, -1739.19995, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1852.00000, -1744.19995, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1848.80005, -1744.19995, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1848.90002, -1749.19995, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1852.00000, -1749.30005, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1855.09998, -1749.40002, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1858.30005, -1749.40002, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1861.40002, -1749.40002, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2638, 1864.59998, -1749.40002, 5209.29980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1867.40002, -1749.40002, 5209.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1846.00000, -1744.19995, 5209.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1854.90002, -1739.30005, 5209.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1845.90002, -1739.09998, 5209.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1854.79980, -1744.19922, 5209.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1864.90002, -1745.40002, 5209.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(18059, 1872.40002, -1745.40002, 5209.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(18059, 1872.40002, -1741.09998, 5209.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19460, 1868.00000, -1752.09998, 5210.29980,   0.00000, 0.00000, 179.99451, .streamdistance = 700);
	CreateDynamicObject(2639, 1867.40002, -1745.40002, 5209.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1867.40002, -1741.19995, 5209.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1845.89941, -1749.09961, 5209.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2639, 1864.90002, -1741.09998, 5209.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2357, 1853.69995, -1730.69995, 5205.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1855.09998, -1731.80005, 5205.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1854.19995, -1731.80005, 5205.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1853.30005, -1731.80005, 5205.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1852.40002, -1731.80005, 5205.79980,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1852.40002, -1729.59998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1853.30005, -1729.59998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1854.19995, -1729.59998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2120, 1855.09998, -1729.59998, 5205.79980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1869.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1868.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1867.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1866.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1865.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1864.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1863.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1862.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1861.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1860.19922, -1732.89941, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1859.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1858.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1857.19995, -1732.90002, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1856.30005, -1732.90002, 5212.29980,   0.00000, 180.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19368, 1854.18396, -1735.19995, 5210.29980,   0.00000, 0.00000, 89.99451, .streamdistance = 700);
	CreateDynamicObject(2441, 1856.19922, -1732.89941, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1857.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1858.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1859.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1860.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1861.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1862.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1863.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1864.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1865.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1866.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1867.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1868.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2441, 1869.30005, -1732.90002, 5212.29980,   0.00000, 179.99451, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1836.19922, -1726.89941, 5209.29980,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1864.50000, -1733.09998, 5210.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1861.00000, -1733.09998, 5210.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19304, 1857.50000, -1733.09998, 5210.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1856.30005, -1728.09998, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2140, 1858.23999, -1728.09998, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1857.27002, -1728.09998, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2140, 1859.19995, -1728.09998, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2136, 1860.19995, -1728.09998, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2135, 1864.09998, -1728.09998, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1862.16003, -1728.10706, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2137, 1863.12000, -1728.10706, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2627, 1865.19995, -1742.90002, 5205.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2627, 1863.90002, -1742.90002, 5205.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2627, 1862.59998, -1742.90002, 5205.10010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2628, 1864.90002, -1749.50000, 5205.10010,   0.00000, 0.00000, 230.00000, .streamdistance = 700);
	CreateDynamicObject(2628, 1863.19995, -1749.90002, 5205.10010,   0.00000, 0.00000, 229.99878, .streamdistance = 700);
	CreateDynamicObject(2630, 1858.80005, -1749.90002, 5205.10010,   0.00000, 0.00000, 150.00000, .streamdistance = 700);
	CreateDynamicObject(2630, 1857.40002, -1749.69995, 5205.10010,   0.00000, 0.00000, 149.99634, .streamdistance = 700);
	CreateDynamicObject(2630, 1859.09998, -1747.80005, 5205.10010,   0.00000, 0.00000, 149.99634, .streamdistance = 700);
	CreateDynamicObject(2416, 1863.09998, -1730.50000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2416, 1860.80005, -1730.50000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2451, 1865.40002, -1728.19995, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1330, 1869.09998, -1737.09998, 5209.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1330, 1861.00000, -1742.19995, 5209.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2994, 1859.09998, -1744.09998, 5209.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2994, 1859.09998, -1742.59998, 5209.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(14401, 1857.80005, -1760.59998, 5205.39990,   0.00000, 0.00000, 359.99451, .streamdistance = 700);
	CreateDynamicObject(14401, 1857.80005, -1762.50000, 5205.39990,   0.00000, 0.00000, 359.98901, .streamdistance = 700);
	CreateDynamicObject(2700, 1849.30005, -1750.59998, 5207.29980,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1848.80005, -1708.69995, 5202.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1851.40002, -1708.69995, 5202.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1854.00000, -1708.69995, 5202.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(1811, 1856.59998, -1708.80005, 5202.20020,   0.00000, 0.00000, 270.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1856.00000, -1707.40002, 5202.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1852.50000, -1707.40002, 5202.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(19435, 1849.00000, -1707.40002, 5202.60010,   0.00000, 90.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1842.69995, -1711.30005, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1839.50000, -1711.30005, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1836.40002, -1711.19995, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1833.09998, -1711.19995, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1829.90002, -1711.19995, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1826.69995, -1711.19995, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1826.69995, -1711.19995, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1829.90002, -1711.19995, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1833.09998, -1711.19995, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1836.30005, -1711.19995, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1839.50000, -1711.19995, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1842.69995, -1711.19995, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1842.69995, -1711.19995, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1839.50000, -1711.30005, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1836.30005, -1711.19995, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1833.09998, -1711.19995, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1829.90002, -1711.19995, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1826.69995, -1711.19995, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1826.69995, -1737.00000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1829.90002, -1737.00000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1833.09998, -1737.00000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1836.30005, -1737.00000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1839.50000, -1737.00000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1842.69995, -1737.00000, 5208.70020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1842.69995, -1737.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1839.50000, -1737.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1836.30005, -1737.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1833.09998, -1737.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1829.90002, -1737.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1826.69995, -1737.00000, 5205.20020,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1826.69995, -1737.00000, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1829.90002, -1737.00000, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1833.09998, -1737.00000, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1836.30005, -1737.00000, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1839.50000, -1737.00000, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(1800, 1842.69995, -1737.00000, 5201.60010,   0.00000, 0.00000, 0.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1826.69995, -1711.30005, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1829.90002, -1711.40002, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1833.09998, -1711.40002, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1836.30005, -1711.40002, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1839.50000, -1711.40002, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1842.69995, -1711.40002, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1842.69995, -1711.40002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1839.50000, -1711.40002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1836.30005, -1711.40002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1833.09998, -1711.40002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1829.90002, -1711.40002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1826.69995, -1711.40002, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1826.69995, -1711.40002, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1829.90002, -1711.50000, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1833.09998, -1711.59998, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1836.40002, -1711.69995, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1839.50000, -1711.80005, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1842.69995, -1732.19995, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1842.69922, -1711.89941, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1839.50000, -1732.09998, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1836.30005, -1732.09998, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1833.09998, -1732.09998, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1829.90002, -1732.09998, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1826.69995, -1732.09998, 5201.60010,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1826.69995, -1732.09998, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1829.90002, -1732.09998, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1833.09998, -1732.00000, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1836.30005, -1732.00000, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1839.50000, -1732.00000, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1842.69995, -1732.00000, 5205.20020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1842.69995, -1732.00000, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1839.50000, -1732.00000, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1836.30005, -1732.00000, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1833.09998, -1732.00000, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1829.90002, -1732.00000, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(2000, 1826.69995, -1732.00000, 5208.70020,   0.00000, 0.00000, 90.00000, .streamdistance = 700);
	CreateDynamicObject(1886, 1857.40002, -1713.69995, 5205.10010,   9.75000, 0.00000, 220.50000, .streamdistance = 700);
	CreateDynamicObject(1886, 1858.39941, -1698.79980, 5205.00000,   9.74487, 0.00000, 20.49500, .streamdistance = 700);
	CreateDynamicObject(1886, 1848.00000, -1701.79980, 5205.10010,   9.74487, 0.00000, 20.49500, .streamdistance = 700);
	CreateDynamicObject(1886, 1852.59998, -1715.00000, 5205.00000,   9.74487, 0.00000, 320.49561, .streamdistance = 700);
	CreateDynamicObject(1886, 1865.69995, -1723.09998, 5205.10010,   9.74487, 0.00000, 270.49316, .streamdistance = 700);
	CreateDynamicObject(1886, 1846.59998, -1728.69995, 5205.00000,   13.99490, 0.00000, 236.48889, .streamdistance = 700);
	CreateDynamicObject(1886, 1846.59998, -1728.69995, 5208.50000,   13.99109, 0.00000, 236.48621, .streamdistance = 700);
	CreateDynamicObject(1886, 1846.59998, -1728.69995, 5212.10010,   13.99109, 0.00000, 236.48621, .streamdistance = 700);
	CreateDynamicObject(1886, 1865.40002, -1742.30005, 5208.60010,   13.99109, 0.00000, 308.73621, .streamdistance = 700);
	CreateDynamicObject(1886, 1846.19922, -1750.39941, 5208.60010,   13.99109, 0.00000, 128.73230, .streamdistance = 700);
	CreateDynamicObject(1886, 1869.09998, -1733.80005, 5212.20020,   13.99109, 0.00000, 294.73230, .streamdistance = 700);
	CreateDynamicObject(1886, 1866.79980, -1742.19922, 5208.60010,   13.99109, 0.00000, 46.73035, .streamdistance = 700);
	CreateDynamicObject(1886, 1867.50000, -1750.59998, 5212.10010,   13.99109, 0.00000, 224.73022, .streamdistance = 700);
	CreateDynamicObject(1886, 1845.80005, -1750.59998, 5212.20020,   13.99109, 0.00000, 146.72534, .streamdistance = 700);
	for(new i, Float: fPlayerPos[3]; i < MAX_PLAYERS; i++)
	{
	    if(GetPlayerVirtualWorld(i) != 0 || GetPlayerInterior(i) != 0)
		{
			GetPlayerPos(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			Streamer_UpdateEx(i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2]);
			CallRemoteFunction("Player_StreamPrep", "ifffi", i, fPlayerPos[0], fPlayerPos[1], fPlayerPos[2], 2500);
		}
	}
 	// Headroom for static objects - streamed limits are completely independent (cause of old crashing)
	Streamer_VisibleItems(STREAMER_TYPE_OBJECT, 965);
}

public OnPlayerEditDynamicObject(playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz) // Calling Fix by Winterfield - Do not remove
{
	CallRemoteFunction("OnPlayerEditGate", "iddffffff", playerid, objectid, response, Float:x, Float:y, Float:z, Float:rx, Float:ry, Float:rz);
}

public OnPlayerRequestClass(playerid, classid)
{
	// THI BANG LAI
	/*RemoveBuildingForPlayer(playerid, 5134, 2045.492, -1903.617, 16.187, 0.250);
	RemoveBuildingForPlayer(playerid, 1525, 2065.437, -1897.234, 13.609, 0.250);
	RemoveBuildingForPlayer(playerid, 5321, 2045.492, -1903.617, 16.187, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2040.265, -1942.890, 11.515, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2044.093, -1923.335, 11.515, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2026.750, -1922.312, 12.757, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2071.984, -1922.125, 11.601, 0.250);
	RemoveBuildingForPlayer(playerid, 5231, 2085.281, -1909.710, 23.000, 0.250);
	RemoveBuildingForPlayer(playerid, 5374, 2085.281, -1909.710, 23.000, 0.250);
	RemoveBuildingForPlayer(playerid, 955, 2060.117, -1897.640, 12.929, 0.250);
	RemoveBuildingForPlayer(playerid, 1307, 2071.882, -1879.562, 12.687, 0.250);*/

	// CAU CA
	/*RemoveBuildingForPlayer(playerid, 13483, 2113.5781, -96.7344, 0.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 12990, 2113.5781, -96.7344, 0.9844, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2119.8203, -84.4063, -0.0703, 0.25);
	RemoveBuildingForPlayer(playerid, 1369, 2104.0156, -105.2656, 1.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2122.3750, -83.3828, 0.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2119.5313, -82.8906, -0.1641, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2120.5156, -79.0859, 0.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2119.4688, -69.7344, 0.2266, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2119.4922, -73.6172, 0.1250, 0.25);
	RemoveBuildingForPlayer(playerid, 935, 2117.8438, -67.8359, 0.1328, 0.25);*/

	// NHA HANG
	/*RemoveBuildingForPlayer(playerid, 4077, 1781.4766, -1648.4219, 26.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 4078, 1783.1016, -1647.3125, 23.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1531, 1767.2109, -1617.5391, 15.0391, 0.25);
	RemoveBuildingForPlayer(playerid, 713, 1807.5156, -1625.8828, 12.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1777.8516, -1677.1953, 14.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1761.4609, -1651.7422, 14.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 4028, 1781.4766, -1648.4219, 26.8359, 0.25);
	RemoveBuildingForPlayer(playerid, 3984, 1783.1016, -1647.3125, 23.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 1753.7656, -1632.0625, 17.2500, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1792.8047, -1640.9531, 14.3125, 0.25);*/

	// KHU VUC LSPD
	RemoveBuildingForPlayer(playerid, 4026, 1497.7969, -1543.7109, 17.5547, 0.25);
	RemoveBuildingForPlayer(playerid, 4218, 1497.7031, -1546.6172, 43.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 4016, 1497.7969, -1543.7109, 17.5547, 0.25);

	// PIZZA
	/*RemoveBuildingForPlayer(playerid, 5530, 2112.937500, -1797.093750, 19.335899, 0.250000);
	RemoveBuildingForPlayer(playerid, 1226, 2085.750000, -1809.703125, 16.406300, 0.250000);
	RemoveBuildingForPlayer(playerid, 1308, 2091.164063, -1826.835938, 12.703100, 0.250000);
	RemoveBuildingForPlayer(playerid, 1408, 2099.851563, -1813.906250, 13.101600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1408, 2099.859375, -1819.359375, 13.101600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1408, 2099.859375, -1799.421875, 13.101600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1408, 2102.601563, -1822.078125, 13.117200, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2104.015625, -1812.421875, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2101.992188, -1814.710938, 12.570300, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2103.406250, -1817.304688, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2102.125000, -1819.953125, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2101.632813, -1798.171875, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2103.960938, -1800.562500, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 1308, 2128.312500, -1826.835938, 12.703100, 0.250000);
	RemoveBuildingForPlayer(playerid, 1522, 2105.921875, -1807.250000, 12.515600, 0.250000);
	RemoveBuildingForPlayer(playerid, 5418, 2112.937500, -1797.093750, 19.335899, 0.250000);
	RemoveBuildingForPlayer(playerid, 1408, 2099.851563, -1793.976563, 13.101600, 0.250000);
	RemoveBuildingForPlayer(playerid, 712, 2100.812500, -1764.375000, 21.390600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1408, 2102.664063, -1791.328125, 13.101600, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2103.687500, -1795.906250, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 1432, 2102.062500, -1793.140625, 12.671900, 0.250000);
	RemoveBuildingForPlayer(playerid, 620, 2105.085938, -1765.609375, 10.804700, 0.250000);
	RemoveBuildingForPlayer(playerid, 1226, 2114.718750, -1785.179688, 16.398399, 0.250000);
	RemoveBuildingForPlayer(playerid, 1308, 2128.312500, -1786.710938, 12.703100, 0.250000);*/

	// LS
	/*RemoveBuildingForPlayer(playerid, 4025, 1777.8359, -1773.9063, 12.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 4215, 1777.5547, -1775.0391, 36.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1801.8828, -1817.3047, 13.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 4019, 1777.8359, -1773.9063, 12.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1714.9609, -1909.6328, 12.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1280, 1714.9609, -1914.2969, 12.9375, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1724.8750, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 5024, 1748.8438, -1883.0313, 14.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1755.8203, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1808.1250, -1859.5391, 16.3516, 0.25);
	RemoveBuildingForPlayer(playerid, 1226, 1783.6719, -1859.5391, 16.3516, 0.25);*/

	// VIP
	/*RemoveBuildingForPlayer(playerid, 5544, 1873.742, -1682.476, 34.796, 0.250);
	RemoveBuildingForPlayer(playerid, 5634, 1931.312, -1574.843, 16.460, 0.250);
	RemoveBuildingForPlayer(playerid, 1524, 1837.664, -1640.382, 13.757, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1855.718, -1741.539, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1879.507, -1741.484, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1908.218, -1741.484, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 1283, 1940.906, -1741.148, 15.601, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1929.578, -1736.906, 21.390, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1931.039, -1726.328, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1832.382, -1694.312, 9.718, 0.250);
	RemoveBuildingForPlayer(playerid, 1537, 1837.437, -1683.968, 12.304, 0.250);
	RemoveBuildingForPlayer(playerid, 1533, 1837.437, -1683.953, 12.304, 0.250);
	RemoveBuildingForPlayer(playerid, 1537, 1837.437, -1686.984, 12.312, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1832.898, -1670.765, 9.718, 0.250);
	RemoveBuildingForPlayer(playerid, 1533, 1837.437, -1677.921, 12.296, 0.250);
	RemoveBuildingForPlayer(playerid, 1537, 1837.437, -1680.953, 12.296, 0.250);
	RemoveBuildingForPlayer(playerid, 1533, 1837.437, -1680.937, 12.296, 0.250);
	RemoveBuildingForPlayer(playerid, 5408, 1873.742, -1682.476, 34.796, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1931.039, -1702.289, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1929.578, -1694.460, 21.390, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1931.039, -1667.031, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 1311, 1823.421, -1647.273, 16.671, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1931.039, -1637.898, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1855.718, -1623.281, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 1832.820, -1622.000, 12.781, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1879.507, -1623.101, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 1891.968, -1622.000, 12.781, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1908.218, -1622.984, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 712, 1929.578, -1627.625, 21.390, 0.250);*/

    //Boc Vac
	RemoveBuildingForPlayer(playerid, 5313, 2043.992, -2016.867, 25.054, 0.250);
	RemoveBuildingForPlayer(playerid, 5316, 2043.992, -2016.867, 25.054, 0.250);
	RemoveBuildingForPlayer(playerid, 5312, 2068.960, -2013.476, 24.156, 0.250);
	RemoveBuildingForPlayer(playerid, 3286, 2042.195, -1986.085, 38.328, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2070.367, -1979.226, 11.601, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 2074.273, -1999.601, 11.601, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 2006.449, -1943.579, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 620, 1983.199, -1943.579, 10.804, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 1983.810, -1982.479, 13.820, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 1989.089, -1982.479, 13.820, 0.250);
	RemoveBuildingForPlayer(playerid, 1412, 1978.530, -1982.479, 13.820, 0.250);
	RemoveBuildingForPlayer(playerid, 1308, 1971.459, -1980.609, 12.640, 0.250);
	RemoveBuildingForPlayer(playerid, 5169, 2016.310, -1968.920, 17.625, 0.250);
	RemoveBuildingForPlayer(playerid, 5346, 2016.310, -1968.920, 17.625, 0.250);

	//LSPD
	RemoveBuildingForPlayer(playerid, 647, 1541.4453, -1713.3047, 14.4297, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1541.4531, -1709.6406, 13.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1541.2969, -1702.6016, 14.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1546.6016, -1693.3906, 14.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1547.5703, -1689.9844, 13.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1546.8672, -1687.1016, 14.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 646, 1545.5234, -1678.8438, 14.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 646, 1553.8672, -1677.7266, 16.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 1229, 1524.2188, -1673.7109, 14.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 646, 1553.8672, -1673.4609, 16.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 646, 1545.5625, -1672.2188, 14.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1546.6016, -1664.6250, 14.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1546.8672, -1658.3438, 14.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1547.5703, -1661.0313, 13.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1541.4766, -1648.4531, 14.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 620, 1541.4531, -1642.0313, 13.0469, 0.25);
	RemoveBuildingForPlayer(playerid, 647, 1541.7422, -1638.9141, 14.4375, 0.25);

	// CITY HALL
	/*RemoveBuildingForPlayer(playerid, 4024, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 4044, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 1527, 1448.2344, -1755.8984, 14.5234, 0.25);
	RemoveBuildingForPlayer(playerid, 4002, 1479.8672, -1790.3984, 56.0234, 0.25);
	RemoveBuildingForPlayer(playerid, 3980, 1481.1875, -1785.0703, 22.3828, 0.25);
	RemoveBuildingForPlayer(playerid, 4003, 1481.0781, -1747.0313, 33.5234, 0.25);
	//RemoveBuildingForPlayer(playerid, 5597, 2011.4688, -1300.8984, 28.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 5636, 2042.1797, -1346.8047, 24.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 5661, 2050.0703, -1401.2109, 33.6797, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 1970.5078, -1328.3203, 23.3359, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2003.4375, -1328.3203, 23.2344, 0.25);
	//RemoveBuildingForPlayer(playerid, 5461, 2011.4688, -1300.8984, 28.6953, 0.25);
	RemoveBuildingForPlayer(playerid, 5631, 2011.4063, -1302.9453, 28.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 700, 2055.0938, -1311.7813, 23.2344, 0.25);
	RemoveBuildingForPlayer(playerid, 5465, 1993.2969, -1284.9375, 26.7344, 0.25);
	RemoveBuildingForPlayer(playerid, 673, 2054.6797, -1281.5781, 22.9453, 0.25);
	RemoveBuildingForPlayer(playerid, 710, 1429.9688, -645.6406, 108.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 617, 1451.5938, -649.7422, 93.0625, 0.25);*/

	// GARA VEHICLE
    RemoveBuildingForPlayer(playerid, 1531, 1950.6199, -2034.4000, 14.0937, 0.10); // tag_azteca
	RemoveBuildingForPlayer(playerid, 4982, 1892.5400, -2012.8299, 21.3750, 0.10); // snpedteew3_LAS
	RemoveBuildingForPlayer(playerid, 1307, 1923.8000, -2042.0799, 12.6875, 0.10); // telgrphpoleall
	RemoveBuildingForPlayer(playerid, 1226, 1936.2600, -2039.0200, 16.3437, 0.10); // lamppost3
	RemoveBuildingForPlayer(playerid, 1308, 1951.3800, -2039.6199, 12.6015, 0.10); // telgrphpole02
	RemoveBuildingForPlayer(playerid, 1308, 1951.2299, -2017.7900, 11.5156, 0.10); // telgrphpole02
	RemoveBuildingForPlayer(playerid, 4850, 1940.1899, -2007.3000, 15.3359, 0.10); // snpedshpblk07
	RemoveBuildingForPlayer(playerid, 4978, 1940.1899, -2007.3000, 15.3359, 0.10); // LOD Model of snpedshpblk07
	RemoveBuildingForPlayer(playerid, 1226, 1936.2600, -1999.3800, 16.3437, 0.10); // lamppost3
	RemoveBuildingForPlayer(playerid, 1308, 1951.9499, -1993.0200, 11.5156, 0.10); // telgrphpole02
	RemoveBuildingForPlayer(playerid, 4857, 1942.6800, -1986.7500, 14.8984, 0.10); // snpedmtsp1_LAS
	RemoveBuildingForPlayer(playerid, 4979, 1942.6800, -1986.7500, 14.8984, 0.10); // LOD Model of snpedmtsp1_LAS
	RemoveBuildingForPlayer(playerid, 1226, 1957.3399, -1982.4000, 16.3827, 0.10); // lamppost3
	RemoveBuildingForPlayer(playerid, 3625, 1941.9799, -1970.6999, 14.9843, 0.10); // crgostntrmp

	//TRUCKER LS
	RemoveBuildingForPlayer(playerid, 4984, 1880.7109, -2112.6328, 21.2578, 0.25);
	RemoveBuildingForPlayer(playerid, 4982, 1892.5391, -2012.8281, 21.3750, 0.25);
	RemoveBuildingForPlayer(playerid, 4983, 1961.0313, -1871.4063, 23.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 3244, 2535.0938, -2131.8750, 12.9922, 0.25);
	RemoveBuildingForPlayer(playerid, 3289, 2484.4141, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3289, 2496.0625, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3288, 2432.7266, -2133.0234, 12.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 3290, 2452.9609, -2129.0156, 25.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 3756, 2484.2344, -2118.5547, 17.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 3755, 2484.2344, -2118.5547, 17.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 5294, 2348.8750, -2119.9219, 24.8984, 0.25);
	RemoveBuildingForPlayer(playerid, 5295, 2413.0547, -2106.4219, 23.0547, 0.25);
	RemoveBuildingForPlayer(playerid, 5312, 2068.9609, -2013.4766, 24.1563, 0.25);
	RemoveBuildingForPlayer(playerid, 5293, 2282.8203, -2033.5000, 20.5469, 0.25);
	RemoveBuildingForPlayer(playerid, 5292, 2390.1719, -2033.8203, 23.8281, 0.25);
	RemoveBuildingForPlayer(playerid, 5231, 2085.2813, -1909.7109, 23.0000, 0.25);
	RemoveBuildingForPlayer(playerid, 5266, 2278.0000, -1942.8672, 20.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 5233, 2374.7734, -1937.1797, 20.1953, 0.25);
	RemoveBuildingForPlayer(playerid, 3257, 2432.7266, -2133.0234, 12.4531, 0.25);
	RemoveBuildingForPlayer(playerid, 3258, 2484.4141, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3258, 2496.0625, -2141.0078, 12.1875, 0.25);
	RemoveBuildingForPlayer(playerid, 3256, 2452.9609, -2129.0156, 25.2734, 0.25);
	RemoveBuildingForPlayer(playerid, 5150, 2482.7031, -2010.9688, 23.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 5232, 2472.6563, -1932.0859, 23.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 5633, 2089.3594, -1643.9297, 18.2188, 0.25);
	RemoveBuildingForPlayer(playerid, 5634, 1931.3125, -1574.8438, 16.4609, 0.25);
	RemoveBuildingForPlayer(playerid, 5636, 2042.1797, -1346.8047, 24.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 5637, 2043.8984, -1138.3906, 31.0078, 0.25);
	RemoveBuildingForPlayer(playerid, 5638, 2184.5000, -1179.3281, 36.4063, 0.25);
	RemoveBuildingForPlayer(playerid, 5641, 1924.7656, -1139.7656, 27.1406, 0.25);
	RemoveBuildingForPlayer(playerid, 5635, 2182.2891, -1324.7500, 28.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 17886, 2264.0391, -1789.2578, 20.7734, 0.25);
	RemoveBuildingForPlayer(playerid, 17887, 2343.6094, -1784.5078, 20.3125, 0.25);
	RemoveBuildingForPlayer(playerid, 17875, 2292.5234, -1695.8594, 16.7969, 0.25);
	RemoveBuildingForPlayer(playerid, 17874, 2281.3672, -1643.5313, 19.3047, 0.25);
	RemoveBuildingForPlayer(playerid, 17518, 2361.9375, -1699.9375, 15.9219, 0.25);
	RemoveBuildingForPlayer(playerid, 17876, 2393.0625, -1677.5234, 20.8203, 0.25);
	RemoveBuildingForPlayer(playerid, 17879, 2484.5313, -1667.6094, 21.4375, 0.25);
	RemoveBuildingForPlayer(playerid, 17863, 2467.4609, -1538.2500, 27.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 17504, 2378.6719, -1455.2578, 26.7422, 0.25);
	RemoveBuildingForPlayer(playerid, 17527, 2414.3984, -1362.2031, 32.6016, 0.25);
	RemoveBuildingForPlayer(playerid, 17528, 2484.9766, -1357.8359, 28.7500, 0.25);
	RemoveBuildingForPlayer(playerid, 17530, 2452.6016, -1193.3828, 35.3125, 0.25);
	
	// ARMY BASE
	/*RemoveBuildingForPlayer(playerid, 1278, 2762.7578, -2333.3828, 26.7031, 0.25);
	RemoveBuildingForPlayer(playerid, 5156, 2838.039, -2423.882, 10.960, 0.250);
	RemoveBuildingForPlayer(playerid, 5159, 2838.031, -2371.953, 7.296, 0.250);
	RemoveBuildingForPlayer(playerid, 5160, 2829.953, -2479.570, 5.265, 0.250);
	RemoveBuildingForPlayer(playerid, 5161, 2838.023, -2358.476, 21.312, 0.250);
	RemoveBuildingForPlayer(playerid, 5162, 2838.039, -2423.882, 10.960, 0.250);
	RemoveBuildingForPlayer(playerid, 5163, 2838.039, -2532.773, 17.023, 0.250);
	RemoveBuildingForPlayer(playerid, 5164, 2838.140, -2447.843, 15.726, 0.250);
	RemoveBuildingForPlayer(playerid, 5165, 2838.031, -2520.187, 18.414, 0.250);
	RemoveBuildingForPlayer(playerid, 5166, 2829.953, -2479.570, 5.265, 0.250);
	RemoveBuildingForPlayer(playerid, 5167, 2838.031, -2371.953, 7.296, 0.250);
	RemoveBuildingForPlayer(playerid, 3689, 2685.382, -2366.054, 19.953, 0.250);
	RemoveBuildingForPlayer(playerid, 3707, 2716.234, -2452.593, 20.203, 0.250);
	RemoveBuildingForPlayer(playerid, 3707, 2720.320, -2530.914, 19.976, 0.250);
	RemoveBuildingForPlayer(playerid, 3690, 2685.382, -2366.054, 19.953, 0.250);
	RemoveBuildingForPlayer(playerid, 3710, 2788.156, -2417.789, 16.726, 0.250);
	RemoveBuildingForPlayer(playerid, 3710, 2788.156, -2455.882, 16.726, 0.250);
	RemoveBuildingForPlayer(playerid, 3710, 2788.156, -2493.984, 16.726, 0.250);
	RemoveBuildingForPlayer(playerid, 3709, 2660.476, -2429.296, 17.070, 0.250);
	RemoveBuildingForPlayer(playerid, 3709, 2639.546, -2429.296, 17.070, 0.250);
	RemoveBuildingForPlayer(playerid, 3709, 2618.859, -2429.296, 17.070, 0.250);
	RemoveBuildingForPlayer(playerid, 3708, 2720.320, -2530.914, 19.976, 0.250);
	RemoveBuildingForPlayer(playerid, 3708, 2716.234, -2452.593, 20.203, 0.250);
	RemoveBuildingForPlayer(playerid, 3744, 2771.070, -2372.445, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3744, 2789.210, -2377.625, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3744, 2774.796, -2386.851, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3744, 2771.070, -2520.546, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3744, 2774.796, -2534.953, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3746, 2814.265, -2356.570, 25.515, 0.250);
	RemoveBuildingForPlayer(playerid, 3746, 2814.265, -2521.492, 25.515, 0.250);
	RemoveBuildingForPlayer(playerid, 5335, 2829.953, -2479.570, 5.265, 0.250);
	RemoveBuildingForPlayer(playerid, 5336, 2829.953, -2479.570, 5.265, 0.250);
	RemoveBuildingForPlayer(playerid, 3770, 2795.828, -2394.242, 14.171, 0.250);
	RemoveBuildingForPlayer(playerid, 3770, 2746.406, -2453.484, 14.078, 0.250);
	RemoveBuildingForPlayer(playerid, 5352, 2838.195, -2488.664, 29.312, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2592.492, -2359.421, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 3623, 2618.859, -2429.296, 17.070, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2624.328, -2409.562, 16.414, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2626.234, -2391.523, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2674.523, -2557.492, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 1306, 2669.906, -2518.664, 19.843, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2713.062, -2508.304, 16.359, 0.250);
	RemoveBuildingForPlayer(playerid, 1315, 2672.593, -2506.859, 15.812, 0.250);
	RemoveBuildingForPlayer(playerid, 1315, 2680.859, -2493.078, 15.812, 0.250);
	RemoveBuildingForPlayer(playerid, 1635, 2704.367, -2487.867, 20.562, 0.250);
	RemoveBuildingForPlayer(playerid, 1306, 2742.265, -2481.515, 19.843, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2696.023, -2474.859, 16.414, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2675.570, -2466.851, 16.414, 0.250);
	RemoveBuildingForPlayer(playerid, 5326, 2661.515, -2465.140, 20.109, 0.250);
	RemoveBuildingForPlayer(playerid, 1306, 2669.906, -2447.289, 19.843, 0.250);
	RemoveBuildingForPlayer(playerid, 3623, 2639.546, -2429.296, 17.070, 0.250);
	RemoveBuildingForPlayer(playerid, 3623, 2660.476, -2429.296, 17.070, 0.250);
	RemoveBuildingForPlayer(playerid, 1307, 2629.210, -2419.687, 12.289, 0.250);
	RemoveBuildingForPlayer(playerid, 1307, 2649.898, -2419.687, 12.289, 0.250);
	RemoveBuildingForPlayer(playerid, 1315, 2686.757, -2416.625, 15.812, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2663.507, -2409.562, 16.414, 0.250);
	RemoveBuildingForPlayer(playerid, 1315, 2672.593, -2408.250, 15.812, 0.250);
	RemoveBuildingForPlayer(playerid, 1306, 2742.265, -2416.523, 19.843, 0.250);
	RemoveBuildingForPlayer(playerid, 3578, 2639.195, -2392.820, 13.171, 0.250);
	RemoveBuildingForPlayer(playerid, 3578, 2663.835, -2392.820, 13.171, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2637.171, -2385.867, 16.414, 0.250);
	RemoveBuildingForPlayer(playerid, 1306, 2669.906, -2394.507, 19.843, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 2692.679, -2387.476, 16.414, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2708.406, -2391.523, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 3574, 2774.796, -2534.953, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3574, 2771.070, -2520.546, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2783.781, -2501.835, 14.695, 0.250);
	RemoveBuildingForPlayer(playerid, 3624, 2788.156, -2493.984, 16.726, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2783.781, -2486.960, 14.656, 0.250);
	RemoveBuildingForPlayer(playerid, 3578, 2747.007, -2480.242, 13.171, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2783.781, -2463.820, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2773.343, -2479.968, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 3624, 2788.156, -2455.882, 16.726, 0.250);
	RemoveBuildingForPlayer(playerid, 3626, 2746.406, -2453.484, 14.078, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2783.781, -2448.476, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2773.343, -2443.171, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 3577, 2744.570, -2436.187, 13.343, 0.250);
	RemoveBuildingForPlayer(playerid, 3577, 2744.570, -2427.320, 13.351, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2783.781, -2425.351, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3574, 2774.796, -2386.851, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3574, 2771.070, -2372.445, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2783.781, -2410.210, 14.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3624, 2788.156, -2417.789, 16.726, 0.250);
	RemoveBuildingForPlayer(playerid, 3574, 2789.210, -2377.625, 15.218, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2802.429, -2556.523, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2791.953, -2501.835, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2797.515, -2486.828, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2791.953, -2486.960, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2791.953, -2463.820, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2797.515, -2448.343, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2791.953, -2448.476, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2791.953, -2425.351, 14.671, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2791.953, -2410.210, 14.656, 0.250);
	RemoveBuildingForPlayer(playerid, 3761, 2797.515, -2410.078, 14.632, 0.250);
	RemoveBuildingForPlayer(playerid, 3626, 2795.828, -2394.242, 14.171, 0.250);
	RemoveBuildingForPlayer(playerid, 3620, 2814.265, -2521.492, 25.515, 0.250);
	RemoveBuildingForPlayer(playerid, 5157, 2838.039, -2532.773, 17.023, 0.250);
	RemoveBuildingForPlayer(playerid, 5154, 2838.140, -2447.843, 15.750, 0.250);
	RemoveBuildingForPlayer(playerid, 3724, 2838.195, -2488.664, 29.312, 0.250);
	RemoveBuildingForPlayer(playerid, 3620, 2814.265, -2356.570, 25.515, 0.250);
	RemoveBuildingForPlayer(playerid, 5155, 2838.023, -2358.476, 21.312, 0.250);
	RemoveBuildingForPlayer(playerid, 3724, 2838.195, -2407.140, 29.312, 0.250);
	RemoveBuildingForPlayer(playerid, 1278, 2804.242, -2333.382, 26.703, 0.250);
	RemoveBuildingForPlayer(playerid, 5158, 2837.773, -2334.476, 11.992, 0.250);*/
	
	// BIZ
	RemoveBuildingForPlayer(playerid, 5041, 1845.789, -1855.648, 15.984, 0.250);
	RemoveBuildingForPlayer(playerid, 5059, 1841.109, -1856.046, 14.937, 0.250);
	RemoveBuildingForPlayer(playerid, 1268, 1841.335, -1836.460, 18.562, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1825.914, -1836.187, 16.320, 0.250);
	RemoveBuildingForPlayer(playerid, 1560, 1834.179, -1844.078, 12.570, 0.250);
	RemoveBuildingForPlayer(playerid, 1561, 1834.179, -1841.062, 12.570, 0.250);
	RemoveBuildingForPlayer(playerid, 1259, 1841.335, -1836.460, 18.562, 0.250);
	RemoveBuildingForPlayer(playerid, 1226, 1843.765, -1875.867, 16.398, 0.250);
	RemoveBuildingForPlayer(playerid, 5043, 1843.367, -1856.320, 13.875, 0.250);
	RemoveBuildingForPlayer(playerid, 5040, 1845.789, -1855.648, 15.984, 0.250);
	RemoveBuildingForPlayer(playerid, 5042, 1850.570, -1855.679, 14.367, 0.250);
	RemoveBuildingForPlayer(playerid, 4983, 1961.031, -1871.406, 23.773, 0.250);
	
	// SHOP XE MARKET
	RemoveBuildingForPlayer(playerid, 5967, 1259.4375, -1246.8125, 17.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 13831, 1413.410, -804.742, 83.437, 0.250);
	RemoveBuildingForPlayer(playerid, 13759, 1413.410, -804.742, 83.437, 0.250);
	RemoveBuildingForPlayer(playerid, 13722, 1413.410, -804.742, 83.437, 0.250);
	RemoveBuildingForPlayer(playerid, 13759, 1413.410, -804.742, 83.437, 0.250);
	RemoveBuildingForPlayer(playerid, 4505, 14.460, -1347.329, 11.679, 0.250);
	RemoveBuildingForPlayer(playerid, 1283, 1216.8516, -1270.7656, 15.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 1230.5078, -1285.3047, 17.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1245.7266, -1281.3359, 15.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 1388, 1238.3750, -1258.2813, 57.2031, 0.25);
	RemoveBuildingForPlayer(playerid, 1391, 1238.3750, -1258.2734, 44.6641, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1261.3594, -1291.1797, 15.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 1283, 1269.5469, -1280.3203, 15.7109, 0.25);
	RemoveBuildingForPlayer(playerid, 1294, 1254.6875, -1276.1641, 17.0781, 0.25);
	RemoveBuildingForPlayer(playerid, 5857, 1259.4375, -1246.8125, 17.1094, 0.25);
	RemoveBuildingForPlayer(playerid, 1219, 1284.1797, -1239.6406, 12.9141, 0.25);
	return 1;
}
