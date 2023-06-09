#include <a_samp>

#undef MAX_PLAYERS
#define MAX_PLAYERS 500
#undef MAX_VEHICLES
#define MAX_VEHICLES 600




#include <crashdetect>
#define STREAMER_OBJECT_SD 400.0
////#define STREAMER_OBJECT_DD 400.0
#include <streamer>

#include <sscanf2>//_simplified>

//#include <pawn.cmd>

#include <foreach>//_fast>

//#include <FCNPC>

#pragma warning disable 239
new IteratorArray:VehiclesNearPlayer[MAX_PLAYERS]<200>; //200 максимальное количество возможных рядом с игроком машин. Присутствует инициализация в OnGameModeInit

main()
{

	printf("this:%d %d",7/8,16%8);

	print("\
\n _____ ______ _  _________ ____  _____      ___  \n\
  / ____|  ____| |/ /__   __/ __ \\|  __ \\    |__ \\\n\
| |    | |__  | ' /   | | | |  | | |__) |_____ ) |\n\
| |    |  __| |  <    | | | |  | |  ___/______/ / \n\
| |____| |____| . \\  | | | |__| | |         / /_ \n\
 \\_____|______|_|\\_\\|_| \\____/|_|        |____|\n\
	");

}
/*
new zipper;

new vorota;
public OnGameModeInit()
{
	Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, 1000);
	#include "../gamemodes/include/map.pwn"
	CreateDynamicActor(287, 262.543213, 1807.255127, 34.436218,  216.545776,.worldid = 0, .interiorid=0 );//0 100.000000
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicActor(183, 248.539993, 1875.339966, 8.770000,  193.220001,.worldid = 0, .interiorid=0 );//1 100.000000
	//ApplyDynamicActorAnimation(ACTR_bynker_a,"GANGS","prtial_gngtlkF",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicActor(2, 279.903229, 1860.278198, 9.434600,  0.000000,.worldid = 0, .interiorid=0 );//2 100.000000 ACTR_hospital_a
	//ApplyDynamicActorAnimation(ACTR_hospital_a,"CRACK","crckdeth4",4.100000, 0, 1,1,1,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//военный на выходе из госпиталя
	CreateDynamicActor(287, 318.470001, 1855.339966, 7.700000,  48.779999,.worldid = 0, .interiorid=0 );//3 100.000000
	//ApplyDynamicActorAnimation(ACTR_voen,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicActor(125, 250.960007, 1862.150024, 8.750000,  334.549988,.worldid = 0, .interiorid=0 );//4 100.000000 ACTR_bynker_b
	//ApplyDynamicActorAnimation(ACTR_bynker_b,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////

	CreateDynamicActor(29, 245.929993, 1846.489990, 8.760000,  84.760002,.worldid = 0, .interiorid=0 );//5 100.000000 ACTR_bynker_c
	//ApplyDynamicActorAnimation(ACTR_bynker_c,"GANGS","prtial_gngtlkE",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//скин байкера (стоит и разговаривает слева от аренды комнат)
	CreateDynamicActor(248, 262.100006, 1852.619995, 8.760000,  90.000000,.worldid = 0, .interiorid=0 );//6 100.000000
	//ApplyDynamicActorAnimation(ACTR_bynker_d,"GANGS","prtial_gngtlkH",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//раненый (леежит на койке согнувшись в калачик :D )
	CreateDynamicActor(261, 279.937805, 1855.269043, 9.434600,  4.741220,.worldid = 0, .interiorid=0 );//7 100.000000
	//ApplyDynamicActorAnimation(ACTR_hospital_b,"CRACK","crckdeth4",4.100000, 0, 1,1,1,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	// медик в зеленой футболке
	CreateDynamicActor(276, 280.316742, 1872.572144, 8.691450,  319.113007,.worldid = 0, .interiorid=0 );//8 100.000000
	//ApplyDynamicActorAnimation(ACTR_vrach_a,"GANGS","prtial_gngtlkF",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	// темнокожий медик в белой форме
	CreateDynamicActor(274, 272.396729, 1873.146851, 8.691450,  232.447052,.worldid = 0, .interiorid=0 );//9 100.000000
	//ApplyDynamicActorAnimation(ACTR_vrach_b,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////

	CreateDynamicActor(70, 265.597382, 1862.257935, 8.770510,  273.334076,.worldid = 0, .interiorid=0 );//10 100.000000
	CreateDynamicActor(250, 281.496765, 1873.418091, 8.691450,  141.904129,.worldid = 0, .interiorid=0 );//11 100.000000
	CreateDynamicActor(308, 273.721588, 1872.851563, 8.691450,  89.849113,.worldid = 0, .interiorid=0 );//12 100.000000
	CreateDynamicActor(112, 317.600006, 1855.969971, 7.640000,  231.690002,.worldid = 0, .interiorid=0 );//13 100.000000
	CreateDynamicActor(272, 260.459991, 1852.239990, 8.760000,  294.619995,.worldid = 0, .interiorid=0 );//14 100.000000
	CreateDynamicActor(127, 249.279999, 1874.079956, 8.770000,  57.560001,.worldid = 0, .interiorid=0 );//15 100.000000
	CreateDynamicActor(250, 248.089996, 1873.959961, 8.770000,  316.450012,.worldid = 0, .interiorid=0 );//16 100.000000
	CreateDynamicActor(24, 245.080002, 1846.680054, 8.780000,  291.079987,.worldid = 0, .interiorid=0 );//17 100.000000
	CreateDynamicActor(184, 250.520004, 1862.750000, 8.750000,  211.880005,.worldid = 0, .interiorid=0 );//18 100.000000
	CreateDynamicActor(101, 251.750000, 1862.500000, 8.750000,  147.990005,.worldid = 0, .interiorid=0 );//19 100.000000

	//спорзал

	CreateDynamicActor(203, 762.390747, -35.613621, 1000.713623,  215.693375,.worldid = 0, .interiorid=0 );//20 100.000000
	//ApplyDynamicActorAnimation(ACTR_sportzal_a,"GANGS","prtial_gngtlkF",4.100000, 1, 1,1,0,0);

	CreateDynamicActor(80, 769.023804, -23.163919, 1001.619507,  303.370911,.worldid = 0, .interiorid=0 );//21 100.000000
	//ApplyDynamicActorAnimation(ACTR_sportzal_b,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);

	CreateDynamicActor(49, 773.588440, -32.568298, 1000.713562,  134.629730,.worldid = 0, .interiorid=0 );//22 100.000000 сенсей
	CreateDynamicActor(81, 763.169922, -19.156401, 1000.713196,  180.000000,.worldid = 0, .interiorid=0 );//23 100.000000
	CreateDynamicActor(204, 762.911438, -36.742779, 1000.713623,  20.178070,.worldid = 0, .interiorid=0 );//24 100.000000
	CreateDynamicActor(80, 769.859619, -22.221300, 1001.619507,  131.893280,.worldid = 0, .interiorid=0 );//25 100.000000

	//спортзал сверху


	CreateDynamicActor(80, 254.753296, 1830.826538, 4.728300,  35.378361,.worldid = 0, .interiorid=0 );//26 100.000000
	//ApplyDynamicActorAnimation(ACTR_sportzal_c,"GANGS","prtial_gngtlkH",4.100000, 1, 1,1,0,0);

	CreateDynamicActor(203, 254.408234, 1831.604004, 4.728300,  218.374466,.worldid = 0, .interiorid=0 );//27 100.000000

	CreateDynamicActor(287, 290.365234, 1814.062256, 4.832580,  45.000000,.worldid = 0, .interiorid=0 );//64 100.000000
	CreateDynamicActor(287, 255.449707, 1813.867310, 5.088100,  335.598114,.worldid = 0, .interiorid=0 );//65 100.000000
	CreateDynamicActor(287, 126.037102, 1865.240234, 18.135401,  301.762085,.worldid = 0, .interiorid=0 );//66 100.000000
	CreateDynamicActor(287, 162.519867, 1846.056763, 20.679600,  123.460190,.worldid = 0, .interiorid=0 );//67 100.000000
	CreateDynamicActor(287, 230.149200, 1931.198608, 28.119499,  167.832794,.worldid = 0, .interiorid=0 );//68 100.000000
	CreateDynamicActor(1, 286.985413, 1831.777344, 8.731000,  250.417694,.worldid = 0, .interiorid=0 );//69 100.000000
	CreateDynamicActor(287, 291.503815, 1826.128052, 8.344200,  229.372253,.worldid = 0, .interiorid=0 );//70 100.000000
	CreateDynamicActor(50, 150.247192, 1824.905884, 18.199301,  330.191406,.worldid = 0, .interiorid=0 );//78 100.000000
	CreateDynamicActor(242, 241.699371, 1837.195068, 5.152140,  224.568497,.worldid = 0, .interiorid=0 );//79 100.000000

	//CreateDynamicActor(255, 239.934494, 1846.936279, 8.886800,  274.051300);//92 100.000000 проводник - нафиг не нужен

	//магазин одежды в бункере
	CreateDynamicActor(3, 316.916504, 2053.787109, 895.696106,  180.000000,.worldid = 0, .interiorid=0 );//28 продавес одежды

	//актеры для мужчин (магазин одежды в бункере)
	CreateDynamicActor(287, 317.434509, 2056.488037, 896.600830,  180.000000);//29 100.000000
	CreateDynamicActor(285, 315.359192, 2056.460938, 896.600830,  180.000000);//30 100.000000
	CreateDynamicActor(248, 319.436188, 2056.437500, 896.600830,  180.000000);//31 100.000000
	CreateDynamicActor(125, 321.943115, 2053.383545, 896.600830,  90.000000);//32 100.000000
	CreateDynamicActor(112, 321.943115, 2049.846680, 896.600830,  90.000000);//33 100.000000
	CreateDynamicActor(111, 321.958008, 2045.808716, 896.600830,  90.000000);//34 100.000000
	CreateDynamicActor(29, 313.186310, 2049.846680, 896.600830,  -90.000000);//35 100.000000
	CreateDynamicActor(60, 321.943115, 2038.197998, 896.600830,  90.000000);//36 100.000000
	CreateDynamicActor(115, 321.943115, 2034.770752, 896.600830,  90.000000);//37 100.000000
	CreateDynamicActor(120, 321.943115, 2042.021851, 896.600830,  90.000000);//38 100.000000
	CreateDynamicActor(123, 321.943115, 2030.992065, 896.600830,  90.000000);//39 100.000000
	CreateDynamicActor(186, 313.042847, 2030.992065, 896.600830,  -90.000000);//40 100.000000
	CreateDynamicActor(183, 313.108795, 2034.770752, 896.600830,  -90.000000);//41 100.000000
	CreateDynamicActor(126, 313.144531, 2038.197998, 896.600830,  -90.000000);//42 100.000000
	CreateDynamicActor(104, 313.185425, 2042.021851, 896.600830,  -90.000000);//43 100.000000
	CreateDynamicActor(101, 313.178925, 2053.383545, 896.600830,  -90.000000);//44 100.000000
	CreateDynamicActor(113, 313.144226, 2045.808716, 896.600830,  -90.000000);//45 100.000000

	//выше актеры для мужчин (магазин одежды в бункере)
	////////////////////////////////////////////////////////////////////////////////////////////
	//актеры для женчин (магазин одежды в бункере)
	CreateDynamicActor(3, 316.916504, 2053.787109, 895.696106,  180.000000);//46 100.000000
	CreateDynamicActor(191, 317.434509, 2056.488037, 896.600830,  180.000000);//47 100.000000
	CreateDynamicActor(285, 315.359192, 2056.460938, 896.600830,  180.000000);//48 100.000000
	CreateDynamicActor(192, 319.436188, 2056.437500, 896.600830,  180.000000);//49 100.000000
	CreateDynamicActor(93, 321.943115, 2053.383545, 896.600830,  90.000000);//50 100.000000
	CreateDynamicActor(76, 321.943115, 2049.846680, 896.600830,  90.000000);//51 100.000000
	CreateDynamicActor(151, 321.958008, 2045.808716, 896.600830,  90.000000);//52 100.000000
	CreateDynamicActor(190, 313.186310, 2049.846680, 896.600830,  -90.000000);//53 100.000000
	CreateDynamicActor(233, 321.943115, 2038.197998, 896.600830,  90.000000);//54 100.000000
	CreateDynamicActor(65, 321.943115, 2034.770752, 896.600830,  90.000000);//55 100.000000
	CreateDynamicActor(172, 321.943115, 2042.021851, 896.600830,  90.000000);//56 100.000000
	CreateDynamicActor(169, 321.943115, 2030.992065, 896.600830,  90.000000);//57 100.000000
	CreateDynamicActor(194, 313.042847, 2030.992065, 896.600830,  -90.000000);//58 100.000000
	CreateDynamicActor(131, 313.108795, 2034.770752, 896.600830,  -90.000000);//59 100.000000
	CreateDynamicActor(198, 313.144531, 2038.197998, 896.600830,  -90.000000);//60 100.000000
	CreateDynamicActor(55, 313.185425, 2042.021851, 896.600830,  -90.000000);//61 100.000000
	CreateDynamicActor(211, 313.178925, 2053.383545, 896.600830,  -90.000000);//62 100.000000
	CreateDynamicActor(11, 313.144226, 2045.808716, 896.600830,  -90.000000);//63 100.000000	
	return 1;
}

public OnPlayerSpawn(playerid)
{
	GivePlayerWeapon(playerid, 24, 11);
	SetPlayerSkin(playerid,287);
	SetPlayerPos(playerid,249.2993,1878.7655,11.4609);
	return 1;
}

public OnPlayerText(playerid, text[])
{
	if(zipper==0)
	{
		SendClientMessage(playerid, -1, "start");
		StartRecordingPlayerData(playerid, PLAYER_RECORDING_TYPE_ONFOOT, "oxrana_britva");

	}
	else
	{
		SendClientMessage(playerid, -1, "stop");
		StopRecordingPlayerData(playerid);
	}
	zipper++;
	return 1;
}
public OnPlayerConnect(playerid)
{
 //   printf("%s[%d]",pInfo[playerid][Name],playerid);
	if(IsPlayerNPC(playerid)==0)
	{
		//GetPlayerName(playerid,pInfo[playerid][Name],24);
		SetPlayerTime(playerid,1,0);
		SetPlayerTime(playerid,15, 10);

		RemoveBuildingForPlayer(playerid,12845, 249.921005, -56.539001, 2.664000, 0.250000);
		RemoveBuildingForPlayer(playerid,1514, 253.179001, -54.500000, 1.460000, 0.250000);
		RemoveBuildingForPlayer(playerid,8229, 1142.031006, 1362.500000, 12.484000, 0.250000);
		RemoveBuildingForPlayer(playerid,8237, 1172.625000, 1347.484009, 9.914000, 0.250000);
		RemoveBuildingForPlayer(playerid,2412, 203.015594, -50.015598, 1000.804688, 0.250000);
		RemoveBuildingForPlayer(playerid,2231, 199.609406, -32.148399, 1001.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 211.203094, -50.218800, 1001.343811, 30.000000);
		RemoveBuildingForPlayer(playerid,2389, 211.203094, -49.476601, 1002.453125, 0.250000);
		RemoveBuildingForPlayer(playerid,2382, 208.109406, -44.281300, 1001.382813, 30.000000);
		RemoveBuildingForPlayer(playerid,2381, 208.601593, -47.781300, 1001.414124, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 208.570297, -46.164101, 1001.375000, 30.000000);
		RemoveBuildingForPlayer(playerid,2390, 211.203094, -48.750000, 1002.414124, 0.250000);
		RemoveBuildingForPlayer(playerid,2398, 211.195297, -48.046902, 1001.335876, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 211.187500, -46.804699, 1002.593811, 30.000000);
		RemoveBuildingForPlayer(playerid,2229, 211.351593, -39.835899, 1000.789124, 0.250000);
		RemoveBuildingForPlayer(playerid,11245, -2023.710938, 83.968803, 37.875000, 0.250000);
		RemoveBuildingForPlayer(playerid,1352, -105.070297, 1203.898438, 18.710899, 1000.000000);
		RemoveBuildingForPlayer(playerid,2310, 447.796906, -88.109398, 999.039124, 50.000000);
		RemoveBuildingForPlayer(playerid,1546, -786.226624, 495.515594, 1371.976563, 5.000000);
		RemoveBuildingForPlayer(playerid,3922, -792.250000, 500.382813, 1370.648438, 0.250000);
		RemoveBuildingForPlayer(playerid,3966, -788.523376, 491.593811, 1375.914063, 0.250000);
		RemoveBuildingForPlayer(playerid,1488, -787.406311, 495.476593, 1372.656250, 0.250000);
		RemoveBuildingForPlayer(playerid,1511, -787.898376, 495.476593, 1372.656250, 0.250000);
		RemoveBuildingForPlayer(playerid,1545, -785.367188, 495.460907, 1372.593750, 0.250000);
		RemoveBuildingForPlayer(playerid,1541, -785.976624, 498.671906, 1372.250000, 0.250000);
		RemoveBuildingForPlayer(playerid,2642, 362.031311, -65.156303, 1001.828125, 10.000000);
		RemoveBuildingForPlayer(playerid,2430, 375.492188, -67.117203, 1002.992188, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 374.539093, -65.539101, 1002.992188, 10.000000);
		RemoveBuildingForPlayer(playerid,2431, 373.984406, -64.656303, 1002.992188, 0.250000);
		RemoveBuildingForPlayer(playerid,2740, 378.937500, -59.632801, 1004.351624, 0.250000);
		RemoveBuildingForPlayer(playerid,2718, 375.898407, -56.257801, 1003.156311, 3.000000);
		RemoveBuildingForPlayer(playerid,2714, 360.765594, -72.367203, 1002.343811, 0.250000);
		RemoveBuildingForPlayer(playerid,2788, 375.328094, -73.453102, 1001.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1541, 493.171906, -78.765602, 998.960876, 6.000000);
		RemoveBuildingForPlayer(playerid,1545, 496.906311, -80.250000, 999.898376, 6.000000);
		RemoveBuildingForPlayer(playerid,2964, 510.101593, -84.835899, 997.937500, 0.250000);
		RemoveBuildingForPlayer(playerid,1542, 494.164093, -77.164101, 998.789124, 3.000000);
		RemoveBuildingForPlayer(playerid,1805, 505.429688, -70.078102, 998.007813, 0.250000);
		RemoveBuildingForPlayer(playerid,16766, 498.039093, 1428.078125, 7.164100, 0.250000);
		RemoveBuildingForPlayer(playerid,16745, 392.914093, 1511.562500, 21.585899, 0.250000);
		RemoveBuildingForPlayer(playerid,16744, 351.984406, 1368.898438, 20.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,16275, 375.039093, 1335.054688, 10.218800, 0.250000);
		RemoveBuildingForPlayer(playerid,16276, 588.164124, 1340.960938, 9.859400, 0.250000);
		RemoveBuildingForPlayer(playerid,16277, 487.101593, 1528.226563, 0.125000, 0.250000);
		RemoveBuildingForPlayer(playerid,16278, 500.195313, 1389.796875, 3.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,16279, 648.937500, 1471.382813, 8.367200, 0.250000);
		RemoveBuildingForPlayer(playerid,16269, 448.070313, 1413.789063, 17.968800, 0.250000);
		RemoveBuildingForPlayer(playerid,16268, 464.234406, 1311.734375, 20.742201, 0.250000);
		RemoveBuildingForPlayer(playerid,16270, 573.687500, 1419.257813, 19.695299, 0.250000);
		RemoveBuildingForPlayer(playerid,16534, 566.335876, 1372.890625, 12.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,16273, 422.914093, 1513.414063, 10.718800, 0.250000);
		RemoveBuildingForPlayer(playerid,16534, 566.335876, 1372.890625, 12.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,16048, 741.109375, 1619.000000, 39.601601, 0.250000);
		RemoveBuildingForPlayer(playerid,16049, 740.445313, 1797.304688, 37.562500, 0.250000);
		RemoveBuildingForPlayer(playerid,7884, 1967.257813, 2440.679688, 14.195300, 0.250000);
		RemoveBuildingForPlayer(playerid,7719, 1949.031250, 2068.781250, 12.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,7702, 1928.593750, 2467.000000, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7705, 1973.007813, 2358.164063, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7670, 1028.156250, 2240.765625, 13.398400, 0.250000);
		RemoveBuildingForPlayer(playerid,7663, 1949.031250, 2068.781250, 12.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,7639, 2022.687500, 2065.937500, 21.101601, 0.250000);
		RemoveBuildingForPlayer(playerid,7526, 1949.031250, 2068.781250, 12.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,7492, 1028.156250, 2240.765625, 13.398400, 0.250000);
		RemoveBuildingForPlayer(playerid,7488, 1973.007813, 2358.164063, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7424, 1928.593750, 2467.000000, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7147, 2093.648438, 2488.804688, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7270, 2140.421875, 2535.250000, 12.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,7269, 2140.421875, 2535.250000, 12.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,7228, 2093.648438, 2488.804688, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7078, 2121.710938, 2453.562500, 21.101601, 0.250000);
		RemoveBuildingForPlayer(playerid,6868, 2093.648438, 2488.804688, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3520, 2038.375000, 2466.562500, 9.820300, 300.000000);
		RemoveBuildingForPlayer(playerid,3460, 2074.867188, 2457.617188, 13.765600, 300.000000);
		RemoveBuildingForPlayer(playerid,3460, 1002.968811, 2225.828125, 13.765600, 300.000000);
		RemoveBuildingForPlayer(playerid,3428, 628.148376, 1354.406250, 11.382800, 500.000000);
		RemoveBuildingForPlayer(playerid,3427, 375.039093, 1335.054688, 10.218800, 500.000000);
		RemoveBuildingForPlayer(playerid,3426, 353.703094, 1302.039063, 11.562500, 500.000000);
		RemoveBuildingForPlayer(playerid,3338, 720.710876, 1616.437500, 3.875000, 70.000000);
		RemoveBuildingForPlayer(playerid,3244, 720.710876, 1616.437500, 3.875000, 70.000000);
		RemoveBuildingForPlayer(playerid,1350, 2037.460938, 2458.789063, 9.781300, 100.000000);
		RemoveBuildingForPlayer(playerid,1350, 1013.273376, 2282.757813, 9.812500, 100.000000);
		RemoveBuildingForPlayer(playerid,1350, 1922.093750, 2052.117188, 9.812500, 100.000000);
		RemoveBuildingForPlayer(playerid,3459, 2087.312500, 2462.000000, 17.320299, 100.000000);
		RemoveBuildingForPlayer(playerid,1308, 476.992188, 1386.382813, 4.242200, 170.000000);
		RemoveBuildingForPlayer(playerid,1300, 2046.273438, 2485.976563, 10.445300, 70.000000);
		RemoveBuildingForPlayer(playerid,1257, 2083.062500, 2462.250000, 10.726600, 0.250000);
		RemoveBuildingForPlayer(playerid,7390, 2214.906250, 2465.687500, 14.828100, 0.250000);
		RemoveBuildingForPlayer(playerid,628, 1617.531250, 1817.531250, 11.492200, 0.250000);
		RemoveBuildingForPlayer(playerid,7118, 2263.125000, 2391.546875, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7133, 2565.273438, 2161.093750, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7149, 2384.617188, 2376.835938, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7221, 2442.820313, 2141.960938, 45.585899, 0.250000);
		RemoveBuildingForPlayer(playerid,7382, 2538.398438, 2149.718750, 15.164100, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2532.929688, 2102.640625, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2537.929688, 2118.906250, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,1257, 2580.578125, 2122.000000, 11.093800, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 2537.945313, 2147.875000, 10.218800, 0.250000);
		RemoveBuildingForPlayer(playerid,1341, 2538.031250, 2153.703125, 10.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,7273, 2538.398438, 2149.718750, 15.164100, 0.250000);
		RemoveBuildingForPlayer(playerid,6875, 2565.273438, 2161.093750, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7268, 2440.562500, 2115.976563, 18.906300, 0.250000);
		RemoveBuildingForPlayer(playerid,6874, 2384.617188, 2376.835938, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,1532, 2248.429688, 2395.765625, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,6946, 2263.125000, 2391.546875, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,615, 2301.687500, 2397.554688, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2298.093750, 2418.671875, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,647, 2313.125000, 2424.882813, 11.414100, 0.250000);
		RemoveBuildingForPlayer(playerid,647, 2316.257813, 2425.015625, 11.171900, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2320.523438, 2426.062500, 6.789100, 0.250000);
		RemoveBuildingForPlayer(playerid,3460, 2335.054688, 2417.664063, 13.765600, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2338.203125, 2424.992188, 19.273399, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2334.093750, 2425.968750, 6.789100, 0.250000);
		RemoveBuildingForPlayer(playerid,647, 2331.046875, 2425.078125, 11.171900, 0.250000);
		RemoveBuildingForPlayer(playerid,1257, 2391.984375, 2422.179688, 11.093800, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2329.335938, 2429.273438, 8.437500, 0.250000);
		RemoveBuildingForPlayer(playerid,680, 2313.593750, 2427.039063, 9.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,680, 2318.703125, 2428.578125, 10.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2326.648438, 2431.468750, 14.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2319.742188, 2429.648438, 0.960900, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2318.773438, 2433.171875, 20.960899, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2321.968750, 2435.906250, 6.789100, 0.250000);
		RemoveBuildingForPlayer(playerid,680, 2325.796875, 2440.585938, 14.437500, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2326.710938, 2441.265625, 19.304701, 0.250000);
		RemoveBuildingForPlayer(playerid,680, 2336.054688, 2426.695313, 10.273400, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2332.625000, 2443.578125, 14.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2344.867188, 2448.421875, 13.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2348.578125, 2446.023438, 22.695299, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2342.335938, 2448.617188, 13.960900, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2351.820313, 2448.078125, 7.328100, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2349.453125, 2444.031250, 9.898400, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 1580.382813, 1821.382813, 9.546900, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 1580.398438, 1845.289063, 9.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 1597.625000, 1862.679688, 9.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 1617.414063, 1862.679688, 9.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 1635.984375, 1845.351563, 9.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 1634.179688, 1858.335938, 9.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,7650, 1711.789063, 1823.765625, 19.460899, 0.250000);
		RemoveBuildingForPlayer(playerid,7700, 1711.789063, 1823.765625, 19.460899, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 1637.609375, 1867.445313, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,3460, 1643.054688, 1847.328125, 13.765600, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 1652.953125, 1863.445313, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 1657.164063, 1878.757813, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,1340, 2327.859375, 2421.250000, 10.859400, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 2278.742188, 2008.250000, 23.375000, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 2297.585938, 2008.890625, 25.359400, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 2327.742188, 2007.132813, 25.359400, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 2330.062500, 1992.015625, 23.921900, 0.250000);
		RemoveBuildingForPlayer(playerid,7072, 2169.070313, 2159.453125, 47.234402, 0.250000);
		RemoveBuildingForPlayer(playerid,7073, 2169.804688, 2160.328125, 49.960899, 0.250000);
		RemoveBuildingForPlayer(playerid,7097, 2619.117188, 2335.414063, 16.320299, 0.250000);
		RemoveBuildingForPlayer(playerid,7226, 2232.257813, 1888.601563, 20.992201, 0.250000);
		RemoveBuildingForPlayer(playerid,7233, 2284.296875, 1824.515625, 34.898399, 0.250000);
		RemoveBuildingForPlayer(playerid,7280, 2271.625000, 1870.500000, 56.351601, 0.250000);
		RemoveBuildingForPlayer(playerid,7315, 2156.023438, 2073.078125, 34.398399, 0.250000);
		RemoveBuildingForPlayer(playerid,7316, 2156.023438, 2073.078125, 34.398399, 0.250000);
		RemoveBuildingForPlayer(playerid,7342, 2320.460938, 2128.804688, 35.437500, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2484.742188, 1985.804688, 16.929701, 0.250000);
		RemoveBuildingForPlayer(playerid,7314, 2489.250000, 2126.187500, 19.859400, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2495.664063, 2002.171875, 19.656300, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2495.000000, 2039.453125, 18.242201, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 2597.578125, 2031.656250, 9.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2600.375000, 2027.203125, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2600.375000, 2018.281250, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 2602.289063, 2013.460938, 9.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2629.015625, 1999.937500, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2646.406250, 1998.476563, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2637.070313, 2039.109375, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 2642.328125, 2039.304688, 9.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2594.578125, 2306.656250, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2617.617188, 2308.148438, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2594.007813, 2316.960938, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2655.937500, 2215.320313, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 2654.703125, 2220.687500, 9.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 2658.390625, 2210.671875, 9.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2664.476563, 2219.179688, 10.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2653.851563, 2307.921875, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2670.523438, 2309.664063, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2666.414063, 2319.648438, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,7232, 2138.195313, 1788.078125, 20.875000, 0.250000);
		RemoveBuildingForPlayer(playerid,7230, 2138.828125, 1790.031250, 31.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2158.312500, 1805.179688, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2178.937500, 1805.179688, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2168.625000, 1805.179688, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2181.375000, 1867.609375, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2199.570313, 1805.179688, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2189.250000, 1805.179688, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2191.687500, 1867.609375, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3472, 2202.007813, 1867.609375, 9.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2259.882813, 2007.039063, 19.195299, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2328.320313, 1974.343750, 19.656300, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2313.031250, 2008.273438, 18.703100, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2360.218750, 2001.492188, 12.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2332.593750, 2016.500000, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2338.226563, 2031.679688, 12.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 2435.289063, 2008.929688, 19.656300, 100.250000);
		RemoveBuildingForPlayer(playerid,3463, 2137.460938, 2237.937500, 10.023400, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2137.070313, 2247.265625, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 2132.773438, 2263.929688, 9.828100, 300.250000);
		RemoveBuildingForPlayer(playerid,620, 2111.695313, 2303.484375, 10.734400, 300.250000);
		RemoveBuildingForPlayer(playerid,645, 2130.171875, 2314.898438, 10.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2142.828125, 2292.992188, 10.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,7392, 2320.460938, 2128.804688, 35.437500, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2331.671875, 2131.234375, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2361.929688, 2129.828125, 12.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2368.539063, 2155.234375, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,7268, 2440.562500, 2115.976563, 18.906300, 0.250000);
		RemoveBuildingForPlayer(playerid,6986, 2449.734375, 2121.109375, 34.664101, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2598.664063, 2327.742188, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2665.273438, 2332.406250, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,3511, 2658.851563, 2351.757813, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2293.007813, 2348.820313, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2281.812500, 2374.070313, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,615, 2301.687500, 2397.554688, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2292.953125, 2402.867188, 9.804700, 200.250000);
		RemoveBuildingForPlayer(playerid,8371, 1714.304688, 1452.148438, 14.765600, 0.250000);
		RemoveBuildingForPlayer(playerid,8372, 1695.992188, 1445.789063, 13.351600, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 1717.781250, 1265.476563, 9.789100, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 1737.296875, 1282.828125, 9.968800, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 1748.226563, 1305.976563, 19.093800, 200.250000);
		RemoveBuildingForPlayer(playerid,621, 1765.773438, 1683.507813, 6.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,621, 1759.406250, 1687.820313, 6.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,8825, 2057.390625, 1602.578125, 10.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 1845.226563, 1146.773438, 25.421900, 300.250000);
		RemoveBuildingForPlayer(playerid,710, 2570.351563, 1519.343750, 25.226601, 300.250000);
		RemoveBuildingForPlayer(playerid,9088, 2576.937500, 1389.179688, 45.687500, 0.250000);
		RemoveBuildingForPlayer(playerid,9089, 2477.546875, 1103.179688, 33.179699, 0.250000);
		RemoveBuildingForPlayer(playerid,9105, 2323.695313, 1283.226563, 52.968800, 0.250000);
		RemoveBuildingForPlayer(playerid,9121, 1944.804688, 1183.914063, 18.953100, 0.250000);
		RemoveBuildingForPlayer(playerid,9122, 1958.281250, 1010.203125, 33.968800, 0.250000);
		RemoveBuildingForPlayer(playerid,9123, 1988.687500, 1343.031250, 15.656300, 0.250000);
		RemoveBuildingForPlayer(playerid,9128, 2327.406250, 1283.226563, 19.171900, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 2013.328125, 1047.484375, 25.304701, 200.250000);
		RemoveBuildingForPlayer(playerid,3516, 2042.523438, 831.015625, 9.046900, 200.000000);
		RemoveBuildingForPlayer(playerid,9154, 1960.257813, 1004.921875, 18.679701, 0.250000);
		RemoveBuildingForPlayer(playerid,9153, 2005.117188, 1047.398438, 13.289100, 0.250000);
		RemoveBuildingForPlayer(playerid,7892, 1975.304688, 1891.937500, 28.687500, 0.250000);
		RemoveBuildingForPlayer(playerid,7942, 1486.828125, 2141.781250, 17.609400, 0.250000);
		RemoveBuildingForPlayer(playerid,8827, 2057.390625, 1192.585938, 10.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,8621, 2107.593750, 1003.062500, 42.140598, 0.250000);
		RemoveBuildingForPlayer(playerid,3463, 2057.453125, 1033.906250, 10.164100, 200.000000);
		RemoveBuildingForPlayer(playerid,1231, 2022.679688, 1113.023438, 12.460900, 500.250000);
		RemoveBuildingForPlayer(playerid,620, 2087.523438, 983.398376, 9.507800, 500.250000);
		RemoveBuildingForPlayer(playerid,621, 2534.687500, 1453.039063, 9.429700, 300.250000);
		RemoveBuildingForPlayer(playerid,652, 2024.828125, 1733.476563, 9.828100, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2031.656250, 1734.640625, 2.632800, 0.250000);
		RemoveBuildingForPlayer(playerid,710, 2089.000000, 1839.039063, 25.054701, 200.250000);
		RemoveBuildingForPlayer(playerid,712, 2014.031250, 1055.898438, 19.429701, 300.250000);
		RemoveBuildingForPlayer(playerid,718, 2180.078125, 1521.437500, 9.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2032.296875, 1087.687500, 9.796900, 400.250000);
		RemoveBuildingForPlayer(playerid,3509, 2177.500000, 1547.273438, 9.773400, 1000.250000);
		RemoveBuildingForPlayer(playerid,9175, 2324.382813, 1281.648438, 47.671902, 0.250000);
		RemoveBuildingForPlayer(playerid,3437, 2023.101563, 1307.296875, 11.531300, 200.250000);
		RemoveBuildingForPlayer(playerid,3516, 2040.171875, 1283.093750, 12.976600, 600.250000);
		RemoveBuildingForPlayer(playerid,3511, 1973.453125, 1322.695313, 9.718800, 100.250000);
		RemoveBuildingForPlayer(playerid,8982, 1985.859375, 1356.578125, 8.953100, 0.250000);
		RemoveBuildingForPlayer(playerid,8826, 2057.390625, 1422.828125, 10.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,8840, 2162.789063, 1401.414063, 14.375000, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2040.171875, 1463.093750, 12.976600, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 1847.070313, 1489.429688, 9.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2011.882813, 1489.429688, 9.718800, 0.250000);
		RemoveBuildingForPlayer(playerid,3463, 2057.453125, 1252.859375, 10.164100, 100.250000);
		RemoveBuildingForPlayer(playerid,718, 2088.890625, 1439.593750, 9.750000, 200.250000);
		RemoveBuildingForPlayer(playerid,652, 2064.187500, 1798.125000, 9.828100, 1000.000000);
		RemoveBuildingForPlayer(playerid,645, 2073.632813, 1811.812500, 9.375000, 500.000000);
		RemoveBuildingForPlayer(playerid,3509, 2078.554688, 1822.539063, 7.437500, 500.000000);
		RemoveBuildingForPlayer(playerid,621, 2072.625000, 1906.421875, 14.218800, 0.250000);
		RemoveBuildingForPlayer(playerid,7954, 2117.304688, 1827.703125, 10.468800, 0.250000);
		RemoveBuildingForPlayer(playerid,3463, 2134.710938, 1857.898438, 10.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,647, 2104.820313, 1987.179688, 11.492200, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2107.593750, 2016.828125, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2119.843750, 2032.445313, 12.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2119.843750, 2123.218750, 12.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2107.851563, 2107.734375, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,3463, 2137.468750, 2011.125000, 10.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2154.750000, 2012.023438, 12.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,3516, 2154.750000, 2123.109375, 12.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2161.867188, 2028.109375, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,3463, 2137.460938, 2187.445313, 10.023400, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2160.820313, 2156.070313, 9.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,3506, 2113.281250, 2241.359375, 10.312500, 30.000000);
		RemoveBuildingForPlayer(playerid,3507, 2111.140625, 2251.046875, 10.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2118.578125, 2276.304688, 9.664100, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2092.789063, 2277.765625, 9.664100, 0.250000);
		RemoveBuildingForPlayer(playerid,14570, 2018.953125, 1014.015625, 31.476601, 0.250000);
		RemoveBuildingForPlayer(playerid,18094, 213.671906, -3.601600, 1001.867188, 0.250000);
		RemoveBuildingForPlayer(playerid,6958, 2864.000000, 2293.328125, 18.539101, 0.250000);
		RemoveBuildingForPlayer(playerid,1268, 2919.101563, 2310.601563, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1268, 2919.101563, 2345.671875, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,7304, 2918.789063, 2361.531250, 31.601601, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2799.554688, 2280.679688, 9.593800, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2835.625000, 2280.351563, 9.593800, 0.250000);
		RemoveBuildingForPlayer(playerid,652, 2807.601563, 2281.382813, 9.593800, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2852.968750, 2282.750000, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2836.718750, 2287.679688, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2837.195313, 2305.054688, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2814.304688, 2305.054688, 6.726600, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2882.984375, 2305.054688, 3.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2860.085938, 2305.054688, 9.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 2857.828125, 2299.000000, 9.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,1259, 2919.101563, 2310.601563, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2895.664063, 2322.273438, 3.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2797.531250, 2322.273438, 9.773400, 0.250000);
		RemoveBuildingForPlayer(playerid,1278, 2846.976563, 2323.320313, 24.250000, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2821.179688, 2335.421875, 10.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2847.531250, 2335.421875, 10.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1259, 2919.101563, 2345.671875, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2895.664063, 2346.062500, 3.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2794.976563, 2346.062500, 9.773400, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2847.531250, 2369.031250, 10.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,645, 2821.179688, 2369.031250, 10.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2791.015625, 2369.851563, 9.773400, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2895.664063, 2369.851563, 3.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2784.210938, 2393.640625, 9.773400, 0.250000);
		RemoveBuildingForPlayer(playerid,1278, 2846.976563, 2383.132813, 24.250000, 0.250000);
		RemoveBuildingForPlayer(playerid,1278, 2821.289063, 2383.132813, 24.250000, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 2895.664063, 2393.640625, 3.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,3460, 2903.132813, 2395.117188, 13.765600, 0.250000);
		RemoveBuildingForPlayer(playerid,3381, -155.983002, 444.890015, 17.694000, 200.250000);
		RemoveBuildingForPlayer(playerid,3382, -155.983002, 444.890015, 17.694000, 200.250000);
		RemoveBuildingForPlayer(playerid,4516, -141.335007, 468.648010, 12.913000, 0.250000);
		RemoveBuildingForPlayer(playerid,2700, 197.062500, -134.640594, 1004.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,2622, 197.562500, -137.656296, 1003.281311, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 200.898407, -136.750000, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 201.078094, -136.843796, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 201.265594, -136.890594, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 201.968796, -135.750000, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 201.421906, -135.375000, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2698, 201.343796, -136.132797, 1002.812500, 0.250000);
		RemoveBuildingForPlayer(playerid,2656, 205.437500, -140.476593, 1004.039124, 0.250000);
		RemoveBuildingForPlayer(playerid,2389, 196.195297, -132.882797, 1003.953125, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 196.218796, -133.539093, 1003.039124, 0.250000);
		RemoveBuildingForPlayer(playerid,2389, 196.195297, -133.554703, 1003.953125, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 196.218796, -132.875000, 1003.039124, 0.250000);
		RemoveBuildingForPlayer(playerid,2388, 197.734406, -133.390594, 1002.507813, 0.250000);
		RemoveBuildingForPlayer(playerid,2705, 198.382797, -133.695297, 1003.265625, 0.250000);
		RemoveBuildingForPlayer(playerid,2705, 198.289093, -133.585907, 1003.421875, 0.250000);
		RemoveBuildingForPlayer(playerid,2705, 198.171906, -133.492203, 1003.546875, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 202.539093, -133.882797, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 202.554703, -133.679703, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 202.617203, -133.492203, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 204.062500, -133.765594, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 204.046906, -133.968796, 1002.476624, 0.250000);
		RemoveBuildingForPlayer(playerid,2704, 203.968796, -134.140594, 1002.445313, 0.250000);
		RemoveBuildingForPlayer(playerid,2398, 196.210907, -132.054703, 1003.046875, 0.250000);
		RemoveBuildingForPlayer(playerid,2398, 196.210907, -131.343796, 1003.046875, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 196.187500, -131.343796, 1003.945313, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 196.187500, -132.062500, 1003.945313, 0.250000);
		RemoveBuildingForPlayer(playerid,2656, 203.468796, -130.132797, 1004.039124, 0.250000);
		RemoveBuildingForPlayer(playerid,2404, 203.539093, -129.414093, 1003.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,2411, 211.515594, -134.015594, 1003.484375, 0.250000);
		RemoveBuildingForPlayer(playerid,2389, 212.257797, -129.554703, 1003.500000, 0.250000);
		RemoveBuildingForPlayer(playerid,2388, 212.523407, -129.039093, 1002.507813, 0.250000);
		RemoveBuildingForPlayer(playerid,2389, 212.281296, -129.000000, 1003.500000, 0.250000);
		RemoveBuildingForPlayer(playerid,2398, 212.796906, -126.390602, 1003.054688, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 211.218796, -126.390602, 1003.054688, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 211.953094, -126.390602, 1003.054688, 0.250000);
		RemoveBuildingForPlayer(playerid,2399, 211.218796, -126.390602, 1004.046875, 0.250000);
		RemoveBuildingForPlayer(playerid,2399, 211.960907, -126.390602, 1004.046875, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 210.328094, -126.390602, 1004.062500, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 209.578094, -126.390602, 1004.062500, 0.250000);
		RemoveBuildingForPlayer(playerid,2390, 210.328094, -126.382797, 1003.054688, 0.250000);
		RemoveBuildingForPlayer(playerid,2397, 212.804703, -126.382797, 1004.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,2390, 209.585907, -126.382797, 1003.054688, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 216.187500, -137.234406, 1003.789124, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 216.187500, -139.000000, 1003.789124, 0.250000);
		RemoveBuildingForPlayer(playerid,2689, 216.187500, -138.406296, 1002.968811, 0.250000);
		RemoveBuildingForPlayer(playerid,2704, 216.179703, -136.039093, 1003.789124, 0.250000);
		RemoveBuildingForPlayer(playerid,2704, 216.179703, -136.039093, 1002.953125, 0.250000);
		RemoveBuildingForPlayer(playerid,2398, 213.515594, -126.390602, 1003.054688, 0.250000);
		RemoveBuildingForPlayer(playerid,2397, 213.523407, -126.382797, 1004.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 216.375000, -128.921906, 1003.304688, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 216.375000, -129.656296, 1003.304688, 0.250000);
		RemoveBuildingForPlayer(playerid,2399, 216.375000, -128.921906, 1004.296875, 0.250000);
		RemoveBuildingForPlayer(playerid,2399, 216.375000, -129.664093, 1004.296875, 0.250000);
		RemoveBuildingForPlayer(playerid,2390, 216.382797, -127.289101, 1003.304688, 0.250000);
		RemoveBuildingForPlayer(playerid,2390, 216.382797, -128.031296, 1003.304688, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 216.375000, -128.031296, 1004.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,2396, 216.375000, -127.281303, 1004.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 217.203094, -134.085907, 1003.078125, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 217.203094, -133.398407, 1003.078125, 0.250000);
		RemoveBuildingForPlayer(playerid,2706, 217.359406, -134.085907, 1004.187500, 0.250000);
		RemoveBuildingForPlayer(playerid,2706, 217.359406, -133.398407, 1004.187500, 0.250000);
		RemoveBuildingForPlayer(playerid,2705, 217.359406, -132.523407, 1004.187500, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 217.203094, -132.507797, 1003.078125, 0.250000);
		RemoveBuildingForPlayer(playerid,2705, 217.359406, -131.851593, 1004.187500, 0.250000);
		RemoveBuildingForPlayer(playerid,2401, 217.203094, -131.835907, 1003.078125, 0.250000);
		RemoveBuildingForPlayer(playerid,16650, 247.703094, 1823.843750, 6.554700, 0.250000);
		RemoveBuildingForPlayer(playerid,16651, 247.906296, 1825.625000, 5.562500, 0.250000);
		RemoveBuildingForPlayer(playerid,16666, 246.328094, 1827.648438, 3.804700, 0.250000);
		RemoveBuildingForPlayer(playerid,2729, 212.546906, -94.804703, 1005.890625, 0.250000);
		RemoveBuildingForPlayer(playerid,2730, 199.710907, -107.945297, 1006.320313, 0.250000);
		RemoveBuildingForPlayer(playerid,2383, 199.921906, -109.125000, 1004.929688, 0.250000);
		RemoveBuildingForPlayer(playerid,2374, 199.921906, -107.718803, 1004.929688, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 199.710907, -105.156303, 1006.070313, 0.250000);
		RemoveBuildingForPlayer(playerid,2399, 199.906296, -105.039101, 1004.929688, 0.250000);
		RemoveBuildingForPlayer(playerid,2372, 201.625000, -98.078102, 1004.242188, 0.250000);
		RemoveBuildingForPlayer(playerid,2382, 201.835907, -99.187500, 1004.828125, 0.250000);
		RemoveBuildingForPlayer(playerid,2382, 201.835907, -98.164101, 1004.828125, 0.250000);
		RemoveBuildingForPlayer(playerid,2382, 203.007797, -106.140602, 1004.718811, 0.250000);
		RemoveBuildingForPlayer(playerid,2382, 201.976593, -106.140602, 1004.718811, 0.250000);
		RemoveBuildingForPlayer(playerid,2392, 205.179703, -108.375000, 1004.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,2392, 205.851593, -108.375000, 1004.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,2371, 205.554703, -107.281303, 1004.109375, 0.250000);
		RemoveBuildingForPlayer(playerid,2392, 205.851593, -107.437500, 1004.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,2392, 205.179703, -107.437500, 1004.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 205.953094, -111.539101, 1006.070313, 0.250000);
		RemoveBuildingForPlayer(playerid,2412, 206.992203, -110.742203, 1004.117188, 0.250000);
		RemoveBuildingForPlayer(playerid,2719, 209.328094, -111.539101, 1006.070313, 0.250000);
		RemoveBuildingForPlayer(playerid,2371, 209.734406, -107.281303, 1004.109375, 0.250000);
		RemoveBuildingForPlayer(playerid,2381, 210.031296, -107.851601, 1004.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,2381, 209.367203, -107.906303, 1004.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,2721, 211.812500, -112.843803, 1005.382813, 0.250000);
		RemoveBuildingForPlayer(playerid,2371, 212.054703, -109.062500, 1004.109375, 0.250000);
		RemoveBuildingForPlayer(playerid,2394, 212.632797, -106.812500, 1004.726624, 0.250000);
		RemoveBuildingForPlayer(playerid,2721, 213.117203, -112.843803, 1006.164124, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 202.304703, -103.789101, 1006.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 202.304703, -103.773399, 1006.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2392, 202.320297, -101.851601, 1004.882813, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 207.664093, -103.789101, 1006.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 207.664093, -103.773399, 1006.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 212.765594, -103.789101, 1006.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2720, 212.765594, -103.773399, 1006.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2394, 213.359406, -102.062500, 1004.867188, 0.250000);
		RemoveBuildingForPlayer(playerid,2381, 218.539093, -100.968803, 1004.914124, 0.250000);
		RemoveBuildingForPlayer(playerid,1514, 208.835907, -99.343803, 1005.531311, 0.250000);
		RemoveBuildingForPlayer(playerid,2730, 215.921906, -97.421898, 1005.890625, 0.250000);
		RemoveBuildingForPlayer(playerid,2722, 207.234406, -96.351601, 1006.906311, 0.250000);
		RemoveBuildingForPlayer(playerid,713, 1457.937500, -1620.695313, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,713, 1496.867188, -1707.820313, 13.406300, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1074.960938, -1783.078125, 13.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1357.515625, -1732.937500, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1376.515625, -1731.851563, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,700, 1438.031250, -1747.937500, 13.445300, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1441.859375, -1733.007813, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1403.367188, -1733.007813, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1414.414063, -1731.429688, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1430.171875, -1719.468750, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,4003, 1481.078125, -1747.031250, 33.523399, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1467.984375, -1727.671875, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1485.171875, -1727.671875, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 1479.695313, -1716.703125, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1505.179688, -1727.671875, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1488.765625, -1713.703125, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1513.234375, -1732.921875, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1258, 1445.007813, -1704.765625, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1433.710938, -1702.359375, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1258, 1445.007813, -1692.234375, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1433.710938, -1656.250000, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1433.710938, -1636.234375, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 1445.812500, -1650.023438, 22.257799, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1433.710938, -1619.054688, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1428.937500, -1605.820313, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1428.898438, -1577.132813, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1443.203125, -1592.945313, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1468.984375, -1704.640625, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 1479.695313, -1702.531250, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1468.984375, -1694.046875, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 1479.382813, -1692.390625, 15.632800, 0.250000);
		RemoveBuildingForPlayer(playerid,700, 1463.062500, -1690.648438, 13.726600, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1457.273438, -1666.296875, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 1471.406250, -1666.179688, 22.257799, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 1479.382813, -1682.312500, 15.632800, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1458.257813, -1659.257813, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 1449.851563, -1655.937500, 22.257799, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 1477.937500, -1652.726563, 15.632800, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1457.351563, -1650.570313, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1454.421875, -1642.492188, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 1466.468750, -1637.960938, 15.632800, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1449.593750, -1635.046875, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,1232, 1465.890625, -1629.976563, 15.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,1232, 1465.835938, -1608.375000, 15.375000, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1488.765625, -1704.593750, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1488.765625, -1682.671875, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,712, 1480.609375, -1666.179688, 22.257799, 0.250000);
		RemoveBuildingForPlayer(playerid,1232, 1494.414063, -1629.976563, 15.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,1287, 1504.750000, -1704.468750, 13.593800, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1504.164063, -1662.015625, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1504.718750, -1670.921875, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1505.695313, -1654.835938, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1508.515625, -1647.859375, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,625, 1513.273438, -1642.492188, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,1258, 1510.890625, -1607.312500, 13.695300, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1516.164063, -1591.656250, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,673, 1553.257813, -1764.812500, 12.796900, 0.250000);
		RemoveBuildingForPlayer(playerid,700, 1553.703125, -1747.937500, 13.406300, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1568.882813, -1745.476563, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1545.765625, -1731.671875, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1524.828125, -1721.632813, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1530.117188, -1717.007813, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 1541.453125, -1709.640625, 13.046900, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1524.828125, -1705.273438, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,646, 1545.523438, -1678.843750, 14.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,646, 1553.867188, -1677.726563, 16.437500, 0.250000);
		RemoveBuildingForPlayer(playerid,646, 1553.867188, -1673.460938, 16.437500, 0.250000);
		RemoveBuildingForPlayer(playerid,646, 1545.562500, -1672.218750, 14.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,620, 1547.570313, -1661.031250, 13.046900, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1582.671875, -1733.132813, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,4192, 1591.695313, -1674.851563, 20.492201, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1524.828125, -1647.640625, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1524.828125, -1621.960938, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, 1525.382813, -1611.156250, 16.421900, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1528.953125, -1605.859375, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1283, 1544.625000, -1593.031250, 15.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 971.476624, -1790.617188, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 998.109375, -1796.375000, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 1316.656250, -1519.273438, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 1329.710938, -1498.679688, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 1341.351563, -1476.601563, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 678.375000, -1874.640625, 7.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 678.375000, -1860.046875, 7.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 700.367188, -1805.296875, 13.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 741.210876, -1807.453125, 14.101600, 0.250000);
		RemoveBuildingForPlayer(playerid,1284, 639.484375, -1745.406250, 15.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 643.859375, -1790.632813, 12.929700, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 665.031311, -1746.210938, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 693.226624, -1754.421875, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1297, 734.460876, -1780.562500, 15.515600, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 740.773376, -1769.125000, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 749.632813, -1753.632813, 11.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 762.742188, -1760.203125, 11.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 820.835876, -1917.734375, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 820.835876, -1907.578125, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 821.546875, -2048.898438, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 851.757813, -2023.742188, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 851.757813, -2012.703125, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 852.210876, -1961.125000, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 852.210876, -1950.593750, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 851.625000, -1879.781250, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1231, 820.359375, -1864.554688, 14.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1350, 820.585876, -1763.882813, 12.398400, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 820.023376, -1776.976563, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 893.328125, -1778.632813, 18.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,1268, 598.179688, -1742.078125, 27.398399, 0.250000);
		RemoveBuildingForPlayer(playerid,1284, 639.484375, -1745.406250, 15.460900, 0.250000);
		RemoveBuildingForPlayer(playerid,1259, 598.179688, -1742.078125, 27.398399, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 496.539093, -1718.906250, 16.671900, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 548.710876, -1725.835938, 17.656300, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 597.468811, -1733.210938, 18.414101, 0.250000);
		RemoveBuildingForPlayer(playerid,1284, 611.742188, -1728.843750, 16.218800, 0.250000);
		RemoveBuildingForPlayer(playerid,1284, 633.960876, -1720.789063, 16.195299, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, -1607.304688, -2716.601563, 47.929699, 0.250000);
		RemoveBuildingForPlayer(playerid,3425, -1124.734375, -1637.492188, 86.507797, 0.250000);
		RemoveBuildingForPlayer(playerid,3276, -1064.960938, -1273.015625, 129.062500, 0.250000);
		RemoveBuildingForPlayer(playerid,1676, 1941.656250, -1767.289063, 14.140600, 0.250000);
		RemoveBuildingForPlayer(playerid,1268, 311.953094, -1383.148438, 19.671900, 0.250000);
		RemoveBuildingForPlayer(playerid,6415, 154.210907, -1950.195313, 26.406300, 0.250000);
		RemoveBuildingForPlayer(playerid,1259, 311.953094, -1383.148438, 19.671900, 0.250000);
		RemoveBuildingForPlayer(playerid,6295, 154.210907, -1950.195313, 26.406300, 0.250000);
		RemoveBuildingForPlayer(playerid,1676, -92.101601, -1161.789063, 2.960900, 0.250000);
		RemoveBuildingForPlayer(playerid,2755, 768.140625, -28.804701, 1001.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 1472.898438, -1651.507813, 13.453100, 0.250000);
		RemoveBuildingForPlayer(playerid,946, 2795.492188, -2019.617188, 14.593800, 0.250000);
		RemoveBuildingForPlayer(playerid,1280, 942.351624, -1656.179688, 12.898400, 0.250000);
		RemoveBuildingForPlayer(playerid,6056, 701.437500, -1417.125000, 17.664101, 0.250000);
		RemoveBuildingForPlayer(playerid,5811, 1131.195313, -1380.421875, 17.070299, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, -1665.523438, 416.914093, 6.382800, 0.250000);
		RemoveBuildingForPlayer(playerid,11417, -1650.632813, 423.164093, 11.054700, 0.250000);
		RemoveBuildingForPlayer(playerid,1256, -1970.445313, 140.640594, 27.343800, 0.250000);
		RemoveBuildingForPlayer(playerid,1256, -1970.445313, 151.812500, 27.343800, 0.250000);
		RemoveBuildingForPlayer(playerid,3390, 311.578094, 1827.187500, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,3391, 306.789093, 1827.187500, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,3383, 306.492188, 1832.164063, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,3392, 319.453094, 1827.179688, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,3383, 314.078094, 1832.164063, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,3393, 326.460907, 1827.179688, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,3383, 321.804688, 1832.164063, 4.835900, 0.250000);
		RemoveBuildingForPlayer(playerid,18102, 477.265594, -18.171900, 1001.648376, 0.250000);
		RemoveBuildingForPlayer(playerid,2290, 483.515594, -26.351601, 1002.085876, 0.250000);
		RemoveBuildingForPlayer(playerid,1754, 484.125000, -24.617201, 1002.093811, 0.250000);
		RemoveBuildingForPlayer(playerid,2596, 482.445313, -20.593800, 1002.296875, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 484.835907, -20.500000, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1754, 485.453094, -24.703100, 1002.093811, 0.250000);
		RemoveBuildingForPlayer(playerid,1544, 486.679688, -24.640600, 1002.562500, 0.250000);
		RemoveBuildingForPlayer(playerid,1544, 486.812500, -24.750000, 1002.562500, 0.250000);
		RemoveBuildingForPlayer(playerid,1754, 488.031311, -23.390600, 1002.093811, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 500.757813, -23.734400, 1000.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 501.000000, -23.796900, 1000.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,1520, 500.804688, -23.148399, 1000.796875, 0.250000);
		RemoveBuildingForPlayer(playerid,1542, 501.429688, -22.171900, 1000.710876, 0.250000);
		RemoveBuildingForPlayer(playerid,1547, 501.109406, -22.812500, 1000.726624, 0.250000);
		RemoveBuildingForPlayer(playerid,1541, 501.437500, -21.226601, 1000.890625, 0.250000);
		RemoveBuildingForPlayer(playerid,1548, 501.109406, -21.226601, 1000.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,1520, 503.273407, -22.789101, 1000.710876, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 503.468811, -22.945299, 1000.835876, 0.250000);
		RemoveBuildingForPlayer(playerid,1545, 503.148407, -21.093800, 1001.531311, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 503.585907, -21.148399, 1002.085876, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 503.382813, -20.757799, 1002.085876, 0.250000);
		RemoveBuildingForPlayer(playerid,1520, 483.679688, -20.101601, 1000.203125, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 486.093811, -19.593800, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1823, 493.375000, -18.125000, 999.656311, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 493.351593, -18.664101, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 494.390594, -18.656300, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 494.179688, -17.601601, 1000.343811, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 493.539093, -16.421900, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 496.015594, -14.968800, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1823, 495.648407, -14.570300, 999.656311, 0.250000);
		RemoveBuildingForPlayer(playerid,1520, 496.148407, -13.867200, 1000.203125, 0.250000);
		RemoveBuildingForPlayer(playerid,2125, 497.281311, -13.742200, 1000.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1548, 501.125000, -18.117201, 1000.734375, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 500.890594, -16.562500, 1000.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,1517, 501.140594, -16.546900, 1000.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,1520, 503.304688, -16.890600, 1000.710876, 0.250000);
		RemoveBuildingForPlayer(playerid,1544, 503.390594, -17.617201, 1001.343811, 0.250000);
		RemoveBuildingForPlayer(playerid,1544, 503.562500, -17.445299, 1001.343811, 0.250000);
		RemoveBuildingForPlayer(playerid,1436, 479.593811, -4.296900, 1002.632813, 0.250000);
		RemoveBuildingForPlayer(playerid,2779, 501.468811, -10.367200, 999.679688, 0.250000);
		RemoveBuildingForPlayer(playerid,2778, 502.406311, -7.531300, 999.679688, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 329.687500, 173.898407, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,1703, 335.085907, 178.429703, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 350.375000, 168.179703, 1018.984375, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 351.109406, 168.265594, 1018.984375, 0.250000);
		RemoveBuildingForPlayer(playerid,2010, 347.320313, 178.585907, 1018.960876, 0.250000);
		RemoveBuildingForPlayer(playerid,1703, 353.039093, 178.429703, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,1817, 355.921906, 177.960907, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 364.242188, 173.937500, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 372.710907, 169.453094, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,1703, 371.851593, 171.250000, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,1817, 370.406311, 173.054703, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,2002, 369.781311, 178.414093, 1018.976624, 0.250000);
		RemoveBuildingForPlayer(playerid,2010, 342.515594, 164.539093, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2202, 351.679688, 156.437500, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 351.726593, 159.515594, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 351.726593, 164.695297, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2009, 353.382813, 152.312500, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 354.968811, 152.500000, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 354.210907, 152.500000, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1999, 355.421906, 153.312500, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1999, 354.632813, 170.937500, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 354.257813, 171.750000, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 355.843811, 171.750000, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2009, 356.671906, 171.937500, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2164, 362.203094, 148.578094, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2164, 364.109406, 148.578094, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 359.632813, 148.859406, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2009, 361.179688, 152.156296, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 362.000000, 152.671906, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 363.585907, 152.632797, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1999, 363.218811, 153.156296, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,14599, 358.710907, 162.085907, 1026.703125, 0.250000);
		RemoveBuildingForPlayer(playerid,2010, 359.023407, 164.679703, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2010, 359.023407, 159.578094, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 366.632813, 159.515594, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 366.632813, 164.695297, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,1999, 362.382813, 170.937500, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 362.007813, 172.250000, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2164, 361.484406, 175.593796, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 366.414093, 167.632797, 1024.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 366.414093, 166.640594, 1024.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,2202, 366.062500, 169.265594, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2009, 364.421906, 171.937500, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 363.593811, 171.421906, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2164, 363.390594, 175.593796, 1024.773438, 0.250000);
		RemoveBuildingForPlayer(playerid,2001, 365.960907, 175.234406, 1024.781250, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 199.851593, -166.789093, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 199.851593, -163.242203, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 199.851593, -165.000000, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 201.695297, -166.773407, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2387, 202.343796, -164.281296, 999.531311, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 199.851593, -161.476593, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2387, 202.343796, -161.976593, 999.531311, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 199.851593, -159.718796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 199.851593, -157.968796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 201.601593, -157.968796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 203.460907, -166.773407, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 203.367203, -157.968796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 205.218796, -166.773407, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 205.125000, -157.968796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2412, 205.929703, -168.648407, 999.515625, 0.250000);
		RemoveBuildingForPlayer(playerid,2387, 206.132797, -164.281296, 999.531311, 0.250000);
		RemoveBuildingForPlayer(playerid,2387, 206.132797, -161.976593, 999.531311, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 206.984406, -166.773407, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 206.890594, -157.968796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 208.671906, -157.968796, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 208.726593, -166.773407, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 208.734406, -163.257797, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 208.734406, -165.023407, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 208.734406, -161.500000, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,2707, 208.734406, -159.734406, 1003.921875, 0.250000);
		RemoveBuildingForPlayer(playerid,3389, 284.882813, 1831.734375, 7.039100, 0.250000);
		RemoveBuildingForPlayer(playerid,3387, 284.882813, 1834.484375, 7.039100, 0.250000);
		RemoveBuildingForPlayer(playerid,3383, 289.859406, 1830.695313, 7.039100, 0.250000);
		RemoveBuildingForPlayer(playerid,3393, 291.726593, 1835.437500, 7.031300, 0.250000);
		RemoveBuildingForPlayer(playerid,4051, 1371.820313, -1754.820313, 19.046900, 0.250000);
		RemoveBuildingForPlayer(playerid,4055, 1394.359375, -1620.664063, 32.148399, 0.250000);
		RemoveBuildingForPlayer(playerid,4077, 1781.476563, -1648.421875, 26.835899, 0.250000);
		RemoveBuildingForPlayer(playerid,1531, 1767.210938, -1617.539063, 15.039100, 0.250000);
		RemoveBuildingForPlayer(playerid,4220, 1370.640625, -1643.445313, 33.179699, 0.250000);
		RemoveBuildingForPlayer(playerid,4021, 1371.820313, -1754.820313, 19.046900, 0.250000);
		RemoveBuildingForPlayer(playerid,4006, 1394.359375, -1620.664063, 32.148399, 0.250000);
		RemoveBuildingForPlayer(playerid,4028, 1781.476563, -1648.421875, 26.835899, 0.250000);
		RemoveBuildingForPlayer(playerid,5849, 1046.679688, -935.195313, 46.992199, 0.250000);
		RemoveBuildingForPlayer(playerid,5854, 992.531311, -962.734375, 60.781300, 0.250000);
		RemoveBuildingForPlayer(playerid,5935, 1120.156250, -1303.453125, 18.570299, 0.250000);
		RemoveBuildingForPlayer(playerid,1266, 1029.179688, -939.515625, 52.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,1260, 1029.179688, -939.515625, 52.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,5848, 1046.679688, -935.195313, 46.992199, 0.250000);
		RemoveBuildingForPlayer(playerid,5737, 1120.156250, -1303.453125, 18.570299, 0.250000);
		RemoveBuildingForPlayer(playerid,3680, 1439.585938, -924.500000, 41.796902, 0.250000);
		RemoveBuildingForPlayer(playerid,1687, 1435.367188, -922.500000, 48.117199, 0.250000);
		RemoveBuildingForPlayer(playerid,1687, 1435.796875, -919.843811, 48.117199, 0.250000);
		RemoveBuildingForPlayer(playerid,3678, 1439.585938, -924.500000, 41.796902, 0.250000);
		RemoveBuildingForPlayer(playerid,1690, 1444.578125, -920.890625, 47.984402, 0.250000);
		RemoveBuildingForPlayer(playerid,10505, -2285.523438, -157.109406, 40.281300, 0.250000);
		RemoveBuildingForPlayer(playerid,10507, -2339.859375, -53.906300, 40.296902, 0.250000);
		RemoveBuildingForPlayer(playerid,10522, -2637.414063, 376.039093, 15.898400, 0.250000);
		RemoveBuildingForPlayer(playerid,10670, -2586.328125, 121.265602, 10.187500, 0.250000);
		RemoveBuildingForPlayer(playerid,10392, -2339.859375, -53.906300, 40.296902, 0.250000);
		RemoveBuildingForPlayer(playerid,10630, -2586.328125, 121.265602, 10.187500, 0.250000);
		RemoveBuildingForPlayer(playerid,1232, -2657.867188, 390.273407, 5.968800, 0.250000);
		RemoveBuildingForPlayer(playerid,10381, -2637.414063, 376.039093, 15.898400, 0.250000);
		RemoveBuildingForPlayer(playerid,10388, -2285.523438, -157.109406, 40.281300, 0.250000);
		RemoveBuildingForPlayer(playerid,1500, -2271.031250, -156.726593, 34.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,737, -2598.039063, 124.867203, 3.429700, 0.250000);
		RemoveBuildingForPlayer(playerid,10840, -1666.125000, -62.078098, 10.945300, 0.250000);
		RemoveBuildingForPlayer(playerid,10910, -1681.109375, -24.679701, 5.476600, 0.250000);
		RemoveBuildingForPlayer(playerid,10911, -1711.203125, -47.710899, 5.609400, 0.250000);
		RemoveBuildingForPlayer(playerid,10912, -1666.125000, -62.078098, 10.945300, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, -1725.960938, -64.796898, 5.992200, 0.250000);
		RemoveBuildingForPlayer(playerid,10845, -1711.203125, -47.710899, 5.609400, 0.250000);
		RemoveBuildingForPlayer(playerid,1226, -1679.921875, -47.632801, 6.656300, 0.250000);
		RemoveBuildingForPlayer(playerid,10844, -1681.109375, -24.679701, 5.476600, 0.250000);
		RemoveBuildingForPlayer(playerid,9949, -1535.421875, 1054.523438, 18.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,9964, -1535.421875, 1054.523438, 18.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,2616, 325.828094, 302.039093, 1000.257813, 0.250000);
		RemoveBuildingForPlayer(playerid,2309, 326.937500, 304.992188, 998.156311, 0.250000);
		RemoveBuildingForPlayer(playerid,1808, 320.414093, 308.289093, 998.140625, 0.250000);
		RemoveBuildingForPlayer(playerid,2612, 324.414093, 309.960907, 999.914124, 0.250000);
		RemoveBuildingForPlayer(playerid,2614, 325.234406, 309.945313, 1001.328125, 0.250000);
		RemoveBuildingForPlayer(playerid,2309, 325.453094, 309.164093, 998.156311, 0.250000);
		RemoveBuildingForPlayer(playerid,2192, 327.039093, 309.617188, 999.617188, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 323.375000, 314.171906, 998.148376, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 210.984406, 171.546906, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 222.625000, 171.492203, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 217.851593, 172.617203, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 210.984406, 175.593796, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 213.289093, 182.421906, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 231.617203, 179.671906, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 231.617203, 179.023407, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 231.617203, 181.593796, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 231.617203, 182.257797, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1808, 231.937500, 180.250000, 1002.046875, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 213.289093, 185.156296, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 213.289093, 187.554703, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,2185, 213.757797, 184.335907, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 216.640594, 185.789093, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 218.492203, 185.789093, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1808, 227.343796, 184.921906, 1002.046875, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 229.195297, 184.617203, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 229.859406, 184.617203, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 231.617203, 182.906296, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,2191, 216.976593, 115.257797, 1002.273376, 0.250000);
		RemoveBuildingForPlayer(playerid,2356, 222.359406, 110.226601, 1002.234375, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 225.257797, 108.125000, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 223.398407, 120.421898, 998.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 224.234406, 121.765602, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 224.921906, 121.765602, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 225.570297, 121.765602, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 227.851593, 108.117203, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 228.289093, 114.632797, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 230.429703, 110.601601, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 234.929703, 109.859398, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 235.085907, 111.226601, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 235.078094, 112.703102, 1002.195313, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 226.750000, 119.257797, 998.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,950, 227.148407, 121.992203, 1002.757813, 0.250000);
		RemoveBuildingForPlayer(playerid,950, 213.156296, 140.476593, 1002.562500, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 210.187500, 148.109406, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 211.468796, 148.109406, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 216.632797, 147.257797, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 216.671906, 148.203094, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 215.109406, 148.242203, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1714, 211.031296, 150.015594, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,2206, 211.843796, 149.109406, 1002.007813, 0.250000);
		RemoveBuildingForPlayer(playerid,2241, 212.437500, 151.796906, 1002.500000, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 216.656296, 149.257797, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 210.984406, 163.015594, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 210.984406, 165.828094, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 210.984406, 167.148407, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,950, 218.437500, 140.476593, 1002.562500, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 227.617203, 141.257797, 1002.031311, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 227.617203, 142.593796, 1002.031311, 0.250000);
		RemoveBuildingForPlayer(playerid,1808, 227.921906, 143.476593, 1002.007813, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 228.820297, 145.226593, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 220.179703, 147.296906, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1715, 221.453094, 147.203094, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 228.820297, 147.328094, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,1808, 228.554703, 155.117203, 1002.007813, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 217.851593, 162.937500, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 217.851593, 164.960907, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 217.851593, 166.937500, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,2356, 222.203094, 167.218796, 1002.023376, 0.250000);
		RemoveBuildingForPlayer(playerid,2252, 231.578094, 158.789093, 1003.359375, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 230.523407, 164.164093, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,1806, 230.523407, 166.000000, 1002.015625, 0.250000);
		RemoveBuildingForPlayer(playerid,2165, 235.484406, 111.875000, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 240.289093, 109.437500, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 240.289093, 110.085899, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,2161, 239.304703, 111.007797, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 252.539093, 113.953102, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,1722, 252.539093, 115.289101, 1002.210876, 0.250000);
		RemoveBuildingForPlayer(playerid,14897, 243.203094, 117.304703, 1009.125000, 0.250000);
		RemoveBuildingForPlayer(playerid,2611, 257.750000, 68.523399, 1004.500000, 0.250000);
		RemoveBuildingForPlayer(playerid,2356, 253.382797, 69.710899, 1002.625000, 0.250000);
		RemoveBuildingForPlayer(playerid,1251, 998.093811, 1755.687500, 11.265600, 0.250000);
		RemoveBuildingForPlayer(playerid,1250, 997.726624, 1759.125000, 10.851600, 0.250000);
		RemoveBuildingForPlayer(playerid,3274, 759.921875, 2040.117188, 5.710900, 0.250000);
		RemoveBuildingForPlayer(playerid,961, 2570.734375, 2829.773438, 11.171900, 0.250000);
		RemoveBuildingForPlayer(playerid,960, 2570.734375, 2829.773438, 11.164100, 0.250000);
		RemoveBuildingForPlayer(playerid,961, 2594.585938, 2821.375000, 11.171900, 0.250000);
		RemoveBuildingForPlayer(playerid,960, 2594.593750, 2821.375000, 11.164100, 0.250000);
		RemoveBuildingForPlayer(playerid,961, 2608.796875, 2806.906250, 11.171900, 0.250000);
		RemoveBuildingForPlayer(playerid,960, 2608.796875, 2806.906250, 11.164100, 0.250000);
		RemoveBuildingForPlayer(playerid,1413, 1453.250000, 2323.070313, 11.093800, 0.250000);
		RemoveBuildingForPlayer(playerid,680, 1556.187500, 2278.078125, 9.976600, 0.250000);
		RemoveBuildingForPlayer(playerid,1257, 1558.382813, 2345.539063, 11.093800, 0.250000);
		RemoveBuildingForPlayer(playerid,3465, 1590.351563, 2204.500000, 11.312500, 0.250000);
		RemoveBuildingForPlayer(playerid,1410, 1571.375000, 2163.632813, 10.484400, 0.250000);
		RemoveBuildingForPlayer(playerid,3465, 2141.671875, 2753.320313, 11.273400, 0.250000);
		RemoveBuildingForPlayer(playerid,1412, 1712.140625, 2723.539063, 11.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 1102.562500, 2484.726563, 15.773400, 0.250000);
		RemoveBuildingForPlayer(playerid,7657, 1047.390625, 2063.687500, 11.539100, 0.250000);
		RemoveBuildingForPlayer(playerid,1268, 1108.367188, 2073.593750, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1268, 1003.484375, 2178.492188, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,3447, 1063.328125, 2030.140625, 17.320299, 0.250000);
		RemoveBuildingForPlayer(playerid,1410, 1054.500000, 2043.039063, 10.484400, 0.250000);
		RemoveBuildingForPlayer(playerid,1410, 1060.492188, 2043.039063, 10.484400, 0.250000);
		RemoveBuildingForPlayer(playerid,1410, 1065.164063, 2043.039063, 10.484400, 0.250000);
		RemoveBuildingForPlayer(playerid,1257, 1073.375000, 2062.078125, 11.093800, 0.250000);
		RemoveBuildingForPlayer(playerid,1259, 1108.367188, 2073.593750, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,7914, 1108.453125, 2075.265625, 31.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,3474, 978.289124, 2094.992188, 16.742201, 0.250000);
		RemoveBuildingForPlayer(playerid,7915, 1005.164124, 2178.398438, 31.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1259, 1003.484375, 2178.492188, 25.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1251, 998.093811, 1755.687500, 11.265600, 0.250000);
		RemoveBuildingForPlayer(playerid,1250, 997.726624, 1759.125000, 10.851600, 0.250000);
		RemoveBuildingForPlayer(playerid,3274, 771.515625, 2064.875000, 5.710900, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, 624.046875, 1677.601563, 6.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, 606.898376, 1702.218750, 6.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, 610.250000, 1697.265625, 6.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,1468, 664.976624, 1699.382813, 7.406300, 0.250000);
		RemoveBuildingForPlayer(playerid,1468, 668.742188, 1699.156250, 7.406300, 0.250000);
		RemoveBuildingForPlayer(playerid,3274, 751.500000, 2052.414063, 5.710900, 0.250000);
		RemoveBuildingForPlayer(playerid,3273, 770.929688, 2033.093750, 5.710900, 0.250000);
		RemoveBuildingForPlayer(playerid,986, 2497.406250, 2769.109375, 11.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,16309, 566.648376, 874.484375, -39.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,986, 2497.406250, 2769.109375, 11.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,986, 2497.406250, 2769.109375, 11.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,16309, 566.648376, 874.484375, -39.531300, 0.250000);
		RemoveBuildingForPlayer(playerid,12922, -28.242201, 163.679703, 4.789100, 0.250000);
		RemoveBuildingForPlayer(playerid,3276, -34.296902, 160.015594, 2.320300, 0.250000);
		RemoveBuildingForPlayer(playerid,616, 2798.062500, 2244.906250, 9.820300, 0.250000);
		RemoveBuildingForPlayer(playerid,1290, 948.742188, 738.757813, 15.570300, 0.250000);
		RemoveBuildingForPlayer(playerid,1308, 9.023400, 15.156300, -5.710900, 0.250000);
		RemoveBuildingForPlayer(playerid,703, -893.976624, 1608.554688, 22.210899, 0.250000);
		RemoveBuildingForPlayer(playerid,11500, -1192.179688, 1809.937500, 40.773399, 0.250000);
		RemoveBuildingForPlayer(playerid,649, -853.148376, 1550.757813, 22.429701, 0.250000);
		RemoveBuildingForPlayer(playerid,11435, -867.234375, 1611.328125, 30.851601, 0.250000);
		RemoveBuildingForPlayer(playerid,1340, -799.781311, 1624.218750, 27.125000, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -1672.968750, 2701.062500, 57.148399, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -1584.789063, 2695.718750, 54.781300, 0.250000);
		RemoveBuildingForPlayer(playerid,703, -1554.992188, 2510.070313, 57.054699, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -1535.476563, 2505.757813, 55.242199, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -1470.789063, 2553.710938, 55.242199, 0.250000);
		RemoveBuildingForPlayer(playerid,700, -1459.320313, 2552.828125, 55.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -1454.273438, 2640.140625, 55.828098, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -1437.585938, 2597.039063, 59.273399, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -1403.476563, 2611.804688, 55.578098, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -1368.593750, 2635.242188, 51.734402, 0.250000);
		RemoveBuildingForPlayer(playerid,700, -1441.789063, 2647.328125, 55.226601, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -1449.523438, 2705.476563, 55.242199, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -1466.992188, 2705.945313, 55.828098, 0.250000);
		RemoveBuildingForPlayer(playerid,11677, -1303.367188, 2664.078125, 53.578098, 0.250000);
		RemoveBuildingForPlayer(playerid,3425, -466.429688, 2190.273438, 55.992199, 0.250000);
		RemoveBuildingForPlayer(playerid,652, -748.945313, 2745.031250, 45.898399, 0.250000);
		RemoveBuildingForPlayer(playerid,652, -749.265625, 2755.500000, 46.007801, 0.250000);
		RemoveBuildingForPlayer(playerid,652, -749.187500, 2764.695313, 45.882801, 0.250000);
		RemoveBuildingForPlayer(playerid,1223, -251.546906, 2647.367188, 61.609402, 0.250000);
		RemoveBuildingForPlayer(playerid,16776, -237.023407, 2662.835938, 62.609402, 0.250000);
		RemoveBuildingForPlayer(playerid,1340, -197.492203, 2659.914063, 62.820301, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -206.632797, 2672.242188, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -278.968811, 2679.023438, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -156.023407, 2675.203125, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -243.031296, 2688.304688, 62.484402, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -356.843811, 2707.421875, 62.804699, 0.250000);
		RemoveBuildingForPlayer(playerid,1223, -245.007797, 2706.710938, 61.609402, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -333.570313, 2719.351563, 61.867199, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -240.835907, 2737.148438, 62.484402, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -269.695313, 2750.460938, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -297.804688, 2755.187500, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -245.312500, 2781.492188, 62.367199, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -232.164093, 2685.273438, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -202.570297, 2687.968750, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,1223, -211.593796, 2695.695313, 61.609402, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -213.289093, 2787.929688, 61.921902, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -211.960907, 2805.664063, 61.875000, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -155.093796, 2711.234375, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -164.164093, 2754.765625, 61.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -168.484406, 2740.554688, 61.367199, 0.250000);
		RemoveBuildingForPlayer(playerid,669, -174.554703, 2769.460938, 61.109402, 0.250000);
		RemoveBuildingForPlayer(playerid,1367, -2607.554688, 2341.273438, 7.976600, 0.250000);
		RemoveBuildingForPlayer(playerid,1346, -2553.054688, 2320.484375, 5.320300, 0.250000);
		RemoveBuildingForPlayer(playerid,1297, -2691.171875, 2542.656250, 79.554703, 0.250000);
		RemoveBuildingForPlayer(playerid,1297, -2476.437500, 2616.625000, 57.570301, 0.250000);
		RemoveBuildingForPlayer(playerid,1297, -2391.382813, 2679.007813, 62.265598, 0.250000);
		RemoveBuildingForPlayer(playerid,1297, -2307.710938, 2629.062500, 57.242199, 0.250000);
		RemoveBuildingForPlayer(playerid,3276, 742.984375, 329.515594, 20.117201, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, 655.664124, -558.929688, 15.359400, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, 1380.632813, 460.273407, 19.328100, 0.250000);
		RemoveBuildingForPlayer(playerid,3338, -1575.007813, 1878.132813, 25.695299, 0.250000);
		RemoveBuildingForPlayer(playerid,3338, -1762.593750, 2014.203125, 12.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,708, -1063.671875, 1457.093750, 31.718800, 0.250000);
		RemoveBuildingForPlayer(playerid,703, -931.968811, 1129.007813, 27.804701, 0.250000);
		RemoveBuildingForPlayer(playerid,700, -947.562500, 1146.375000, 29.820299, 0.250000);
		RemoveBuildingForPlayer(playerid,672, -938.664124, 1144.304688, 30.062500, 0.250000);
		RemoveBuildingForPlayer(playerid,708, -910.929688, 1200.742188, 31.718800, 0.250000);
		RemoveBuildingForPlayer(playerid,703, -1317.164063, 1753.125000, 23.218800, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, -1464.937500, 1860.562500, 31.820299, 0.250000);
		RemoveBuildingForPlayer(playerid,1686, -1477.851563, 1867.312500, 31.820299, 0.250000);
		RemoveBuildingForPlayer(playerid,3244, -1575.007813, 1878.132813, 25.695299, 0.250000);
		RemoveBuildingForPlayer(playerid,706, -1725.273438, 1931.851563, 17.945299, 0.250000);
		RemoveBuildingForPlayer(playerid,705, -842.593811, 1255.960938, 29.046900, 0.250000);
		RemoveBuildingForPlayer(playerid,713, -806.656311, 981.812500, 13.000000, 0.250000);
		RemoveBuildingForPlayer(playerid,705, -805.250000, 1034.859375, 21.898399, 0.250000);
		RemoveBuildingForPlayer(playerid,708, -699.546875, 1058.726563, 12.500000, 0.250000);
		RemoveBuildingForPlayer(playerid,691, -665.890625, 1004.179688, 11.585900, 0.250000);
		RemoveBuildingForPlayer(playerid,691, -652.554688, 999.906311, 11.585900, 0.250000);
		RemoveBuildingForPlayer(playerid,705, -645.507813, 1094.453125, 12.640600, 0.250000);
		RemoveBuildingForPlayer(playerid,705, -621.859375, 985.890625, 8.078100, 0.250000);
		RemoveBuildingForPlayer(playerid,3244, -1762.593750, 2014.203125, 12.156300, 0.250000);
		RemoveBuildingForPlayer(playerid,1676, -92.101601, -1161.789063, 2.960900, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -198.679703, 984.015625, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16061, -193.375000, 1055.289063, 18.320299, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -199.671906, 1043.187500, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -199.671906, 1058.125000, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -186.460907, 1058.648438, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -186.460907, 1073.562500, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -199.671906, 1123.554688, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -186.460907, 1138.460938, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16060, -192.046906, 1147.390625, 17.695299, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -199.671906, 1158.921875, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -186.460907, 1173.562500, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,3286, -230.203094, 1185.773438, 23.351601, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -81.718803, 1193.640625, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, -96.078102, 1202.882813, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16777, -105.359398, 1212.070313, 18.734400, 0.250000);
		RemoveBuildingForPlayer(playerid,652, -127.265602, 1222.515625, 18.656300, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, 20.914101, 1193.640625, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, 49.140598, 1193.640625, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1294, 49.140598, 1202.882813, 23.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16000, 110.812500, 1023.992188, 12.648400, 0.250000);
		RemoveBuildingForPlayer(playerid,16002, 172.804703, 1088.625000, 18.109400, 0.250000);
		RemoveBuildingForPlayer(playerid,16590, 199.343796, 1943.789063, 18.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16619, 199.335907, 1943.875000, 18.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,1411, 347.195313, 1799.265625, 18.757799, 0.250000);
		RemoveBuildingForPlayer(playerid,1411, 342.937500, 1796.289063, 18.757799, 0.250000);
		RemoveBuildingForPlayer(playerid,16670, 330.789093, 1813.218750, 17.828100, 0.250000);
		RemoveBuildingForPlayer(playerid,1697, 220.382797, 1835.343750, 23.234400, 0.250000);
		RemoveBuildingForPlayer(playerid,1697, 228.796906, 1835.343750, 23.234400, 0.250000);
		RemoveBuildingForPlayer(playerid,1697, 236.992203, 1835.343750, 23.234400, 0.250000);
		RemoveBuildingForPlayer(playerid,16094, 191.140594, 1870.039063, 21.476601, 0.250000);
		RemoveBuildingForPlayer(playerid,16203, 199.343796, 1943.789063, 18.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16323, 199.335907, 1943.875000, 18.203100, 0.250000);
		RemoveBuildingForPlayer(playerid,16671, 193.953094, 2051.796875, 20.179701, 0.250000);
		RemoveBuildingForPlayer(playerid,16668, 357.937500, 2049.421875, 16.843800, 0.250000);
		RemoveBuildingForPlayer(playerid,16669, 380.257813, 1914.960938, 17.429701, 0.250000);
		RemoveBuildingForPlayer(playerid,3260, 259.023407, 1861.906250, 8.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3260, 259.968811, 1864.937500, 8.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3260, 258.078094, 1862.953125, 8.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,16322, 248.726593, 1869.984375, 11.851600, 0.250000);
		RemoveBuildingForPlayer(playerid,3260, 259.968811, 1866.921875, 8.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3260, 258.078094, 1866.921875, 8.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,16641, 251.445297, 1866.304688, 9.289100, 0.250000);
		RemoveBuildingForPlayer(playerid,3394, 271.789093, 1852.953125, 7.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,3395, 276.273407, 1852.937500, 7.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,3397, 280.656311, 1855.523438, 7.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,3383, 275.375000, 1859.148438, 7.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3383, 269.093811, 1858.320313, 7.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3389, 266.867188, 1852.906250, 7.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3396, 275.312500, 1874.242188, 7.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,3384, 278.093811, 1869.101563, 9.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,3384, 278.093811, 1870.335938, 9.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,3387, 271.250000, 1869.695313, 7.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3388, 271.226593, 1870.929688, 7.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3386, 271.265594, 1868.187500, 7.757800, 0.250000);
		RemoveBuildingForPlayer(playerid,3395, 280.328094, 1874.234375, 7.750000, 0.250000);
		RemoveBuildingForPlayer(playerid,3384, 276.593811, 1868.960938, 9.179700, 0.250000);
		RemoveBuildingForPlayer(playerid,3384, 276.593811, 1870.195313, 9.179700, 0.250000);

	}

	return 1;	
}	*/
//#endinput




