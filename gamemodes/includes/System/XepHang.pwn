#include <a_samp>
#include <YSI\y_hooks>


#define         			DIALOG_XEPHANG		            (6084)

CMD:xephang(playerid, params[]){
    new str[2460], str1[1280], str2[1280], str3[1280], str4[1280], str5[1280], str6[1280], sss[1280];
    format(str1, sizeof(str), "{ff6633}=>{FFFFFF} DAI GIA (USD)");
	format(str2, sizeof(str), "{ff6633}=>{FFFFFF} DAI GIA (SAD)");
    format(str3, sizeof(str), "{ff6633}=>{FFFFFF} GIO CHOI");
    format(str4, sizeof(str), "{ff6633}=>{FFFFFF} CAP DO.");
    format(str5, sizeof(str), "{ff6633}=>{FFFFFF} NGUOI VAN CHUYEN.");
    format(str6, sizeof(str), "{ff6633}=>{FFFFFF} TOP Credits");
    format(str, sizeof(str), "%s\n%s\n%s\n%s\n%s",str2,str3,str4,str5);
    format(sss, sizeof(sss), "BANG XEP HANG | SA-RP.NET");
	ShowPlayerDialog(playerid, DIALOG_XEPHANG, DIALOG_STYLE_LIST, sss, str, "Dong y", "");
	return 1;
}

hook OnDialogResponse(playerid, dialogid, response, listitem, inputtext[])
{
    if(dialogid == DIALOG_XEPHANG){
	    if(response){
	        if(listitem == 0){
	            XepHang_KimCuong(playerid);
	        }
	        if(listitem == 1){
	            XepHang_GioChoi(playerid);
	        }
	        if(listitem == 2){
	            XepHang_CapDo(playerid);
	        }
	        if(listitem == 3){
	            XepHang_GietNguoi(playerid);
	        }
	        if(listitem == 4){
	           XepHang_Money(playerid);
	        }
		}
	}
	return 1;
}

stock XepHang_USD(playerid){
    new Cache:Result, ss[15000];
	Result = mysql_query(MainPipeline, "SELECT `USD`, `Username` FROM `accounts` ORDER BY `USD` DESC LIMIT 50");
	if(cache_num_rows())
	{
	    new money, username[MAX_PLAYER_NAME + 1];
	    format(ss,sizeof(ss),"%sTOP\tNguoi choi\tUSD\n", ss);
		for(new i = 0; i < cache_num_rows(); ++i)
		{
			money = cache_get_row_int(i, 0);
			cache_get_row(i, 1, username);
			if(money != 0) format(ss,sizeof(ss),"%s{FF0000}%d\t{FFFFFF}%s\t{00FF00}%s\n", ss, i+1, username, number_format(money));
		}
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_TABLIST_HEADERS, "TOP 50 - {e600ac}USD", ss, "Dong y", "");
	return 1;
}

stock XepHang_Money(playerid){
    new Cache:Result, ss[15000];
	Result = mysql_query(MainPipeline, "SELECT `nDP`, `Username` FROM `accounts` ORDER BY `nDP` DESC LIMIT 50");
	if(cache_num_rows())
	{
	    new money, username[MAX_PLAYER_NAME + 1];
	    format(ss,sizeof(ss),"%sTOP\tNguoi choi\tMoney\n", ss);
		for(new i = 0; i < cache_num_rows(); ++i)
		{
			money = cache_get_row_int(i, 0);
			cache_get_row(i, 1, username);
			if(money != 0) format(ss,sizeof(ss),"%s{FF0000}%d\t{FFFFFF}%s\t{00FF00}%s\n", ss, i+1, username, number_format(money));
		}
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_TABLIST_HEADERS, "TOP 50 - {e600ac}MONEY", ss, "Dong y", "");
	return 1;
}

stock XepHang_KimCuong(playerid){
    new Cache:Result, ss[15000];
	Result = mysql_query(MainPipeline, "SELECT `Money`, `Username` FROM `accounts` ORDER BY `Money` DESC LIMIT 50");
	if(cache_num_rows())
	{
	    new money, username[MAX_PLAYER_NAME + 1];
	    format(ss,sizeof(ss),"%sTOP\tNguoi choi\tMoney\n", ss);
		for(new i = 0; i < cache_num_rows(); ++i)
		{
			money = cache_get_row_int(i, 0);
			cache_get_row(i, 1, username);
			if(money != 0) format(ss,sizeof(ss),"%s{FF0000}%d\t{FFFFFF}%s\t{00FF00}%s\n", ss, i+1, username, number_format(money));
		}
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_TABLIST_HEADERS, "TOP 50 - {e600ac}MONEY", ss, "Dong y", "");
	return 1;
}

