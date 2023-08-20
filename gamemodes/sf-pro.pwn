#pragma warning disable 238
#pragma warning disable 208, 213, 201, 217, 219, 209, 235, 202
#pragma disablerecursion
#define SERVER_GM_TEXT "SA-RP.NET |v1.6.0"

#include <a_samp>
#include <a_mysql>
#include <streamer>
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <YSI\y_ini>
#include <progress2>
#include <compat>
#include <DialogCenter>
#include <keypad>

#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "./includes/sf-pro.pwn"
main() {}
// main
#include "./includes/LoginRegister/Main.pwn"
// system SA-RP.NET
//============================================================================ --- ============================================================================//
																				#include "./includes/Job/Main.pwn"
																				#include "./includes/Job/ThamTu.pwn"
																				#include "./includes/Job/LuatSu.pwn"
																				#include "./includes/Job/GaiDiem.pwn"
																				#include "./includes/Job/VeSi.pwn"
																				#include "./includes/Job/ThoSuaXe.pwn"
																				#include "./includes/Job/ThoThuCong.pwn"
																				#include "./includes/Job/BanVuKhi.pwn"
																				#include "./includes/Job/TaxiCompany.pwn"
																				#include "./includes/Job/GiaoVatLieu.pwn"
																				#include "./includes/Job/PizzaBoy.pwn"
																				#include "./includes/Job/Trucker.pwn"
																				#include "./includes/Job/BocVac.pwn"
																				#include "./includes/Job/Miner.pwn"
																				#include "./includes/Job/DanhCa.pwn"
																				#include "./includes/Job/Loading.pwn"
																				#include "./includes/Job/TimDuong.pwn"

																				
																				//----------------
																				#include "./includes/System/Phone.pwn"
																				#include "./includes/System/Menu.pwn"
																				#include "./includes/System/Food.pwn"
																				#include "./includes/System/Mechanic.pwn"
																				#include "./includes/System/Safezone.pwn"
																				#include "./includes/System/Speedo.pwn"
																				#include "./includes/System/Spec.pwn"
																				#include "./includes/System/HospitalPlayer.pwn"
																				//#include "./includes/System/QuaTang.pwn"
																				#include "./includes/System/Fly.pwn"
																				#include "./includes/System/Faction.pwn"
																				#include "./includes/System/Bank.pwn"
																				#include "./includes/System/CuopNha.pwn"
																				#include "./includes/System/InventoryVehicle.pwn"
																				#include "./includes/System/Hud.pwn"
																				//#include "./includes/System/ThiBangLai.pwn"
																				#include "./includes/System/Administrator.pwn"
																				#include "./includes/System/XepHang.pwn"
																				#include "./includes/System/CameraKos.pwn"
																				#include "./includes/System/DOC.pwn"
																				#include "./includes/System/HopQua.pwn"
																				#include "./includes/System/animlist.pwn"
																				#include "./includes/System/AntiHackWeapons.pwn"
																				
																				//----------------
																				#include "./includes/CuaHang/Main.pwn"
																				#include "./includes/CuaHang/Biz247.pwn"
																				
																				//----------------
																				#include "./includes/Event/BaiCao.pwn"
																				#include "./includes/Event/Capture.pwn"
																				//----------------
																				#include "./includes/Guild/GuildSafegang.pwn"

																				//----------------
																				#include "./includes/NhiemVu/Main.pwn"
//============================================================================ --- ============================================================================//

public OnGameModeInit()
{
	g_mysql_Init();
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