stock memset(array[], val, size = sizeof array)
{
    #pragma unused array, val
    static
        fill_inst_offset;
    if (fill_inst_offset == 0) {
        #emit lctrl 6
        #emit move.alt                  // 4
        #emit lctrl 0                   // 8
        #emit add                       // 4
        #emit move.alt                  // 4
        #emit lctrl 1                   // 8
        #emit sub.alt                   // 4
        #emit add.c 92                  // 8
        #emit stor.pri fill_inst_offset // 8
    } {}                                // 
    #emit load.s.pri size               // 8
    #emit shl.c.pri 2                   // 8
    #emit sref.pri fill_inst_offset     // 8
    #emit load.s.alt 12                 // 8
    #emit load.s.pri 16                 // 8
    #emit fill 1                        // 4
    #emit zero.pri
    #emit retn
} 


new vorota=0,vorota_open=0;


#include "../gamemodes/include/vehicle_info.pwn"
new vInfo[MAX_VEHICLES][vehicle_info];


#include "../gamemodes/include/player_info.pwn"
new pInfo[MAX_PLAYERS][sektor_pInfo];


#include "../gamemodes/include/loot_info.pwn"
//new InfoLoot[MAX_TYPE_LOOT][loot_info] - переменная
new LootCounts[MAX_PLAYERS][MAX_TYPE_LOOT];