stock XepHang_GioChoi(playerid){
    new Cache:Result, ss[15000];
	Result = mysql_query(MainPipeline, "SELECT `ConnectedTime`, `Username` FROM `accounts` ORDER BY `ConnectedTime` DESC LIMIT 50");
	if(cache_num_rows())
	{
	    new money, username[MAX_PLAYER_NAME + 1];
	    format(ss,sizeof(ss),"%sTOP\tNguoi choi\tGio Choi\n", ss);
		for(new i = 0; i < cache_num_rows(); ++i)
		{
			money = cache_get_row_int(i, 0);
			cache_get_row(i, 1, username);
			if(money != 0) format(ss,sizeof(ss),"%s{FF0000}%d\t{FFFFFF}%s\t{00FF00}%s\n", ss, i+1, username, number_format(money));
		}
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_TABLIST_HEADERS, "TOP 50 - {e600ac}GIO CHOI", ss, "Dong y", "");
	return 1;
}

stock XepHang_CapDo(playerid){
    new Cache:Result, ss[15000];
	Result = mysql_query(MainPipeline, "SELECT `Level`, `Username` FROM `accounts` ORDER BY `Level` DESC LIMIT 50");
	if(cache_num_rows())
	{
	    new money, username[MAX_PLAYER_NAME + 1];
	    format(ss,sizeof(ss),"%sTOP\tNguoi choi\tLevel\n", ss);
		for(new i = 0; i < cache_num_rows(); ++i)
		{
			money = cache_get_row_int(i, 0);
			cache_get_row(i, 1, username);
			if(money != 0) format(ss,sizeof(ss),"%s{FF0000}%d\t{FFFFFF}%s\t{00FF00}%s\n", ss, i+1, username, number_format(money));
		}
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_TABLIST_HEADERS, "TOP 50 - {0000ff}LEVEL", ss, "Ok", "");
	return 1;
}

stock XepHang_GietNguoi(playerid){
    new Cache:Result, ss[30000];
	Result = mysql_query(MainPipeline, "SELECT `SoLanGiaoTrucker`, `Username` FROM `accounts` ORDER BY `SoLanGiaoTrucker` DESC LIMIT 29");
	if(cache_num_rows())
	{
	    new money, username[MAX_PLAYER_NAME + 1];
	    format(ss,sizeof(ss),"%sTOP\tNguoi choi\tTrucker\tDanh Hieu\n", ss);
		for(new i = 0; i < cache_num_rows(); ++i)
		{
			money = cache_get_row_int(i, 0);
			cache_get_row(i, 1, username);
			if(money != 0) format(ss,sizeof(ss),"%s{FF0000}%d\t{FFFFFF}%s\t{00FF00}%s\t%s\n", ss, i+1, username, number_format(money), GetRankPlayer(money));
		}
	}
	cache_delete(Result);
	ShowPlayerDialog(playerid, DIALOG_NOTHING, DIALOG_STYLE_TABLIST_HEADERS, "TOP 50 - {e64d00}TRUCKER", ss, "Dong y", "");
	return 1;
}

stock GetRankPlayer(id)
{
	new name[1280];
 	if(id >= 0 && id <= 50) name = "Thuc Tap";
	else if(id >= 51 && id <= 100) name = "Thu Viec";
	else if(id >= 101 && id <= 200) name = "Van Chuyen Thoi";
	else if(id >= 201 && id <= 400) name = "Qua Binh Thuong";
	else if(id >= 401 && id <= 600) name = "Nguoi Van Chuyen";
	else if(id >= 601 && id <= 800) name = "Giao Hang La De";
	else if(id >= 801 && id <= 1000) name = "Khong The Can Pha";
	else if(id >= 1001 && id <= 1400) name = "Sao Ma Do Duoc";
	else if(id >= 1401 && id <= 1800) name = "Than Linh Tai The";
	else if(id >= 1801 && id <= 2000) name = "Nghien Van Chuyen";
	else if(id >= 2001) name = "Trùm Trucker";
	return name;
}
