#include <a_samp>
#include <YSI\y_hooks>

	//-------------------------------------------------------------------
	//					Project create by #nDP 						   //
	//					Fb.com/nguyenduyphuong.com  			       //
	//					Copyright by nDP" 							   //
	//-------------------------------------------------------------------

//____________________________________________________________________________//

/*
    GiaTienRD[1] = 50;
	GiaTienRD[2] = 100;
	GiaTienRD[3] = 150;
	GiaTienRD[4] = 250;
	GiaTienRD[5] = 500;
	GiaTienRD[6] = 1200;
	GiaTienRD[7] = 2000;
	GiaTienRD[8] = 3000;
	GiaTienRD[9] = 4000;
	
	GiaTienRD[1] = 100; // 50
	GiaTienRD[2] = 400; // 100
	GiaTienRD[3] = 500; // 150
	GiaTienRD[4] = 600; // 250
	GiaTienRD[5] = 700; // 500
	GiaTienRD[6] = 1000; // 1200
	GiaTienRD[7] = 3000; // 2000
	GiaTienRD[8] = 4000; // 3000
	GiaTienRD[9] = 5000; // 4000
    GiaTienRD[10] = 5000; // 10000
*/

/*
	GiaTienRD[1] = 1500; // 50
	GiaTienRD[2] = 2000; // 100
	GiaTienRD[3] = 3500; // 150
	GiaTienRD[4] = 4500; // 250
	GiaTienRD[5] = 6000; // 500
	GiaTienRD[6] = 8000; // 1200
	GiaTienRD[7] = 10000; // 2000
	GiaTienRD[8] = 1500; // 3000
	GiaTienRD[9] = 2000; // 4000
    GiaTienRD[10] = 30000; // 10000
*/

stock RandomGiaCaRoPhi()
{
    CaRoPhiGiaOld = CaRoPhiGia;
	new rand = 100 + random(400);
	CaRoPhiGia = rand;
	return 1;
}

stock RandomGiaRua()
{
    RuaGiaOld = RuaGia;
	new rand = 500 + random(500);
	RuaGia = rand;
	return 1;
}

stock RandomGiaCaHeo()
{
    CaHeoGiaOld = CaHeoGia;
	new rand = 500 + random(1000);
	CaHeoGia = rand;
	return 1;
}

stock RandomGiaCaMap()
{
    CaMapOld = CaMapGia;
	new rand = 1000 + random(1500);
	CaMapGia = rand;
	return 1;
}

stock RandomGiaCaMapKing()
{   CaMapKingOld = CaMapKingGia;
	new rand = 1500 + random(1000);
	CaMapKingGia = rand;
	return 1;
}

stock RandomGiaDeinosuchus()
{
    DeinosuchusOld = DeinosuchusGia;
	new rand = 1000 + random(2000);
	DeinosuchusGia = rand;
	return 1;
}

stock RandomGiaCaVoiSatThu()
{
    CaVoiSatThuOld = CaVoiSatThuGia;
	new rand = 1500 + random(2000);
	CaVoiSatThuGia = rand;
	return 1;
}

stock RandomGiaCaVoiLungGu()
{
    CaVoiLungGuOld = CaVoiLungGuGia;
	new rand = 3000 + random(1000);
	CaVoiLungGuGia = rand;
	return 1;
}

stock RandomGiaMegalodon()
{
    MegalodonOld = MegalodonGia;
	new rand = 3500 + random(1000);
	MegalodonGia = rand;
	return 1;
}

stock RandomGiaMosasaurus()
{
    MosasaurusOld = MosasaurusGia;
	new rand = 1000 + random(4000);
	MosasaurusGia = rand;
	return 1;
}

task RandomFish[60000](){
    RandomGiaCaRoPhi();
	RandomGiaRua();
	RandomGiaCaHeo();
	RandomGiaCaMap();
	RandomGiaCaMapKing();
	RandomGiaDeinosuchus();
	RandomGiaCaVoiSatThu();
	RandomGiaCaVoiLungGu();
	RandomGiaMegalodon();
	RandomGiaMosasaurus();
}