new PlayerText:PLAYER_DRAWS[MAX_PLAYERS][25];

enum ptle
{
	PlayerText:loot_model,
	PlayerText:loot_countX,
	loottype
};
#define MAX_INVENTORY_LOOT 56// восемь лутов слева направо, и 7 лутов сверху в низ . 7*8=56
new PLAYER_LOOT_DRAW[MAX_PLAYERS][MAX_INVENTORY_LOOT][ptle];

new mysor[10];
#define IsPlayerHaveResp(%0) pInfo[%0][Resp]
#define GetLVL(%0) pInfo[%0][lvl]
#define GetPlayerExperianc(%0) pInfo[%0][Exp]
#define GetPlayerMutDo(%0) pInfo[%0][pMutDo]
#define GetSkin(%0) pInfo[%0][skin]



new pprul[MAX_PLAYERS];
#define PLAYER_PRE_USE_ pprul
enum DLI{//---------------|
	luttype,
	dynO,
	Text3D:dynT
};

#define MAX_LOOT 1000
new DropLoot[MAX_LOOT][DLI],
endloot=0;


#define BOLEZN_PROSTIL 1
#define BOLEZN_OTPABA 2

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// ганг зоны
#define BUNKER_GREEN_ZONE 1
#define BLACK_MAP 1

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// пикапы
#define PICK_HOME 1
#define PICK_HOME_EXIT 2
#define PICK_HOME_SEIF 3

#define PICK_MASTER 4
#define PICK_MASTER_EXIT 5


#define PICK_SPORTZAL 6

#define PICK_LIFT 7// вход в спортзал или стрельбище

#define PICK_CLOTHES 8 // пошив одежды подработка новичкам или магазин одежды

#define PICK_FABRICK_CLOTHES_EXIT 9

#define PICK_FABRICK_CLOTHES_A 10
#define PICK_FABRICK_CLOTHES_B 11
#define PICK_FABRICK_CLOTHES_C 12
#define PICK_FABRICK_CLOTHES_D 13

#define PICK_SHOP_EXIT 14

#define PICK_SPORTZAL_EXIT 15

#define PICK_STELBISHE_EXIT 16
#define PICK_SHRAM_EXIT 17

#define PICK_FC_POLICE 18
#define PICK_FC_AMMO 19

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// дефайн функции
#define isInvNotFull(%0) (pInfo[%0][pack]*10>pInfo[%0][slot])
stock GivesPlayerMoney(playerid,moneys)
{
	    pInfo[playerid][money]+=moneys;

		GivePlayerMoney(playerid, moneys);
}
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// динамические зоны
#define AREA_BUNKER 1
#define BUNKER_VOROTA 2
#define BUNKER_HOME 3
#define STOL_A 4
#define STOL_B 5
#define STOL_C 6
#define STOL_D 7
#define STOL_E 8
#define STOL_F 9
#define STOL_G 10
#define STOL_H 11
#define STOL_i 12

#define FABRIC_PRODUCTION 13
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// текстдравы
#define DRAW_BLACK_SCREEN Text:0
#define DRAW_BOX_KPK Text:1
#define DRAW_GLOBAL_TIME Text:2
#define DRAW_GTA_SAMP_logotype Text:3

#define INV_YELLOY_MENU Text:4
#define INV_BLACK_A Text:5
#define INV_BLACK_B Text:6
#define INV_BLACK_C Text:7
#define INV_BLACK_D Text:8
#define INV_BLACK_E Text:9
#define INV_BLACK_F Text:10
#define INV_BLACK_G Text:11
#define INV_POLY_BLACK_RIGHT_PANEL Text:12
#define INV_CROSS Text:13
#define INV_TORG Text:14
//#define INV_BLUE_CLOTH Text:15
//#define INV_SKULL Text:16
#define INV_RIGHT_PACK Text:15
#define INV_KPK_MODEL_LAPTOP Text:16

#define DRAW_RED_SCREEN Text:17

#define DRAW_HOLOD Text:18
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// актеры
#define ACTR_bynker_a 2

#define ACTR_hospital_a 3

#define 	ACTR_voen 4

#define ACTR_bynker_b 5
#define ACTR_bynker_c 6
#define ACTR_bynker_d 7

#define ACTR_hospital_b 8

#define ACTR_vrach_a 9
#define ACTR_vrach_b 10

#define ACTR_sportzal_a 21
#define ACTR_sportzal_b 22
#define ACTR_sportzal_c 27
stock playerSick(playerid,boleznid)
{
	if(boleznid==BOLEZN_PROSTIL)
	{
	    PlayerPlaySound(playerid,31202,0.0,0.0,0.0);
		SendClientMessage(playerid,0x008800FF,"Ой, что-то вам не хорошо, похоже у вас температура! Как же глупо сдохнуть от простуды!");
		SendClientMessage(playerid,0x008800FF,"Вам нужен отвар (снадобье), возьмите его у медиков!");
		PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][12],0xFFFFFFAA);
		PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][12]);
		pInfo[playerid][prostil]=true;
	}
	else
	{
	 	pInfo[playerid][otrava]=true;
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][12],0xFFFFFFAA);
	}
}

#define IsPlayerInZZ(%0) (pInfo[%0][pos_x]>=91.0&&360.0<=pInfo[%0][pos_x]&&pInfo[%0][pos_y]>=1781.0&&1948.0<=pInfo[%0][pos_y])

//new IteratorArray:PlayerPerhapsVehicle[MAX_PLAYERS]<MAX_CARS>;
//new IteratorArray:PlayerPerhapsLoot[MAX_PLAYERS]<25>;//25 максимальное количество лута в диалоге при поднятии




