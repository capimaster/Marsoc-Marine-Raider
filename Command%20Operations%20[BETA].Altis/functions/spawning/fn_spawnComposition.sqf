params ["_type","_position","_direction","_addToZeus","_enableDamage"];
/*
Spawns a building/object composition of a given type. The composition type is defined in this function.
The composition is spawned in reference to the center object which is spawned on the passed position.
If an unknown composition type is passed the function will simply exit with a warning message and no objects will be spawned.
The function returns an array of all objects in the composition.
*/

if (isNil "_direction") then {_direction = 0};
_composition = switch _type do
{
	default {};
	case "Camp_01_Rad":
	{
		[
		["Land_WoodenLog_F",[-0.516602,-0.730469,0],314.343,1,0,[0,0],"","",true,false],
		["Land_WoodenLog_F",[1.04102,0.375,0],314.343,1,0,[0,0],"","",true,false],
		["CamoNet_OPFOR_open_F",[0.386719,-0.111328,0],314.343,1,0,[0,0],"","",true,false],
		["Campfire_burning_F",[0.917969,-1.0957,0.0299988],314.343,1,0,[0,0],"","",true,false],
		["Land_WoodenLog_F",[-0.238281,-2.22656,0],314.343,1,0,[0,0],"","",true,false],
		["Land_WoodenLog_F",[2.51855,-0.142578,0],314.343,1,0,[0,0],"","",true,false],
		["Land_TentA_F",[-3.19238,0.710938,0],297.516,1,0,[0,0],"","",true,false],
		["Land_TentA_F",[-0.536133,3.70703,0],333.845,1,0,[0,0],"","",true,false],
		["Land_TentA_F",[-3.24805,-2.31836,0],250.663,1,0,[0,0],"","",true,false],
		["Land_WoodPile_F",[-1.62793,-4.35156,0],96.9997,1,0,[0,-0],"","",true,false],
		["Land_TentA_F",[2.46094,4.02148,0],12.8339,1,0,[0,0],"","",true,false]
		]
	};
	case "Base_01_Wes":
	{

		[
			["Sign_Arrow_Cyan_F",[-3.95346,-4.0398,0],179.144,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-6.45046,-4.2138,0],179.303,1,0,[0,-0],"","",true,false],
			["Land_Cargo_HQ_V1_F",[-8.3074,3.02716,0],270.522,1,0,[0,0],"","",true,false],
			["CargoNet_01_barrels_F",[8.62054,-1.8718,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[-9.09196,0.774241,0.601674],0,1,0,[0,0],"","",true,false],
			["CargoNet_01_barrels_F",[8.55884,-3.39901,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-9.52096,0.378504,0.601674],0,1,0,[0,0],"","",true,false],
			["CargoNet_01_barrels_F",[10.3445,-1.8278,0],0,1,0,[0,0],"","",true,false],
			["CamoNet_OPFOR_F",[9.33418,-4.90464,0],242.556,1,0,[0,0],"","",true,false],
			["CargoNet_01_barrels_F",[10.3515,-3.4268,0],0,1,0,[0,0],"","",true,false],
			["I_E_CargoNet_01_ammo_F",[10.0457,-5.48083,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-7.79214,-8.59591,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[-9.19049,7.16795,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-10.6156,5.50913,0.601674],0,1,0,[0,0],"","",true,false],
			["I_E_CargoNet_01_ammo_F",[10.0202,-7.3825,0],0,1,0,[0,0],"","",true,false],
			["I_E_CargoNet_01_ammo_F",[11.7588,-5.4988,0],0,1,0,[0,0],"","",true,false],
			["I_E_CargoNet_01_ammo_F",[11.8295,-7.30407,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-7.71752,-11.8039,0.728848],0,1,0,[0,0],"","",true,false],
			["Logic",[1.45854,11.2252,9],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[-9.87646,-10.1491,0],89.6803,1,0,[0,0],"","",true,false],
			["O_Truck_03_repair_F",[7.21848,16.6641,0.137111],91.6874,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[-7.65612,-17.6021,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[-20.1552,-9.9274,0],270.939,1,0,[0,0],"","",true,false],
			["O_Truck_02_Ammo_F",[5.93754,20.8182,0.217446],89.858,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[-9.84277,-19.3666,0],91.3445,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[-7.72748,-20.9929,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Large_Blue_F",[8.36193,-20.7952,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-22.4118,-8.07974,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[25.2525,1.85723,0],91.1025,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[25.1887,-6.3972,0],92.4352,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[-22.3951,-11.3202,0.728848],0,1,0,[0,0],"","",true,false],
			["O_Truck_02_transport_F",[6.03772,25.1182,0.2175],91.8658,1,0,[0,-0],"","",true,false],
			["Land_Cargo_House_V1_F",[-20.0473,-19.4275,0],270.939,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-17.463,21.2412,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[25.1857,-14.65,0],92.5702,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[-22.2146,-17.9643,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-20.8043,19.7025,0],0,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_CSAT_brownhex_generic_outer_F",[-20.0455,21.2362,0],89.259,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[1.09714,-31.0797,0],181.732,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-22.295,-20.8038,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-20.5665,22.765,0],0,1,0,[0,0],"","",true,false],
			["Land_BarGate_01_open_F",[33.476,4.80508,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[24.899,18.1938,0],270.828,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-7.15662,-31.0552,0],181.732,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-32.0162,2.51671,0],273.019,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[9.3951,-30.9969,0],181.732,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-32.0079,-5.58308,0],270.132,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.9473,10.7873,0],270.799,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall4_F",[-30.9097,-11.747,0],273.492,1,0,[0,0],"","",true,false],
			["Land_HBarrierTower_F",[20.2874,-26.2469,0],314.195,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[24.9521,-22.7599,0],94.543,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[-15.3553,-31.0385,0],181.732,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[17.5273,-30.8706,0],181.732,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.9797,-15.9037,0],269.258,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[21.4156,-27.3947,2.28029],133.401,1,0,[0,-0],"","",true,false],
			["Land_HBarrier_Big_F",[34.1572,9.02354,0],270.828,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.8911,19.0459,0],273.054,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.9846,33.5685,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierTower_F",[-27.2513,-26.7889,0],49.6921,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.7465,-23.3498,0],270.985,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-21.6376,31.503,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[34.0849,17.6223,0],270.828,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-23.6966,-31.1826,0],181.732,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_CSAT_brownhex_generic_outer_F",[-20.0705,33.5932,0],270.095,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-28.2218,-27.602,2.28029],232.283,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[3.28463,38.5222,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[0.237367,38.9564,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.7458,27.3122,0],272.132,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-21.7539,35.3778,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[0.825766,38.4912,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[3.55924,38.505,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[24.5942,35.1518,0],91.4287,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Yellow_F",[2.02939,40.0429,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[7.5199,40.0816,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[2.57419,40.0065,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_BarGate_01_open_F",[33.2654,30.8362,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[34.267,26.3117,0],270.828,1,0,[0,0],"","",true,false],
			["Land_Cargo_Tower_V1_No1_F",[5.56215,43.2455,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[9.46964,40.7048,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[2.26579,43.6397,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[0.81023,43.9859,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.7308,35.6915,0],272.054,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[8.20192,44.3403,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.7818,45.2748,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-22.0328,43.132,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[8.50221,45.5619,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[24.6737,43.4564,0],91.4287,1,0,[0,-0],"","",true,false],
			["Land_MedicalTent_01_CSAT_brownhex_generic_outer_F",[-19.9041,45.3367,0],90.461,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[-22.5577,47.167,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.5915,43.694,0],271.013,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[24.6838,51.7485,0],91.4287,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[0.109369,58.7673,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-8.17319,58.6728,0],1.45235,1,0,[0,0],"","",true,false],
			["Land_HBarrierTower_F",[20.216,54.9011,0],227.624,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.3898,49.62,0],271.75,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[8.30439,58.9742,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-16.437,58.5367,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[21.5839,56.0958,2.28029],48.4918,1,0,[0,0],"","",true,false],
			["Land_HBarrierTower_F",[-26.8962,54.0093,0],128.35,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[16.5479,59.206,0],359.009,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-24.6309,58.3457,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-28.4347,55.2336,2.28029],307.411,1,0,[0,0],"","",true,false]
		]
  };
	case "Base_02_Wes":
	{
		[
			["Sign_Arrow_Blue_F",[0.866066,5.46226,0],0,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_brownhex_closed_F",[1.57476,-6.23718,0],270.735,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-5.12659,6.18774,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[6.94559,5.76213,0],0,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_CSAT_brownhex_generic_inner_F",[4.02782,8.29131,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[1.05453,11.1844,0],0,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_CSAT_brownhex_generic_inner_F",[-7.58931,8.55371,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-4.99129,10.6649,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-10.1882,6.51469,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[7.0518,10.9293,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-10.1248,10.6902,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[15.4506,-0.680901,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[15.4399,-3.36117,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_brownhex_closed_F",[-14.9432,-5.9255,0],271.023,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[15.6862,3.81042,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[13.0596,-10.6141,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[15.8349,6.4259,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.7935,7.25601,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-9.03545,-15.9616,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[11.9849,-13.976,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[15.2626,-10.6661,0],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[17.6089,-2.3196,0],271.093,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[15.8792,11.0396,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[17.9566,4.86256,0],271.093,1,0,[0,0],"","",true,false],
			["Land_WoodenTable_02_large_F",[1.52155,-19.7811,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.3022,11.3336,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[12.2924,-16.8292,0.601674],0,1,0,[0,0],"","",true,false],
			["Land_MedicalTent_01_CSAT_brownhex_generic_inner_F",[-19.0259,8.715,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-9.29682,-18.8295,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[15.8294,13.9497,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_Research_house_V1_F",[-11.2378,-17.3067,0],89.8745,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-21.5861,6.85078,0],0,1,0,[0,0],"","",true,false],
			["Land_CanvasCover_02_F",[1.49281,-22.6596,0],268.727,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[18.0579,12.4587,0],271.093,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[17.8224,-15.5294,0.601674],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_HQ_V1_F",[17.2498,-17.831,0],90.292,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[19.9178,-13.7855,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-21.7964,10.8471,0],0,1,0,[0,0],"","",true,false],
			["Land_WoodenTable_02_large_F",[1.4296,-24.4113,0],0,1,0,[0,0],"","",true,false],
			["Land_HelipadSquare_F",[0.276337,25.179,0],178.966,1,0,[0,-0],"","",true,false],
			["Land_Cargo_House_V1_F",[26.0597,-2.50111,0],90.5205,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Large_Blue_F",[0.221809,25.347,0],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[26.5957,4.80402,0],90.5205,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[19.8479,-17.1005,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-9.27809,-24.7059,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_Research_house_V1_F",[-21.564,-17.4066,0],270.588,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[19.5058,-20.0725,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[18.2629,-21.4668,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[28.3905,-1.27893,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-23.7478,-15.6956,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierTower_F",[-28.2239,-4.72059,0],91.1773,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[28.4287,-3.69895,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_Cargo_House_V1_F",[27.0987,12.3726,0],90.5205,1,0,[0,-0],"","",true,false],
			["Land_Research_house_V1_F",[-11.4627,-26.2134,0],90.1544,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[28.859,2.97582,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-9.37741,-27.8138,0.728848],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[28.9334,5.85313,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall4_F",[-30.2317,0.723324,0],273.525,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-29.8364,-4.6351,2.28],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-23.7311,-18.9167,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.4106,2.82551,0],273.618,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[19.9521,-23.6582,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[29.2761,10.6712,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.2002,11.1153,0],273.618,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[29.2491,13.6205,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall4_F",[-30.4783,-10.6194,0],276.177,1,0,[0,0],"","",true,false],
			["O_MRAP_02_F",[-15.2113,28.4296,0.149065],0,1,0,[0,0],"","",true,false],
			["O_LSV_02_armed_F",[-18.8765,26.9454,0.0999684],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[16.4469,30.2245,0],33.9038,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.6924,-13.7732,0],273.618,1,0,[0,0],"","",true,false],
			["Land_Research_house_V1_F",[-21.8684,-26.2377,0],269.021,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[23.3364,26.0268,0],33.1204,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[9.2296,34.5887,0],32.4771,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-24.2217,-24.6343,0.728848],0,1,0,[0,0],"","",true,false],
			["O_LSV_02_unarmed_F",[-21.9116,27.0565,0.0999684],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.0226,19.3478,0],273.618,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[30.3512,21.6654,0],32.9464,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-23.967,-27.8377,0.728848],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[2.07607,38.4871,0],31.3693,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.7844,-22.0553,0],273.618,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[22.3491,-32.4929,0],152.666,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-20.4094,-32.4761,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[14.9647,-36.5344,0],151.903,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-22.7334,-32.6531,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.2969,-36.2876,0.601673],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[29.4787,-28.7609,0],155.104,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[7.58878,-40.6863,0],152.809,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[37.4136,17.5386,0],31.6038,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.0319,27.6022,0],273.618,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-4.79802,42.4349,0],32.1094,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[-17.88,-37.7508,0.601673],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.0838,-39.0106,0.601673],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.8626,-30.3201,0],273.618,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[36.954,-24.9145,0],153.815,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[0.435219,-44.4853,0],152.876,1,0,[0,-0],"","",true,false],
			["Land_Research_HQ_F",[-18.4859,-39.8561,0],89.9186,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-23.4692,-37.6748,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.5005,-42.2749,0.601673],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[44.5625,13.2938,0],34.0372,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[44.5524,-2.41914,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[-13.6626,44.6488,0],268.683,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.0483,35.8008,0],269.412,1,0,[0,0],"","",true,false],
			["Land_BarGate_01_open_F",[0.265083,49.7743,0],302.193,1,0,[0,0],"","",true,false],
			["Land_HBarrier_1_F",[-15.1685,44.6165,0],269.356,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[-17.6859,-43.692,0.601673],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[44.8511,-7.73491,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[44.4614,-20.7409,0],152.624,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[45.3031,0.386318,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-6.56065,-48.3503,0],154.429,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Blue_F",[44.8569,-7.46341,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[-16.0433,-45.4214,0.601674],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[46.4875,-0.745804,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall4_F",[-23.0089,42.4934,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[46.6335,-2.30623,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[46.5084,-5.80916,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-31.9163,-38.6427,0],273.618,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[46.1784,-5.91345,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[48.0157,-2.11549,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[47.5822,0.409512,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[47.958,-7.71166,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[47.7708,-7.03434,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierTower_F",[-28.9846,41.9961,0],181.493,1,0,[0,0],"","",true,false],
			["Land_Cargo_Tower_V1_No7_F",[49.6656,-2.49022,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[51.4699,9.00772,0],34.3263,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-28.9694,43.7579,2.28],0,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[-3.22842,52.463,0],30.7206,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[50.9103,-5.12091,12.7646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[51.7349,-16.8687,0],154.355,1,0,[0,-0],"","",true,false],
			["Land_HBarrierWall6_F",[-13.8662,-52.1724,0],152.882,1,0,[0,-0],"","",true,false],
			["Sign_Arrow_Yellow_F",[51.6738,-5.79954,12.7646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[52.2829,-0.975376,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Yellow_F",[52.3381,-3.24701,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-32.0493,-46.8281,0],273.618,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[-11.2951,54.6107,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[54.0589,-0.0474014,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[54.2146,-2.87356,15.3646],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Blue_F",[54.2707,-5.42151,15.3646],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[-21.2861,-54.1744,0],183.253,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[-19.8469,54.3378,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall4_F",[-24.0499,-53.0271,0],182.627,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[58.4836,4.74908,0],32.592,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[58.6289,-13.351,0],154.431,1,0,[0,-0],"","",true,false],
			["Land_BarGate_F",[-32.2521,46.4657,0],90.6759,1,0,[0,-0],"","",true,false],
			["Land_HBarrierTower_F",[-30.046,-52.5037,0],0,1,0,[0,0],"","",true,false],
			["Land_HBarrier_Big_F",[-27.7641,54.1233,0],0,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[-30.0064,-54.3911,2.28],0,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[65.5137,0.470604,0],32.5167,1,0,[0,0],"","",true,false],
			["Land_HBarrierWall6_F",[65.9169,-9.48494,0],155.591,1,0,[0,-0],"","",true,false],
			["Land_HBarrierTower_F",[65.9736,-4.82229,0],270.97,1,0,[0,0],"","",true,false],
			["Sign_Arrow_Cyan_F",[67.7096,-4.9611,2.28],0,1,0,[0,0],"","",true,false],
			["Logic",[-67.8634,-43.7511,9],0,1,0,[0,0],"","",true,false]
		]
	};
	case "Camp_AA_01_Rad":
	{
	[
	["Box_IND_AmmoVeh_F",[-1.5459,-0.724609,0],243.269,1,0,[0,0],"","",true,false],
	["Box_East_AmmoVeh_F",[-2.64063,0.951172,-1.90735e-006],318.72,1,0,[0,0],"","",true,false],
	["Land_HBarrier_3_F",[-3.37891,7.99414,0],86.493,1,0,[0,0],"","",true,false],
	["Sign_Arrow_Direction_F",[-6.58594,-4.41992,-3.8147e-005],272.632,1,0,[0.0739407,0.00339873],"","",true,false],
	["Land_HBarrier_3_F",[-8.52832,3.17773,0],10.8174,1,0,[0,0],"","",true,false],
	["Sign_Arrow_Direction_F",[3.16992,7.47461,0],7.4893,1,0,[0,0],"","",true,false],
	["Land_MetalBarrel_empty_F",[-4.82715,7.31641,0],161.493,1,0,[0,-0],"","",true,false],
	["Land_MetalBarrel_empty_F",[-4.82813,8.10547,0],266.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_3_F",[-3.25195,8.83984,0],296.493,1,0,[0,0],"","",true,false],
	["Sign_Arrow_Large_F",[6.91504,-7.79102,0],45.8061,1,0,[0,0],"","",true,false],
	["Land_PaperBox_closed_F",[-5.00098,9.37305,0],281.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_3_F",[-9.37891,3.07227,0],160.817,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[9.23926,-3.81445,0],43.7349,1,0,[0,0],"","",true,false],
	["Land_HBarrier_3_F",[9.86426,8.31445,0],101.493,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[-8.05273,-10.0586,0.0014782],355.817,1,0,[0.00539855,0.0738216],"","",true,false],
	["Land_HBarrier_3_F",[2.23145,-11.4531,-0.00109482],43.7348,1,0,[0.0511708,-0.053482],"","",true,false],
	["Land_BagFence_Round_F",[-12.042,4.36328,-0.00130081],220.817,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[12.0049,-6.51563,0],133.378,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[-8.90039,-9.94336,-0.0013504],205.817,1,0,[0.0322355,-0.0666307],"","",true,false],
	["Land_HBarrier_3_F",[9.7666,9.16797,0],251.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[7.86719,-10.959,0],133.378,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[1.69922,14.5117,0],161.493,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[-14.7451,-3.21289,0],280.817,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[2.62305,14.668,0],176.493,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[3.5459,14.6074,0],11.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-0.535156,15.3203,-0.000999451],86.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-14.7949,-4.13672,0],85.8174,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-14.8096,4.56641,-0.000999451],175.817,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_3_F",[-14.6279,-5.05859,0],70.8174,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-7.70117,13.623,0],296.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[11.0908,11.8145,-0.00130081],311.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-15.4102,-7.30273,-0.000999451],355.817,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-7.81543,15.623,-0.000999451],86.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-1.09668,18.1152,-0.00130081],221.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[11.3262,14.582,-0.000999451],266.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_3_F",[-19.0498,4.37695,0],355.817,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-18.5293,-0.896484,0],205.817,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-18.8418,1.15039,-0.000999451],265.817,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-3.01758,18.918,0],296.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-18.9629,3.0332,0],175.817,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[5.90918,18.3633,0],296.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-5.02246,18.9082,-0.000999451],176.493,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Round_F",[-7.58105,18.3887,-0.00130081],131.493,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Round_F",[-18.1992,-7.89648,-0.00130081],130.817,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_1_F",[-13.6279,-14.4492,0],205.817,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[7.95898,18.6523,-0.000999451],356.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_3_F",[11.1865,18.8242,0],86.493,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[9.8418,18.75,0],266.493,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-15.6289,-14.5859,-0.000999451],355.817,1,0,[0,0],"","",true,false],
	["Land_HBarrier_1_F",[-18.9785,-9.82813,0],205.817,1,0,[0,0],"","",true,false],
	["Land_BagFence_Long_F",[-18.9443,-11.832,-0.000999451],85.8174,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-18.3965,-14.3848,-0.00130081],40.8174,1,0,[0,0],"","",true,false]
	]
	};
	case "Arty_FOB_01_Rad":
	{
	[
	["Land_Stretcher_01_F",[-1.5293,-2.30078,0],46.5402,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_F",[-3.17773,-0.970703,0],45.2485,1,0,[0,0],"","",true,false],
	["BloodPool_01_Large_Old_F",[-2.9082,-1.99219,0],315.234,1,0,[0,0],"","",true,false],
	["Land_LampShabby_F",[1.67969,-1.85938,0],312.523,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_F",[-4.51855,0.322266,0],45.9696,1,0,[0,0],"","",true,false],
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F",[-5.49316,-1.60742,0],315.386,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_sand_F",[-5.6709,1.9707,0],45.6205,1,0,[0,0],"","",true,false],
	["Land_Loudspeakers_F",[5.02832,-0.125,0],226.046,1,0,[0,0],"","",true,false],
	["BloodTrail_01_Old_F",[-5.91504,-2.02539,0],150.091,1,0,[0,-0],"","",true,false],
	["BloodSplatter_01_Small_Old_F",[-4.86719,-4.02148,0],315.234,1,0,[0,0],"","",true,false],
	["Land_ConnectorTent_01_CSAT_brownhex_cross_F",[-0.527344,-6.56445,0],45.2884,1,0,[0,0],"","",true,false],
	["Land_PortableCabinet_01_medical_F",[-6.1748,3.45898,0],345.771,1,0,[0,0],"","",true,false],
	["BloodSpray_01_Old_F",[-7.44824,0.0351563,0],315.234,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_sand_F",[-5.5957,-5.05664,0],45.6205,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_folded_F",[-7.0918,2.91992,0],43.3161,1,0,[0,0],"","",true,false],
	["BloodSplatter_01_Medium_New_F",[-7.62988,-0.855469,0],315.234,1,0,[0,0],"","",true,false],
	["BloodSplatter_01_Large_New_F",[-5.16309,-5.82031,0],315.234,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_sand_F",[-6.92871,-3.58008,0],45.6205,1,0,[0,0],"","",true,false],
	["BloodPool_01_Medium_New_F",[-8.18848,-1.39453,0],315.234,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_sand_F",[-8.19141,-2.09961,0],45.6205,1,0,[0,0],"","",true,false],
	["Land_PortableCabinet_01_medical_F",[-8.06738,-3.40234,0],225.311,1,0,[0,0],"","",true,false],
	["BloodSplatter_01_Medium_Old_F",[-9.21875,-1.27734,0],315.234,1,0,[0,0],"","",true,false],
	["Land_Stretcher_01_sand_F",[-9.57324,-0.474609,0],45.6205,1,0,[0,0],"","",true,false],
	["Land_LampShabby_F",[8.68945,1.16602,0],139.895,1,0,[0,-0],"","",true,false],
	["BloodPool_01_Medium_Old_F",[-9.82617,-1.25781,0],315.234,1,0,[0,0],"","",true,false],
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F",[4.32227,-11.4551,0],315.385,1,0,[0,0],"","",true,false],
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F",[6.32617,10.9004,0],315.385,1,0,[0,0],"","",true,false],
	["Land_ConnectorTent_01_CSAT_brownhex_cross_F",[11.1406,6.06445,0],45.2884,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-12.1416,-2.09375,0],135.197,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_5_F",[-12.1416,-2.10938,0.0591812],135.197,1,0,[0,-0],"","",true,false],
	["Land_MedicalTent_01_CSAT_brownhex_generic_open_F",[15.9619,1.25195,0],315.385,1,0,[0,0],"","",true,false],
	["Land_MedicalTent_01_brownhex_closed_F",[-13.7822,9.46484,0],225.331,1,0,[0,0],"","",true,false],
	["Land_ConnectorTent_01_CSAT_brownhex_cross_F",[-8.87988,14.4004,0],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-20.125,-8.10352,0],334.607,1,0,[0,0],"","",true,false],
	["Land_MedicalTent_01_brownhex_closed_F",[-3.94531,19.2891,0],225.331,1,0,[0,0],"","",true,false],
	["Land_HBarrier_Big_F",[-15.1807,-12.9473,0],229.588,1,0,[0,0],"","",true,false],
	["Oil_Spill_F",[-19.9414,-1.83594,0],315.234,1,0,[0,0],"","",true,false],
	["Land_Tyre_F",[-20.4775,-1.61523,-0.0443134],315.234,1,0,[0,0],"","",true,false],
	["Land_LampShabby_F",[-19.8428,-6.35938,0],353.695,1,0,[0,0],"","",true,false],
	["Land_LuggageHeap_03_F",[-20.709,-4.75391,0],315.234,1,0,[0,0],"","",true,false],
	["Land_GarbageHeap_02_F",[-20.8486,-2.76758,3.8147e-006],315.234,1,0,[0,0],"","",true,false],
	["Land_LampShabby_F",[-12.8623,17.7949,0],136.653,1,0,[0,-0],"","",true,false],
	["Land_GarbageHeap_04_F",[-22.1602,-2.375,-7.62939e-006],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrier_Big_F",[-6.03516,-21.5156,0],184.521,1,0,[0,0],"","",true,false],
	["Land_Tyre_01_line_x5_F",[-22.4902,-1.68359,0],225.101,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-23.4043,-4.70508,0],43.686,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[17.3555,17.0645,0],49.5969,1,0,[0,0],"","",true,false],
	["Land_FieldToilet_F",[-23.5762,-1.62695,0],224.135,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[-14.7178,19.9766,0],317.238,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[-20.5039,14.2461,0],316.672,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-18.1738,-14.9629,-0.00130081],245.892,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall4_F",[21.6729,11.0742,0],44.6633,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[11.502,23.0859,0],49.5969,1,0,[0,0],"","",true,false],
	["Land_Loudspeakers_F",[-10.3818,21.7617,1.64594],226.046,1,0,[0,0],"","",true,false],
	["Land_FieldToilet_F",[-24.8887,-0.351563,0],224.135,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-21.0654,-13.5977,-0.00130081],166.254,1,0,[0,-0],"","",true,false],
	["Land_HBarrierWall4_F",[-23.5635,9.09766,0],316.498,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-15.3711,-19.7227,-0.00130081],227.621,1,0,[0,0],"","",true,false],
	["Sign_Arrow_Large_F",[-20.1904,-15.8125,-0.075346],0.493917,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[21.0342,13.7402,1.90735e-006],43.9332,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-27.2305,-0.943359,0],44.9386,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[1.91211,-27.2266,0],316.465,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[1.88379,-27.2422,0.121157],317.791,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[19.4121,-19.3809,0],138.825,1,0,[0,-0],"","",true,false],
	["Land_FieldToilet_F",[-26.3438,0.947266,0],225.203,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[-8.94238,25.8672,0],316.138,1,0,[0,0],"","",true,false],
	["Land_HBarrier_Big_F",[-24.2891,-10.8594,0],162.868,1,0,[0,-0],"","",true,false],
	["Sign_Arrow_Large_F",[-16.9287,-21.2188,-0.075346],102.287,1,0,[0,-0],"","",true,false],
	["Land_BagFence_Round_F",[-15.3936,-22.5059,-0.00130081],309.099,1,0,[0,0],"","",true,false],
	["Box_East_AmmoOrd_F",[-19.1699,-19.6348,0],225.006,1,0,[0,0],"","",true,false],
	["Box_East_AmmoOrd_F",[-18.6094,-20.2129,0],225.006,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[13.3447,-25.1992,0],138.825,1,0,[0,-0],"","",true,false],
	["Land_FieldToilet_F",[-27.4688,2.06445,0],224.135,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[25.416,-13.6426,0],138.825,1,0,[0,-0],"","",true,false],
	["Land_HBarrierWall4_F",[6.15625,26.9824,0],44.6633,1,0,[0,0],"","",true,false],
	["Land_HBarrierTower_F",[5.98535,-27.1758,0],43.4378,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-1.2334,-26.834,0],149.147,1,0,[0,-0],"","",true,false],
	["Box_T_East_Wps_F",[-21.6025,-18.3281,0],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrier_Big_F",[-13.3115,-25.1875,0],308.449,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall6_F",[-29.3164,4.96875,0],316.672,1,0,[0,0],"","",true,false],
	["Land_HBarrierTower_F",[29.043,-1.49219,0],313.99,1,0,[0,0],"","",true,false],
	["VirtualReammoBox_camonet_F",[-20.4932,-20.5586,0],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall_corridor_F",[27.375,9.7207,0],310.755,1,0,[0,0],"","",true,false],
	["Box_T_East_WpsSpecial_F",[-21.6885,-19.5527,0],315.234,1,0,[0,0],"","",true,false],
	["Box_T_East_Wps_F",[-22.4004,-19.1152,0],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall_corner_F",[28.2744,-8.57031,0],49.0684,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-0.669922,-28.1328,0],43.686,1,0,[0,0],"","",true,false],
	["Land_Communication_F",[20.8027,-13.8574,0],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall_corner_F",[29.8213,4.74805,0],43.7589,1,0,[0,0],"","",true,false],
	["Box_East_AmmoOrd_F",[-22.9834,-19.8379,0],315.234,1,0,[0,0],"","",true,false],
	["Land_HBarrierWall_corner_F",[-3.02246,30.25,0],317.787,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-26.5557,-17.1934,-0.00130081],135.453,1,0,[0,-0],"","",true,false],
	["Sign_Arrow_Large_F",[-25.4482,-18.7793,-0.075346],241.465,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-5.82129,-29.6191,0],147.895,1,0,[0,-0],"","",true,false],
	["Land_HBarrierTower_F",[-31.8691,-2.46484,0],134.866,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_5_F",[9.85547,-29.291,0],133.945,1,0,[0,-0],"","",true,false],
	["Land_HBarrierWall_corridor_F",[2.29004,32.0488,0],86.767,1,0,[0,0],"","",true,false],
	["Sign_Arrow_Large_F",[-21.4492,-24.0703,-0.075346],192.309,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-20.2441,-25.7422,-0.00130081],320.624,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-27.1455,-20.3301,-0.00130081],64.5807,1,0,[0,0],"","",true,false],
	["Land_BagFence_Round_F",[-23.1299,-25.5195,-0.00130081],41.7285,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-9.49609,-31.9336,0],146.244,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_Big_F",[-20.6553,-28.9688,0],359.434,1,0,[0,0],"","",true,false],
	["Land_HBarrier_Big_F",[-30.6094,-18.3672,0],98.7229,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_5_F",[-33.7598,-5.82813,0],135.197,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_Big_F",[-28.0176,-25.8359,0],48.1768,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-13.9355,-34.9434,0],144.991,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_5_F",[-37.54,-9.63867,0],133.945,1,0,[0,-0],"","",true,false],
	["Land_HBarrier_5_F",[-32.5537,-27.5215,0],47.2385,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-33.624,-26.6602,0],45.9859,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-18.2832,-37.6719,0],183.052,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-38.501,-18.8379,0],61.9124,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-30.0742,-30.334,0],46.6373,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-36.1895,-23.5801,0],47.2385,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-40.957,-14.0684,0],63.165,1,0,[0,0],"","",true,false],
	["Land_HBarrier_5_F",[-26.2344,-34.3555,0],43.0222,1,0,[0,0],"","",true,false]
	]
	};
	case "Intel_computer_SF": {
		[
		["Land_CampingTable_F",[0.139648,0.263672,0],127.4,1,0,[],"","",true,false],
		["Land_Computer_01_olive_F",[-0.216797,-0.375,0.815598],305.74,1,0,[],"","",true,false],
		["Land_MultiScreenComputer_01_olive_F",[0.0263672,-0.0078125,0.815598],305.115,1,0,[],"","",true,false],
		["Land_PortableServer_01_olive_F",[0.580078,0.716797,0.815598],217.376,1,0,[],"","",true,false]
	  ]
	};
};

_composition_objects = [_position, _direction, _composition, 0] call BIS_fnc_objectsMapper;

if (_addToZeus) then {{_x addCuratorEditableObjects [_composition_objects]} forEach allCurators;};
if (!_enableDamage) then {{_x allowDamage false} forEach _composition_objects};


_composition_objects