stock GetVehicleCoordBackPack(vehicleid, &Float:x, &Float:y, &Float:z)
{
    new Float:angle,Float:distance;
    GetVehicleModelInfo(GetVehicleModel(vehicleid), 1, x, distance, z);
    distance = distance/2 + 0.1;
    GetVehiclePos(vehicleid, x, y, z);
    GetVehicleZAngle(vehicleid, angle);
    x += (distance * floatsin(-angle+180, degrees));
    y += (distance * floatcos(-angle+180, degrees));

}
stock obosal_clothe(playerid)
{
	SetPlayerSkin
    252
}
stock use_loot(playerid,id)
{
	switch(id)
	{
	    case 1://туалетная бумага
	    {
	       // if(IsPlayerInDynamicArea(playterid,)==false)
	     //  91.0,1781.0,360.0,1948.0
	       
            if(IsPlayerInZZ(playerid))
	        {
	        	SendClientMessage(playerid,0xD20000AA,!"Тут нельзя.");
	        }
			else
			{
			    ShowPlayerDialog(playerid, 2227,2, !"{FF0000}Личные нужды", "{FF8000}Спать {FFFFFF}(пополняется 'Усталость')\n\
		{FF8000}Сходить в туалет {FFFFFF}(пополняется 'Нужда')\n\
		{FF8000}Посмотреть количество сигарет и спичек",!"Ок",!"Отмена");
		//{FF8000}Проверить износ респиратора
		//{FF8000}Проверить состояние одежды

		//{FF8000}Профессия {FFFFFF}(профессиональные навыки)
		//{FF8000}Термос, Ок, Отмена)
			}
	        	


	    }
	    case 2://журнал задания
	    {
	    /*
	        static str_journal[]=
	        "\
	        {FF6600}Записная книжка {80FF00}.\n\n\
{FF0000}Сюжетные задания (обучение):\n\n\
{FFFFFF}.\n\n\
{FF0000}Задания по доставке:\n\n\
{0080FF}Провизии:\t\t\t{FFFFFF}???????? 5 ??????? ??????.\n\
{0080FF}Иванычу:\t\t\t{FFFFFF}???????? ??????????? ???????.\n\
{0080FF}Мастеру:\t\t\t{FFFFFF}???????? 3 ??????????.\n\
{0080FF}Механику:\t\t\t{FFFFFF}????? ??????? ? ????????!\n\n\
{FF0000}?????????? ???????:\n\n\
{0080FF}Лагерь ученых:		 {FFFFFF}????? ??????? ? ???????!\n\
{0080FF}Барыга:			 {FFFFFF}????? ??????? ? ???????!
	        ";

	    	ShowPlayerDialog(playerid,0,11014, "{51FF0F}Журнал",str_journal,"Ок","");
*/
	    }
	    case 3://котелок
	    {
	        if(IsPlayerInZZ(playerid))
	        {
	        	SendClientMessage(playerid,0xD20000AA,!"Тут нельзя.");
	        }
			else
			{
				ShowPlayerDialog(playerid, 2327,5, "{FF0000}Котелок",
				"{FF8000}Блюдо\t{FF8000}Ингредиенты\n\
				Кипяченая вода\tБутылка грязной воды\n\
				Кипяченое молоко\tБутылка молока\n\
				Жареное мясо\tСырое мясо\n\
				Разогретая тушенка\tБанка тушенки\n\
				Жареная рыба\tСырая рыба\n\
				Каша\tКрупа, кипяченая вода или молоко", !"Ок", !"Отмена");
			}
/*
Чай	Бутылка кипяченой воды и целебная трава или просто остывший чай
Яблочный сок	Яблоки (2шт)

Жареный гриб	Сырой гриб
Цитрусовый сок	Мандарин
Солдатская каша	Крупа, кипяченая вода, тушенка
Яичница	Яйцо (продукт сразу употребляется)
Яичница с помидорами	Яйцо, томаты
Пасхальное яйцо	Яйцо, краситель
Торт	Мука, сметана, яйцо, краситель, кипяченая вода, ягоды, мёд
Суп	Сырое мясо, кипяченая вода, овощи (продукт сразу употребляется)
Уха	Рыба, кипяченая вода, овощи (продукт сразу употребляется)
Тыквенный суп	Тыква, сырое мясо, кипяченая вода (продукт сразу употребляется)
Овощное рагу	Овощи, кипяченая вода, сырое мясо, грибы
'Оливье'	Овощи, кипяченая вода, сырое мясо, яйцо, сметана, горошек
'Селедка под шубой'	Овощи, кипяченая вода, сырая рыба, яйцо, сметана
Снадобье из цветов	Весенние цветы, целебная трава, водка
Целебное снадобье	Целебная трава, водка
Растирка	Бинты, водка
Мазь от зомби	Бинты, гнилое мясо (2шт)
Отвар из рога	Рог оленя, водка
Глинтвейн	Вино, целебная трава, мёд
Духи	Цветы, водка*/


	    }
	    case 9://яблоко
	    {
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>1)
				{
				    pInfo[playerid][nyjda]-=2;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][immynitet]>89)
				{
				    pInfo[playerid][immynitet]=100;
				}
				else
				{
				    pInfo[playerid][immynitet]+=10;
				}
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
    			SendClientMessage(playerid,0x008800AA,!"Вы съели старое яблоко. Его витамины укрепляют иммунитет!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
	    }
	    case 10:{}//томат
		case 11://хлеб
		{
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>1)
				{
				    pInfo[playerid][nyjda]-=2;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели черствый хлеб.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 12://сухой паек
		{
			if(pInfo[playerid][golod]<50)
			{
			    pInfo[playerid][golod]+=50;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели сухой паек.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 13://бургер
		{
			if(pInfo[playerid][golod]<80)
			{
			    pInfo[playerid][golod]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>4)
				{
				    pInfo[playerid][nyjda]-=5;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели бургер.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 14://шаурма
		{
			if(pInfo[playerid][golod]<80)
			{
			    pInfo[playerid][golod]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>4)
				{
				    pInfo[playerid][nyjda]-=5;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели шаурму.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 15://тушенка
		{
			if(pInfo[playerid][golod]<70)
			{
			    pInfo[playerid][golod]+=30;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели тушенку!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 16://тушенка разогретая
		{
			if(pInfo[playerid][golod]<70)
			{
			    pInfo[playerid][golod]+=30;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
			    
				if(pInfo[playerid][temperatura]<91)
				{
					pInfo[playerid][temperatura]+=10;
				}
				else
				{
				    pInfo[playerid][temperatura]=100;
				}
				////////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели разогретую тушенку!");
				SendClientMessage(playerid,0x008800AA,!"Вы чувствуете тепло от горячей еды!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}

		}
		case 17://банка горошка
		{
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>4)
				{
				    pInfo[playerid][nyjda]-=5;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
                ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели консервированный горошек.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 18://банка грибов
		{
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>4)
				{
				    pInfo[playerid][nyjda]-=5;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
                ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели консервированные грибы.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		
		}
		case 19://мешок овощей
		{
			if(pInfo[playerid][golod]<80)
			{
			    pInfo[playerid][golod]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>19)
				{
				    pInfo[playerid][nyjda]-=20;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
                ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы выбрали наиболее хорошие овощи и съели их, выбросив гнилые.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 20://сырое мясо
		{
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>19)
				{
				    pInfo[playerid][nyjda]-=20;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
                ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели сырое мясо.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 21://жаренное мясо
		{
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>19)
				{
				    pInfo[playerid][nyjda]-=20;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][temperatura]<91)
				{
					pInfo[playerid][temperatura]+=10;
				}
				else
				{
				    pInfo[playerid][temperatura]=100;
				}
				////////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели жаренное мясо!");
				SendClientMessage(playerid,0x008800AA,!"Вы чувствуете тепло от горячей еды!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 22://гнилое мясо
		{
			if(pInfo[playerid][golod]<80)
			{
			    pInfo[playerid][golod]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
			    playerSick(playerid,BOLEZN_OTPABA);
			    PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
			    ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
			    SendClientMessage(playerid,0x008800AA,!"Вы съели мерзкое и вонючее гнилое мясо! Что с вами, как вы дошли до этого?");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 23://сырая рыба
		{
			if(pInfo[playerid][golod]<90)
			{
			    pInfo[playerid][golod]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>4)
				{
				    pInfo[playerid][nyjda]-=5;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				///////////////////////////////////////

				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели сырую рыбу!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 24://жаренная рыба
		{
			if(pInfo[playerid][golod]<80)
			{
			    pInfo[playerid][golod]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				///////////////////////////////////////
				if(pInfo[playerid][temperatura]<91)
				{
					pInfo[playerid][temperatura]+=10;
				}
				else
				{
				    pInfo[playerid][temperatura]=100;
				}
				////////////////////////////////////////////
				PlayerPlaySound(playerid, 32200, 0.000000, 0.000000, 0.000000);
				ApplyAnimation(playerid, "FOOD","EAT_Burger",4.100000, 0, 0,0,0,0);
				SendClientMessage(playerid,0x008800AA,!"Вы съели жаренную рыбу!");
				SendClientMessage(playerid,0x008800AA,!"Вы чувствуете тепло от горячей еды!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это есть.");
			}
		}
		case 25://крупа
		{
		    SendClientMessage(playerid,0x008800AA,!"Эту крупу можно сварить! Используйте котелок у костра.");
		}
		case 26://каша
		{
		}
		case 27://семена
		{
		    SendClientMessage(playerid,0x008800AA,!"Вы не можете посадить тут семена, слишком много вирусов! Вам нужна подземная ферма!");
		}
		case 28://газировка
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили газировку.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 29://газировка
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////

			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили сок.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 30://молоко
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили молоко");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 31:// вскипяченное молоко
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][temperatura]<91)
				{
					pInfo[playerid][temperatura]+=10;
				}
				else
				{
				    pInfo[playerid][temperatura]=100;
				}
			    ////////////////////////////////////////

			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили теплое, вскипяченное молоко!");
			    SendClientMessage(playerid,0x008800AA,!"Вы чувствуете тепло, от горячего питья!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 32://энергетик
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>9)
				{
				    pInfo[playerid][nyjda]-=10;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][son]<90)
				{
				    pInfo[playerid][son]+=10;
				}
				else
				{
				    pInfo[playerid][son]=99;
				}
				//////////////
				if(pInfo[playerid][son]>69)
				{
					   PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][9],0xFFFFFFAA);
				}
				else if (pInfo[playerid][son]>29)
				{
				    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][9],0xFFFF00AA);
				}
				else if (pInfo[playerid][son]>=0)
				{
				    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][9],0xFF0000AA);
				}
				PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][9]);
				////////////////////////////////////////
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили энергетик. Напиток бодрит.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 33://грязная вода
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>19)
				{
				    pInfo[playerid][nyjda]-=20;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили грязную воду. Мерзкий привкус.");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 34://кипяченая вода
		{
			if(pInfo[playerid][voda]<80)
			{
			    pInfo[playerid][voda]+=20;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>19)
				{
				    pInfo[playerid][nyjda]-=20;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SendClientMessage(playerid,0x008800AA,!"Вы выпили кипяченую воду");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 35://пиво
		{
			if(pInfo[playerid][voda]<90)
			{
			    pInfo[playerid][voda]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>1)
				{
				    pInfo[playerid][nyjda]-=2;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][nastroenie]<100)
				{
				    pInfo[playerid][nastroenie]++;
				}
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
			    SetPlayerAttachedObject(playerid,7, 1543,6, 0.081900, 0.031000, -0.235900, 0.000000, 0.000000, 0.000000, 1.000000, 1.000000, 1.000000);
       			SendClientMessage(playerid,0x008800AA,!"Вы выпили пиво. Не пейте много, если уже пьяны - вас может вырубить!");
       			SendClientMessage(playerid,0x008800AA,!"Ваше настроение улучшилось!");
       			SetTimerEx("REM_USE_LOT",4000,0,"d",playerid);
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		
		}
		case 36://виски
		{
			if(pInfo[playerid][voda]<90)
			{
			    pInfo[playerid][voda]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>1)
				{
				    pInfo[playerid][nyjda]-=2;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][nastroenie]<100)
				{
				    pInfo[playerid][nastroenie]++;
				}
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
       			SendClientMessage(playerid,0x008800AA,!"Вы выпили виски. Не пейте много, если уже пьяны - вас может вырубить!");
       			SendClientMessage(playerid,0x008800AA,!"Ваше настроение улучшилось!");
       			SendClientMessage(playerid,0x008800AA,!"Вам стало теплее!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
		case 37://водка
		{
			if(pInfo[playerid][voda]<90)
			{
			    pInfo[playerid][voda]+=10;
			    ////////////////////////////////////////
			    if(pInfo[playerid][nyjda]>1)
				{
				    pInfo[playerid][nyjda]-=2;
				}
				else
				{
				    pInfo[playerid][nyjda]=0;
				}
				////////////////////////////////////////
				if(pInfo[playerid][nastroenie]<100)
				{
				    pInfo[playerid][nastroenie]++;
				}
				////////////////////////////////////////
				if(pInfo[playerid][temperatura]<91)
				{
					pInfo[playerid][temperatura]+=10;
				}
				else
				{
				    pInfo[playerid][temperatura]=100;
				}
				////////////////////////////////////////
			    ApplyAnimation(playerid,"BAR","dnk_stndM_loop",4.100000, 0, 0,0,0,0);
			    PlayerPlaySound(playerid,32201, 0.000000, 0.000000, 0.000000);
				SendClientMessage(playerid,0x008800AA,!"Вы выпили водку. Не пейте много, если уже пьяны - вас может вырубить!");
				SendClientMessage(playerid,0x008800AA,!"Напиток согревает, улучшает настроение и иммунитет!");
				SendClientMessage(playerid,0x008800AA,!"Ваше настроение улучшилось!");
				SendClientMessage(playerid,0x008800AA,!"Вам стало теплее!");
			}
			else
			{
				SendClientMessage(playerid,0xD20000AA,!"Ты не хочешь пока это пить.");
			}
		}
	    case 39://сигареты
	    {
			SendClientMessage(playerid,0x008800AA,!"Вы открыли пачку сигарет(20 шт)! Они сохраняются с релогом, но теряются при гибели.");
	        SendClientMessage(playerid,0x008800AA,!"Закурить: N-Действия.");
	        pInfo[playerid][cigarts]=20;
	    }
	    case 40://бронежилет
	    {
	        //вы надели бронежилет!
	    }
	    case 41://карта
	    {
	    }
	    case 42://навигатор
	    {
			//
			ShowPlayerDialog(playerid, 12000, 2, !"{0BBE01}Навигатор", "{008000}Оружие\n{FF0000}Больницы\n{0080FF}Полиция\n{FF8000}Одежда\n{962DFF}Кафе и магазины продуктов\n{FFFF00}Разное\n{80FF00}Убежища\nОтключить навигатор", "Метка", "Отмена");
	    }
	    case 43://рация
		{
		    if(pInfo[playerid][racia]==false)
		    {
		        pInfo[playerid][racia]=true;
		        SetPlayerAttachedObject(playerid,7, 363,8, 0.124900, 0.078900, 0.060000, 90.000000, -87.589996, 9.790000, 0.330000, 0.500000, 0.470000);
		        SendClientMessage(playerid,0x008800AA,!"Теперь вы можете пользоваться рацией, пока не умрете! Она ловит на расстоянии 1км.");
		        SendClientMessage(playerid,0x008800AA,!"Говорить в рацию команда: /р текст и /б текст");
		    }
		    else
		    {
		        SendClientMessage(playerid,0xD20000AA,!"У вас уже есть рация.");
		    }
		    
		}
		case 44://респиратор
		{
		    if(pInfo[playerid][Resp]==false)
		    {
		        pInfo[playerid][Resp]=true;
		        SendClientMessage(playerid,0x008800AA,!"Вы использовали респиратор, он сохраняется с релогом, но пропадает при гибели.");
		    }
		    else
		    {
		        SendClientMessage(playerid,0x008800AA,!"Вы надели новый респиратор! Он частично защитит вас от вирусов.");
		        SendClientMessage(playerid,0x008800AA,!"Респиратор сохраняется с релогом, но пропадает при гибели.");
		    }
		}
		case 45://дрова
		{
		    if(pInfo[playerid][spitchki]>0)
		    {
				//2015: потратив спички и дрова вы разожгли костер
                SendClientMessage(playerid,0xAFAFAFAA,!"Вы разожгли костер!");
                pInfo[playerid][spitchki]--;
		    }
		    else
		    {
		        SendClientMessage(playerid,0xFF0000FF,!"У вас нет спичек.");
		    }
		}
		case 46://спички
		{
		    SendClientMessage(playerid,0x008800AA,!"Вы открыли коробку спичек, теперь они готовы к использованию (20 шт)!");
		    pInfo[playerid][spitchki]=20;
		}
		case 47://удочка
		{
		}
		case 48://палатка
		{
		}
		case 49://10 ячеек
		{
		}
		case 50://20 ячеек
		{
		}
		case 51://30 ячеек
		{
		}
		case 52://40 ячеек
		{
		}
		case 53://50 ячеек
		{
			// барсов купил в своем видео как выживают топы
		}

		case 54://темроящик
		{
		
		}
		case 55://инструменты
		{
		}
		case 56://пустая канистра
		{
		}
		case 57://канистра с бензином
		{
		    if(IsPlayerInDynamicArea(playerid,AREA_BUNKER))
	        {
	        	SendClientMessage(playerid, 0xAFAFAFAA, !"Нельзя в безопасной зоне!");
	        }
	        else
	        {


				new Float:cx,Float:cy,Float:cz;
			    new Float:dist,Float:olddist=5.0;
			    new carid=0;
			    foreach(VehiclesNearPlayer[playerid],vehicleid)
				{
				    GetVehiclePos(vehicleid,cx,cy,cz);
				    dist=GetPlayerDistanceFromPoint(playerid,cx,cy,cz);
				    if(dist<olddist)
				    {
				        olddist=dist;
				        carid=vehicleid;
				    }


				}
				if(carid!=0)
				{
				    if(vInfo[carid][benz]+5<=50)
				    {
				        vInfo[carid][benz]+=5;
				    }
				    else
				    {
				        vInfo[carid][benz]=50;
				    }
					SendClientMessage(playerid, 0x008800AA, !"Вы заправили транспорт из канистры + 5 литров!");
				}
			}
			//вы заправили транспорт из канистры + 5 литров
		}
		case 58://запчасти
		{
		    //вы не в машине - серый?
		    
	  //темно красным: Ты не умеешь ремонтировать транспорт. Обратись к Механику, он научит!
	  
		    // при помощи инструментов и запчастей, вы починили транспорт, как смогли!008800aa
		    //чтобы научиться чинить лучше и быстрее - обратитесь к механику 008800aa
		}
		case 59://рекомплект для шин
		{
		    //при помощи жгутов, клея и шипа, вы починили колесо, как смогли!
		}
		case 60://зачасти для мото/вело
		{
		}
		case 61://аккумулятор
		{
		    //вы установили новый аккумулятор в машину!
		    PlayerPlaySound(playerid,1133,0.0,0.0,0.0);
		}
		case 62://биобатарейка
		{
		}
		case 63://стройматериалы
		{
		}
		case 64://бинт
		{
		    PlayerPlaySound(playerid,42803, 0.000000, 0.000000, 0.000000);
		    pInfo[playerid][vivih]=false;
		    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][11],0x000000AA);
		}
	    case 65://аптечка
	    {
	        pInfo[playerid][vivih]=false;
	        SendClientMessage(playerid,0x008800AA,!"Вы использовали аптечку! Антибиотик борется с вирусом и восстанавливает ваш иммунитет и здоровье!");
			SetPlayerHealth(playerid,100);
			if(pInfo[playerid][immynitet]>50)
			{
			    pInfo[playerid][immynitet]=100;
			}
			else
			{
			    pInfo[playerid][immynitet]+=50;
			}
			UpdateImmynitet(playerid);
			PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][11],0x000000AA);
	    }
	    case 66://снадобье
	    {
	    }
	    case 67://растирка
	    {
	    }
	    case 68://мазь от зомби
	    {
	    }
	    case 69://целебная трава
	    {
	    }
	    case 70://гитара
	    {
	    }
	    case 71://золото
	    {
	    }
	    case 72://новоодняя шапка
	    {
	    }
	    case 73://фейрверк
	    {
	    }
	    case 74://фейрверк ракета
	    {
	    }
	    case 75://посылка
	    {
	    }
	    case 76://подарок
	    {
	    }
	    case 77://подарок санты
	    {
	    }
	    case 78://бутылка с картой
	    {
	    }
	    case 79://тыква
	    {
	    }
	    case 80://ёлочная игрушка
	    {
	    }
	    case 81://деревянная игрушка
	    {
	    }
	    case 82://валентинка
	    {
	    }
	    case 83://части оружия
	    {
	        // при использовании ничего не происходит - проверял лично
	    }
	    case 84://бита
	    {
	    }
	    case 85://катана
	    {
			//"Вы взяли в руки катану"
	    }
	    case 86://полицейская дубинка
	    {
	    }
	    case 87://лопата
	    {
	    }
	    case 88://кий
	    {
	    }
	    case 89://цвета
	    {
	    }
	    case 90://огнетушитель
	    {
	    }
	    case 91://пистолет тт
	    {
	    }
	    case 92://патроны пистолета тт
	    {
	    }
	    case 93://пистолет пустынный орёл
	    {
	    }
	    case 94://патроны пистолет пустынный орёл
	    {
	    }
	    case 95://зажигательный пистолет
	    {
	    }
	    case 96://зажигательные капсулы
	    {
	    }
	    case 97://помповый дробавик
	    {
	    }
	    case 98://пт для помповый дробовик
	    {
	    }
	    case 99://самозарядный дробовик
	    {
	    }
	    case 100://пт для самозарядный дробовик
	    {
	    }
	    case 101://обрез
	    {
	    }
	    case 102://пт для обрез
	    {
	    }
	    case 103://узи
	    {
	    	//index model bone
	    	//attach(4,352,7  0.000000,-0.100000,-0.080000,  -95.000000,-10.000000,0.000000,  1.000000,1.000000,1.000000  //111)
	    }
	    case 104://пт для узи
	    {
	    }
	    case 105://ак47
	    {
	    	//index model bone
	    	//attach(5,355,1  -0.143000,-0.120900,-0.069900,  -179.889999,3.590000,3.000000,  1.000000,1.000000,1.000000  //111)
	    }
	    case 106://пт для ак47
	    {
	    }
	    case 107://м4
	    {
	    }
	    case 108://пт для м4
	    {
	    }
	    case 109://рпг
	    {
	        //ничего не писать в чат если рокета есть
	    }
	    case 110://ракета рпг
	    {
	    }
	    case 111://коктейль молотова
	    {
	    }
	    case 112://граната
	    {
	    }
	}
}

new PreLoot[MAX_PLAYERS][20];//20количество индексов вдиалоге
stock CreateLoot(lootid,Float:x,Float:y,Float:z,world=0,interior=0)
{


	if(endloot<MAX_LOOT-1)
	{
	    DropLoot[endloot][luttype]=lootid;
		DropLoot[endloot][dynO]=CreateDynamicObject(InfoLoot[lootid][model],x,y,z,0.0,0.0,0.0,world,interior,-1,25.0);
		DropLoot[endloot][dynT]=CreateDynamic3DTextLabel(InfoLoot[lootid][NAMEloot],0x008080FF,x,y,z,25.0);
		++endloot;
	}
}
stock deleteLoot(id)
{
	DestroyDynamicObject(DropLoot[id][dynO]);
	DestroyDynamic3DTextLabel(DropLoot[id][dynT]);
	
	if(endloot>0)
	{
		--endloot;
		
    	if(endloot!=id)
		{
	    	DropLoot[id][luttype]=DropLoot[endloot][luttype];
			DropLoot[id][dynO]=DropLoot[endloot][dynO];
			DropLoot[id][dynT]=DropLoot[endloot][dynT];
		}
//		else
//		{
		DropLoot[endloot][luttype]=0;
		DropLoot[endloot][dynO]=0;
		DropLoot[endloot][dynT]=Text3D:0;
	//	}

	}
}



stock GivePlayerLoot(playerid, lootid)
{

/*
enum ptle
{
	PlayerText:loot_model,
	PlayerText:loot_countX,
	loottype
};
#define MAX_INVENTORY_LOOT 56// восемь лутов слева направо, и 7 лутов сверху в низ . 7*8=56
new PLAYER_LOOT_DRAW[MAX_PLAYERS][MAX_INVENTORY_LOOT][ptle];
	*/
	if(lootid>8)
	{
	    pInfo[playerid][slot]++;//если лут может иметь слот в инвентаре (фотокарточка, журнал заданий, личные нужды , котелок не занимают слоты)
	}

	LootCounts[playerid][lootid]++;

	new link_lootid;
	for(;link_lootid<MAX_INVENTORY_LOOT;link_lootid++)
	{
		if(PLAYER_LOOT_DRAW[playerid][link_lootid][loottype]==lootid)
		{
			break;
		}
	}

	if(link_lootid==MAX_INVENTORY_LOOT)//такого предмета нет в инвентаре
	{
		link_lootid=pInfo[playerid][loot_cell];
		pInfo[playerid][loot_cell]++;

		CreateLootTextDraw(playerid,lootid,link_lootid);
	}
	else//такой предмет есть в инвентаре
	{
		UpdateLootTextDrawCount(playerid,link_lootid);
	}

	UpdatePackLootCounts(playerid);

/*
    if(LOOT_KOLVO[playerid][lootid][kolichectvo]==0)
    {
	    if(lootid>8)
		{
		    pInfo[playerid][slot]++;//если лут может иметь слот в инвентаре (фотокарточка, журнал заданий, личные нужды , котелок не занимают слоты)
		}
		/////////////////////////////////////////////////////////////////////////////////////////////////////
		//расчет создания нового лута в инвенторе т.е. расчет, позиций расчет: dmsl- на каком уровне находится лут сверху в низ, rmsl= на каком уровне находится лут слева на право
		new lot_pos=0;
		for(;lot_pos<MAX_INVENTORY_LOOT;lot_pos++)//i=3 потому что личные нужды , журнал заданий, котелок - тоже луты (так сделал барсов)
		{
            if(PLAYER_LOOT_DRAW[playerid][lot_pos][loottype]==0)//если клетка в масиве пустая
            {
				break;//если клетка в масиве пустая останавливаем цикл
            }
		}
		PLAYER_LOOT_DRAW[playerid][lot_pos][loottype]=lootid;//присваеваем лут тип в масив
		LOOT_KOLVO[playerid][lootid][link_to_PTL]=lot_pos;
	   // new msl=pInfo[playerid][loot_cell];
	    new dmsl=1;
		for(new cic=1;cic<8;cic++)
		{
		    if(lot_pos<cic*8)
		    {
	            dmsl=cic;
	            dmsl--;
		        break;
		    }
		}
		new rmsl=lot_pos-(dmsl*8);//-msl;
		if(lot_pos<8)//так надо!
		{
		    rmsl=lot_pos;
	    }
	    //////////////////////////////////////////////////////////////////////////////////////
	    new Float:plus_x=rmsl*25.699997,
	        Float:plus_y=dmsl*31.699997;
	    //===================================
	    new PlayerText:textid=CreatePlayerTextDraw(playerid,185.149994+plus_x, 187.234100+plus_y," ");//модель лута
	    PlayerTextDrawFont(playerid,textid, 5);
	    PlayerTextDrawTextSize(playerid,textid,25.000000,31.000000);
	    PlayerTextDrawSetSelectable(playerid,textid,true);
	    PlayerTextDrawSetPreviewModel(playerid,textid,InfoLoot[lootid][model]);
		PlayerTextDrawSetPreviewRot(playerid,textid,-25.000000, 0.000000, -20.000000, 1.050000);
		PLAYER_LOOT_DRAW[playerid][lot_pos][loot_model]=textid;

	    //===================================
	   // new str_klot[5];
	  //  format(str_klot,5,"x%d",LOOT_KOLVO[playerid][lootid]);
	    LOOT_KOLVO[playerid][lootid][kolichectvo]=1;
	  
		textid=CreatePlayerTextDraw(playerid,190.149994+plus_x, 208.234100+plus_y,"x1");//количество лута
	    PlayerTextDrawFont(playerid,textid, 1);
	    PlayerTextDrawLetterSize(playerid,textid,0.4,0.8);
	    PlayerTextDrawSetOutline(playerid,textid,1);
	//	PlayerTextDrawSetProportional: Scale the text spacing in a player-textdraw to a proportional ratio.
		PlayerTextDrawSetShadow(playerid,textid,0);
		PLAYER_LOOT_DRAW[playerid][lot_pos][loot_textX]=textid;
	    //===================================
	    
		
		for(lot_pos=MAX_INVENTORY_LOOT-1;lot_pos!=0;--lot_pos)//i=3 потому что личные нужды , журнал заданий, котелок - тоже луты (так сделал барсов)
		{
            if(PLAYER_LOOT_DRAW[playerid][lot_pos][loottype]!=0)//если клетка в масиве не пустая
            {
                pInfo[playerid][loot_cell]=lot_pos;//+1;
				break;//если клетка в масиве не пустая останавливаем цикл
            }
		}
	}
	else
	{
		LOOT_KOLVO[playerid][lootid][kolichectvo]++;//повышаем количества этого лута
	    new str_klot[5];
	    format(str_klot,5,"x%d",LOOT_KOLVO[playerid][lootid][kolichectvo]);
		PlayerTextDrawSetString(playerid,PLAYER_LOOT_DRAW[playerid][LOOT_KOLVO[playerid][lootid][link_to_PTL]][loot_textX],str_klot);
	}
	new str_kolvo[7];
	format(str_kolvo,7,"%d/%d",pInfo[playerid][slot],pInfo[playerid][pack]*10);
	PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][21],str_kolvo);*/
}

CreateLootTextDraw(playerid,lootid,position)
{
	PLAYER_LOOT_DRAW[playerid][position][loottype]=lootid;

	new to_left;
	new to_down;

	if(position<8)
	{
		to_left=position;
	}
	else
	{
		to_left=position%8;
		to_down=position/8;
	}

	new Float:multiply_x=to_left*25.699997,// multiply_x и multiply_y могут быть нулем (0.000)
		Float:multiply_y=to_down*31.699997;//

	new PlayerText:textid=CreatePlayerTextDraw(playerid,185.149994+multiply_x, 187.234100+multiply_y," ");//модель лута
	PlayerTextDrawFont(playerid,textid, 5);
	PlayerTextDrawTextSize(playerid,textid,25.000000,31.000000);
	PlayerTextDrawSetSelectable(playerid,textid,true);
	PlayerTextDrawSetPreviewModel(playerid,textid,InfoLoot[lootid][model]);
	PlayerTextDrawSetPreviewRot(playerid,textid,-25.000000, 0.000000, -20.000000, 1.050000);
	PLAYER_LOOT_DRAW[playerid][position][loot_model]=textid;

	  
	textid=CreatePlayerTextDraw(playerid,190.149994+multiply_x, 208.234100+multiply_y,"x1");//количество лута тк он только что создан то x1
	PlayerTextDrawFont(playerid,textid, 1);
	PlayerTextDrawLetterSize(playerid,textid,0.4,0.8);
	PlayerTextDrawSetOutline(playerid,textid,1);
	//	PlayerTextDrawSetProportional: Scale the text spacing in a player-textdraw to a proportional ratio.
	PlayerTextDrawSetShadow(playerid,textid,0);
	PLAYER_LOOT_DRAW[playerid][position][loot_countX]=textid;

}

RemovePlayerLoot(playerid,lootid)//использовать только для игрока в игре
{

	new position;
	for(;position<MAX_INVENTORY_LOOT;position++)
	{
		if(PLAYER_LOOT_DRAW[playerid][position][loottype]==lootid)
		{
			break;
		}
	}
	if(position==MAX_INVENTORY_LOOT)return;

	new end_cell_loot = pInfo[playerid][loot_cell];

	//new lootid = PLAYER_LOOT_DRAW[playerid][position][loottype];

	new loot_count = LootCounts[playerid][lootid];


	LootCounts[playerid][lootid]--;
	if(lootid>8)
	{
		pInfo[playerid][slot]--;
		UpdatePackLootCounts(playerid);
	}


	if(loot_count>1)// количество лута больше одного
	{
		UpdateLootTextDrawCount(playerid,position);
	}
	else//если предмет только один
	{
		for(new i=position,i_plus;i<end_cell_loot;i++)
		{
			if(pInfo[playerid][openInv]==true)
			{
				PlayerTextDrawHide(playerid, PLAYER_LOOT_DRAW[playerid][position][loot_model]);
				PlayerTextDrawHide(playerid, PLAYER_LOOT_DRAW[playerid][position][loot_countX]);
			}
			PlayerTextDrawDestroy(playerid, PLAYER_LOOT_DRAW[playerid][position][loot_model]);
			PlayerTextDrawDestroy(playerid, PLAYER_LOOT_DRAW[playerid][position][loot_countX]);
			PLAYER_LOOT_DRAW[playerid][position][loottype]=0;

			i_plus=i+1;
			if(i_plus<MAX_INVENTORY_LOOT&&i_plus<end_cell_loot)
			{
				CreateLootTextDraw(playerid,PLAYER_LOOT_DRAW[playerid][i_plus][loottype],i);
				UpdateLootTextDrawCount(playerid, i);

				if(pInfo[playerid][openInv]==true)
				{
					PlayerTextDrawShow(playerid,PLAYER_LOOT_DRAW[playerid][i][loot_model]);
					PlayerTextDrawShow(playerid,PLAYER_LOOT_DRAW[playerid][i][loot_countX]);
				}	
			}

		}
	}

	pInfo[playerid][loot_cell]--;
}

UpdateLootTextDrawCount(playerid,position)
{
	new str_countsX[5];
	format(str_countsX,5,"x%d",LootCounts[playerid][PLAYER_LOOT_DRAW[playerid][position][loottype]]);
	PlayerTextDrawSetString(playerid,PLAYER_LOOT_DRAW[playerid][position][loot_countX],str_countsX);
}

UpdatePackLootCounts(playerid)
{
	new str_allcounts[7];
	format(str_allcounts,7,"%d/%d",pInfo[playerid][slot],pInfo[playerid][pack]*10);
	PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][21],str_allcounts);
}
public OnGameModeInit()
{
	print("OnGameModeInit start");
	Iter_Init(VehiclesNearPlayer);
//	Iter_Init(PlayerPerhapsVehicle);
//	Iter_Init(PlayerPerhapsLoot);

	ConnectNPC("Ivanish", "ivanish");
	
	ConnectNPC("Armen_Britva", "oxrana_britva");//охранник ходящий в бункере


	////////////////////////////////////////////////////////////////
	SetNameTagDrawDistance(120.0);
	LimitGlobalChatRadius(10000.0);
	SetGravity(0.01100);//как и в оригинале сектора
	EnableStuntBonusForAll(0);//отключить денежный бонус в машине
	DisableInteriorEnterExits();//отключить стандартные интерьеры (желтые маркеры)
	ManualVehicleEngineAndLights();// при заходе в машину двигатель будет выключен
    UsePlayerPedAnims();//бег сиджея
    
    Streamer_VisibleItems(STREAMER_TYPE_OBJECT , 999);
	////////////////////////////////////////////////////////////////

	CreateVehicle(495,171.492000,1820.662000,18.360000,0.0,3,0,99999);//1        Арендуемая машина механика
	CreateVehicle(495,156.904327,1820.629028,17.991159,0.0,3,0,99999);//        Арендуемая машина механика
	CreateVehicle(557,164.210602,1820.685303,17.968100,0.0,6,6,99999);//        Арендуемая машина механика

	CreateVehicle(416,117.207413,1831.780640,17.762672,270.0,0,121,99999);//    Скорая помощь
	CreateVehicle(416,117.201050,1837.870361,17.781521,270.0,0,121,99999);//    Скорая помощь
	CreateVehicle(416,117.197845,1843.417114,17.800543,270.0,0,121,99999);//    Скорая помощь
	CreateVehicle(416,117.199417,1849.252808,17.836210,270.0,0,121,99999);//    Скорая помощь
	CreateVehicle(416,117.207809,1854.254150,17.840788,270.0,0,121,99999);//    Скорая помощь
	CreateVehicle(416,117.210678,1859.919922,17.830564,270.0,0,121,99999);//    Скорая помощь
	for(new i=4;i<10;++i)
	{
		SetVehicleHealth(i,700.000000);
	}
	CreateVehicle(470,199.716003,1822.005981,17.381901,0.000000,-1,-1,99999);//10     	Хаммер наёмников
	CreateVehicle(470,205.212296,1822.005981,17.381901,0.000000,-1,-1,99999);//     	Хаммер наёмников
	CreateVehicle(470,210.859894,1822.005981,17.381901,0.000000,-1,-1,99999);//     	Хаммер наёмников
	CreateVehicle(470,217.263000,1822.005981,17.381901,0.000000,-1,-1,99999);//13     	Хаммер наёмников

	CreateVehicle(582,220.069366,1932.622925,17.673651,179.290787,254,0,99999);//14       Машина радиоведущих
	CreateVehicle(582,213.636505,1932.907837,17.673124,180.018677,254,0,99999);//      Машина радиоведущих
	CreateVehicle(411,209.666000,1933.909302,17.330803,180.000031,254,254,99999);//16      Машина радиоведущих

	CreateVehicle(509, 1761.3119, 2871.7283, 13.7575, 95.0000, -1, -1, 99999);/////////////////////////////////////
	CreateVehicle(509, 2819.9929, 2137.2751, 14.1522, 0.0000, -1, -1, 99999);
	CreateVehicle(509, 2195.0962, 1986.3613, 11.8110, 0.0000, -1, -1, 99999);
	CreateVehicle(509, 1411.1875, 2002.4510, 14.2795, 90.0000, -1, -1, 99999);
	CreateVehicle(509, 1896.7345, 727.8359, 13.7815, 0.0000, -1, -1, 99999);
	CreateVehicle(509, 2513.8018, 125.9797, 27.2115, 0.0000, -1, -1, 99999);
	CreateVehicle(509, 1537.8865, 19.8537, 23.6194, 3.0000, -1, -1, 99999);
	CreateVehicle(510, 297.5757, -1764.8778, 4.1384, 90.0000, -1, -1, 99999);//////////////// В Е Л О С И П Е Д Ы //////
	CreateVehicle(509, -90.8357, -1598.9365, 2.1288, -60.0000, -1, -1, 99999);
	CreateVehicle(509, -2182.2678, -2260.1851, 32.7787, -40.0000, -1, -1, 99999);
	CreateVehicle(509, -2815.2944, -1509.7472, 138.7737, -90.0000, -1, -1, 99999);
	CreateVehicle(509, -2792.7292, -55.2396, 6.6602, 0.0000, -1, -1, 99999);
	CreateVehicle(509, -2619.8098, 61.4800, 3.8219, 0.0000, -1, -1, 99999);
	CreateVehicle(510, -2657.6917, 852.4637, 63.6033, 0.0000, -1, -1, 99999);
	CreateVehicle(509, -2446.9343, 2492.2456, 14.8435, 0.0000, -1, -1, 99999);//////////////////////////////////
	
	
    CreateVehicle(604,-86.154282,1155.981079,19.370411,26.821384,-1,-1,99999);//ломанная машина биг смоука в ФОРТ КАРСОНЕ
    
    
    
    CreateVehicle(478,156.665359,-173.800552,1.547510,26.460487,-1,-1,99999);//мясовозка деревня справа от фермы
    CreateVehicle(448,214.167999,-177.226898,1.173900,320.861694,-1,-1,99999);//мотоцикл пиццерии
    CreateVehicle(498,218.537201,11.942997,2.599802,312.083710,-1,-1,99999);//boxville справа от фермы

	for(new i=0;i<40;++i)
	{
    	SetVehicleNumberPlate(i, "SEKTOR 2");
    }
/*
//unkown CreateDynamicActor(297, 190.323898, 1818.213623, 1217.751221,  0.000000);//83 100.000000
//unkown CreateDynamicActor(164, 194.417557, 1818.299683, 1217.751221,  48.776619);//84 100.000000

*/

	//карта не полная.
	#include "../gamemodes/include/map.pwn"


///////////////////////////////////////////////// DRAW_BLACK_SCREEN - черный текстдрав на весь экран
	TextDrawCreate(-1.0,-1.0,"LD_BUM:blkdot");
	TextDrawFont(DRAW_BLACK_SCREEN,4);
	TextDrawTextSize(DRAW_BLACK_SCREEN,641.0,450.0);
	TextDrawColor(DRAW_BLACK_SCREEN,0x000000FF);
///////////////////////////////////////////////// DRAW_BLACK_SCREEN

	TextDrawCreate(29.6000, 322.3001, "Box"); // черный прозрачный бокс  под картой
	TextDrawLetterSize(DRAW_BOX_KPK, 0.0000, 13.3000);
	TextDrawTextSize(DRAW_BOX_KPK, 143.0000, 0.0000);
	TextDrawAlignment(DRAW_BOX_KPK, 1);
	TextDrawColor(DRAW_BOX_KPK, -1);
	TextDrawUseBox(DRAW_BOX_KPK, 1);
	TextDrawBoxColor(DRAW_BOX_KPK, 0x00000037);
//	TextDrawBackgroundColor(DRAW_BOX_KPK, 0x00000037);
	TextDrawFont(DRAW_BOX_KPK, 1);
	TextDrawSetProportional(DRAW_BOX_KPK, 1);
	TextDrawSetShadow(DRAW_BOX_KPK, 0);

	TextDrawCreate(73.0000, 324.0000,"00:00");//73.0000, 324.0000, "17:22"); // часы
	TextDrawLetterSize(DRAW_GLOBAL_TIME,0.3000,1.3000);// 0.2894, 1.4400);
	TextDrawAlignment(DRAW_GLOBAL_TIME, 1);
	TextDrawColor(DRAW_GLOBAL_TIME, 1251016959);
	TextDrawSetOutline(DRAW_GLOBAL_TIME, 2);
	TextDrawBackgroundColor(DRAW_GLOBAL_TIME, 255);
	TextDrawFont(DRAW_GLOBAL_TIME, 3);
	TextDrawSetProportional(DRAW_GLOBAL_TIME, 1);
	TextDrawSetShadow(DRAW_GLOBAL_TIME, 0);

	TextDrawCreate(500.000000, 5.000000, "GTA SAMP SEKTOR 2"); // ?????
	TextDrawLetterSize(DRAW_GTA_SAMP_logotype, 0.360000, 1.100000);
	TextDrawAlignment(DRAW_GTA_SAMP_logotype, 1);
	TextDrawColor(DRAW_GTA_SAMP_logotype, 0xFD5402AA);
	TextDrawSetOutline(DRAW_GTA_SAMP_logotype, 1);
	TextDrawBackgroundColor(DRAW_GTA_SAMP_logotype, 255);
	TextDrawFont(DRAW_GTA_SAMP_logotype, 3);
	TextDrawSetProportional(DRAW_GTA_SAMP_logotype, 1);
	TextDrawSetShadow(DRAW_GTA_SAMP_logotype, 2);

	//////////////////////////////////////////////////////////////////////////////////////////

	TextDrawCreate(183.750000, 185.851807, "Box");  //основное желтое меню инвентаря
	TextDrawLetterSize(INV_YELLOY_MENU, 0.000000, 24.975000);
	TextDrawTextSize(INV_YELLOY_MENU, 391.000000, 0.000000);
	TextDrawAlignment(INV_YELLOY_MENU, 1);
	TextDrawColor(INV_YELLOY_MENU, -1);
	TextDrawUseBox(INV_YELLOY_MENU, 1);
	TextDrawBoxColor(INV_YELLOY_MENU, 0x9B9759BA);
	TextDrawBackgroundColor(INV_YELLOY_MENU, 0x000000A3);
	TextDrawFont(INV_YELLOY_MENU, 1);
	TextDrawSetProportional(INV_YELLOY_MENU, 1);
	TextDrawSetShadow(INV_YELLOY_MENU, 0);

	TextDrawCreate(181.500000, 410.855591, "Box"); // 1 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_A, 0.000000, 0.224900);
	TextDrawTextSize(INV_BLACK_A, 460.000000 ,0.000000);
	TextDrawAlignment(INV_BLACK_A, 1);
	TextDrawColor(INV_BLACK_A, -1);
	TextDrawUseBox(INV_BLACK_A, 1);
	TextDrawBoxColor(INV_BLACK_A, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_A, 0x000000FF);
	TextDrawFont(INV_BLACK_A, 1);
	TextDrawSetProportional(INV_BLACK_A, 1);
	TextDrawSetShadow(INV_BLACK_A, 0);

	TextDrawCreate(181.500000, 182.241592, "Box"); // 2 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_B, 0.000000, 0.224900);
	TextDrawTextSize(INV_BLACK_B, 460.000000 ,0.000000);
	TextDrawAlignment(INV_BLACK_B, 1);
	TextDrawColor(INV_BLACK_B, -1);
	TextDrawUseBox(INV_BLACK_B, 1);
	TextDrawBoxColor(INV_BLACK_B, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_B, 0x000000FF);
	TextDrawFont(INV_BLACK_B, 1);
	TextDrawSetProportional(INV_BLACK_B, 1);
	TextDrawSetShadow(INV_BLACK_B, 0);

	TextDrawCreate(181.500000, 182.241592, "Box");  //3 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_C, 0.000000, 25.624901);
	TextDrawTextSize(INV_BLACK_C, 183.370300, 0.000000);
	TextDrawAlignment(INV_BLACK_C, 1);
	TextDrawColor(INV_BLACK_C, -1);
	TextDrawUseBox(INV_BLACK_C, 1);
	TextDrawBoxColor(INV_BLACK_C, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_C, 0x000000FF);
	TextDrawFont(INV_BLACK_C, 1);
	TextDrawSetProportional(INV_BLACK_C, 1);
	TextDrawSetShadow(INV_BLACK_C, 0);

	TextDrawCreate(392.112793 ,182.241592, "Box"); // 4 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_D, 0.000000, 25.624901);
	TextDrawTextSize(INV_BLACK_D, 393.983093 ,0.000000);
	TextDrawAlignment(INV_BLACK_D, 1);
	TextDrawColor(INV_BLACK_D, -1);
	TextDrawUseBox(INV_BLACK_D, 1);
	TextDrawBoxColor(INV_BLACK_D, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_D, 0x000000FF);
	TextDrawFont(INV_BLACK_D, 1);
	TextDrawSetProportional(INV_BLACK_D, 1);
	TextDrawSetShadow(INV_BLACK_D, 0);

	TextDrawCreate(458.216797, 182.241592, "Box"); // 5 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_E, 0.000000, 25.624901 );
	TextDrawTextSize(INV_BLACK_E, 460.087189 ,0.000000);
	TextDrawAlignment(INV_BLACK_E, 1);
	TextDrawColor(INV_BLACK_E, -1);
	TextDrawUseBox(INV_BLACK_E, 1);
	TextDrawBoxColor(INV_BLACK_E, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_E, 0x000000FF);
	TextDrawFont(INV_BLACK_E, 1);
	TextDrawSetProportional(INV_BLACK_E, 1);
	TextDrawSetShadow(INV_BLACK_E, 0);

	TextDrawCreate(392.112793, 209.619400, "Box");  //6 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_F, 0.000000, 0.249900);
	TextDrawTextSize(INV_BLACK_F, 457.000000, 0.000000);
	TextDrawAlignment(INV_BLACK_F, 1);
	TextDrawColor(INV_BLACK_F, -1);
	TextDrawUseBox(INV_BLACK_F, 1);
	TextDrawBoxColor(INV_BLACK_F, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_F, 0x000000FF);
	TextDrawFont(INV_BLACK_F, 1);
	TextDrawSetProportional(INV_BLACK_F, 1);
	TextDrawSetShadow(INV_BLACK_F, 0);

	TextDrawCreate(395.162811, 256.571686, "Box");  //7 полоска  инвентаря
	TextDrawLetterSize(INV_BLACK_G, 0.000000, 0.249900);
	TextDrawTextSize(INV_BLACK_G, 458.000000, 0.000000);
	TextDrawAlignment(INV_BLACK_G, 1);
	TextDrawColor(INV_BLACK_G, -1);
	TextDrawUseBox(INV_BLACK_G, 1);
	TextDrawBoxColor(INV_BLACK_G, 0x000000FF);
	TextDrawBackgroundColor(INV_BLACK_G, 0x000000FF);
	TextDrawFont(INV_BLACK_G, 1);
	TextDrawSetProportional(INV_BLACK_G, 1);
	TextDrawSetShadow(INV_BLACK_G, 0);

	TextDrawCreate(393.750000, 187.096298, "Box");  //левое прозрачное (черного цвета) часть инвентаря
	TextDrawLetterSize(INV_POLY_BLACK_RIGHT_PANEL, 0.000000, 24.699900);
	TextDrawTextSize(INV_POLY_BLACK_RIGHT_PANEL, 459.000000, 0.000000);
	TextDrawAlignment(INV_POLY_BLACK_RIGHT_PANEL, 1);
	TextDrawColor(INV_POLY_BLACK_RIGHT_PANEL, -1);
	TextDrawUseBox(INV_POLY_BLACK_RIGHT_PANEL, 1);
	TextDrawBoxColor(INV_POLY_BLACK_RIGHT_PANEL, 0x0000003F);
//	TextDrawBackgroundColor(INV_POLY_BLACK_RIGHT_PANEL, 0x000000FF);
	TextDrawFont(INV_POLY_BLACK_RIGHT_PANEL, 1);
	TextDrawSetProportional(INV_POLY_BLACK_RIGHT_PANEL, 1);
	TextDrawSetShadow(INV_POLY_BLACK_RIGHT_PANEL, 0);

	TextDrawCreate(440.950012,190.244400, "LD_BEAT:cross");  //крестик инвенторя
	TextDrawLetterSize(INV_CROSS, 0.000000, 1.300000);
	TextDrawTextSize(INV_CROSS, 14.700000, 14.000000);
	TextDrawColor(INV_CROSS, 0xE1E1E1FF);
	TextDrawBoxColor(INV_CROSS, 0x80808080);
//	TextDrawBackgroundColor(INV_POLY_BLACK_RIGHT_PANEL, 0x000000FF);
	TextDrawFont(INV_CROSS, 4);
	TextDrawSetSelectable(INV_CROSS, true);
//	TextDrawSetProportional(INV_CROSS, 1);
//	TextDrawSetShadow(INV_CROSS, 0);

	TextDrawCreate(431.951904, 219.0/*267.818298*/, " ");  // доллар в инвентаре
	TextDrawLetterSize(INV_TORG, 0.000000, 0.0);//по сути ничего не меняет но так было в хуке
	TextDrawTextSize(INV_TORG, 20.000000, 31.000000);
	TextDrawFont(INV_TORG, 5);
	TextDrawColor(INV_TORG, -1);
	TextDrawBackgroundColor(INV_TORG, 0x000000F1);
	TextDrawSetPreviewModel(INV_TORG, 1274);
	TextDrawSetPreviewRot(INV_TORG, 180.0, 180.0,0.0, 1.020300);
	TextDrawSetSelectable(INV_TORG, true);

/*	TextDrawCreate(430.148712, 214.661499, " ");  // синяя рубашка в инвентаре
	TextDrawLetterSize(INV_BLUE_CLOTH, 0.000000, 0.0);//по сути ничего не меняет но так было в хуке
	TextDrawTextSize(INV_BLUE_CLOTH, 20.000000, 31.000000);
	TextDrawFont(INV_BLUE_CLOTH, 5);
	TextDrawColor(INV_BLUE_CLOTH, -1);
	TextDrawBackgroundColor(INV_BLUE_CLOTH, 0);
	TextDrawSetPreviewModel(INV_BLUE_CLOTH, 1275);
	TextDrawSetPreviewRot(INV_BLUE_CLOTH, 0.0, 0.0,0.0, 0.981200);

	TextDrawCreate(401.148193,219.151901, " ");  // череп в инвентаре
	TextDrawLetterSize(INV_SKULL, 0.000000, 0.0);//по сути ничего не меняет но так было в хуке
	TextDrawTextSize(INV_SKULL, 16.000000, 16.000000);
	TextDrawFont(INV_SKULL, 5);
	TextDrawColor(INV_SKULL, -1);
	TextDrawBackgroundColor(INV_SKULL, 0);
	TextDrawSetPreviewModel(INV_SKULL, 1254);
	TextDrawSetPreviewRot(INV_SKULL, 0.0, 0.0,0.0, 0.981200);*/

    TextDrawCreate(382.449890, 316.777710, " ");  // рюкзак справа в инвентаре
	TextDrawLetterSize(INV_RIGHT_PACK, 0.0, 0.0);//по сути ничего не меняет но так было в хуке
	TextDrawTextSize(INV_RIGHT_PACK, 87.000000, 102.000000);
	TextDrawFont(INV_RIGHT_PACK, 5);
	TextDrawColor(INV_RIGHT_PACK, -1);
	TextDrawBackgroundColor(INV_RIGHT_PACK, 0);
	TextDrawSetPreviewModel(INV_RIGHT_PACK, 371);


	TextDrawCreate(399.949890, 219.0/*263.620911267.818298*/, " ");  // кпк (в виде ноутбука) справа в инвентаре
	TextDrawLetterSize(INV_KPK_MODEL_LAPTOP, 0.0, 0.0);//по сути ничего не меняет но так было в хуке
	TextDrawTextSize(INV_KPK_MODEL_LAPTOP, 20.000000, 31.000000);
	TextDrawFont(INV_KPK_MODEL_LAPTOP, 5);
	TextDrawColor(INV_KPK_MODEL_LAPTOP, -1);
	TextDrawSetSelectable(INV_KPK_MODEL_LAPTOP, true);
	TextDrawBackgroundColor(INV_KPK_MODEL_LAPTOP, 0x000000F1);
	TextDrawSetPreviewModel(INV_KPK_MODEL_LAPTOP, 19893);
	TextDrawSetPreviewRot(INV_KPK_MODEL_LAPTOP, 155.0, 180.0,0.0, 0.770100);
//	TextDrawSetPreviewRot(INV_RIGHT_PACK, 0.0, 0.0,0.0, 0.981200);

//	TextDrawSetProportional(INV_YELLOY_MENU, 1);
//	TextDrawSetShadow(INV_YELLOY_MENU, 0);


	TextDrawCreate(-1.0,-1.0,"LD_BUM:blkdot");
	TextDrawFont(DRAW_RED_SCREEN,4);
	TextDrawTextSize(DRAW_RED_SCREEN,641.0,450.0);
	TextDrawColor(DRAW_RED_SCREEN,0xFF32143C);

	TextDrawCreate(-1.0,-1.0,"particle:waterwake");
	TextDrawFont(DRAW_HOLOD,4);
	TextDrawTextSize(DRAW_HOLOD,655.0,451.0);
	TextDrawColor(DRAW_HOLOD,0xFFFFFF14);
   // for(new i;i<10;i++)
//	{
	//	mysor[i]=0;
//	}

	GangZoneCreate(91.0,1781.0,360.0,1948.0);// зз в бункере
	GangZoneCreate(-3000.0,-3000,3000.0,3000.0);// черная карта
//	printf("gang=%d blckkk=%d",gang,blckkk);

	//пикапы
	//ниже пикапы бункера


	SetTimer("pickups",100,0);
	SetTimer("labeltext",150,0);
    SetTimer("actores",200,0);
    SetTimer("mapicons",250,0);
 ///////////////////////////////////////////////////////////////




 /*
	FCNPC_Create("Ivanish");

	FCNPC_Spawn(1,290 , 242.932159,1856.489990,8.757813);

	SetPlayerFacingAngle(1,269.460266);
	new str[11],
		zombie_skins[]={77,78,79,135,213,239};



	for(new i;i<50;i++)
	{
	    format(str,11,"ZOMBIE_%d",i+1);
	    npc_id[i]=FCNPC_Create(str);
	    FCNPC_SetHealth(npc_id[i],100);
	    FCNPC_SetArmour(npc_id[i],0);
	    FCNPC_Spawn(npc_id[i], zombie_skins[random(sizeof(zombie_skins))], 0,0,15);
		SetPlayerColor(npc_id[i],0x80ff00FF);
		SetPlayerAttachedObject(npc_id[i], 1, 18698, 1);
	//	npc_zone[i]=CreateDynamicCircle(Float:x, Float:y, 25.0, 0,0);
//	}

*/

//гитара одно и тоже


/*
дубинка-SetPlayerAttachedObject(56,1, 334,1, 0.199999, -0.139999, 0.030000, 0.500007, -115.000000, 0.000000, 1.000000, 1.000000, 1.000000);

м4-SetPlayerAttachedObject(plaeyrid,5, 356,1, -0.143000, -0.120900, -0.069900, -179.889999, 3.590000, 3.000000, 1.000000, 1.000000, 1.000000);
////////////////////////////////////////////////////////////
скин игрока рокфелер (джинсы + коричневая кофта)
рюкзак
attac(9,371,1,-0.022000,-0.103000,0.000000,5.000000,90.089996,-3.990000,1.000000,1.000000,1.000000)////60

////////////////////////////////////////////////////////////
новичок

рюкзак
attac(9,371,1,0.089000,-0.063000,0.000000,4.990000,89.790001,-3.500000,0.710000,1.000000,0.670000)////2

////////////////////////////////////////////////////////////
S.W.A.T.
новогодняя шапка
attac(2,19065,2,0.134000,0.005000,0.002900,86.489998,92.199997,-5.800000,1.250000,1.210000,1.240000)////285

рюкзак
attac(9,371,1,-0.057000,-0.094000,-0.003000,0.000000,88.190002,-0.890000,1.160000,1.190000,1.040000)////285

////////////////////////////////////////////////////////////
элвис рюкзак
attac(9,371,1,0.002900,-0.098900,0.000000,6.690000,89.089996,0.700000,0.830000,1.000000,0.820000)////84

////////////////////////////////////////////////////////
шахтер гитара
attac(8,19317,1,0.064000,-0.111900,0.057900,-1.590000,75.089996,2.390000,0.710000,1.000000,0.690000)////16

шахтер рюкзак неизве
attac(9,371,1,0.002900,-0.098900,0.000000,6.690000,89.089996,0.700000,0.830000,1.000000,0.820000)////16

//-------------------------------------------------
рюкзак на полицейского неизвестный размер
attac(9,371,1,0.089000,-0.063000,0.000000,4.990000,89.790001,-3.500000,0.710000,1.000000,0.670000)////280

новогодняя шапка на полицейского
attac(2,19065,2,0.134000,0.005000,0.002900,86.489998,92.199997,-5.800000,1.250000,1.210000,1.240000)////280

рация на полицейского
attac(7,363,8,0.124900,0.078900,0.060000,90.000000,-87.589996,9.790000,0.330000,0.500000,0.470000)////280

////......CreateActor..CreateActor.-----------------------------------------------

рюкзак на военного тип неизвестен
attac(9,371,1,-0.057000,-0.094000,-0.003000,0.000000,88.190002,-0.890000,1.160000,1.190000,1.040000)////287

гитара военика
attac(8,19317,1,0.064000,-0.111900,0.057900,-1.590000,75.089996,2.390000,0.710000,1.000000,0.690000)////287

рация военика 363 рация
attac(7,363,8,0.124900,0.078900,0.060000,90.000000,-87.589996,9.790000,0.330000,0.500000,0.470000)////287

//узи военика 352 модель узи
attac(4,352,7,0.000000,-0.100000,-0.080000,-95.000000,-10.000000,0.000000,1.000000,1.000000,1.000000)////287

респик военика
attac(0,19472,18,0.120900,-0.013000,0.008000,86.690002,-17.990000,0.000000,1.000000,1.000000,1.000000)////287

броник военика
attac(1,19515,1,0.036000,0.045900,0.013000,0.000000,0.000000,0.000000,1.130000,1.270000,1.150000)////287

шлем военика
attac(6,19514,2,0.061900,0.039900,0.004900,0.000000,0.000000,26.389999,1.510000,1.230000,1.120000)////287

*/





	{
	    new Float:point_of_bynker[]=
		{
		    200.0,1874.1,
			238.0,1874.1,
			238.0,1181.0,
			333.0,1181.0,
		    333.0,1796.0,
		    200.0,1796.1
		};
		CreateDynamicPolygon(point_of_bynker,0.0,15.7);//бункер
	}
    CreateDynamicRectangle(209.2703,1872.4502 , 218.5275,1880.1680 );//ворота

    CreateDynamicSphere( 256.579102,1845.569946,8.895500,3.000000);//аренда комнаты

	CreateDynamicSphere( 308.557678,1830.822510,6.9768,1.000000);
	CreateDynamicSphere( 306.158386,1830.822510,6.9768,1.000000);//столы пошивки
	CreateDynamicSphere( 303.954315,1830.822510,6.9768,1.000000);

    CreateDynamicSphere( 308.809601,1833.592651,6.9768,1.000000);
    CreateDynamicSphere( 306.227112,1833.592651,6.9768,1.000000);//столы пошивки
    CreateDynamicSphere( 303.870514,1833.592651,6.9768,1.000000);

    CreateDynamicSphere( 308.736511,1835.484253,6.9768,1.000000);
    CreateDynamicSphere( 306.440491,1835.484253,6.9768,1.000000);//столы пошивки
    CreateDynamicSphere( 304.335999,1835.484253,6.9768,1.000000);

    CreateDynamicSphere( 316.494751,1834.342041,6.9768,2.000000);// готовая продукция на пошиве

    Streamer_SetVisibleItems(STREAMER_TYPE_OBJECT, 1000);

    {
     //   Streamer_ToggleItemCallbacks();
    	new types[STREAMER_MAX_TYPES] =
        {
                STREAMER_TYPE_OBJECT,
                STREAMER_TYPE_AREA,
                STREAMER_TYPE_3D_TEXT_LABEL,
                STREAMER_TYPE_PICKUP,
                STREAMER_TYPE_MAP_ICON,
                STREAMER_TYPE_ACTOR,
                STREAMER_TYPE_CP,
                STREAMER_TYPE_RACE_CP
        };
        Streamer_SetTypePriority(types);
	}
//	SetTimer("OXPAHA",17000,1);


	SetTimer("TimeUP",2500,0);//2.5 секунды

	SetTimer("podskazki",192000,0);//3 минуты 12 секунд

	SetTimer("info",349000,0);//5 минут 49 секунд
	SetTimer("SecondTimer",1000,0);

	
	printf("end OnGameModeInit");
	return 1;
}
forward mapicons();
public mapicons()
{
	/////////////////////////////////////////////////////////////////////////////

	CreateDynamicMapIcon(214.073792,1875.694458,12.119150, 31, 0, 0, 0);//зеленая иконка домика

	CreateDynamicMapIcon(-315.609985,829.820007,13.830000,6,0);//аммо фк
	CreateDynamicMapIcon(-217.699997,979.150024,19.150000,30,0);//police fk
	CreateDynamicMapIcon(-318.737610,1048.512207,20.051861,22,0);//больница фк
    CreateDynamicMapIcon(-145.789993,1173.739990,19.670000,45,0);//одежда фк
    CreateDynamicMapIcon(-53.900002,1188.890015,19.120001,29,0);//ресторан фк
    CreateDynamicMapIcon(-99.110001,1083.459961,19.430000,34,0);//radio fk
    CreateDynamicMapIcon(70.446220,1218.442383,17.812820,55,0);//заправка фк

    CreateDynamicMapIcon(-227.350006,2711.550049,62.700001,29,0);// ресторан на горе сверху от бункера
    CreateDynamicMapIcon(-736.987061,2746.067871,46.222099,55,0);//бензоправка на пути в дальний городок


    CreateDynamicMapIcon(-1271.339966,2713.290039,49.970001,14,0);//дальний городок магазин
    CreateDynamicMapIcon(-1327.560669,2677.431641,49.809299,55,0);//дальний городок заправка
    CreateDynamicMapIcon(-1390.089966,2638.560059,55.689999,30,0);//дальний городок police
    CreateDynamicMapIcon(-1508.949951,2610.229980,55.560001,6,0);//дальний городок аммо
    CreateDynamicMapIcon(-1514.716431,2519.642822,55.753170,22,0);//дальний городок больница



    CreateDynamicMapIcon(-1941.819946,2379.459961,49.430000,48,0);//дискотека за дальним городком

    CreateDynamicMapIcon(-2454.530029,2254.060059,4.800000,47,0);// молокозавод

    CreateDynamicMapIcon(-2665.034180,639.538879,14.261390,22,0);//болька сф
    CreateDynamicMapIcon(-2625.891602,208.968979,4.422340,6,0);//аммо сф

    CreateDynamicMapIcon(-2027.550537,157.428802,28.835899,55,0);//сф заправка напротив вокзала
    CreateDynamicMapIcon(-1679.459473,412.512909,6.997300,55,0);//сф заправка напротив морской военой базы


    CreateDynamicMapIcon(-1605.483765,711.284851,13.78795,30,0);//сф полицейский участок

    CreateDynamicMapIcon(-1694.737305,951.618103,24.556601,45,0);//сф одежда

	CreateDynamicMapIcon(-794.729980,1557.000000,26.860001,20,0);
	
	CreateDynamicMapIcon(242.188004,-178.389008,1.191000,6,0);//аммо справа от деревни
	
}
forward actores();
public actores()
{
	printf("FSDFSDFSDF");
	//скин 287 - военный
	CreateDynamicActor(287, 262.543213, 1807.255127, 34.436218,  216.545776,.worldid = 0, .interiorid=0 );//0 100.000000
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicActor(183, 248.539993, 1875.339966, 8.770000,  193.220001,.worldid = 0, .interiorid=0 );//1 100.000000
	ApplyDynamicActorAnimation(ACTR_bynker_a,"GANGS","prtial_gngtlkF",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicActor(2, 279.903229, 1860.278198, 9.434600,  0.000000,.worldid = 0, .interiorid=0 );//2 100.000000 ACTR_hospital_a
	ApplyDynamicActorAnimation(ACTR_hospital_a,"CRACK","crckdeth4",4.100000, 0, 1,1,1,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//военный на выходе из госпиталя
	CreateDynamicActor(287, 318.470001, 1855.339966, 7.700000,  48.779999,.worldid = 0, .interiorid=0 );//3 100.000000
	ApplyDynamicActorAnimation(ACTR_voen,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	CreateDynamicActor(125, 250.960007, 1862.150024, 8.750000,  334.549988,.worldid = 0, .interiorid=0 );//4 100.000000 ACTR_bynker_b
	ApplyDynamicActorAnimation(ACTR_bynker_b,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////

	CreateDynamicActor(29, 245.929993, 1846.489990, 8.760000,  84.760002,.worldid = 0, .interiorid=0 );//5 100.000000 ACTR_bynker_c
	ApplyDynamicActorAnimation(ACTR_bynker_c,"GANGS","prtial_gngtlkE",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//скин байкера (стоит и разговаривает слева от аренды комнат)
	CreateDynamicActor(248, 262.100006, 1852.619995, 8.760000,  90.000000,.worldid = 0, .interiorid=0 );//6 100.000000
	ApplyDynamicActorAnimation(ACTR_bynker_d,"GANGS","prtial_gngtlkH",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//раненый (леежит на койке согнувшись в калачик :D )
	CreateDynamicActor(261, 279.937805, 1855.269043, 9.434600,  4.741220,.worldid = 0, .interiorid=0 );//7 100.000000
	ApplyDynamicActorAnimation(ACTR_hospital_b,"CRACK","crckdeth4",4.100000, 0, 1,1,1,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	// медик в зеленой футболке
	CreateDynamicActor(276, 280.316742, 1872.572144, 8.691450,  319.113007,.worldid = 0, .interiorid=0 );//8 100.000000
	ApplyDynamicActorAnimation(ACTR_vrach_a,"GANGS","prtial_gngtlkF",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	// темнокожий медик в белой форме
	CreateDynamicActor(274, 272.396729, 1873.146851, 8.691450,  232.447052,.worldid = 0, .interiorid=0 );//9 100.000000
	ApplyDynamicActorAnimation(ACTR_vrach_b,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);
	//////////////////////////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////////////

	CreateDynamicActor(70, 265.597382, 1862.257935, 8.770510,  273.334076,.worldid = 0, .interiorid=0 );//10 100.000000
	CreateDynamicActor(250, 281.496765, 1873.418091, 8.691450,  141.904129,.worldid = 0, .interiorid=0 );//11 100.000000
	CreateDynamicActor(308, 273.721588, 1872.851563, 8.691450,  89.849113,.worldid = 0, .interiorid=0 );//12 100.000000
	CreateDynamicActor(112, 317.600006, 1855.969971, 7.640000,  231.690002,.worldid = 0, .interiorid=0 );//13 100.000000
	CreateDynamicActor(272, 260.459991, 1852.239990, 8.760000,  294.619995,.worldid = 0, .interiorid=0 );//14 100.000000
	CreateDynamicActor(127, 249.279999, 1874.079956, 8.770000,  57.560001,.worldid = 0, .interiorid=0 );//15 100.000000
	CreateDynamicActor(250, 248.089996, 1873.959961, 8.770000,  316.450012,.worldid = 0, .interiorid=0 );//16 100.000000
	CreateDynamicActor(24, 245.080002, 1846.680054, 8.780000,  291.079987,.worldid = 0, .interiorid=0 );//17 100.000000
	CreateDynamicActor(184, 250.520004, 1862.750000, 8.750000,  211.880005,.worldid = 0, .interiorid=0 );//18 100.000000
	CreateDynamicActor(101, 251.750000, 1862.500000, 8.750000,  147.990005,.worldid = 0, .interiorid=0 );//19 100.000000

	//спорзал

	CreateDynamicActor(203, 762.390747, -35.613621, 1000.713623,  215.693375,.worldid = 0, .interiorid=0 );//20 100.000000
	ApplyDynamicActorAnimation(ACTR_sportzal_a,"GANGS","prtial_gngtlkF",4.100000, 1, 1,1,0,0);

	CreateDynamicActor(80, 769.023804, -23.163919, 1001.619507,  303.370911,.worldid = 0, .interiorid=0 );//21 100.000000
	ApplyDynamicActorAnimation(ACTR_sportzal_b,"GANGS","prtial_gngtlkG",4.100000, 1, 1,1,0,0);

	CreateDynamicActor(49, 773.588440, -32.568298, 1000.713562,  134.629730,.worldid = 0, .interiorid=0 );//22 100.000000 сенсей
	CreateDynamicActor(81, 763.169922, -19.156401, 1000.713196,  180.000000,.worldid = 0, .interiorid=0 );//23 100.000000
	CreateDynamicActor(204, 762.911438, -36.742779, 1000.713623,  20.178070,.worldid = 0, .interiorid=0 );//24 100.000000
	CreateDynamicActor(80, 769.859619, -22.221300, 1001.619507,  131.893280,.worldid = 0, .interiorid=0 );//25 100.000000

	//спортзал сверху


	CreateDynamicActor(80, 254.753296, 1830.826538, 4.728300,  35.378361,.worldid = 0, .interiorid=0 );//26 100.000000
	ApplyDynamicActorAnimation(ACTR_sportzal_c,"GANGS","prtial_gngtlkH",4.100000, 1, 1,1,0,0);

	CreateDynamicActor(203, 254.408234, 1831.604004, 4.728300,  218.374466,.worldid = 0, .interiorid=0 );//27 100.000000

	CreateDynamicActor(287, 290.365234, 1814.062256, 4.832580,  45.000000,.worldid = 0, .interiorid=0 );//64 100.000000
	CreateDynamicActor(287, 255.449707, 1813.867310, 5.088100,  335.598114,.worldid = 0, .interiorid=0 );//65 100.000000
	CreateDynamicActor(287, 126.037102, 1865.240234, 18.135401,  301.762085,.worldid = 0, .interiorid=0 );//66 100.000000
	CreateDynamicActor(287, 162.519867, 1846.056763, 20.679600,  123.460190,.worldid = 0, .interiorid=0 );//67 100.000000
	CreateDynamicActor(287, 230.149200, 1931.198608, 28.119499,  167.832794,.worldid = 0, .interiorid=0 );//68 100.000000
	CreateDynamicActor(1, 286.985413, 1831.777344, 8.731000,  250.417694,.worldid = 0, .interiorid=0 );//69 100.000000
	CreateDynamicActor(287, 291.503815, 1826.128052, 8.344200,  229.372253,.worldid = 0, .interiorid=0 );//70 100.000000
	CreateDynamicActor(50, 150.247192, 1824.905884, 18.199301,  330.191406,.worldid = 0, .interiorid=0 );//78 100.000000
	CreateDynamicActor(242, 241.699371, 1837.195068, 5.152140,  224.568497,.worldid = 0, .interiorid=0 );//79 100.000000

	//CreateDynamicActor(255, 239.934494, 1846.936279, 8.886800,  274.051300);//92 100.000000 проводник - нафиг не нужен

	//магазин одежды в бункере
	CreateDynamicActor(3, 316.916504, 2053.787109, 895.696106,  180.000000,.worldid = 0, .interiorid=0 );//28 продавес одежды

	//актеры для мужчин (магазин одежды в бункере)
	CreateDynamicActor(287, 317.434509, 2056.488037, 896.600830,  180.000000);//29 100.000000
	CreateDynamicActor(285, 315.359192, 2056.460938, 896.600830,  180.000000);//30 100.000000
	CreateDynamicActor(248, 319.436188, 2056.437500, 896.600830,  180.000000);//31 100.000000
	CreateDynamicActor(125, 321.943115, 2053.383545, 896.600830,  90.000000);//32 100.000000
	CreateDynamicActor(112, 321.943115, 2049.846680, 896.600830,  90.000000);//33 100.000000
	CreateDynamicActor(111, 321.958008, 2045.808716, 896.600830,  90.000000);//34 100.000000
	CreateDynamicActor(29, 313.186310, 2049.846680, 896.600830,  -90.000000);//35 100.000000
	CreateDynamicActor(60, 321.943115, 2038.197998, 896.600830,  90.000000);//36 100.000000
	CreateDynamicActor(115, 321.943115, 2034.770752, 896.600830,  90.000000);//37 100.000000
	CreateDynamicActor(120, 321.943115, 2042.021851, 896.600830,  90.000000);//38 100.000000
	CreateDynamicActor(123, 321.943115, 2030.992065, 896.600830,  90.000000);//39 100.000000
	CreateDynamicActor(186, 313.042847, 2030.992065, 896.600830,  -90.000000);//40 100.000000
	CreateDynamicActor(183, 313.108795, 2034.770752, 896.600830,  -90.000000);//41 100.000000
	CreateDynamicActor(126, 313.144531, 2038.197998, 896.600830,  -90.000000);//42 100.000000
	CreateDynamicActor(104, 313.185425, 2042.021851, 896.600830,  -90.000000);//43 100.000000
	CreateDynamicActor(101, 313.178925, 2053.383545, 896.600830,  -90.000000);//44 100.000000
	CreateDynamicActor(113, 313.144226, 2045.808716, 896.600830,  -90.000000);//45 100.000000

	//выше актеры для мужчин (магазин одежды в бункере)
	////////////////////////////////////////////////////////////////////////////////////////////
	//актеры для женчин (магазин одежды в бункере)
	CreateDynamicActor(3, 316.916504, 2053.787109, 895.696106,  180.000000);//46 100.000000
	CreateDynamicActor(191, 317.434509, 2056.488037, 896.600830,  180.000000);//47 100.000000
	CreateDynamicActor(285, 315.359192, 2056.460938, 896.600830,  180.000000);//48 100.000000
	CreateDynamicActor(192, 319.436188, 2056.437500, 896.600830,  180.000000);//49 100.000000
	CreateDynamicActor(93, 321.943115, 2053.383545, 896.600830,  90.000000);//50 100.000000
	CreateDynamicActor(76, 321.943115, 2049.846680, 896.600830,  90.000000);//51 100.000000
	CreateDynamicActor(151, 321.958008, 2045.808716, 896.600830,  90.000000);//52 100.000000
	CreateDynamicActor(190, 313.186310, 2049.846680, 896.600830,  -90.000000);//53 100.000000
	CreateDynamicActor(233, 321.943115, 2038.197998, 896.600830,  90.000000);//54 100.000000
	CreateDynamicActor(65, 321.943115, 2034.770752, 896.600830,  90.000000);//55 100.000000
	CreateDynamicActor(172, 321.943115, 2042.021851, 896.600830,  90.000000);//56 100.000000
	CreateDynamicActor(169, 321.943115, 2030.992065, 896.600830,  90.000000);//57 100.000000
	CreateDynamicActor(194, 313.042847, 2030.992065, 896.600830,  -90.000000);//58 100.000000
	CreateDynamicActor(131, 313.108795, 2034.770752, 896.600830,  -90.000000);//59 100.000000
	CreateDynamicActor(198, 313.144531, 2038.197998, 896.600830,  -90.000000);//60 100.000000
	CreateDynamicActor(55, 313.185425, 2042.021851, 896.600830,  -90.000000);//61 100.000000
	CreateDynamicActor(211, 313.178925, 2053.383545, 896.600830,  -90.000000);//62 100.000000
	CreateDynamicActor(11, 313.144226, 2045.808716, 896.600830,  -90.000000);//63 100.000000
//выше актеры для женчин (магазин одежды в бункере)
}
forward labeltext();
public labeltext()
{
	CreateDynamic3DTextLabel("{CC0000}ИВАНЫЧ\n\
{00FF00}Нажмите {FF0000}F\n\
{00FF00}чтобы посмотреть меню",-65366,244.490005,1856.699951,8.310000,20.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,0);

	CreateDynamic3DTextLabel("{CC0000}Мусорка\n\
{00FF00}тут можно выбросить лут\n\
{00FF00}или покопаться в мусоре: {FF0000}Alt",-65366,255.368195,1842.661499,8.568430,20.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{CC0000}СПОРТЗАЛ",-65366,255.528381,1834.383667,4.217800,25.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{CC0000}БУКМЕКЕР\n\
{0080FF}Мотогонки\n\
{00FF00}Нажмите {FF0000}F ",-65366,241.699371,1837.195068,5.152140,25.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{CC0000}ПОРТНОЙ\n\
{009B00}Тут можно купить крутую одежду\n\
{009B00}или заработать респиратор",-65366,287.566772,1813.401245,4.519990,20.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{CC0000}МАСТЕР\n\
{009B00}Тут можно изготовить оружие\n\
{009B00}или взять задание",-65366,293.367035,1825.987305,7.533810,20.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{CC0000}Мастер\n\
{00FF00}Нажмите {FF0000}F\n\
{00FF00}чтобы посмотреть меню",-65366,289.565369,1831.734253,7.139110,20.000000,INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{00FF00}Нажмите {FF0000}F\n\
 {00FF00}чтобы поговорить с Сансеем",-65366,773.588440,-32.568298,1000.713562,20.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,0);


 	CreateDynamic3DTextLabel("{00FF00}Нажмите {FF0000}F\n\
 {00FF00}чтобы поговорить с Тренером",-65366,763.169922,-19.156401,1000.713196,20.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,0);

	CreateDynamic3DTextLabel("{CC0000}Готовая продукция",-65366,316.494751,1834.342041,6.581740,10.000000, INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{CC0000}ЛИФТ",-65366,200.571869,1869.500854,12.782000,20.000000,INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{00FF00}Нажмите {FF0000}F\n\
 {00FF00}чтобы поговорить со Стрелком",-65366,74.580803,1969.253174,823.367554,20.000000,INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,0);

    CreateDynamic3DTextLabel("{FFFFFF}Нажмите {FF0000}ALT\n\
 {FFFFFF}чтобы поговорить с Шрамом",-65366,190.859177,1821.470581,1217.362915,35.000000,INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,0);

 	CreateDynamic3DTextLabel("{FFFFFF}Нажмите {FF0000}ALT\n\
 {FFFFFF}чтобы поговорить с Механиком",-65366,150.247192,1824.905884,18.199301,35.000000,INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,0);

	CreateDynamic3DTextLabel("{CC0000}ГОСПИТАЛЬ\n\
{00D7D7}нажмите {00A800}F\n\
{00D7D7}для разговора с врачом",-65366,267.749176,1862.402832,8.162060,15.000000,INVALID_PLAYER_ID,  INVALID_VEHICLE_ID,1);

	CreateDynamic3DTextLabel("{00FF00}Нажмите {FF0000}F\n\
	 {00FF00}для покупки одежды",-65366,316.925537,2052.035156,894.932556,20.000000);

	CreateDynamic3DTextLabel("ТОПОВЫЙ ШМОТ\n\
	{FF702B}Модель {FF0000}№ 1.\n\
	{00AE00}Одежда военного.\n\
	{FF702B}Тепло: {FF0000}Хорошее!\n\
	{FF702B}Защита от вирусов: {FF0000}до 3!\n\
	{FF702B}Цена: {FF0000}20 000 $",-16777046,317.434509,2056.488037,896.600830,30.000000);

	CreateDynamic3DTextLabel("ТОПОВЫЙ ШМОТ\n\
	{FF702B}Модель {FF0000}№ 2.\n\
	{00AE00}Одежда спецназа.\n\
	{FF702B}Тепло: {FF0000}Хорошее!\n\
	{FF702B}Защита от вирусов: {FF0000}до 3!\n\
	{FF702B}Цена: {FF0000}20 000 $",-16777046,315.359192,2056.460938,896.600830,30.000000);

	CreateDynamic3DTextLabel("ТОПОВЫЙ ШМОТ\n\
	{FF702B}Модель {FF0000}№ 3.\n\
	{00AE00}Одежда байкера.\n\
	{FF702B}Тепло: {FF0000}Хорошее!\n\
	{FF702B}Защита от вирусов: {FF0000}до 3!\n\
	{FF702B}Цена: {FF0000}20 000 $",-16777046,319.436188,2056.437500,896.600830,30.000000);

	CreateDynamic3DTextLabel("ТОПОВЫЙ ШМОТ\n\
	{FF702B}Модель {FF0000}№ 4.\n\
	{00AE00}Одежда бандита.\n\
	{FF702B}Тепло: {FF0000}Хорошее!\n\
	{FF702B}Защита от вирусов: {FF0000}до 3!\n\
	{FF702B}Цена: {FF0000}20 000 $",-16777046,321.943115,2053.383545,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 5.\n\
	{00AE00}Одежда бандита-2.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,321.943115,2049.846680,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 6.\n\
	{00AE00}Одежда здоровяка.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,321.958008,2045.808716,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 7.\n\
	{00AE00}Одежда барыги.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,313.186310,2049.846680,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 8.\n\
	{00AE00}Одежда гражданская-2.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,321.943115,2038.197998,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 9.\n\
	{00AE00}Одежда рэпера.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,321.943115,2034.770752,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 10.\n\
	{00AE00}Одежда костюм.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,321.943115,2042.021851,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 11.\n\
	{00AE00}Одежда восточная.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,321.943115,2030.992065,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 12.\n\
	{00AE00}Одежда костюм-2.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,313.042847,2030.992065,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 13.\n\
	{00AE00}Одежда хиппи.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,313.108795,2034.770752,896.600830,30.000000);

	CreateDynamic3DTextLabel("ТОПОВЫЙ ШМОТ\n\
	{FF702B}Модель {FF0000}№ 14.\n\
	{00AE00}Одежда гражданская-3.\n\
	{FF702B}Тепло: {FF0000}Хорошее!\n\
	{FF702B}Защита от вирусов: {FF0000}до 3!\n\
	{FF702B}Цена: {FF0000}20 000 $",-16777046,313.178925,2053.383545,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 15.\n\
	{00AE00}Одежда костюм-3.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,313.144226,2045.808716,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 16.\n\
	{00AE00}Одежда рэпера-2.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,313.185425,2042.021851,896.600830,30.000000);

	CreateDynamic3DTextLabel("{FF702B}Модель {FF0000}№ 17.\n\
	{00AE00}Одежда бандита-3.\n\
	{FF702B}Тепло: {FF0000}Среднее\n\
	{FF702B}Цена: {FF0000}200 $",-16777046,313.144531,2038.197998,896.600830,30.000000);


	CreateDynamic3DTextLabel("{CC0000}ХРАМ\n\
{00FF00}тут можно помолиться\n\
{00FF00}нажмите {FF0000}ALT" ,0xFFFF00AA,370.029999,2390.199951,1890.359985, 20.000000);
}
forward pickups();
public pickups()
{
	CreateDynamicPickup(19523,2,256.579102,1845.569946,8.895500);//вход в свою комнату  1
	
	CreateDynamicPickup(19523,23,235.218933,1886.997559,817.612366);//выход из комнаты  2

	CreateDynamicPickup(19804,2,226.668259,1890.632202,817.423828);//сейф в комнате 3

	CreateDynamicPickup(1318,23,293.367035,1825.987305,7.563810);// master  4

	CreateDynamicPickup(1318,23,293.294037,1827.895386,7.833810); //exit master 5

	CreateDynamicPickup(1318,23,255.528381,1834.383667,4.417800); //sportzal    6

	CreateDynamicPickup(1318,23,200.571869,1869.500854,12.782000); //lift naemnik,strelbishe    7

	CreateDynamicPickup(1318,23,287.566772,1813.401245,4.519990);// пошив одежды новичкам + магазин 8

	CreateDynamicPickup(1318,23,304.064636,1826.981323,6.682030);//fabrica exit 9

	CreateDynamicPickup(19134,2,315.285492,1828.477905,6.920700); //  10

	CreateDynamicPickup(19134,2,317.244110,1828.477905,6.920700);// 11

	CreateDynamicPickup(19134,2,319.345612,1828.477905,6.920700);//12

	CreateDynamicPickup(19134,2,321.361206,1828.477905,6.920700);//13

	CreateDynamicPickup(1318,23,193.515503,1825.759644,1217.303589);//shop_exit 14

	CreateDynamicPickup(1318,23,763.075378,-50.564400,1000.150330);//exit sportzl 15

	CreateDynamicPickup(1318,23,72.594299,1954.125122,823.104370);//strelbiwe_exit  16

	CreateDynamicPickup(1318,23,193.515503,1825.759644,1217.303589);//shram_exit 17
	//выше пикапы бункера

	//ниже форт карсон - деревня под бункером
	CreateDynamicPickup(1318,23,-217.699997,979.150024,19.150000);//полиция фк
	CreateDynamicPickup(1318,23,-315.609985,829.820007,13.830000);//аммо фк
	CreateDynamicPickup(1318,23,-318.737610,1048.512207,20.051861);// больница фк
	CreateDynamicPickup(1318,23,-99.110001,1083.459961,19.430000);//радио фк
	CreateDynamicPickup(1318,23,-145.789993,1173.739990,19.670000);// магазин одежды фк
	CreateDynamicPickup(1318,23,-53.900002,1188.890015,19.120001);// ресторан фк
	CreateDynamicPickup(1318,23,-19.099581,1175.855713,19.262100);// магазин праздник (там можно найти валентинку)
	CreateDynamicPickup(19130,23,-301.738800,1219.271973,20.395300);// вход в канализацию фк

	CreateDynamicPickup(1318,23,-227.350006,2711.550049,62.700001);//вход в закусочную на горе
	CreateDynamicPickup(1318,23,377.119995,-193.169998,1000.340027);//выход из закусочной на горе



	CreateDynamicPickup(19130,23,-1453.497803,2536.114502,56.395000);//дальний городок каналиация
	CreateDynamicPickup(1318,23,-1390.089966,2638.560059,55.689999);//дальний городок полиция
	CreateDynamicPickup(1318,23,-1508.949951,2610.229980,55.560001);// дальний городок аммо
	CreateDynamicPickup(1318,23,-1514.716431,2519.642822,55.753170);//дальний городок больница


	CreateDynamicPickup(1318,23,-1941.819946,2379.459961,49.430000);//дискотека вход
	CreateDynamicPickup(1318,23,493.369995,-24.790001,1000.309998);//дискотека выход

	CreateDynamicPickup(1318,23,-2454.530029,2254.060059,4.800000);//молокозавод
	CreateDynamicPickup(1318,23,-2437.489990,2294.830078,841.369995);//выход из молокозавода


	CreateDynamicPickup(1318,23,-2665.034180,639.538879,14.261390);//больница сф
	CreateDynamicPickup(1318,23,379.226715,163.187775,1019.678284);//больница сф выход
	//|
	CreateDynamicPickup(1318,23,-2625.891602,208.968979,4.422340);//аммо sf
	//|
	CreateDynamicPickup(19130,23,-1960.027344,486.967377,31.707899);//метро сф вход
	CreateDynamicPickup(19134,23,2565.936279,-426.979401,797.525635);//метро сф вход
	//|
	CreateDynamicPickup(1318,23,-2026.650024,67.139999,28.580000);//пожарное отделение сф
	CreateDynamicPickup(1318,23,-1932.810059,377.290009,993.859985);//пожарное отделение сф
	//|
	CreateDynamicPickup(1318,23,-1605.483765,711.284851,13.787950);// полиция сф

	//|
	CreateDynamicPickup(1318,23,-1694.737305,951.618103,24.556601);//магазин одежды сф
	
	CreateDynamicPickup(1318,23,-794.729980,1557.000000,26.860001);//храм вход с улицы
	CreateDynamicPickup(1318,23,390.630005,2390.409912,1889.209961);//храм выход
}

#define AttachPack_9 9

#define BONE_Left_Hand_5 5
#define BONE_Spina_1 1

stock SetPlayerPack(playerid,packid)
{
    RemovePlayerAttachedObject(playerid, AttachPack_9);
	pInfo[playerid][pack]=packid;
	AttachPackToSpine(playerid,packid);

	new str_kolvo[7];
	format(str_kolvo,7,"%d/%d",pInfo[playerid][slot],packid*10);
	PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][21],str_kolvo);
}

AttachPackToSpine(playerid,packid)
{
	if(packid==1)//на 10 слотов
	{
	    SetPlayerAttachedObject(playerid,AttachPack_9, 371,BONE_Spina_1, 0.089000, -0.063000, 0.000000, 4.990000, 89.790001, -3.500000, 0.710000, 1.000000,0.670000);////2
	}
	else if(packid==2)//на 20 слотов
	{
	    SetPlayerAttachedObject(playerid,AttachPack_9, 371,BONE_Spina_1, 0.002900, -0.098900, 0.000000, 6.690000, 89.089996, 0.700000, 0.830000, 1.000000, 0.820000);//183
	}
	else if(packid==3)//на 30 слотов
	{
	    SetPlayerAttachedObject(playerid,AttachPack_9, 371,BONE_Spina_1, -0.022000, -0.103000, 0.000000, 5.000000, 90.089996, -3.990000, 1.000000, 1.000000, 1.000000);//93
	}
	else if(packid==4)//на 40 слотов
	{
	    SetPlayerAttachedObject(playerid,AttachPack_9, 371,BONE_Spina_1, -0.057000, -0.094000, -0.003000, 0.000000, 88.190002, -0.890000, 1.160000, 1.190000, 1.040000);//211
	}
	else if(packid==5)//на 50 слотов
	{
	    SetPlayerAttachedObject(playerid,AttachPack_9, 371,BONE_Spina_1, -0.042000, -0.122900, -0.009000, 1.000000, 89.000000, 2.390000, 1.380000, 1.150000, 1.310000);//192
	}
}

#define BONE_JAW_18 18
#define AttachRespik_0 0
stock AttachResp(playerid)
{
	if(IsPlayerInDynamicArea(playerid,AREA_BUNKER)==0)
	{
	    RemovePlayerAttachedObject(playerid, AttachPack_9);

	    new skinid=GetSkin(playerid);//getskin - это #define pInfo[playerid][skin]

		if(skinid==2)//ид скина новичка мужкского пола
		{
		    SetPlayerAttachedObject(playerid, 0, 19472,18, 0.099900, -0.012000, 0.002900, 90.290001, -4.890000, 3.400000, 0.920000, 1.100000, 1.210000);//2
		}
		else if(skinid==24)//темнокожий в джинсах и синей куртке
		{
		    SetPlayerAttachedObject(playerid, 0, 19472,18, 0.102000, -0.028000, 0.003000, 87.190002, -13.700000, 2.490000, 0.870000, 1.000000, 1.000000);
		}
		else if(skinid==41)//новичок женский
		{
		    SetPlayerAttachedObject(20,0, 19472,18, 0.089000, -0.030900, 0.006000, -84.000000, -168.190002, -178.600006, 0.880000, 1.170000, 1.000000);
		}
		else if(skinid==104)//оджеда балласа с черными очками
		{
		    SetPlayerAttachedObject(playerid, 0, 19472,18, 0.130900, -0.045000, -0.008000, 84.000000, -35.990002, -3.700000, 1.000000, 1.000000, 1.000000);
		}
		else if(skinid==125)//топовая одежда бандита
		{
			SetPlayerAttachedObject(playerid, 0, 19472,18, 0.092000, -0.020000, 0.001900, 92.500000, -12.990000, 2.100000, 0.760000, 1.060000, 1.200000);//125
		}
		else if(skinid==172)//женский
		{
		    SetPlayerAttachedObject(29, 0, 19472,18, 0.102900, -0.025000, -0.005000, 82.889999, -23.190001, -2.500000, 1.000000, 1.000000, 1.000000);//172
		}
		else if(skinid==211)// женский - гражданского 3
		{
	        SetPlayerAttachedObject(playerid, 0, 19472,18, 0.092900, -0.034000, -0.002900, -91.790001, -156.800003, 177.100006, 1.000000, 1.000000, 1.000000);//211
		}
		else if(skinid==248)// топ скин байкера
		{
	        SetPlayerAttachedObject(playerid, 0, 19472,18, 0.122900, -0.027000, 0.002000, 90.099998, -26.799999, 2.490000, 1.040000, 1.270000, 1.500000);//248
		}
		else if(skinid==252)//мужской голый скин трусы в сердечко
		{
	        SetPlayerAttachedObject(playerid, 0, 19472,18, 0.092900, -0.037900, 0.004000, 87.690002, -17.900000, 1.190000, 1.000000, 1.140000, 1.040000);
		}
		else if(skinid==271)//райдер в кепке
		{
		    SetPlayerAttachedObject(playerid, 0, 19472,18, 0.105900, -0.046900, -0.001000, 90.199997, -29.290001, -0.800000, 1.000000, 1.000000, 1.000000);
		}
		else if(skinid==277)// пожарник светлокожий
		{
	        SetPlayerAttachedObject(playerid, 0, 19472,18, 0.127900, -0.035900, -0.002000, 87.599998, -22.400000, -4.400000, 1.030000, 1.110000, 1.080000);//277
		}
		else if(skinid==285)//скин спецназовца - вроде как у обоих полов
		{
	        SetPlayerAttachedObject(playerid, 0, 19472,18, 0.117000, -0.048000, 0.010900, 82.599998, -32.290001, 10.000000, 1.000000, 0.920000, 1.000000);//285
		}
		else if(skinid==294)//вузи
		{
		    SetPlayerAttachedObject(playerid, 0, 19472,18, 0.104900, -0.026000, 0.002900, 89.389999, -19.799999, -1.500000, 1.000000, 1.000000, 1.000000);//294
		}
		else if(skinid==299)//скин клода
		{
	        SetPlayerAttachedObject(playerid, 0, 19472,18, 0.102000, -0.057900, 0.004900, 92.889999, -31.299999, 1.600000, 1.000000, 1.000000, 1.000000);
		}
		// ДОГАДКА

		//докадки выше
    }
}

public OnVehicleStreamIn(vehicleid, forplayerid)
{
	Iter_Add(VehiclesNearPlayer[forplayerid],vehicleid);
    return 1;
}
public OnVehicleStreamOut(vehicleid, forplayerid)
{
	Iter_Remove(VehiclesNearPlayer[forplayerid],vehicleid);
    return 1;
}

/*
public Streamer_OnItemStreamIn(type, id, forplayerid)
{
	if(type==STREAMER_TYPE_3D_TEXT_LABEL)
	{
	
	}
}

public Streamer_OnItemStreamOut(type, id, forplayerid)
{
	if(type==STREAMER_TYPE_3D_TEXT_LABEL)
	{

	}
}*/
stock SetPlayerFacingPos(playerid, Float:x, Float:y)
{
    new Float:ax, Float:ay, Float:az;
    GetPlayerPos(playerid, ax, ay, az);
    SetPlayerFacingAngle(playerid, atan2(y-ay, x-ax)-90.00);
}
stock PrintGreenInRadius(const message[],Float:x,Float:y,Float:z)
{
	foreach(Player,i)
	{
	    if(IsPlayerInRangeOfPoint(i,30.0,x,y,z))
	    {
	        SendClientMessage(i,7930026,message);
	    }
	}
}
KickPlayerVehicle(playerid,vehicleid)
{
	new Float:vs,Float:vy,Float:vz;
	GetVehiclePos(vehicleid,vs,vy,vz);
	SetPlayerPos(playerid,vs+0.5,vy,vz+1.0);
}
stock UpdateImmynitet(playerid)
{
	new str_immy[8];
	format(str_immy,8,"~g~%d",pInfo[playerid][immynitet]);
    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][13],str_immy);
}
stock UpdateTemp(playerid)
{
	new str_temper[8];
	format(str_temper,8,"~g~%d",pInfo[playerid][temperatura]);
    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][16],str_temper);
}
stock UpdateWater(playerid)
{
	new str_voda[8];
	format(str_voda,8,"~g~%d",pInfo[playerid][voda]);
	PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][15],str_voda);
	
	if(pInfo[playerid][voda]>69)
	{
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][5],0xFFFFFFAA);
	}
	else if (pInfo[playerid][voda]>29)
	{
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][5],0xFFFF00AA);
	}
	else if (pInfo[playerid][voda]>=0)
	{
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][5],0xFF0000AA);
	}
	PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][5]);
}
stock UpdateGolod(playerid)
{
	new str_golod[8];
	format(str_golod,8,"~g~%d",pInfo[playerid][golod]);
	PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][14],str_golod);

	if(pInfo[playerid][golod]>69)
	{
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][6],0xFFFFFFAA);
	}
	else if (pInfo[playerid][golod]>29)
	{
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][6],0xFFFF00AA);
	}
	else if (pInfo[playerid][golod]>=0)
	{
	    PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][6],0xFF0000AA);
	}
	PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][6]);
}
stock SwitchDrawDownVirus(playerid)
{
	if(pInfo[playerid][preVirus]==1)
	{
		PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][2],0xFFFF00AA);
		PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][2]);
	}
}
stock SwitchDrawInRainOrWater(playerid)
{
	PlayerTextDrawColor(i,PLAYER_DRAWS[i][2],0xFFFFFFAA);
	PlayerTextDrawShow(i,PLAYER_DRAWS[i][2]);
}

stock GetRandom(value)
{
	if(random(100)<value)return 0;
	return 1;
}
new preGolod,
	preWater,
	preKrovotech,
	preYstalost;
forward SecondTimer();
public SecondTimer()
{
    preGolod++;
    preWater++;
    preKrovotech++;
    preYstalost++;
    
    foreach(Player, i)
	{
		if(pInfo[i][afktime]<3)//==0)
		{
		
		    
		    if(pInfo[i][Virus]==0)
		    {
		        if(pInfo[i][preVirus]>0)
		        {
		        	PlayerTextDrawColor(i,PLAYER_DRAWS[i][2],0x000000AA);
		        	PlayerTextDrawShow(i,PLAYER_DRAWS[i][2]);
		        	pInfo[i][preVirus]=0;
				}
		    }
			if(pInfo[i][Virus]==1)
			{
			    pInfo[i][preVirus]++;
			    SwitchDrawDownVirus(i);
			    if(pInfo[i][preVirus]==11)// за 11 секунд
			    {
			        if(pInfo[i][immynitet]>0)
			        {
			        	pInfo[i][immynitet]--;
			        	UpdateImmynitet(i);
					}
                    
                    pInfo[i][preVirus]=0;
			    }
			}
			else if(pInfo[i][Virus]==2)
			{
			    pInfo[i][preVirus]++;
			    SwitchDrawDownVirus(i);
			    if(pInfo[i][preVirus]==6)// за 6 секунд
			    {
					if(pInfo[i][immynitet]>0)
			        {
			        	pInfo[i][immynitet]--;
						UpdateImmynitet(i);
					}
                    
                    pInfo[i][preVirus]=0;
			    }
			}
			else if(pInfo[i][Virus]==3)
			{
			    pInfo[i][preVirus]++;
			    SwitchDrawDownVirus(i);
			    if(pInfo[i][preVirus]==3)// за 3 секунды
			    {
			        if(pInfo[i][immynitet]>0)
			        {
			        	pInfo[i][immynitet]--;
			        	UpdateImmynitet(i);
					}
                    pInfo[i][preVirus]=0;
			    }
			}
			else if(pInfo[i][Virus]==5)
			{
			}
			else if(pInfo[i][Virus]==7)
			{
			}
			else if(pInfo[i][Virus]==10)//буря
			{
			
			}
			
/////////////////////////////////////////////////////////////////////////////////////

			if(pInfo[i][Temp]<-4)//ночь
			{
			    if(pInfo[i][temperatura]>0)
			    {
			    	pInfo[i][temperatura]--;
			    	UpdateTemp(i);
			    }
				
			    
				if(pInfo[i][Temp]<-7)//-8 дождь , если игрок в трусах(обосанной одежде то дождь может давать -10)
				{
					if(pInfo[i][temperatura]<70)//если идет дождь и темпло игрока меньше 70 то
					{
					    if(GetRandom(70)==1)
					    {
							//заболеть
					    }
					}
				}
   //	pInfo[i][preVirus]
//	pInfo[i][preTemp]
			}
			else if(pInfo[i][Temp]==-3)//дождь
			{

			}
			else if(pInfo[i][Temp]==0)//ночь
			{
                pInfo[i][preTemp]++;
                if(pInfo[i][preTemp]==10)
                {
				    if(pInfo[i][temperatura]>0)
				    {
				    	pInfo[i][temperatura]--;
				    	UpdateTemp(i);
				    }
					pInfo[i][preTemp]=0;
				    
                }
			}
			else if(pInfo[i][Temp]==5)//дождь
			{
                pInfo[i][preTemp]++;
                if(pInfo[i][preTemp]==11)
                {
                    
					if(pInfo[i][temperatura]>0)
				    {
				    	pInfo[i][temperatura]--;
				    	UpdateTemp(i);
				    }
				    pInfo[i][preTemp]=0;
					
                }
			}
			else if(pInfo[i][Temp]>17)//костер ночью: 18 в бункере температура: 20
			{
				if(pInfo[i][temperatura]<100)
				{
				    pInfo[i][temperatura]++;
				    UpdateTemp(i);
				}
			}
			////////////////////////////////////////////////////////////////////
		    if(preGolod==53)
		    {
		        if(pInfo[i][golod]>0)
		        {
	                pInfo[i][golod]--;
					UpdateGolod(i);
				}
		    }
		    if(preWater==27)
		    {
		        if(pInfo[i][voda]>0)
		        {
			        pInfo[i][voda]--;
					UpdateWater(i);
				}
		        
		    }
		    if(pInfo[i][krov]==true&&preKrovotech==98)
		    {
		        new Float:heal;
		        GetPlayerHealth(i,heal);
				SetPlayerHealth(i,heal-6);
		    }
		    if(preYstalost==110)
			{
			    if(pInfo[i][son]>0)
			    {
			     //   new pson=pInfo[i][son]-1;
			       // if(pson>69)
			        pInfo[i][son]--;
					new str_ystl[8];
					format(str_ystl,8,"~g~%d",pInfo[i][son]);
				    PlayerTextDrawSetString(i,PLAYER_DRAWS[i][17],str_ystl);
				    
                    if(pInfo[i][son]>69)
					{
						   PlayerTextDrawColor(i,PLAYER_DRAWS[i][9],0xFFFFFFAA);
					}
					else if (pInfo[i][son]>29)
					{
					    PlayerTextDrawColor(i,PLAYER_DRAWS[i][9],0xFFFF00AA);
					}
					else if (pInfo[i][son]>=0)
					{
					    PlayerTextDrawColor(i,PLAYER_DRAWS[i][9],0xFF0000AA);
					}
					PlayerTextDrawShow(i,PLAYER_DRAWS[i][9]);
				    
			    }
			}
			if(pInfo[i][temperatura]<=49&&pInfo[i][effect]!=0)
			{
			    new tempa=pInfo[i][temperatura];
			    
			    if(tempa>=45)
			    {
			        TextDrawColor(DRAW_HOLOD,0xFFFFFF14);
			    }
			    else if(tempa>=40)
			    {
			        TextDrawColor(DRAW_HOLOD,0xFFFFFF1E);
			    }
			    else if(tempa>=35)
			    {
			        TextDrawColor(DRAW_HOLOD,0xFFFFFF32);
			    }
			    else if(tempa>=30)
			    {
			        TextDrawColor(DRAW_HOLOD,0xFFFFFF3C);
			    }
			    else if(tempa>=25)
			    {
			        TextDrawColor(DRAW_HOLOD,0xFFFFFF46);
			    }
			    else //if(tempa>=20)
			    {
			        TextDrawColor(DRAW_HOLOD,0xFFFFFF50);
			    }
			    TextDrawShowForPlayer(i,DRAW_HOLOD);
			    pInfo[i][effect]=2;
			}
			else if(pInfo[i][effect]==2)
			{
			    TextDrawHideForPlayer(i,DRAW_HOLOD);
			}
		    if(pInfo[i][afktime]>0)// 1,2
		    {
		        SetPlayerChatBubble(i,"[AFK] [0:1]",0x8000FFAA,10.0,1200);
		    }
	    }
	    else
	    {
	        if(pInfo[i][afktime]<62)
	        {
				new str_afk[40];


			//	af_sec==60?af://8421631 10.000000 time:1200
				format(str_afk,sizeof(str_afk),"Отошел: {CE0909}%d:%d{008080} мин. назад",pInfo[i][afktime]/60,pInfo[i][afktime]-1);

				SetPlayerChatBubble(i,str_afk,0x008080FF,10.0,1200);
			}
			else if(pInfo[i][torg]==false)
			{
				SetPlayerVirtualWorld(i,1);
			}
	    }
	//    new weaponid=GetPlayerWeapon(i);
	    if(GetPlayerWeapon(i)!=0)
	    {
	        if(IsPlayerInZZ(i))
	        {
	            SendClientMessage(i,0xFF000000,!"Вы находитесь в безопасной зоне! Тут запрещено доставать оружие!");
	            SetPlayerArmedWeapon(i,0);
	        }
	        if(GetLVL(i))
	        {
	            SendClientMessage(i,0xD2000000,!"У вас слишком мало авторитета, вам нельзя воевать, иначе вас выгонят из общины бункера!");
	            SetPlayerArmedWeapon(i,0);
	        }
	    }
	    pInfo[i][afktime]++;
	}
	if(preGolod==53)
	{
	    preGolod=0;
	}
	if(preWater==27)
	{
		preWater=0;
	}
	if(preKrovotech==98)
	{
	    preKrovotech=0;
	}
	if(preKrovotech==98)
	{
	    preKrovotech=0;
	}
	if(preYstalost==110)
	{
	    preYstalost=0;
	}
}
new hour,minute;
forward TimeUP();
public TimeUP()
{

    minute++;
	if(minute==60)
	{
	    minute=0;
	    hour++;
	    if(hour==24)
	    {
	    	hour=0;
	    }
	}
	
	else if(minute==23)//сменяемость погоды
	{
	    switch(random(20))
		{
			case 0..20:
			{
			}
		}
	}
	else if(minute==40)//сменяемость вируса
	{
	
	}
	
	
    foreach(Player, i)
	{
	    if(GetPlayerVirtualWorld(i)==0)
	    {
	        SetPlayerTime(i,hour,minute);
	        
	    }
	}
	
	
	new timestr[8];
	if(hour<10)
	{
	    format(timestr,sizeof(timestr),"0%d:",hour);
	}
	else
	{
	    format(timestr,sizeof(timestr),"%d:",hour);
	}
	if(minute<10)
	{
	    format(timestr,sizeof(timestr),"%s0%d",timestr,minute);
	}
	else
	{
	    format(timestr,sizeof(timestr),"%s%d",timestr,minute);
	}
	TextDrawSetString(DRAW_GLOBAL_TIME,timestr);
	
	if(hour==23&&minute==56)
	{
	    SendClientMessageToAll(0x80FF00AA,!"[ЗОМБИ] {C40000}На поверхности гуляет много зараженных!");
	    
	    switch(random(50))
	    {
	        case 25..30:
	        {
                SendClientMessageToAll(0x51FF0FAA,!"••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••");
                SendClientMessageToAll(0x80FF00AA,!"Как тут играть? {FF0000}Смотри:");
                SendClientMessageToAll(0x00DADFAA,!"1. {FF0000}Получи респиратор! {FFFF00}Его дают за работу на портного, он защитит тебя от вируса.");
                SendClientMessageToAll(0x00DADFAA,!"2. {FF0000}Выходи наповерхность! {FFFF00}Подбегай к разбитым машинам, ящикам, коробкам, ищи лут!");
                SendClientMessageToAll(0x00DADFAA,!"3. {FF0000}Заходи в здания! {FFFF00}Самый крутой лут ждет тебя в зданиях!");
                SendClientMessageToAll(0x00DADFAA,!"4. {FF0000}Выбирай время с умом! {FFFF00}Лут появляется в полночь, но в это время очень холодно.");
                SendClientMessageToAll(0x00DADFAA,!"5. {FF0000}Покупай снаряжение! {FFFF00}Большие рюкзаки, теплая одежда, транспорт и многое другое!");
                SendClientMessageToAll(0x51FF0FAA,!"••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••");
	        }
			case 35..40:
			{
			    SendClientMessageToAll(0xFF0000AA, !"••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••");
                SendClientMessageToAll(0x51FF0FAA, !"Респавн лута происходит в полночь (по игровому времени) или каждый час (по реальному).");
                SendClientMessageToAll(0x51FF0FAA, !"Поэтому, старайся успеть залутать выгодные места первым, сразу после полуночи!");
                SendClientMessageToAll(0x51FF0FAA, !"Бороться с холодом тебе поможет костер, теплый шмот, автомобиль с печкой или растирка!");
			    SendClientMessageToAll(0xFF0000AA, !"••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••");
			}
	    }
	    
	}
	SetTimer("TimeUP",2500,0);
}

stock SetPlayerVW(playerid,world)
{
	if(world>0)
	{
		SendClientMessage(playerid,0xFF0000FF,"Не выходите из игры в этом здании!");
		
	}
	SetPlayerVirtualWorld(playerid,world);
}
#define SET_POS_ANGL(%0,%1,%2,%3,%4) SetPlayerPos(%0,%1,%2,%3),SetPlayerFacingAngle(%0,%4)

Float:GetPlayerSpeed(playerid)
{
    new Float:vx,Float:vy,Float:vz;
    if(IsPlayerInAnyVehicle(playerid)==0)
	{
		GetPlayerVelocity(playerid,vx, vy, vz);
	}
//	else
//	{
//		GetVehicleVelocity(GetPlayerVehicleID(playerid),vx, vy, vz);
//	}
    return /*floatround(*/floatsqroot(floatpower(floatabs(vx), 2.0) + floatpower(floatabs(vy), 2.0) + floatpower(floatabs(vz), 2.0)) * 105.0/*)*/;
}

public OnPlayerUpdate(playerid)
{
	if(IsPlayerNPC(playerid)==0)
	{
	    pInfo[playerid][afktime]=0;
	///////////////////////////////////////////////////////
	    new anim=GetPlayerAnimationIndex(playerid);
	    if(anim==1129||
	        anim==1203||
	        anim==1204 )
		{
		    if(pInfo[playerid][vivih]==false)
		    {
		        PlayerPlaySound(playerid,6003, 0.000000, 0.000000, 0.000000);
		        SendClientMessage(playerid,0xD20000AA,!"ОПАСНОСТЬ! {C0C0C0}У вас вывих! Используйте бинт или аптечку для перевязки!");
		        pInfo[playerid][vivih]=true;
		        PlayerTextDrawColor(playerid,PLAYER_DRAWS[playerid][11],0xFFFFFFAA);
		        PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][11]);
		    }
		}
		if(anim==1195&&pInfo[playerid][vivih]==true)
		{
		    SetPlayerVelocity(playerid,0.0,0.0,0.0);
		    SendClientMessage(playerid,0xAFAFAFAA,!"Вы не можете прыгать или бежать, у вас вывих! Найдите бинты или аптечку!");
		}
		if(GetPlayerSpeed(playerid)>18.0&&pInfo[playerid][vivih]==true)
		{
		    SetPlayerVelocity(playerid,0.0,0.0,0.0);
		    SendClientMessage(playerid,0xAFAFAFAA,!"Вы не можете бежать, у вас вывих! Найдите бинты или аптечку!");
			ApplyAnimation(playerid,"WUZI","CS_Dead_Guy",4.000000, 0, 0,0,0,0);
		}

		GetPlayerPos(playerid,pInfo[playerid][pos_x],pInfo[playerid][pos_y],pInfo[playerid][pos_z]);
	}
    return 1;
}
public OnPlayerSpawn(playerid)
{
	if(IsPlayerNPC(playerid)==0)
	{
		if(pInfo[playerid][spawned]==false)
		{
		    GivesPlayerMoney(playerid,50000);
		    Iter_Add(Player,playerid);
		    
		    pInfo[playerid][Temp]=20;
		    
		    pInfo[playerid][pol]=true;
		    
		    pInfo[playerid][immynitet]=100;
			pInfo[playerid][golod]=100;
			pInfo[playerid][voda]=100;
			pInfo[playerid][temperatura]=100;
			pInfo[playerid][son]=100;
			pInfo[playerid][nyjda]=100;
			pInfo[playerid][nastroenie]=100;
			
		    GivePlayerWeapon(playerid, 38, 5000);
		    SetPlayerColor(playerid,0xEAEAEAAA);
			TextDrawShowForPlayer(playerid, DRAW_BOX_KPK);
			TextDrawShowForPlayer(playerid, DRAW_GLOBAL_TIME);
			TextDrawShowForPlayer(playerid, DRAW_GTA_SAMP_logotype);

			ApplyAnimation(playerid,"COP_AMBIENT","Copbrowse_shake",4.099900, 0, 1,1,1,0);
			ApplyAnimation(playerid,"WUZI","CS_Dead_Guy",4.000000, 0, 0,0,0,0);
			ApplyAnimation(playerid,"CRACK","crckdeth4",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"PED","IDLE_ARMED",4.000000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"BD_FIRE","wash_up",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"PED","getup_front",4.000000, 0, 0,1,0,0);
			ApplyAnimation(playerid,"GRENADE","WEAPON_THROW",4.000000, 0, 0,1,0,0);
			ApplyAnimation(playerid,"FOOD","EAT_Vomit_P",4.000000, 0, 0,0,0,0);
			ApplyAnimation(playerid,"UZI","UZI_RELOAD",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"PAULNMAC","PISS_LOOP",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"SMOKING","M_smklean_loop",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"PED","fucku",4.000000, 0, 0,0,0,0);
			ApplyAnimation(playerid,"PED","SEAT_down",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"INT_OFFICE","OFF_Sit_Crash",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"Freeweights","gym_free_pickup",4.100000, 0, 0,0,1,0);
			ApplyAnimation(playerid,"Freeweights","gym_free_up_smooth",4.100000, 0, 0,0,1,0);
			ApplyAnimation(playerid,"Freeweights","gym_free_A",4.100000, 0, 0,0,1,0);
			ApplyAnimation(playerid,"Freeweights","gym_free_B",4.100000, 0, 0,0,1,0);
			ApplyAnimation(playerid,"Freeweights","gym_free_putdown",4.100000, 0, 0,0,1,0);
			ApplyAnimation(playerid,"BEACH","ParkSit_W_Loop",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"BEACH","SitnWait_loop_W",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"BEACH","Lay_Bac_Loop",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"GANGS","hndshkba",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"GANGS","smkcig_prtl",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DANCING","dnce_M_b",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DANCING","dnce_M_a",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DANCING","dnce_M_b",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DANCING","DAN_Down_A",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DANCING","DAN_Left_A",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DANCING","DAN_Loop_A",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DEALER","DEALER_DEAL",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DEALER","DEALER_IDLE_01",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DEALER","DEALER_IDLE_03",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"DEALER","DRUGS_BUY",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"RYDER","RYD_Die_PT1",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"PED","facsurp",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"GRAVEYARD","mrnF_loop",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"INT_SHOP","shop_cashier",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"OTB","wtchrace_win",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"RAPPING","Laugh_01",4.000000, 0, 0,0,0,0);
			ApplyAnimation(playerid,"GANGS","hndshkfa_swt",4.000000, 0, 0,0,0,0);
			ApplyAnimation(playerid,"SHOP","ROB_Shifty",4.000000, 0, 0,0,0,0);
			ApplyAnimation(playerid,"DEALER","DRUGS_BUY",4.100000, 0, 1,1,0,0);
			ApplyAnimation(playerid,"BOMBER","BOM_Plant_Loop",2.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"PED","facgum",4.100000, 0, 1,1,1,0);
			ApplyAnimation(playerid,"CARRY","crry_prtial",4.000000, 0, 0,0,0,0);


			SetPlayerSkin(playerid,2);

			pInfo[playerid][spawned]=true;

			new PlayerText:textdrawid;


	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,34.0998, 333.3464, "~g~t: 20"); //
			PlayerTextDrawLetterSize(playerid,textdrawid, 0.2500, 1.2042);
			PlayerTextDrawAlignment(playerid,textdrawid, 1);
		//	PlayerTextDrawColor(playerid,textdrawid, 540875519);
			PlayerTextDrawSetOutline(playerid,textdrawid, 1);
		//	PlayerTextDrawBackgroundColor(playerid,textdrawid, 255);
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetProportional(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid,textdrawid, 0);

	        PLAYER_DRAWS[playerid][0]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,116.6026, 332.5396, "~g~v: 0"); // ?????
			PlayerTextDrawLetterSize(playerid,textdrawid, 0.2500, 1.0800);
			PlayerTextDrawAlignment(playerid,textdrawid, 1);
		//	PlayerTextDrawColor(playerid,textdrawid, 540875519);
			PlayerTextDrawSetOutline(playerid,textdrawid, 1);
		//	PlayerTextDrawBackgroundColor(playerid,textdrawid, 255);
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetProportional(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid,textdrawid, 0);

	        PLAYER_DRAWS[playerid][1]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////




			textdrawid = CreatePlayerTextDraw(playerid,475.000000,39.000000,"hud:radar_LocoSyndicate");

		//	PlayerTextDrawTextSize();
			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0x000000AA);
	        PlayerTextDrawFont(playerid,textdrawid, 4);

	        PLAYER_DRAWS[playerid][2]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,595.000000,99.000000,"hud:radar_mafiaCasino");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
	        PlayerTextDrawFont(playerid,textdrawid, 4);
	        PLAYER_DRAWS[playerid][3]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,575.000000,99.000000,"hud:radar_centre");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
	        PlayerTextDrawFont(playerid,textdrawid, 4);
	        PLAYER_DRAWS[playerid][4]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,515.000000,99.000000,"hud:radar_diner");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
	        PlayerTextDrawFont(playerid,textdrawid, 4);
	        PLAYER_DRAWS[playerid][5]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,495.000000,99.000000,"hud:radar_dateFood");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
	        PlayerTextDrawFont(playerid,textdrawid, 4);
	        PLAYER_DRAWS[playerid][6]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,535.000000,99.000000,"hud:radar_tshirt");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
			PlayerTextDrawFont(playerid,textdrawid, 4);
			PLAYER_DRAWS[playerid][7]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,475.000000,99.000000,"hud:radar_girlfriend");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
			PlayerTextDrawFont(playerid,textdrawid, 4);
			PLAYER_DRAWS[playerid][8]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,555.000000,99.000000,"hud:radar_propertyG");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0xFFFFFFAA);
			PlayerTextDrawFont(playerid,textdrawid, 4);
			PLAYER_DRAWS[playerid][9]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////


			textdrawid = CreatePlayerTextDraw(playerid,475.000000,79.000000,"particle:bloodpool_64");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0x000000AA);
			PlayerTextDrawFont(playerid,textdrawid, 4);
			PLAYER_DRAWS[playerid][10]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,475.000000,19.000000,"particle:handman");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0x000000AA);
			PlayerTextDrawFont(playerid,textdrawid, 4);
			PLAYER_DRAWS[playerid][11]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,475.000000,59.000000,"hud:radar_hostpital");

			PlayerTextDrawTextSize(playerid,textdrawid,15.000000,15.000000);

			PlayerTextDrawColor(playerid,textdrawid,0x000000AA);
			PlayerTextDrawFont(playerid,textdrawid, 4);
			PLAYER_DRAWS[playerid][12]=textdrawid;

	/////////////////////////////////////////////////////////////////////////////////


	/////////////////////////////////////////////////////////////////////////////////


			textdrawid = CreatePlayerTextDraw(playerid,478.000000,116.000000,"~g~100");//иммунитет
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][13]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,498.000000,116.000000,"~g~100");//голод
			PlayerTextDrawFont(playerid,textdrawid, 1);
	        PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][14]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,518.000000,116.000000,"~g~100");//вода
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][15]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,538.000000,116.000000,"~g~100");//тепло
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][16]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,558.000000,116.000000,"~g~100");//усталость
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][17]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,578.000000,116.000000,"~g~100");//моча
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][18]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,598.000000,116.000000,"~g~100");//настроение
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid, textdrawid, 2);
			PlayerTextDrawSetOutline(playerid, textdrawid, 1);
	        PlayerTextDrawLetterSize(playerid,textdrawid,0.200000,1.000000);
	        PLAYER_DRAWS[playerid][19]=textdrawid;
	/////////////////////////////////////////////////////////////////////////////////



			{
		        new yr,monh,day;
		        getdate(yr,monh,day);
				new str_name[30];
		        format(str_name,sizeof(str_name),"~g~%s %d.%d.%d",pInfo[playerid][Name],day,monh,yr);

		        textdrawid = CreatePlayerTextDraw(playerid,547.000000,20.000000,str_name);//ник

		        PlayerTextDrawAlignment(playerid,textdrawid, 1);
				PlayerTextDrawSetOutline(playerid,textdrawid, 1);
				PlayerTextDrawBackgroundColor(playerid,textdrawid, 255);
				PlayerTextDrawSetProportional(playerid,textdrawid, 1);
				PlayerTextDrawSetShadow(playerid,textdrawid, 2);
				PlayerTextDrawFont(playerid,textdrawid, 1);
		        PlayerTextDrawLetterSize(playerid,textdrawid,0.170000,1.000000);

		        PLAYER_DRAWS[playerid][20]=textdrawid;
			}
			//////////////////////////////////////////////////////////////////////////////////////////////////
			textdrawid = CreatePlayerTextDraw(playerid, 417.250092, 188.081497,"0/0");//количество слотов лута в инвентаре

		    PlayerTextDrawAlignment(playerid,textdrawid, 2);
			PlayerTextDrawSetOutline(playerid,textdrawid, 1);
			PlayerTextDrawSetProportional(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid,textdrawid, 0);
			PlayerTextDrawFont(playerid,textdrawid, 2);
			PlayerTextDrawColor(playerid,textdrawid,0x88FF00FF);
		    PlayerTextDrawLetterSize(playerid,textdrawid,0.233200, 1.732700);

			PLAYER_DRAWS[playerid][21]=textdrawid;

			////////////////////////////////////////////////////////////////////////////////////////////////

			textdrawid = CreatePlayerTextDraw(playerid,73.2000, 427.0000, "0 km/h"); // скорость
			PlayerTextDrawLetterSize(playerid,textdrawid, 0.300, 1.300);
			PlayerTextDrawAlignment(playerid,textdrawid, 1);
			PlayerTextDrawColor(playerid,textdrawid, 0xE1E1E1FF);
			PlayerTextDrawSetOutline(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid,textdrawid, 2);
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetProportional(playerid,textdrawid, 1);

	        PLAYER_DRAWS[playerid][22]=textdrawid;
	        
			////
			
			textdrawid = CreatePlayerTextDraw(playerid,130.0000, 427.0000, "~r~F"); // бензин
			PlayerTextDrawLetterSize(playerid,textdrawid, 0.300, 1.300);
			PlayerTextDrawAlignment(playerid,textdrawid, 1);
			PlayerTextDrawColor(playerid,textdrawid, 0xE1E1E1FF);
			PlayerTextDrawSetOutline(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid,textdrawid, 2);
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetProportional(playerid,textdrawid, 1);

	        PLAYER_DRAWS[playerid][23]=textdrawid;
			
			////
			
			textdrawid = CreatePlayerTextDraw(playerid,33.0000, 427.0000, "~r~+/-"); // аккумулятор
			PlayerTextDrawLetterSize(playerid,textdrawid, 0.300, 1.300);
			PlayerTextDrawAlignment(playerid,textdrawid, 1);
			PlayerTextDrawColor(playerid,textdrawid, 0xE1E1E1FF);
			PlayerTextDrawSetOutline(playerid,textdrawid, 1);
			PlayerTextDrawSetShadow(playerid,textdrawid, 2);
			PlayerTextDrawFont(playerid,textdrawid, 1);
			PlayerTextDrawSetProportional(playerid,textdrawid, 1);

	        PLAYER_DRAWS[playerid][24]=textdrawid;
	        ////////////////////////////////////////////////////////////////////////////////////////////////
	        for(new i=0;i<21;i++)
	        {
	            PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][i]);
	        }
	        
	        pInfo[playerid][indikat]=true;
            SetPlayerPos(playerid,276.593231 ,1861.701904, 9.844080);//214.554916 ,1870.582642, 13.337500);

            
			SetPlayerPack(playerid,5);
			
		    GivePlayerLoot(playerid, 1);
		    GivePlayerLoot(playerid, 2);
		    GivePlayerLoot(playerid, 3);
		    
		    GivePlayerLoot(playerid, 14);
		    GivePlayerLoot(playerid, 15);
		    GivePlayerLoot(playerid, 16);
		    GivePlayerLoot(playerid, 17);
		    GivePlayerLoot(playerid, 18);
		    
		    GivePlayerLoot(playerid, 19);
		    GivePlayerLoot(playerid, 20);
		    GivePlayerLoot(playerid, 21);
		    GivePlayerLoot(playerid, 22);
		    GivePlayerLoot(playerid, 23);
		    
		    GivePlayerLoot(playerid, 24);
		    GivePlayerLoot(playerid, 25);
		    GivePlayerLoot(playerid, 26);
		    GivePlayerLoot(playerid, 27);
		    GivePlayerLoot(playerid, 28);

		    GivePlayerLoot(playerid, 29);
		    GivePlayerLoot(playerid, 30);
		    GivePlayerLoot(playerid, 31);
		    GivePlayerLoot(playerid, 32);
		    GivePlayerLoot(playerid, 33);
		    
			
		}
		else
		{
			SendClientMessage(playerid,0xFCAB14FF,"ПОДСКАЗКА: {FF8000}Онлайн-радио 'Сектор'! {00FF00}Нажмите N - КПК - Включить радио!");
			SendClientMessage(playerid,0x00FFFFFF,"ПОДСКАЗКА: {00AE00}Клавиши: {FF0000}Y {00AE00}- рюкзак, {FF0000}N {00AE00}- меню, {FF0000}F {00AE00}- подобрать предмет.");

			TogglePlayerControllable(playerid, true);
			SetPlayerPos(playerid,276.593231 ,1861.701904, 9.844080);
			

		}
		//SetPlayerPos(playerid,386.209991 ,2390.320068, 1890.949951);
        ShowPlayerDialog(playerid, 105, 0, !"{51FF0F}Справка", !"{FF8600}Справочная информация:\n\n{00FFFF}Новички могут работать на пошиве одежды, чтобы получить первый респиратор.\n{00FFFF}В госпитале новички могут получить бесплатное лечение от всех видов болезней!\n{FF8600}Основные индикаторы самочувствия:\n\n{E8D699}Индикаторы меняют цвет от состояния. При нулевых показателях вы начнете терять сознание!\n{FF0000}Голод:{E8D699} Отображается в виде ножа и вилки. Еду можно найти на поверхности.\n{FF0000}Жажда:{E8D699} Отображается в виде стакана. Воду можно найти на поверхности.\n{FF0000}Холод:{E8D699} Отображается в виде футболки. Не выходите ночью и в дождь.\n{FF0000}Иммунитет:{E8D699} Отображается в виде сердца. Не выходите без респиратора.\n{FF0000}Усталость:{E8D699} Отображается в виде домика. Нужно регулярно спать.\n{FF0000}Нужда:{E8D699} Отображается в виде капли. При нуле вы наделаете в штаны и испортите одежду!\n{FF0000}Настроение:{E8D699} Отображается в виде кубика. При нуле вы впадете в депрессию!\n\n{FF8600}Скрытые индикаторы (по умолчанию, чёрные):\n\n{FF0000}Опасность:{E8D699} Отображается в виде черепа. Зеленый: холод/вирус, Синий: влажность, Красный: бой.\n{FF0000}Вывих:{E8D699} Отображается в виде белой ладони и человека. Лечится бинтами или аптечкой!\n{FF0000}Вонь:{E8D699} Отображается в виде красной ладони и человека. Причина: в содержимом рюкзака.\n{FF0000}Болезнь:{E8D699} Отображается в виде медицинского креста. Лечится снадобьем.\n{FF0000}Кровотечение:{E8D699} Отображается в виде кляксы крови. Лечится бинтами или аптечкой.\n\n{FF8600}Датчики:\n\n{E8D699}У вас имеется КПК, который принимает письма и отображает следующие датчики:\n{FF0000}Тепловизор:{E8D699} Отображает метки людей рядом с вами.\n{FF0000}Часы:{E8D699} Отображает местное время.\n{FF0000}Сканер вирусов:{E8D699} Отображает наличие опасных вирусов рядом с вами. Используйте респиратор.\n{FF0000}Датчик температуры:{E8D699} Показывает вашу потерю тепла. При красном значении расходуется тепло, при зелёном накапливается.\n\n{FF8600}Команды:\n\n{E8D699}Клавиша {FF0000}Y{E8D699} открывает рюкзак. {E8D699}Клавиша {FF0000}N{E8D699} открывает личное меню.\n{FF0000}/жалоба{E8D699} Отправить жалобу на игрока.\n{FF0000}/фикс{E8D699} Вернуть личный байк туда, где вы его оставили (если он есть).\n", "Ок", "");

	}
	else
	{
	    if(playerid==0)//иваныч
	    {
	        SetPlayerSkin(0,290);//устанавливаем скин иванычу
    		SetPlayerPos(0,242.932159, 1856.489990, 8.757813);
			SetPlayerFacingAngle(0,269.460266);
	        SetPlayerColor(0,0xFFFFFF00);
	    }
	    else if(playerid==1)
	    {
	        printf("START_BRITVA");
	        SetPlayerSkin(1,287);//устанавливаем скин иванычу
    		SetPlayerPos(1,241.792740, 1849.141235, 8.764990);
			SetPlayerFacingAngle(1,269.460266);
	        SetPlayerColor(1,0xEAEAEAAA);
	        GivePlayerWeapon(1, 24, 1);
	    }
	}
	return 1;
	
}


public OnPlayerPickUpDynamicPickup(playerid, pickupid)
{
	printf("this->PICK:%d",pickupid);
	switch(pickupid)
	{
        case PICK_HOME:
        {
            SetPlayerChatBubble(playerid,"ищет ключи",0x007900AA,30.0,10000);
		
			ShowPlayerDialog(playerid,5000,2,"{D5D500}Аренда комнаты","{D1DBD0}Справка\n\
{D1DBD0}Зайти в свою комнату\n\
{D1DBD0}Зайти в чужую комнату\n\
{D1DBD0}Арендовать комнату {6CD900}5000 $\n\
","Ок","Нет");

        }
		case PICK_HOME_EXIT:
        {
        }
		case PICK_HOME_SEIF:
        {
        }
		case PICK_MASTER:
        {
            SET_POS_ANGL(playerid,291.9861,1831.1617,8.0244,334.2157);
        }
		case PICK_MASTER_EXIT:
        {
        	SET_POS_ANGL(playerid,296.5717,1824.6709,7.8281,81.7582);
        }

		case PICK_SPORTZAL:
        {
            SET_POS_ANGL(playerid,766.3372,-45.8374,1000.5859,355.0000);
            SetPlayerInterior(playerid,6);
        }

		case PICK_CLOTHES: // пошив одежды подработка новичкам или магазин одежды
        {
	        ShowPlayerDialog(playerid, 9525,2,"{FF0000}Куда вы хотите?","Магазин одежды\n\
	Подработка новичкам (получение респиратора)","Выбрать","Отмена");
        }
		case PICK_FABRICK_CLOTHES_EXIT:
        {
            pInfo[playerid][Clothes]=0;
        	pInfo[playerid][Ready_clothe]=0;
        	RemovePlayerAttachedObject(playerid,8);
            SET_POS_ANGL(playerid,284.3024,1814.6575,4.7031,400.0000);
        }
		case PICK_FABRICK_CLOTHES_A,
		    PICK_FABRICK_CLOTHES_B,
		  PICK_FABRICK_CLOTHES_C,
		PICK_FABRICK_CLOTHES_D:
        {
            if(pInfo[playerid][Clothes]<10&&IsPlayerHaveResp(playerid)==false)
            {
                ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,0,1,1,1,1);
			    pInfo[playerid][Ready_clothe]=1;
            	SendClientMessage(playerid,0x008800FF,"Отправляйтесь к свободному столу!");
            	SetPlayerAttachedObject(playerid,8,1579,6, 0.071900,-0.105900,-0.118000,-111.500000,-0.200000,77.089996,1.000000,1.000000,1.000000);
            }
        }
		case PICK_SHOP_EXIT:
        {
            SET_POS_ANGL(playerid,284.3024,1814.6575,4.7031,40.0000);
            
        }
		case PICK_SPORTZAL_EXIT:
        {
        	SET_POS_ANGL(playerid,252.0831,1837.0751,4.7109,40.0000);
        	SetPlayerInterior(playerid,0);
        }
		case PICK_STELBISHE_EXIT,
			 PICK_SHRAM_EXIT:
		{
		    SET_POS_ANGL(playerid,206.0502,1867.1287,13.1375,302.6129);
        }
		case PICK_LIFT:
		{
			ShowPlayerDialog(playerid, 15222, 2, "{D5D500}ЛИФТ СЕКТОР?-2", "{D1DBD0}Стрельбище (обучение стрельбе)\n{D1DBD0}Шрам (наёмные убийцы)", "Ок", "Нет");
		}

	}
	printf("end pick");
	return 1;
}


public OnPlayerDeath(playerid, killerid, reason)
{

	pInfo[playerid][body_object]=CreateDynamicObject(2907,pInfo[playerid][pos_x],pInfo[playerid][pos_y],pInfo[playerid][pos_z]-1.0,    0.0,0.0,0.0,-1,-1,-1,30.0,30.0);
	pInfo[playerid][hand_object]=CreateDynamicObject(2906,pInfo[playerid][pos_x],pInfo[playerid][pos_y]+1.0,pInfo[playerid][pos_z]-1.0,0.0,0.0,0.0,-1,-1,-1,30.0,30.0);

	return 1;
}

#include "../gamemodes/include/publics/OnDialogResponse.pwn"

forward staticstika(playerid);
public staticstika(playerid)
{
	new rows;
	//cache_get_row_count(rows);
	if(rows)
	{
	    new kill_human,
			kill_zombie,
			
			reg_date[10],
			kicks;
			
		//	cache_get_value_name_int(0,"kill_human",kill_human);
		//	cache_get_value_name_int(0,"kill_zombie",kill_zombie);
		//	cache_get_value_name(0,"reg_date",reg_date);
	     //   cache_get_value_name_int(0,"kicks",kicks);
	
	    static str_stat[512];
	    format(str_stat,sizeof(str_stat),
"{BB0000}Житель:\n\
{E8D699}Имя: {6CD900}%s\n\
{E8D699}Пол: {6CD900}%s\n\
{BB0000}Криминал:\n\
{E8D699}Убито людей: {6CD900}%d\n\
{E8D699}Убито зомби: {6CD900}%d\n\
{E8D699}Попаданий в госпиталь: {6CD900}%d\n\
{BB0000}Данные Бункера:\n\
{E8D699}Прожито суток: {6CD900}%d\n\
{E8D699}Авторитет: {6CD900}%d\n\
{E8D699}Уважение: {6CD900}%d/%d\n\
{E8D699}Деньги: {6CD900}%d$\n\
{E8D699}Работа: {6CD900}%s\n\
{E8D699}Ранг: {6CD900}%d\n\
{E8D699}Комната: {6CD900}%s\n\
{E8D699}Байк: {6CD900}%s\n\
{BB0000}Группировки:\n\
{E8D699}Бригада: {6CD900}%s\n\
{E8D699}Название: {6CD900}%s\n\
{E8D699}Титул: {6CD900}%s\n\
{BB0000}Игровые данные:\n\
{E8D699}Дата регистрации: {6CD900}%s\n\
{E8D699}Киков: {6CD900}%d\n\
{E8D699}Замечаний: {6CD900}%d\n\
{E8D699}VIP защиты: {6CD900}%d"
		,
		pInfo[playerid][Name],
		pInfo[playerid][pol]==true?"Мужской":"Женский",
		kill_human,
		kill_zombie,
        pInfo[playerid][deads],
        pInfo[playerid][pol],
        pInfo[playerid][chasov],
        pInfo[playerid][lvl],
        pInfo[playerid][Exp], pInfo[playerid][lvl]*4,
        pInfo[playerid][money],
        pInfo[playerid][jobid]==0?"Нет":pInfo[playerid][jobid]==1?"Медик":pInfo[playerid][jobid]==2?"Оружейник":"Наёмник",
        pInfo[playerid][rang],
        pInfo[playerid][komnata]==true?"Есть":"Нет",
        pInfo[playerid][bike]==true?"Есть":"Нет",
        pInfo[playerid][gangid]>-1?"Есть":"Нет",
        pInfo[playerid][gangname],
        pInfo[playerid][gangTityl]==1?"Новичок":pInfo[playerid][gangTityl]==2?"Боец":pInfo[playerid][gangTityl]==3?"Брат":pInfo[playerid][gangTityl]==4?"Заместитель":pInfo[playerid][gangTityl]==5?"Лидер":"Нет",
		reg_date,
		kicks,
		pInfo[playerid][warns]
		);
		
		ShowPlayerDialog(playerid, 11004,0,!"{51FF0F}Статистика",str_stat,!"Oк","");
	
	}
}
public OnPlayerKeyStateChange(playerid, newkeys, oldkeys)
{
	if(newkeys==KEY_SECONDARY_ATTACK)//key f
	{
	    if(IsPlayerInRangeOfPoint(playerid,6.3,267.749176,1862.402832,8.162060))//ВРАЧ
	    {
			if(IsPlayerInRangeOfPoint(playerid,3.1,267.749176,1862.402832,8.162060))
			{
			    PlayerPlaySound(playerid,6401,0.0,0.0,0.0);
				ShowPlayerDialog(playerid, 210,2, !"{00FF00}Госпиталь бункера 'Сектор-2'", !"{DADAB6}Полное лечение ({00FF00}только для новичков{DADAB6})\n\
{DADAB6}Справка о работе\n\
{DADAB6}Ваш ранг\n\
{FF8000}Взятка (ранг за золото)\n\
{FF8000}Задания (ранг за работу)\n\
{0080FF}АПТЕКА: Купить медикаменты\n\
{FF5B5B}Изготовить медикаменты\n\
Вам нужна помощь?\n\
Много ли поступает раненых?\n\
Где вы берете лекарства?\n\
Кто такие зараженные?", !"Выбрать", !"Закрыть");
			}
			else
			{
			    SendClientMessage(playerid,0xafafaaFF , !"Вы не в госпитале!");
			}
	    }
	    else if(IsPlayerInRangeOfPoint(playerid,8.34,244.490005, 1856.699951, 8.310000))//ИВАНЫЧ
	    {	                                       
			if(IsPlayerInRangeOfPoint(playerid,3.36,244.490005, 1856.699951, 8.310000))
			{
				ShowPlayerDialog(playerid, 110,2,"{00FF00}Бар бункера 'Сектор-2'",!"\
{DADAB6}Поговорить с барменом\n\
{FF8000}Задания на поверхности\n\
{FF8000}Работа в бункере (вакансии)\n\
{00BB00}Денежное хранилище\n\
{6BB6B6}Бар Иваныча\n\
{0080FF}Оружие\n\
{0080FF}Патроны\n\
{0080FF}Снаряжение\n\
{0080FF}Драгоценности","Выбрать","Закрыть");
//\n\{FF0000}Изгнать бригаду"
			}
			else
			{
			    SendClientMessage(playerid,0xafafaaFF ,!"Вы не у бара!");
			}
	    }
		else if(IsPlayerInRangeOfPoint(playerid,3.4, 289.8080, 1831.6809, 8.0244))//мастер
		{
			ShowPlayerDialog(playerid, 7836, 2, !"{00FF00}Мастер", !"{FF0000}Защитный костюм\n{DADAB6}Ваш ранг\nПочинить бронежилет\nПочинить оружие\nЗадания по доставке (ранг за работу)\nВзятка (ранг за золото)\nИзготовление оружия\n{FFFFFF}Кто ты?\nМожешь меня чему-то научить?\nГде ты берешь материалы?\nЗачем в бункере оружие?\nЧто такое защитный костюм?", "Выбрать", "Закрыть");
		}
		else if(IsPlayerInRangeOfPoint(playerid,3.7,252.9284, 1842.1746, 8.2463))
		{
			ShowPlayerDialog(playerid, 20086, 0, !"{51FF0F}Доска объявлений", "", !"Добавить", !"Отмена");//изменить
		}
		else if(IsPlayerInRangeOfPoint(playerid,7.7,316.9291,2051.9343,895.4297))
		{
			if(IsPlayerInRangeOfPoint(playerid,4.0,244.490005, 1856.699951, 8.310000))
			{
				ShowPlayerDialog(playerid, 8836, 1, "{00BF00}Купить шмотки", !"{F47A00}Сменить имидж - отличное решение!\n{3399FF}Введите номер модели, которую хотите купить:", "Ок", "<< Назад");
			}
			else
			{
			    SendClientMessage(playerid,0xafafaaFF ,!"Вы не у прилавка!");
			}
		}
		else
		{
		    printf("find start");
		    new Float:x,Float:y,Float:z;
		    new strloot[400];
			new a;
		    for(new i=0;i<endloot&&a<20;++i)
		    {
		        printf("find %d",i);
		  //      DropLoot[masive][type]=DropLoot[endloot][type];
//	DropLoot[masive][dynO]=DropLoot[endloot][dynO];
//	DropLoot[masive][dynT]=DropLoot[endloot][dynT];
				if(IsValidDynamicObject(DropLoot[endloot][dynO]))
				{
					GetDynamicObjectPos(DropLoot[endloot][dynO],x,y,z);
				
					if(IsPlayerInRangeOfPoint(playerid,3.5,x,y,z))
					{
						printf("find s %d",i);
				        PreLoot[playerid][a]=i;
						strcat(strloot,InfoLoot[DropLoot[i][luttype]][NAMEloot]);
						strcat(strloot,"\n");
						++a;
				    }
				}
		    }
		    if(a!=0)
		    {
			    printf("find show");
		    	ShowPlayerDialog(playerid,1001,2,"Хабар",strloot,"Взять","Отмена");
			}
			printf("find end");
		}
	}
	else if(newkeys==KEY_WALK)
	{
		if(IsPlayerInRangeOfPoint(playerid,3.2,255.8143, 1842.3452, 7.7619))
		{
		    new mysr[200];
		    for(new i;i<10;i++)
		    {
		        format(mysr,200,"%s%s\n",mysr,InfoLoot[mysor[i]][NAMEloot]);
		    }
			ShowPlayerDialog(playerid, 12223, 2, "{00FF00}Мусорка", mysr, "Взять", "Отмена");
		}
	}
	else if(newkeys==KEY_YES)
	{
	    if(pInfo[playerid][openInv]==false)
	    {
	    	OpenInventory(playerid);
		}
	}
	else if(newkeys==KEY_NO)
	{
		ShowPlayerDialog(playerid, 8820, 2,"Личное меню","{E8D699}Личные данные\n\
        {E8D699}Ваш КПК\n\
        {E8D699}Торговать\n\
        {E8D699}Действия\n\
        {E8D699}Бригада\n\
        {E8D699}Транспорт\n\
        {E8D699}Настройки\n\
        {E8D699}Справка\n\
		{00B000}Донат","Выбрать","Отмена");
	}
	else if(newkeys==KEY_SUBMISSION)// клавиша 2
	{
	    new vehicleid = GetPlayerVehicleID(playerid);
	    if(vehicleid!=0&&GetPlayerVehicleSeat(playerid)==0)//если игрок находится в машине за местом водителя
	    {
			ShowPlayerDialog(playerid, 7820, 2, !"{00B000}Управление",!"{BFB37D}Двигатель {00B000}вкл <- {DF0000}-> выкл\n{BFB37D}Двери {DF0000}закрыть\n{BFB37D}Двери {00B000}открыть\n{BFB37D}Багажник {00B000}откр <- {DF0000}-> закр",!"Ок",!"Отмена");
	    }
	    else
	    {
	        SendClientMessage(playerid,0xFF0000AA,!"Вы должны быть в транспорте, за рулем!");
	    }
	}
	else if(newkeys==KEY_CTRL_BACK)//клавиша h
	{
	    if(IsPlayerInDynamicArea(playerid,AREA_BUNKER)==0)//если игрок НЕ внутри бункера
	    {
	    	new Float:cx,Float:cy,Float:cz;
			new Float:dist,Float:olddist=5.0;
			new carid=0;
			foreach(VehiclesNearPlayer[playerid],vehicleid)
			{
			   // GetVehiclePos(vehicleid,cx,cy,cz);
			    GetVehicleCoordBackPack(vehicleid, cx,cy,cz);
			    dist=GetPlayerDistanceFromPoint(playerid,cx,cy,cz);
			    if(dist<olddist)
			    {
			        olddist=dist;
			        carid=vehicleid;
			    }

			}
			if(carid!=0&&dist<1.0)
			{
	            if(vInfo[carid][backpack]==false)
	            {

		            switch(GetVehicleModel(carid))
		            {
		                case 481,509,510, 403, 406, 407, 408, 413,414,418, 416, 422, 423, 427, 428, 431, 433, 437,440,444,448,453,454,455,456,457,459,461,468,471,472,473,478,483,485,498,499,508,514,515,524,525,530,531,532,543,544,552,554,556,557,568,578,582,583,588,604,605,609://3 велосипеда, грузовик, белаз, пожарка, мусоровоз, 3 грузовик, скорая, бобкат и все осталные пикапы,фургон мороженного, броневик спецназа, броневик банка, автобус, грузовик армии, автобус, грузовик
		                {
		                    SendClientMessage(playerid,0xFF0000AA,!"Багажник этого транспорта недоступен или не существует!");

		                }
						case 584,610,611,606,607://прицеп - цистерна с топливо для грузовика,
						{
						    //не нужно что-то выводить!
						}
						default:
						{
						    pInfo[playerid][car_back]=carid;
							ShowPlayerDialog(playerid,217,0,!"Багажник",!"Что сделать:",!"Взять",!"Положить");
						}
		            }
	            }
	            else
	            {
	                SendClientMessage(playerid,0xAFAFAFAA,!"Откройте багажник!");
	            }
			}
	    }
	}
	return 1;
}
public OnPlayerStateChange(playerid, newstate, oldstate)
{
    if(oldstate == PLAYER_STATE_ONFOOT && newstate == PLAYER_STATE_DRIVER) // Player entered a vehicle as a driver
    {
	    new vehicleid = GetPlayerVehicleID(playerid);
    	if(pInfo[playerid][vivih]==false)
    	{
    		SetTimerEx("UpdateSpeedometer",500,0,"d",playerid);	        
		    
		    pInfo[playerid][car_id]=vehicleid;
		    
		    if(GetLVL(playerid)!=0)
			{
			
			    PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][22]);
			    PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][23]);
			    PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][24]);



			    new vehiclemod = GetVehicleModel(vehicleid);
		        if(vehiclemod!=481&&vehiclemod!=509&&vehiclemod!=510)
		        {
		        	

			    	new benzina=vInfo[vehicleid][benz];

			    	if(benzina<=16)
			    	{
			    	    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][23],"~r~F");
			    	}
			    	else if(benzina<=32)
			    	{
			    	    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][23],"~y~F");
			    	}
			    	else if(benzina<=50)
			    	{
			    	    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][23],"~g~F");
			    	}

					new akummulator=vInfo[vehicleid][akum];

					if(akummulator<=33)
			    	{
			    	    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][24],"~r~+/-");
			    	}
			    	else if(akummulator<=66)
			    	{
			    	    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][24],"~y~+/-");
			    	}
			    	else if(akummulator<=100)
			    	{
			    	    PlayerTextDrawSetString(playerid,PLAYER_DRAWS[playerid][24],"~g~+/-");
			    	}


			        SendClientMessage(playerid,0x00FF00AA,!"{FCAB14}ПОДСКАЗКА: {00FFFF}Завести двигатель: клавиша {00FF00}'2'{00FFFF}!");

					if(vInfo[vehicleid][benz]==0)
					{
					    SendClientMessage(playerid,0x00FF00AA,!">>> Бензобак пуст <<<");
					}

					if(vInfo[vehicleid][akum]==0)
					{
					    SendClientMessage(playerid,0x00FF00AA,!">>> Аккумулятор разряжен <<<");
					}

			        if(vehicleid<4)// 1,2,3 - арендуюмые машины
			        {
	                    ShowPlayerDialog(playerid,9126,0, !"{FF0000}АРЕНДА МАШИНЫ", !"{FFFFFF}Стоимость аренды {80FF00}300$\n{FFFFFF}В машине будет полный бак топлива и аккумулятор!", !"Снять", !"Нет");
			        }
			        else if(vehicleid<10)//машина скорой помощи
					{
					 /*   if(pInfo[playerid][jobid]==1)
					    {
					    }*/
					    if(pInfo[playerid][zmedik]!=0)
					    {

					    }
					    else
					    {
					        SendClientMessage(playerid,-1263159297,!"Вы не брали задание в госпитале бункера!");
					        KickPlayerVehicle(playerid,vehicleid);
					    }
					}
					else if(vehicleid<14)//наёмник
					{
					    if(pInfo[playerid][jobid]!=3)
					    {
					        SendClientMessage(playerid,-1263159297,!"Транспорт принадлежит наемникам!");
					        KickPlayerVehicle(playerid,vehicleid);

					    }
					}
					else if(vehicleid<17)//радиоведущий
					{
					    if(pInfo[playerid][jobid]!=4)
					    {
	                        SendClientMessage(playerid,-1263159297,!"Транспорт принадлежит радиоведущим!");
					        KickPlayerVehicle(playerid,vehicleid);
					    }
					}
			        vInfo[vehicleid][driveid]=playerid;
			        vInfo[vehicleid][pas_door]=true;//закрываем пассажирские двери
			        vInfo[vehicleid][doors]=true;//закрываем водительские двери
			        new engine, lights, alarm, dors, bonnet, boot, objective;
					GetVehicleParamsEx(vehicleid, engine, lights, alarm, dors, bonnet, boot, objective);
					SetVehicleParamsEx(vehicleid, engine, lights, alarm, 1, bonnet, boot, objective);//закрываем двери
		        }
	        }
	        else
	        {
				KickPlayerVehicle(playerid,vehicleid);
	        }
	    }
	    else
	    {
	        SendClientMessage(playerid,-1347440726,!"У вас вывих! Найдите бинты или аптечку!");
	        KickPlayerVehicle(playerid,vehicleid);
	    }
    }
    else if(oldstate == PLAYER_STATE_DRIVER)
    {
        
        PlayerTextDrawHide(playerid,PLAYER_DRAWS[playerid][22]);
        PlayerTextDrawHide(playerid,PLAYER_DRAWS[playerid][23]);
        PlayerTextDrawHide(playerid,PLAYER_DRAWS[playerid][24]);
        
        new vehicleid=pInfo[playerid][car_id];
        vInfo[vehicleid][doors]=false;
		vInfo[vehicleid][pas_door]=true;
        vInfo[vehicleid][driveid]=0;
        pInfo[playerid][car_id]=0;

        new vehiclemod = GetVehicleModel(vehicleid);
	    if(vehiclemod!=481&&vehiclemod!=509&&vehiclemod!=510)
	    {
	        GameTextForPlayer(playerid,"~g~Open",5000,6);
	        new engine, lights, alarm, dors, bonnet, boot, objective;
			GetVehicleParamsEx(vehicleid, engine, lights, alarm, dors, bonnet, boot, objective);
			SetVehicleParamsEx(vehicleid, engine, lights, alarm, 0, bonnet, boot, objective);
		}

		pInfo[playerid][car_id]=INVALID_VEHICLE_ID;

    }
    return 1;
}
public OnPlayerEnterVehicle(playerid, vehicleid, ispassenger)
{

	if(pInfo[playerid][vivih]==true&&ispassenger==0)
	{
	    SendClientMessage(playerid,0xFF0000AA,!"У вас вывих! Вы не можете управлять транспортом. Найдите аптечку или бинт!");
	}
	if(GetLVL(playerid)==0)//странно, но на секторе нет проверки на то что игрок бежит к пасажирскому креслу, а не водителя                                   &&ispassenger==0)//если лвл игрока 0 и игрок бежит к машине на водительское место
	{
	    SendClientMessage(playerid,0xFF0000AA,!"Управлять транспортом можно только с 1 уровня авторитета!");
	}
	
	if(ispassenger==1&&vInfo[vehicleid][pas_door]==true)
	{
	    SetPlayerPos(playerid,pInfo[playerid][pos_x],pInfo[playerid][pos_y],pInfo[playerid][pos_z]);
	    SendClientMessage(playerid,0xFF0000AA,!"Пассажирская дверь закрыта (открыть можно сидя за рулем)!");
	}
	
    return 1;
}
public OnPlayerRequestClass(playerid,classid)//стрелочки << >>
{
	if(IsPlayerNPC(playerid)==0)
	{
	    SendClientMessage(playerid,0xFF000000,"GTA SAMP SEKTOR: Постапокалипсис.");
	    SendClientMessage(playerid,0x00C10000,"Наш сайт: {00E6E6}www.samp-sektor-2.ru");
	    TogglePlayerControllable(playerid, false);
		SetPlayerPos(playerid,2224.220703 ,-4452.688477, 97.176201);
		SetPlayerTime(playerid,15,0);
		if(random(2)==0)
		{
		    SetPlayerWeather(playerid,9);
		}
		else
		{
		    SetPlayerWeather(playerid,20);
		}
		if(pInfo[playerid][login]==false)
		{
			SetPlayerCameraPos(playerid,2228.407715,-4447.744629,101.337296);
			SetPlayerCameraLookAt(playerid,2223.571533,-4448.979004,101.633995,2);
	    //	SetTimer("PlayerAutorizaed",8000,0,"d",playerid);
	    	pInfo[playerid][login]=true;
	    }
    }

   
    return 1;
}
public OnPlayerRequestSpawn(playerid)//кнопка spawn
{
//	Kick(playerid);
    return 1;
}
public OnPlayerConnect(playerid)
{
 //   printf("%s[%d]",pInfo[playerid][Name],playerid);
	if(IsPlayerNPC(playerid)==0)
	{
		GetPlayerName(playerid,pInfo[playerid][Name],24);
		SetPlayerTime(playerid,1,0);
		SetPlayerTime(playerid,15, 10);

		#include "../gamemodes/include/remove_building.pwn"


		   // new constr[80],strip[15];
		   // GetPlayerIp(playerid,strip,15);
		    //format(constr,80,"ВХОД: {5fc66d}%s[%d]{766458}IP: {5fc66d}%s",pInfo[playerid][Name],playerid,strip);
		  //  for(new i=0;i<4;i++)
		//	{
		//	   SendClientMessage(AdminId[i],0x766458,constr);
		//	}
	}

	return 1;
}

forward PlayerAutorizaed(playerid);
public PlayerAutorizaed(playerid)
{
    static str_auth_dialog[1867];//=//(70+24)+80+67+90+81+101+76+87+75+74+90+86+84+79+73+76+71+70+79+87+74+98+75]=//
	format(str_auth_dialog,1867,
"{E8D699}Приветствуем тебя на Секторе, выживший {00E100}%s{E8D699}!\n\n\
{D50000}Выбирайся на поверхность и начни свой опасный путь! Там тебя ждут:\n\n\
{FF8000}Более 5000 мест{E8D699}, в которых может появиться лут!\n\
{FF8000}Более 50 заброшенных зданий{E8D699} с ценным лутом: старые больницы, магазины,\n\
{E8D699}рестораны, отели, полицейские участки, склады, шахты и многое другое!\n\
{FF8000}Более 220 видов вещей{E8D699}: медикаменты, одежда, провизия, оружие и прочее снаряжение!\n\
{FF8000}50 зомби{E8D699}: агрессивные боты, с искусственным интеллектом!\n\
{FF8000}Система канализаций{E8D699}, под землей вы сможете пройти километры пути!\n\n\
{D50000}Но помни о суровых условиях поверхности и своих потребностях:\n\n\
{FF8000}Голод{E8D699}: нужно регулярно есть, причем думать что именно!\n\
{E8D699}От плесневой шаурмы ты можешь заболеть, а разогретая тушенка придаст тебе сил!\n\
{FF8000}Жажда{E8D699}: Пей как можно больше жидкости, но тоже думай, что ты пьешь.\n\
{E8D699}От кислого молока скорее всего скрючит живот, а от водки может вырубить.\n\
{FF8000}Иммунитет{E8D699}: Не выходи без респиратора и в бурю - это смерть.\n\
{FF8000}Холод{E8D699}: Ночью очень холодно и можно быстро замерзнуть.\n\
{E8D699}Разводи костры, пей и ешь горячее или передвигайся в автомобиле!\n\
{FF8000}Усталость{E8D699}: Ты не робот, тебе регулярно нужно спать.\n\
{E8D699}Старайся не спать на голой земле без костра. Делай лагерь!\n\
{FF8000}Нужда{E8D699}: Тебе регулярно нужно ходить в туалет, как без этого?\n\
{FF8000}Настроение{E8D699}: Ты не хладнокровный убийца, следи за своим настроением.\n\
{E8D699}Поднимай его алкоголем, сексом, молитвами или игрой на гитаре.\n\
{FF8000}Болезни{E8D699}: Не бегай под дождем, не вздумай залезть в реку и не ешь все подряд.\n\n\
{E8D699}Хорошего хабара! {00E100}",pInfo[playerid][Name]);

	new str_file_n[34];
	format(str_file_n,34,"users/%s.txt",pInfo[playerid][Name]);
    if(fexist(str_file_n)==0)//аккаунт не существует
    {
      //  format(str_auth_title,64,"{FFFFFF}Новый аккаунт. {51FF0F}Регистрация:");
	//	format(str_auth_,59,);//59
	    strcat(str_auth_dialog,"Придумай сложный пароль и не забудь его:");//41
        
        ShowPlayerDialog(playerid,2,3,!"{FFFFFF}Новый аккаунт. {51FF0F}Регистрация:",str_auth_dialog,!"Ок",!"Выход");
        SetPVarInt(playerid,"reg",1);
    }
	else//аккаунт существеут
	{
	 //   format(str_auth_title,64,"{FFFFFF}Аккаунт с таким ником существует. {51FF0F}Авторизация:");
	    strcat(str_auth_dialog,"Введи свой пароль и погнали:");
	    ShowPlayerDialog(playerid,1,3,!"{FFFFFF}Аккаунт с таким ником существует. {51FF0F}Авторизация:",str_auth_dialog,!"Ок",!"Выход");
	    
	    new File:opnfile; // создаём файловую переменную
		opnfile=fopen(str_file_n,io_read); /* открываем файл file с возможностью чтения и записываем его идентификатор в opnfile */
		new str_save_p[400];
		fread(opnfile,str_save_p); // читаем первую строку из файла и записываем её в tostring
		fclose(opnfile);
		

		new len_pas;
  		sscanf(str_save_p,"p<|>d",len_pas);
	    printf("len_pas: %d",len_pas);

	    new strb[55];
	    format(strb,55,"p<|>ds[%d]d",len_pas);
		new vw=0;
	    sscanf(str_save_p, strb ,len_pas ,pInfo[playerid][Password],vw);
	    SetPVarInt(playerid,"virtual",vw);
	}
}
public OnPlayerDisconnect(playerid,reason)
{
    DeletePVar(playerid,"er");
	return 1;
}
OpenInventory(playerid)
{
	SetPlayerAttachedObject(playerid,AttachPack_9, 371,BONE_Left_Hand_5, 0.151900,0.002000,0.134000,  28.590000,-168.100006,-22.290001,  1.050000,1.000000,1.170000);////2
	SetPlayerChatBubble(playerid,"копается в своем рюкзаке",0x007900AA,30.0,10000);
	ApplyAnimation(playerid,"BOMBER","BOM_Plant_Loop",2.100000, 0, 1,1,1,1);
	for(new Text:i=INV_YELLOY_MENU;i<=INV_KPK_MODEL_LAPTOP;i++)
	{
		TextDrawShowForPlayer(playerid,i);
	}
	PlayerTextDrawShow(playerid,PLAYER_DRAWS[playerid][21]);
	for(new tid=0,maxs=pInfo[playerid][loot_cell];tid<=maxs;tid++)
	{
        if(PLAYER_LOOT_DRAW[playerid][tid][loottype]!=0)
        {
	        PlayerTextDrawShow(playerid,PLAYER_LOOT_DRAW[playerid][tid][loot_model]);
			PlayerTextDrawShow(playerid,PLAYER_LOOT_DRAW[playerid][tid][loot_countX]);
		}
	}
	printf("MAX:%d",pInfo[playerid][loot_cell]);
	pInfo[playerid][openInv]=true;
	SelectTextDraw(playerid,0xACCBF1FF);
	//if(sound==true)
	//{
	PlayerPlaySound(playerid,1163,0.0,0.0,0.0);
	//}
}
HideInventory(playerid,bool:cancel_select)
{
	pInfo[playerid][openInv]=false;
	for(new Text:i=INV_YELLOY_MENU;i<=INV_KPK_MODEL_LAPTOP;i++)
	{
		TextDrawHideForPlayer(playerid,i);
	}
	for(new tid=0,maxs=pInfo[playerid][loot_cell];tid<=maxs;tid++)
	{
	    if(PLAYER_LOOT_DRAW[playerid][tid][loottype]!=0)
	    {
	      	PlayerTextDrawHide(playerid,PLAYER_LOOT_DRAW[playerid][tid][loot_model]);
			PlayerTextDrawHide(playerid,PLAYER_LOOT_DRAW[playerid][tid][loot_countX]);
		}
	}
	PlayerTextDrawHide(playerid, PLAYER_DRAWS[playerid][21]);
	ApplyAnimation(playerid,"CARRY","crry_prtial",4.000000, 0, 0,0,0,0);
	if(cancel_select==true)
	{
		CancelSelectTextDraw(playerid);
	}
}

public OnPlayerClickTextDraw(playerid, Text:clickedid)
{
	printf("OnPlayerClickTextDraw %d",_:clickedid);
    if(pInfo[playerid][openInv]==true)
    {
    	printf("1 OnPlayerClickTextDraw %d",_:clickedid);
	    if(clickedid == Text:65535 || clickedid==INV_CROSS)
	    {
	   		printf("2 OnPlayerClickTextDraw %d",_:clickedid);
			AttachPackToSpine(playerid,pInfo[playerid][pack]);
	        
			HideInventory(playerid,clickedid==INV_CROSS?true : false);
			PlayerPlaySound(playerid, 4602, 0.000000, 0.000000, 0.000000);
			return 1;
		}
		else if(clickedid == INV_KPK_MODEL_LAPTOP)//значок ноутбука кпк в инвенторе
		{
			PlayerPlaySound(playerid,40405,0.0,0.0,0.0);
			ShowPlayerDialog(playerid, 12500,2, !"{51FF0F}КПК", !"{E8D699}Баланс\n\
{E8D699}СМС\n\
{E8D699}Календарь\n\
{E8D699}Рингтон смс\n\
{E8D699}Радио 'Сектор'\n\
{E8D699}Выключить радио\n\
{E8D699}Камера: сделать селфи", !"Ок", !"Отмена");
		}
		else if(clickedid == INV_TORG)//значок доллара торговли в инвенторе
		{
		    PlayerPlaySound(playerid,20801,0.0,0.0,0.0);
		    ShowPlayerDialog(playerid, 10013,2, !"{51FF0F}Торговля", !"Открыть лавку\nЗакрыть лавку\nСправка", !"Выбрать", !"Отмена");
		}
	}
    return 0;
}

public OnPlayerClickPlayerTextDraw(playerid, PlayerText:playertextid)
{
	printf("OnPlayerClickPlayerTextDraw %d",_:playertextid);
	if(playertextid!=PlayerText:65535)
	{
		printf("1 OnPlayerClickPlayerTextDraw %d",_:playertextid);
		for(new i=0;i<MAX_INVENTORY_LOOT;i++)
		{
		    if(PLAYER_LOOT_DRAW[playerid][i][loot_model]==playertextid)
		    {
		        new loot_type=PLAYER_LOOT_DRAW[playerid][i][loottype];
		        PLAYER_PRE_USE_[playerid]=i;

				new str_lootname[30];
				format(str_lootname,30,"{FF0000}%s",InfoLoot[loot_type][NAMEloot]);

		    	ShowPlayerDialog(playerid,100,2, str_lootname,
"Что это?\n\
Использовать\n\
Выбросить\n\
Передать\n\
Предложить купить (игроку)\n\
Продать торговцу (NPC)", "Далее","Назад"
				);
				HideInventory(playerid, true );
				PlayerPlaySound(playerid, 1083, 0.0, 0.0, 0.0);
				break;
		    }
		}
	}
    return 0;
}
public OnPlayerClickPlayer(playerid, clickedplayerid, source)
{
	if(IsPlayerConnected(clickedplayerid)&&clickedplayerid<501&&IsPlayerNPC(clickedplayerid)==0)
	{
	    pInfo[playerid][player_c]=clickedplayerid;
	    ShowPlayerDialog(playerid,2642,2,!"Выберите нужный пункт:",!"Отправить личное сообщение\nЗаказать убийство (нанять киллера)",!"Ок",!"Отмена");
	}
	return 1;
}
	   

public OnPlayerLeaveDynamicArea(playerid,areaid)
{
	if(areaid==AREA_BUNKER)
	{
	    if(pInfo[playerid][Resp]==true)
	    {
			AttachResp(playerid);
		}
	}
	return 1;
}
public OnPlayerEnterDynamicArea(playerid,areaid)
{
	if(areaid==BUNKER_VOROTA)
	{
	    if(vorota_open==0)
	    {
	        SetTimer("vorota_close",7500,0);
        	MoveDynamicObject(vorota, 212.600006,1875.630005,17.170000, 1.0);
            vorota_open=1;
            new Float:x,Float:y,Float:z;
		    GetDynamicObjectPos(vorota,x,y,z);
		    if(z<14.0)
		    {
		    	foreach(Player, i)
				{
				    if(IsPlayerInRangeOfPoint(i,16.0,212.600006,1875.630005,13.970000))
				    {
		        		PlayerPlaySound(i,12201,0.0,0.0,0.0);
					}
				}
		    }
	    }

	}
	else if(areaid==AREA_BUNKER)
	{
	    RemovePlayerAttachedObject(playerid, AttachPack_9);

	    pInfo[playerid][Virus]=0;

		pInfo[playerid][Temp]=20;

	}
	else if(areaid>=STOL_A&&areaid<=STOL_i)//на фабрике столы
	{
 		if(pInfo[playerid][Ready_clothe]==1)
	    {
			new object;
			switch(areaid)
			{
				case STOL_A:
				{

				    SetPlayerCheckpoint(playerid, 308.557678,1830.822510,6.384280,1.000000);
				    object=CreateDynamicObject(2843, 307.83429, 1830.97461, 6.85450,   0.00000, 0.00000, 0.00000);
				    SetPlayerFacingAngle(playerid,0.0);
				}
				case STOL_B:
				{
				    SetPlayerCheckpoint(playerid, 306.158386,1830.822510,6.384300,1.000000);
					object=CreateDynamicObject(2843, 305.61249, 1830.97095, 6.85450,   0.00000, 0.00000, 0.00000);
					SetPlayerFacingAngle(playerid,0.0);
				}
				case STOL_C:
				{
				    SetPlayerCheckpoint(playerid, 303.954315,1830.822510,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 303.49469, 1830.97021, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,0.0);
				}
				//////////////////
				case STOL_D:
				{
				    SetPlayerCheckpoint(playerid, 308.809601,1833.592651,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 308.21289, 1832.64429, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,180.0);
				}
				case STOL_E:
				{
				    SetPlayerCheckpoint(playerid, 306.227112,1833.592651,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 305.81516, 1832.64307, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,180.0);
				}
				case STOL_F:
				{
				    SetPlayerCheckpoint(playerid, 303.870514,1833.592651,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 303.61554, 1832.64563, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,180.0);
				}
				//////////////////
				case STOL_G:
				{
				    SetPlayerCheckpoint(playerid, 308.736511,1835.484253,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 308.03830, 1835.64307, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,0.0);
				}
				case STOL_H:
				{
				    SetPlayerCheckpoint(playerid, 306.440491,1835.484253,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 305.84790, 1835.48950, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,0.0);
				}
				case STOL_i:
				{
				    SetPlayerCheckpoint(playerid, 304.335999,1835.484253,6.384300,1.000000);
                    object=CreateDynamicObject(2843, 303.82825, 1835.62512, 6.85450,   0.00000, 0.00000, 0.00000);
                    SetPlayerFacingAngle(playerid,0.0);
				}
				//////////////////
			}
            SetPlayerPos(playerid,pInfo[playerid][pos_x],pInfo[playerid][pos_y], 7.276799);
			RemovePlayerAttachedObject(playerid,8);
			ApplyAnimation(playerid,"INT_SHOP","shop_cashier",4.1,0,0,0,1,15000);
			SetPlayerAttachedObject(playerid,8,18632,5,0.072000,0.023900,-0.013000,-44.200001,-93.190002,26.799999,0.780000,0.750000,0.180000);
			SendClientMessage(playerid,0x008800FF,"Вы шьёте одежду! Подождите...");
			SetTimerEx("FABRIC_CLOTHES",6000,0,"dd",playerid,object);
			pInfo[playerid][Ready_clothe]=2;

		}
	}
	else if(areaid==FABRIC_PRODUCTION)//готовая продукция
	{
	    SetPlayerCheckpoint(playerid, 316.494751,1834.342041,6.581740,2.000000);
	    if(pInfo[playerid][Ready_clothe]==3)
	    {
	        RemovePlayerAttachedObject(playerid,8);
		    pInfo[playerid][Clothes]++;
	        pInfo[playerid][Ready_clothe]=1;

	        new fabrick_str[50];
	        format(fabrick_str,50,"Изготовлено одежды: {00FF00}%d{FFFFFF}/{FF0000}10",pInfo[playerid][Clothes]);
			SendClientMessage(playerid,-1,fabrick_str);

	        SendClientMessage(playerid,0x008800AA,!"Возьмите новый материал с ткацкого станка.");

			if(pInfo[playerid][Clothes]==10)
			{
			    pInfo[playerid][Clothes]=0;
				pInfo[playerid][Ready_clothe]=0;
				pInfo[playerid][Resp]=true;
				SendClientMessage(playerid,0x008800AA,!"Оплата: {FF0000}Респиратор {008800}(сразу используется)!");
				SendClientMessage(playerid,0xFFFFFFAA,!"Вы использовали респиратор, он сохраняется с релогом, но пропадает при гибели.");
			//	SendClientMessage(playerid,0xFFFFFFAA,!"Одного респиратора хватает, примерно, на трое суток (игровых). Износ идет только на поверхности!");
				PlayerPlaySound(playerid,33402,0.000000,0.000000,0.000000);
			}
		}
	}
	return 1;
}
forward FABRIC_CLOTHES(playerid,object);
public FABRIC_CLOTHES(playerid,object)
{
    ApplyAnimation(playerid,"CARRY","crry_prtial",4.1,0,1,1,1,1);
    SendClientMessage(playerid,0x008800AA,"Положите одежду в коробку!");
    RemovePlayerAttachedObject(playerid,8);
    SetPlayerAttachedObject(playerid,8,2386,5, 0.041000,0.056900,0.161000,-83.889999,2.100000,-76.089996,1.000000,1.000000,1.000000);
    pInfo[playerid][Ready_clothe]=3;
    DestroyDynamicObject(object);
}

forward vorota_close();
public vorota_close()
{
	MoveDynamicObject(vorota, 212.600006,1875.630005,13.970000, 1.0);
	vorota_open=0;
}

forward OXPAHA();
public OXPAHA()
{
	static oxpana[74];
	for(new i;i<12;i++)
	{
		
		if(random(4)==2)
		{
			switch(random(50))
			{
			    
			    case 0 :format(oxpana, 74, "Проходи, что уставился?");
			    case 1 :format(oxpana, 74, "Как дела на поверхности?");
			    case 2 :format(oxpana, 74, "Неее! Я из бункера ни ногой!");
			    case 3 :format(oxpana, 74, "На заброшенных заводах еще может быть много еды.");
			    case 4 :format(oxpana, 74, "Говорят, мародеры нашли сарай людоеда, с кучей трупов и гнилого мяса.");
			    case 5 :format(oxpana, 74, "Говорят, под землей есть большая сеть канализаций!");
			    case 6 :format(oxpana, 74, "Если совсем туго придется, надежда только на спасателей.");
			    case 7 :format(oxpana, 74, "Тут всем плевать, кем ты был раньше!");
			    case 8 :format(oxpana, 74, "А-аай! Не самый подходящий день для смерти.");
			    case 9 :format(oxpana, 74, "Скоро мы все станем зараженными!");
			    case 10:format(oxpana, 74, "Нужно расширять территорию!");
			    case 11:format(oxpana, 74, "Иваныч ждет от тебя вестей.");
			    case 12:format(oxpana, 74, "Иваныч говорит, что в метро появился новый барыга.");
			    case 13:format(oxpana, 74, "Мы так долго здесь не продержимся...");
			    case 14:format(oxpana, 74, "Говорят, есть заброшенное бомбоубежище. Вот бы его найти!");
			    case 15:format(oxpana, 74, "Здарова, выживший!");
			    case 16:format(oxpana, 74, "Мародера, как волка - ноги кормят!");
			    case 17:format(oxpana, 74, "Ты даже не представляешь где я был и что там видел.");
			    case 18:format(oxpana, 74, "Скоро это место будет только на карте... Старой карте.");
			    case 19:format(oxpana, 74, "Сейчас бы пожрать чего горяченького...");
			    case 20:format(oxpana, 74, "От меня ты помощи не дождешься!");
			    case 21:format(oxpana, 74, "Даа, босс вас..хах, пожалеет!");
			    case 22:format(oxpana, 74, "Бури на поверхности все чаще. Эх, сейчас бы поваляться на солнышке!");
			    case 23:format(oxpana, 74, "Проходи, не до тебя сейчас.");
			    case 24:format(oxpana, 74, "Мы с боссом вам поможем!");
			    case 25:format(oxpana, 74, "Похоже... у нас неприятности...");
			    case 26:format(oxpana, 74, "Э-эх, сейчас бы пожрать чего горячеького...");
			    case 27:format(oxpana, 74, "Милое местечно! Ты хочешь, чтобы с ним было все в порядке?");
			    case 28:format(oxpana, 74, "Приятель, за крышу платить надо, а то протекать будет!");
			    case 29:format(oxpana, 74, "Хорошенькое местечко! Я уверен, ты хочешь чтобы оно таким же и осталось!");
		        case 30:format(oxpana, 74, "Все ништяк!");
		        case 31:format(oxpana, 74, "Пора расшибить пару чьих нибудь лбов!");
		        case 32:format(oxpana, 74, "Слыхал? Говорят на трассе самолет разбился!");
		        case 33:format(oxpana, 74, "Для нас настали сложные времена.");
		        case 34:format(oxpana, 74, "Нужно расширять территорию!");
		        case 35:format(oxpana, 74, "Здесь скоро не хрена не будет!");
		        case 36:format(oxpana, 74, "Поговаривают, Шрам с Иванычем что-то не поделили. Ой, что-то будет...");
		        case 37:format(oxpana, 74, "Что принес?");
		        case 38:format(oxpana, 74, "О, привет, заходи! Сейчас поставлю чайник и мы выпьем по рюмочке.");
			}
			CallLocalFunction("OnPlayerText","ds",i,oxpana);
		}
	}
}

public OnPlayerText(playerid,text[])
{
//	if(IsPlayerNPC(playerid))
//	{
//		strins(text,"[Охранник]:",0,73);
//	}
/*
AddPlayerClass(2,248.6003,1857.2114,8.7578,180.6488,0,0,0,0,0,0); // radius_point

AddPlayerClass(2,248.8071,1838.2416,8.5472,359.3704,0,0,0,0,0,0); // radiusdal
AddPlayerClass(2,248.8083,1847.9465,8.7734,1.5794,0,0,0,0,0,0); // radius_dal_blije
AddPlayerClass(2,248.7424,1852.6857,8.7658,1.0990,0,0,0,0,0,0); // radius_ewe_blije
AddPlayerClass(2,248.7376,1854.9166,8.7742,1.0990,0,0,0,0,0,0); // radius_eweeweblije
AddPlayerClass(2,248.6522,1856.2289,8.7621,2.0599,0,0,0,0,0,0); // radius_onecolor

    */
    if(pInfo[playerid][pMutDo]<=gettime(_,_,_))
    {
	    SetPlayerChatBubble(playerid,text,0x00FF00AA,20.0,10000);


		new str_chat[120],
			Float:chat_dist;
		format(str_chat,120,"%s[%d]: %s",pInfo[playerid],playerid,text);
		
		foreach(Player, i)
		{
			if(i!=playerid)
			{
		        chat_dist=GetPlayerDistanceFromPoint(playerid,pInfo[i][pos_x],pInfo[i][pos_y],pInfo[i][pos_z]);

				if(chat_dist<=1.0)
				{
				    SendClientMessage(i,0xE6E6E6E6,str_chat);//-421075226    светлый - самый ближний
				}                                                   //          чем ниже тем темнее
				else if(chat_dist<=2.3100)
				{
				    SendClientMessage(i,0xC8C8C8C8,str_chat);//-926365496
				}
				else if(chat_dist<=4.6100)
				{
		            SendClientMessage(i,0xAAAAAAAA,str_chat);//-1431655766
				}
				else if(chat_dist<=9.3100)
				{
		            SendClientMessage(i,0x8C8C8C8C,str_chat);//-1936946036
				}
				else if(chat_dist<=19.2200)
				{
		            SendClientMessage(i,0x6E6E6E6E,str_chat);//1852730990    темный - самый дальний
				}
			}
		}
	}
	else//если у игрока есть мут
	{
		SetPlayerChatBubble(playerid,"Пытается что-то сказать...",0xFF0000AA,20.0,10000);
	    new str_ymute[41];
	    format(str_ymute,41,"У вас бан чата! До снятия %d секунд(ы)",pInfo[playerid][pMutDo]-gettime(_,_,_));
	    SendClientMessage(playerid,0xFF6347AA,str_ymute);
	}
}
public OnPlayerCommandText(playerid, cmdtext[])
{
    if(strfind(cmdtext,"/торг ")==0)
    {
		strdel(cmdtext,0,6);
		new open_torgid;//=strval(cmdtext);
		if(sscanf(cmdtext,"d",open_torgid))return SendClientMessage(playerid,-86,!"Введите /торг id игрока.");
//		if(open_torgid)
		
		if(IsPlayerConnected(open_torgid))
		{
		    if(pInfo[open_torgid][torg]==true)
		    {
				SetPlayerChatBubble(playerid,"смотрит товары",0x007900AA,30.0,10000);
				
		    }
		    else
		    {
		        SendClientMessage(playerid,-1263159297,!"Этот человек сейчас ничего не продает.");
		    }
		}
		else
		{
		}
		
		
		
      //  return 1;
    }
    else if(strfind(cmdtext,"/в ")==0)
    {
	    if(pInfo[playerid][Isvip]==true)
		{
		    strdel(cmdtext,0,3);
		    
			new str_vip[120];
			format(str_vip,120,"{FF4D00}VIP{FFFF00}: %s[%d]: %s",pInfo[playerid][Name],playerid,cmdtext);
		  //  FF4D00
			foreach(Player, i)
			{
			 	if(pInfo[i][Isvip]==true&&pInfo[i][vip_chat]==true)
			 	{
			 	    SendClientMessage(i,-1,str_vip);
			 	}
			}
		}
		else
		{
		    SendClientMessage(playerid,0xFF000000,!"Пополните счет, чтобы писать в VIP чат (подробности на сайте samp-sektor-2.ru)");
		}
	}
	else if(strfind(cmdtext,"/к ")==0)
    {
    //проверку на мут
    
            strdel(cmdtext,0,3);
            if(strlen(cmdtext)!=0)
            {
                new str_kriknul[120];

                format(str_kriknul,120,"- %s[%d] кричит: %s",pInfo[playerid][Name],playerid,cmdtext);
                

            }
			else
			{
			    SendClientMessage(playerid,0xDDA0DD00,!">> Введите{FFFFFF}: /к [текст]");
			}
	}
	else if(strfind(cmdtext,"/mute ")==0)
	{
	    //проверку на админа
	        strdel(cmdtext,0,6);
	        new myte_id,seconds;
	        if(sscanf(cmdtext,"dd",myte_id,seconds))return SendClientMessage(playerid,0xFF000000,!"/mute [id][second]");
	        
	        SetPlayerChatBubble(playerid,"Заткнут(а)",0x007900aa,30.0,10000);
	        
	        new timech=gettime(_,_,_);
	        pInfo[myte_id][pMutDo]=timech+seconds;
	        
	        new str_mutes[102];
	        format(str_mutes,102,"Вы выдали бан чата игроку {00FF00}%s {FF0000}на {00FF00}%d {FF0000}секунд",pInfo[myte_id][Name],seconds);
	        SendClientMessage(playerid,0xFF000000,str_mutes);
	        
	        format(str_mutes,102,"%s получает бан чата от %s",pInfo[myte_id][Name],pInfo[playerid][Name]);
	        SendClientMessageToAll(0xFF6347AA,str_mutes);
	        SendClientMessage(myte_id,0xFF6347AA,!"Вам выдали бан чата.");
	}
    return 1;

}
/*
//cmd:ban(playerid,params[])
{
	for(new i;i<4;i++)
	{
	    if(AdminId[i]==playerid)
	    {
	    
	        sscanf(params,"ds[25]",params[0],params[1]);
	        if(pInfo[params[0]][spawned]==true)
	        {
	            new str[125];
	            format(str,125,"Администратор %s забанил %s. Причина: %s",pInfo[AdminId[i]][Name],pInfo[params[0]][Name],params[1]);
	        	SendClientMessageToAll(0xf95100ff,str);

	            SendClientMessage(playerid,0xdf0000ff,!"СДЕЛАЙТЕ СКРИНШОТ (F8)! Ваш аккаунт заблокирован. Наш сайт: www.samp-sektor-2.ru");
	            SendClientMessage(playerid,-1,!"Введите /q, чтобы выйти.");
	            
	            KickP(playerid);
	        }
	        else
	        {
	            SendClientMessage(playerid,0xdf0000ff,!"Игрок не авторизировался!");
	        }
	        break;
	    }
	}
}*/
stock AC_KICK(playerid)
{
    SendClientMessage(playerid,0xf95100ff,!"Вас отключил античит!{df0000} Возможно вы залагали или используете читы/моды.");
    SendClientMessage(playerid,0xff6347ff,!"ОБЯЗАТЕЛЬНО СДЕЛАЙТЕ СКРИНШОТ (клавиша F8)!");
}
KickP(playerid)
{
	new value = 500*500;
	so_KICK:{
    value -- ;
    if value != 0*then goto so_KICK;
	}
	#emit PUSH.S playerid
	#emit PUSH.C 4
	#emit SYSREQ.C Kick
	#emit STACK 8
	#emit RETN
	return;
}


/* 4:24
   1:45
   3:12
   3:14
	0:4
*/
forward podskazki();
public podskazki()
{
	static str_pods[155];
	
	switch(random(90))
	{

		case 0:format(str_pods,155,"Если ваши индикаторы голода и жажды не изменили цвет, то здоровье будет восстанавливаться!");
		case 1:format(str_pods,155,"Респиратор - хорошая защита от вирусов! Его можно купить у Иваныча или найти на поверхности!");
		case 2:format(str_pods,155,"Ваш КПК сканирует окружающий мир на вирусы. Если его показатель больше 0, то вы теряете иммунитет!");
		case 3:format(str_pods,155,"Респиратор имеет фильтр -5, это значит он спасает от вирусов до такой сложности.");
		case 4:format(str_pods,155,"Мотоциклетный шлем можно купить и одеть только на байке. Он защитит вас от вирусов!");
		case 5:format(str_pods,155,"Настроение можно поднять алкоголем, игрой на гитаре и сексом!");
		case 6:format(str_pods,155,"В заброшенном храме можно помолиться и повысить настроение!");
		case 7:format(str_pods,155,"Если вы промокнете, то можете простудиться и заболеть!");
		case 8:format(str_pods,155,"Если есть сомнительную пищу - бургеры, шаурму, молоко и т.п. то можно отравиться.");
		case 9:format(str_pods,155,"Если вы отравились или простыли, то можно излечиться снадобьем! Его можно купить в госпитале.");
		case 10:format(str_pods,155,"Если купить байк у Механика, то его не смогут угнать.");
		case 11:format(str_pods,155,"Во время бури уровень вирусов зашкаливает и полностью защищает только набор \"топ-шлем-респиратор\".");
		case 12:format(str_pods,155,"Еще одно убежище можно найти в ЛС, в Метро!");
		case 13:format(str_pods,155,"Самый дорогой лут можно отыскать в зданиях!");
		case 14:format(str_pods,155,"Если ваш иммунитет ослаб - используйте аптечку. В ней есть антибиотики.");
		case 15:format(str_pods,155,"Виски может немного согреть вас, а водка поправить иммунитет.");
		case 16:format(str_pods,155,"Если вокруг вас вирусов больше +5, то респиратор начнет их пропускать и вы будете терять иммунитет.");
		case 17:format(str_pods,155,"Респиратор не дает полной защиты от вирусов, во время бури он может их пропустить!");
		case 18:format(str_pods,155,"Во время бури не выходите на поверхность! Уровень вирусов зашкаливает!");
		case 19:format(str_pods,155,"Вирусы расстелаются по поверхности земли и поднимаются с порывом ветра. От ветра и меняется значение сканера.");
		case 20:format(str_pods,155,"Теплая одежда стоит дорого, но зато теплее и лучше защищает от вирусов!");
		case 21:format(str_pods,155,"Иваныч покупает вещи за треть стоимости, поэтому выгодней открывать свою лавку!");
		case 22:format(str_pods,155,"Открыть свою торговую лавку можно через личное меню (клавиша N)!");
		case 23:format(str_pods,155,"Если вы открыли лавку, то игроки смогут купить все вещи из вашего рюкзака!");
		case 24:format(str_pods,155,"Можно купить большой рюкзак, чтобы переносить больше хабара!");
		case 25:format(str_pods,155,"В теплой одежде вы будете меньше мерзнуть ночью.");
		case 26:format(str_pods,155,"Купите теплую одежду, чтобы не замерзать ночью!");
		case 27:format(str_pods,155,"Продавать вещи игрокам выгодней, чем отдавать их Иванычу!");
		case 28:format(str_pods,155,"Торговать в своей лавке можно даже в АФК!");
		case 29:format(str_pods,155,"Если прыгнуть с высоты, то можно вывихнуть ногу!");
		case 30:format(str_pods,155,"Не прыгайте с высоты - можете вывихнуть ногу!");
		case 31:format(str_pods,155,"Если у вас нет бронежилета, то вы получите кровотечение от пулевых ранений!");
		case 32:format(str_pods,155,"Если у вас кровотечение или вывих, то здоровье не будет генерироваться.");
		case 33:format(str_pods,155,"От урона катаной можно получить кровотечение!");
		case 34:format(str_pods,155,"Во время бури счетчик вирусов зашкаливает. Лучше искать укрытие.");
		case 35:format(str_pods,155,"Вывихи и кровотечения можно вылечить бинтами или аптечками!");
		case 36:format(str_pods,155,"Если промокнуть, то можно легко простудиться.");
		case 37:format(str_pods,155,"Если спать на улице, то лучше развести костер, иначе замерзнете!");
		case 38:format(str_pods,155,"На поверхности есть много мест с лутом, не занесенных в навигатор!");
		case 39:format(str_pods,155,"В своей комнате можно безопасно справлять нужду или спать.");
		case 40:format(str_pods,155,"Старайтесь спать чаще, чтобы не пришлось спать долго!");
		case 41:format(str_pods,155,"Старайтесь не есть сомнительную пищу - бургеры, шаурму, молоко и т.п.. Она может быть испорчена!");
		case 42:format(str_pods,155,"От прямой атаки зомби можно получить кровотечение.");
		case 43:format(str_pods,155,"В игре есть вид от первого лица (клавиша N - настройки).");
		case 44:format(str_pods,155,"Тайники с лутом обновляются 1 раз в сутки!");
		case 45:format(str_pods,155,"В комнату можно купить личный сейф, который никто не откроет!");
		case 46:format(str_pods,155,"Рация ловит на несколько километров и не работает в дождь!");
		case 47:format(str_pods,155,"На гитаре можно играть различные мелодии и петь песни!");
		case 48:format(str_pods,155,"В навигаторе много меток на здания с лутом!");
		case 49:format(str_pods,155,"На поверхности есть много мест с лутом, не занесенных в навигатор!");
		case 50:format(str_pods,155,"Можно купить карту, чтобы легче ориентироваться на поверхности.");
		case 51:format(str_pods,155,"Рация имеет две частоты: /р и /б.");
		case 52:format(str_pods,155,"Цвет бригады выбирает лидер, когда создает бригаду!");
		case 53:format(str_pods,155,"В бункере можно стоять АФК сколько угодно, а в зданиях или на улице вас может кикнуть.");
		case 54:format(str_pods,155,"Когда вы торгуете в бункере - параметры не расходуются!");
		case 55:format(str_pods,155,"Деньги можно положить в Хранилище бункера, тогда вы их не потеряете!");
		case 56:format(str_pods,155,"Иваныч - самый главный в бункере Сектор-2, он занимается скупкой и продажей различных вещей!");
		case 57:format(str_pods,155,"Пустую канистру можно наполнить бензином на любой АЗС!");
		case 58:format(str_pods,155,"Чем больше полезного вы делаете для бункера, тем выше ваш Авторитет!");
		case 59:format(str_pods,155,"Если вы замерзаете вдали от бункера, то можно развести костер и согреться.");
		case 60:format(str_pods,155,"Если вы замерзаете вдали от бункера - разведите костер.");
		case 61:format(str_pods,155,"В заведенной машине вам не страшен холод!");
		case 62:format(str_pods,155,"Крепкий алкоголь не только немного утоляет жажду, но и согреет вас!");
		case 63:format(str_pods,155,"Если пить много алкоголя, то вас может \"вырубить\".");
		case 64:format(str_pods,155,"Тайники с провизией, как правило, появляются у разбитых машин, ящиков и д.р. мусора.");
		case 65:format(str_pods,155,"Спрятать свои вещи можно в термоящик!");
		case 66:format(str_pods,155,"Термоящик можно купить и установить на поверхности где угодно!");
		case 67:format(str_pods,155,"Дрова для костра чаще всего можно найти в местах скопления деревьев.");
		case 68:format(str_pods,155,"Больше всего провизии появляется в складских помещениях.");
		case 69:format(str_pods,155,"За каждое убийство вы теряете настроение и можете впасть в депрессию.");
		case 70:format(str_pods,155,"Если вы впали в депрессию, то не сможете держать в руках оружие.");
		case 71:format(str_pods,155,"Золото является ценным ресурсом. Его можно купить или найти на поверхности - в старой шахте и в заброшенном храме.");
		case 72:format(str_pods,155,"Патроны и оружие можно найти в заброшенных магазинах оружия и полицейских участках.");
		case 73:format(str_pods,155,"Бензин машины расходуется всегда, когда двигатель заведен, а аккумулятор наоборот, расходуется в простое.");
		case 74:format(str_pods,155,"В машине можно закрыться.");
		case 75:format(str_pods,155,"В безопасной зоне нельзя запрыгнуть на машину.");
		case 76:format(str_pods,155,"В любой момент у вашей машины может пробить колесо, из-за раскиданного мусора.");
		case 77:format(str_pods,155,"Есть несколько видов запчастей - для ремонта автомобилей, мотоциклов и колес.");
		case 78:format(str_pods,155,"Инструменты и канистры можно использовать бесконечно.");
		case 79:format(str_pods,155,"Хорошо заработать можно на заданиях. Например, на задании \"Курьер\".");
		case 80:format(str_pods,155,"Не спешите продавать провизию Иванычу, попробуйте выполнять его задания!");
		case 81:format(str_pods,155,"Недалеко от бункера есть парковка \"допа\" - транспорта с системой анти-угона.Купить такой транспорт можно через администрацию.");
		case 82:format(str_pods,155,"VIP защита сохранит все ваши вещи при гибели.");
		case 83:format(str_pods,155,"В любом огнестрельном оружии ограниченное количество патронов.");
		case 84:format(str_pods,155,"В мире есть сеть подземных канализаций, со своими секретами.");
		case 85:format(str_pods,155,"В мире есть транспорт, попробуйте найти его!");
		case 86:format(str_pods,155,"Разбогатеть вам поможет торговля - откройте свою лавку (клавиша N)!");
		case 87:format(str_pods,155,"Устанавливая палатку, не забудьте рядом развести костер!");
		case 88:format(str_pods,155,"Избегайте контакта с зараженными. Как минимум, можете получить кровотечение.");
		case 89:format(str_pods,155,"Чем быстрей вы крутите педали на велике, тем быстрей расходуется жажда и усталость!");
	}
	strins(str_pods,"{C40000}ПОДСКАЗКА: {ACAC59}",0);
	SendClientMessageToAll(0x00ffffff,str_pods);
}
//{C40000}?????????: {ACAC59}??? ?????? ????????? ?? ??????? ??? ???????, ??? ???? ??? ?????????!











