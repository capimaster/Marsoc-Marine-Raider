//	edited by [TF]def 2015 09 20 (0.4.1)
/**/
//Only display vehicles for that players side, if true Opfor can only spawn Opfor vehicles and so on.
VVS_SideOnly = false;

//Only set to true if you are making pre-made vehicle lists with VVS_x (i.e VVS_Car)
VVS_Premade_List = true;

/*
									Pre-set VVS Vehicles
		This is similar to VAS's functionality, using these variables will only make those vehicles available.
		Leave them the way they are if you want to auto-fetch the entire vehicle config and list every vehicle.
		
		Example:
		VVS_Car = ["C_Offroad_01_F","C_Quadbike_01_F"];
		VVS_Air = ["B_Heli_Light_01_armed_F"];
*/

VVS_Car = 
[
	"B_CTRG_LSV_01_light_F", 
	"B_MRAP_01_F", 
	"B_MRAP_01_hmg_F", 
	"B_MRAP_01_gmg_F", 
	"B_LSV_01_AT_F", 
	"B_LSV_01_armed_F", 
	"B_Quadbike_01_F", 
	"B_LSV_01_unarmed_F", 
	"B_Truck_01_ammo_F", 
	"B_Truck_01_fuel_F", 
	"B_Truck_01_medical_F", 
	"B_Truck_01_transport_F", 
	"B_Truck_01_flatbed_F",
        "rhsusf_M1085A1P2_B_WD_Medical_fmtv_usarmy", 
        "rhsusf_m1043_d_s_m2",
        "rhsusf_m1151_m2crows_usmc_d", 
        "rhsusf_m1151_m2_v3_usmc_d", 
        "rhsusf_m1165a1_gmv_m134d_m240_socom_d"
];
VVS_Air = 
[
	"B_Plane_CAS_01_dynamicLoadout_F", 
	"B_Plane_Fighter_01_F", 
	"B_Plane_Fighter_01_Stealth_F"
];
VVS_Ship = [
"B_MR_Zodiac_01",
"rhsusf_mkvsoc", 
"B_SDV_01_F"
];

VVS_Armored = ["B_APC_Wheeled_01_cannon_F", 
"B_APC_Tracked_01_CRV_F", 
"B_APC_Tracked_01_rcws_F", 
"B_AFV_Wheeled_01_cannon_F", 
"B_AFV_Wheeled_01_up_cannon_F", 
"B_MBT_01_TUSK_F", 
"B_MBT_01_cannon_F", 
"UK3CB_B_AAV_US_DES", 
"UK3CB_B_LAV25_US_DES", 
"UK3CB_B_LAV25_HQ_US_DES"
];

VVS_Autonomous = ["B_UAV_05_F", 
"B_UGV_01_rcws_F", 
"B_UAV_02_dynamicLoadout_F", 
"B_T_UAV_03_dynamicLoadout_F"]; 

VVS_Support = ["B_Heli_Transport_01_F", 
"B_Heli_Light_01_F", 
"B_Heli_Light_01_dynamicLoadout_F", 
"B_Heli_Attack_01_dynamicLoadout_F", 
"B_Heli_Transport_03_F", 
"B_Heli_Transport_03_unarmed_F", 
"B_MR_MH_6Littlebird_01"];

// def 2015 09 19> Uncomment next comment-section /* */ if you want to make this s#$t work faster and predefined (for rhs).
/*
//Everything from arma3 1.50 and RHS 0.3.9.1.
VVS_Premade_List = true;
VVS_Car = ["RHS_UAZ_Base","rhs_uaz_open_Base","rhs_tigr_base","rhs_tigr_vdv","rhs_tigr_vmf","rhs_tigr_msv","rhs_tigr_vv","rhs_tigr_3camo_vdv","rhs_tigr_3camo_vmf","rhs_tigr_3camo_msv","rhs_tigr_3camo_vv","rhs_tigr_ffv_vdv","rhs_tigr_ffv_vmf","rhs_tigr_ffv_msv","rhs_tigr_ffv_vv","rhs_tigr_ffv_3camo_vdv","rhs_tigr_ffv_3camo_vmf","rhs_tigr_ffv_3camo_msv","rhs_tigr_ffv_3camo_vv","rhs_tigr_m_test","RHS_UAZ_MSV_Base","rhs_uaz_open_MSV_Base","RHS_UAZ_MSV_01","rhs_uaz_vdv","rhs_uaz_vmf","rhs_uaz_vv","rhs_uaz_open_MSV_01","rhs_uaz_open_vdv","rhs_uaz_open_vmf","rhs_uaz_open_vv","CDF_A3_UAZ_Base","CDF_A3_UAZ_MG_Base","CDF_A3_UAZ_AGS30_Base","CDF_A3_UAZ_SPG9_Base","RHS_UAZ_chdkz_Base","rhs_uaz_open_chdkz_Base","RHS_UAZ_chdkz","rhs_uaz_open_chdkz","rhsusf_m998_w_2dr","rhsusf_m998_d_2dr","rhsusf_m998_w_s_2dr","rhsusf_m998_d_s_2dr","rhsusf_m998_w_2dr_halftop","rhsusf_m998_d_2dr_halftop","rhsusf_m998_w_s_2dr_halftop","rhsusf_m998_d_s_2dr_halftop","rhsusf_m998_w_2dr_fulltop","rhsusf_m998_d_2dr_fulltop","rhsusf_m998_w_s_2dr_fulltop","rhsusf_m998_d_s_2dr_fulltop","rhsusf_m998_w_4dr","rhsusf_m998_d_4dr","rhsusf_m998_w_s_4dr","rhsusf_m998_d_s_4dr","rhsusf_m998_w_4dr_halftop","rhsusf_m998_d_4dr_halftop","rhsusf_m998_w_s_4dr_halftop","rhsusf_m998_d_s_4dr_halftop","rhsusf_m998_w_4dr_fulltop","rhsusf_m998_d_4dr_fulltop","rhsusf_m998_w_s_4dr_fulltop","rhsusf_m998_d_s_4dr_fulltop","rhsusf_m1025_w","rhsusf_m1025_d","rhsusf_m1025_w_s","rhsusf_m1025_d_s","rhsusf_m1025_w_m2","rhsusf_m1025_d_m2","rhsusf_m1025_w_s_m2","rhsusf_m1025_d_s_m2","rhsusf_m1025_w_mk19","rhsusf_m1025_d_Mk19","rhsusf_m1025_w_s_Mk19","rhsusf_m1025_d_s_Mk19","RHS_Ural_Base","RHS_Ural_Civ_Base","RHS_Ural_Open_Civ_01","rhsusf_HEMTT_A2_base","rhsusf_M977A2_usarmy_wd","rhsusf_M977A2_CPK_usarmy_wd","rhsusf_M978A2_usarmy_wd","rhsusf_M978A2_CPK_usarmy_wd","RHS_Ural_BaseTurret","RHS_Ural_MSV_Base","RHS_Ural_MSV_01","RHS_Ural_VDV_01","RHS_Ural_VMF_01","RHS_Ural_VV_01","RHS_Ural_Flat_MSV_01","RHS_Ural_Flat_VDV_01","RHS_Ural_Flat_VMF_01","RHS_Ural_Flat_VV_01","RHS_Ural_Open_MSV_01","RHS_Ural_Open_VDV_01","RHS_Ural_Open_VMF_01","RHS_Ural_Open_VV_01","RHS_Ural_Open_Flat_MSV_01","RHS_Ural_Open_Flat_VDV_01","RHS_Ural_Open_Flat_VMF_01","RHS_Ural_Open_Flat_VV_01","RHS_Ural_Support_MSV_Base_01","RHS_Ural_Fuel_MSV_01","RHS_Ural_Fuel_VDV_01","RHS_Ural_Fuel_VMF_01","RHS_Ural_Fuel_VV_01","RHS_BM21_MSV_01","RHS_BM21_VDV_01","RHS_BM21_VMF_01","RHS_BM21_VV_01","RHS_Ural_Civ_01","RHS_Ural_Civ_02","RHS_Ural_Civ_03","RHS_Ural_Open_Civ_02","RHS_Ural_Open_Civ_03","rhs_typhoon_base","rhs_typhoon_vdv","rhs_truck","rhs_gaz66_vmf","rhs_gaz66_vdv","rhs_gaz66_vv","rhs_gaz66_msv","rhs_gaz66_flat_vmf","rhs_gaz66_flat_vdv","rhs_gaz66_flat_vv","rhs_gaz66_flat_msv","rhs_gaz66o_vmf","rhs_gaz66o_vdv","rhs_gaz66o_vv","rhs_gaz66o_msv","rhs_gaz66o_flat_vmf","rhs_gaz66o_flat_vdv","rhs_gaz66o_flat_vv","rhs_gaz66o_flat_msv","rhs_gaz66_r142_base","rhs_gaz66_r142_vmf","rhs_gaz66_r142_vdv","rhs_gaz66_r142_msv","rhs_gaz66_r142_vv","rhs_gaz66_repair_base","rhs_gaz66_repair_vmf","rhs_gaz66_repair_vdv","rhs_gaz66_repair_vv","rhs_gaz66_repair_msv","rhs_gaz66_ap2_base","rhs_gaz66_ap2_vmf","rhs_gaz66_ap2_vdv","rhs_gaz66_ap2_vv","rhs_gaz66_ap2_msv","rhs_gaz66_ammo_base","rhs_gaz66_ammo_vmf","rhs_gaz66_ammo_vdv","rhs_gaz66_ammo_vv","rhs_gaz66_ammo_msv","rhs_ural_chdkz","rhs_ural_open_chdkz","rhs_ural_work_chdkz","rhs_ural_work_open_chdkz","RHS_BM21_chdkz","rhsusf_fmtv_base","rhsusf_M1078A1P2_B_wd_fmtv_usarmy","rhsusf_M1078A1P2_B_wd_open_fmtv_usarmy","rhsusf_M1078A1P2_B_wd_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_d_fmtv_usarmy","rhsusf_M1078A1P2_B_d_open_fmtv_usarmy","rhsusf_M1078A1P2_B_d_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_wd_fmtv_usarmy","rhsusf_M1078A1P2_wd_open_fmtv_usarmy","rhsusf_M1078A1P2_wd_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_d_fmtv_usarmy","rhsusf_M1078A1P2_d_open_fmtv_usarmy","rhsusf_M1078A1P2_d_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_wd_fmtv_usarmy","rhsusf_M1083A1P2_B_wd_open_fmtv_usarmy","rhsusf_M1083A1P2_B_wd_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_d_fmtv_usarmy","rhsusf_M1083A1P2_B_d_open_fmtv_usarmy","rhsusf_M1083A1P2_B_d_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_wd_fmtv_usarmy","rhsusf_M1083A1P2_wd_open_fmtv_usarmy","rhsusf_M1083A1P2_wd_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_d_fmtv_usarmy","rhsusf_M1083A1P2_d_open_fmtv_usarmy","rhsusf_M1083A1P2_d_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_wd_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_wd_open_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_wd_flatbed_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_d_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_d_open_fmtv_usarmy","rhsusf_M1078A1P2_B_M2_d_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_wd_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_wd_open_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_wd_flatbed_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_d_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_d_open_fmtv_usarmy","rhsusf_M1083A1P2_B_M2_d_flatbed_fmtv_usarmy","C_Offroad_01_F","C_Hatchback_01_F","B_G_Van_01_transport_F","B_MRAP_01_F","B_MRAP_01_gmg_F","B_MRAP_01_hmg_F","O_MRAP_02_F"];
VVS_CAR = VVS_CAR + ["O_MRAP_02_hmg_F","O_MRAP_02_gmg_F","B_G_Offroad_01_F","B_G_Offroad_01_armed_F","C_Quadbike_01_F","B_Quadbike_01_F","O_Quadbike_01_F","I_Quadbike_01_F","B_G_Quadbike_01_F","I_MRAP_03_F","I_MRAP_03_hmg_F","I_MRAP_03_gmg_F","B_Truck_01_transport_F","B_Truck_01_covered_F","O_Truck_02_covered_F","O_Truck_02_transport_F","I_Truck_02_covered_F","I_Truck_02_transport_F","O_Truck_03_transport_F","O_Truck_03_covered_F","O_Truck_03_device_F","C_Hatchback_01_sport_F","C_SUV_01_F","B_Truck_01_mover_F","B_Truck_01_box_F","C_Van_01_transport_F","C_Van_01_box_F","C_Kart_01_F","C_Kart_01_Fuel_F","C_Kart_01_Blu_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","PMC_Offroad_Transport","PMC_Offroad_Armed","PMC_Offroad_Cargo","RHS_Civ_Truck_02_covered_F","RHS_Civ_Truck_02_transport_F","CDF_A3_UAZ_469","CDF_A3_UAZ_469_Open","CDF_A3_UAZ_MG","CDF_A3_UAZ_AGS30","CDF_A3_UAZ_SPG9","CDF_A3_Ural","CDF_A3_Ural_Open","CDF_A3_BM21","CDF_A3_Ural_Empty","CDF_A3_Ural_ZU23"];
VVS_Air = ["RHS_Mi24_base","RHS_Mi24V_Base","RHS_Mi24P_VVS_Base","RHS_Mi24P_vvs","RHS_Mi24P_vvsc","RHS_Mi24P_CAS_VVS_Base","RHS_Mi24P_CAS_vvs","RHS_Mi24P_CAS_vvsc","RHS_Mi24P_CAS_vdv","RHS_Mi24P_AT_VVS_Base","RHS_Mi24P_AT_vvs","RHS_Mi24P_AT_vvsc","RHS_Mi24P_AT_vdv","RHS_Mi24P_vdv","RHS_Mi24V_VVS_Base","RHS_Mi24V_vvs","RHS_Mi24V_vvsc","RHS_Mi24V_FAB_VVS_Base","RHS_Mi24V_FAB_vvs","RHS_Mi24V_FAB_vvsc","RHS_Mi24V_FAB_vdv","RHS_Mi24V_UPK23_VVS_Base","RHS_Mi24V_UPK23_vvs","RHS_Mi24V_UPK23_vvsc","RHS_Mi24V_UPK23_vdv","RHS_Mi24V_AT_VVS_Base","RHS_Mi24V_AT_vvs","RHS_Mi24V_AT_vvsc","RHS_Mi24V_AT_vdv","RHS_Mi24Vt_vvs","RHS_Mi24V_vdv","RHS_Mi8_base","rhs_mi8mtv3_base","rhs_mi8amtsh_base","rhs_mi8amt_base","RHS_Mi8_VVS_Base","RHS_Mi8MTV3_VVS_Base","RHS_Mi8AMTSh_VVS_Base","RHS_Mi8AMT_VVS_Base","RHS_Mi8mt_vvs","RHS_Mi8mt_vvsc","RHS_Mi8mt_vdv","RHS_Mi8mt_vv","RHS_Mi8mt_Cargo_vvs","RHS_Mi8mt_Cargo_vvsc","RHS_Mi8mt_Cargo_vdv","RHS_Mi8mt_Cargo_vv","RHS_Mi8MTV3_vvs","RHS_Mi8MTV3_vvsc","RHS_Mi8MTV3_vdv","RHS_Mi8MTV3_UPK23_vvs","RHS_Mi8MTV3_UPK23_vvsc","RHS_Mi8MTV3_UPK23_vdv","RHS_Mi8MTV3_FAB_vvs","RHS_Mi8MTV3_FAB_vvsc","RHS_Mi8MTV3_FAB_vdv","RHS_Mi8AMT_vvs","RHS_Mi8AMT_vvsc","RHS_Mi8AMT_vdv","RHS_Mi8AMTSh_vvs","RHS_Mi8AMTSh_vvsc","RHS_Mi8AMTSh_UPK23_vvs","RHS_Mi8AMTSh_UPK23_vvsc","RHS_Mi8AMTSh_FAB_vvs","RHS_Mi8AMTSh_FAB_vvsc","RHS_Ka52_base","RHS_Ka52Black_base","RHS_Ka52_vvsc","RHS_Ka52_vvs","RHS_Ka52_UPK23_vvs","RHS_Ka52_UPK23_vvsc","rhs_ka60_grey","rhs_ka60_c","RHS_Mi8amt_chdkz","RHS_AH64_base","RHS_AH64D","RHS_AH64DWreck","RHS_AH64D_GS","RHS_AH64D_CS","RHS_AH64D_wd","RHS_AH64D_wd_GS","RHS_AH64D_wd_CS","RHS_AH64D_AA","RHS_AH64D_wd_AA","RHS_AH64DGrey","RHS_AH1Z_base","RHS_AH1Z","RHS_AH1ZWreck","RHS_AH1Z_GS","RHS_AH1Z_CS","RHS_AH1Z_wd","RHS_AH1Z_wd_GS","RHS_AH1Z_wd_CS","RHS_CH_47F_base","RHS_CH_47F","RHS_CH_47F_10","RHS_CH_47F_light","RHS_UH60_Base","RHS_UH60M_base","RHS_UH60M_US_base","RHS_UH60M","RHS_UH60M_MEV","RHS_UH60M_d","RHS_UH60M_MEV_d","RHS_UH60M_MEV2","RHS_UH60M_MEV2_d","RHS_UH1_Base","RHS_UH1Y_base","RHS_UH1Y_US_base","RHS_UH1Y","RHS_UH1Y_d","RHS_UH1Y_FFAR","RHS_UH1Y_FFAR_d","RHS_UH1Y_UNARMED","RHS_UH1Y_UNARMED_d","RHS_su25_base","RHS_Su25_VVS_Base","RHS_Su25SM_vvs","RHS_Su25SM_KH29_vvs","RHS_Su25SM_vvsc","RHS_Su25SM_KH29_vvsc","RHS_C130J","RHS_A10","B_Heli_Light_01_F","B_Heli_Light_01_armed_F","C_Heli_Light_01_civil_F","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Light_02_v2_F","B_Heli_Attack_01_F","O_Heli_Attack_02_F","O_Heli_Attack_02_black_F","B_Heli_Transport_01_F","B_Heli_Transport_01_camo_F","I_Heli_Transport_02_F","I_Heli_light_03_F","I_Heli_light_03_unarmed_F","B_Plane_CAS_01_F","O_Plane_CAS_02_F","I_Plane_Fighter_03_CAS_F","I_Plane_Fighter_03_AA_F","B_Heli_Transport_03_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_ammo_F","O_Heli_Transport_04_bench_F","O_Heli_Transport_04_box_F","O_Heli_Transport_04_covered_F","O_Heli_Transport_04_fuel_F","O_Heli_Transport_04_medevac_F","O_Heli_Transport_04_repair_F","bwi_a3_t6a","bwi_a3_t6a_1","bwi_a3_t6a_2","bwi_a3_t6a_3","bwi_a3_t6a_4","bwi_a3_t6a_5","bwi_a3_t6a_6","bwi_a3_t6a_7","bwi_a3_t6a_8","bwi_a3_t6a_9","bwi_a3_t6a_nta","bwi_a3_t6a_nta_1","bwi_a3_t6a_nta_2","bwi_a3_t6c","bwi_a3_at6b","bwi_a3_at6b_1","bwi_a3_at6b_2","PMC_MH9","rkb_flyingDisk_dark","sab_BI_An2","Sab_cz_An2","Sab_fd_An2","Sab_yel_An2","Sab_ana_An2","sab_AH_An2","sab_ca_An2","Sab_ee_An2","Sab_ru_An2","Sab_An2_b","Sab_An2_i","Sab_An2_o","Sab_tk_An2","Sab_af_An2","Sab_A2_An2","Sab_Snow_An2","Sab_Snow2_An2","Sab_Snow3_An2","Sab_sea_An2","Sab_sea2_An2","Sab_sea3_An2","Sab_sea4_An2","Sab_Amphi_An2","sab_C130_J","sab_C130_JT","sab_C130_JC","sab_C130_JE","sab_C130_JEC","sab_C130_H","sab_C130_HC","sab_C130_HE","sab_C130_HEC","sab_C130_FA","sab_C130_LC","sab_C130_LC_Ski","sab_C130_CG","sab_C130_CSP","sab_C130_FP","sab_C130_H_CSAT","sab_C130_H_CSAT2","sab_C130_H_CSAT3","sab_C130_H_AAF","sab_C130_H_AAF2","sab_C130_H_AAF3","sab_C130_J_FF","sab_C130_J_FF2","sab_L100_AL","RHS_Mi8amt_civilian","CDF_A3_Mi_24v","CDF_A3_Mi_24p","CDF_A3_Mi17","CDF_A3_Mi17_rockets","CDF_A3_Su25SM"];
VVS_Ship = ["SeaFox_EP1","C_Boat_Civil_01_police_F","C_Boat_Civil_01_rescue_F","B_Boat_Armed_01_minigun_F","O_Boat_Armed_01_hmg_F","B_Boat_Transport_01_F","O_Boat_Transport_01_F","B_Lifeboat","O_Lifeboat","C_Rubberboat","I_Boat_Armed_01_minigun_F","I_Boat_Transport_01_F","C_Boat_Civil_01_F","B_G_Boat_Transport_01_F","B_SDV_01_F","O_SDV_01_F","I_SDV_01_F"];
VVS_Armored = ["rhs_a3spruttank_base","rhs_sprut_vdv","rhs_a3t72tank_base","rhs_t72ba_tv","rhs_t72bb_tv","rhs_t72bc_tv","rhs_t72bd_tv","rhs_t90_tv","rhs_t90a_tv","rhs_tank_base","rhs_t80b","rhs_t80bk","rhs_t80bv","rhs_t80bvk","rhs_t80","rhs_t80a","rhs_t80u","rhs_t80u_test","rhs_t80uk","rhs_t80u45m","rhs_t80ue1","rhs_t80um","rhs_t72bb_chdkz","rhsusf_m1a1tank_base","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a1aimd_usarmy","rhsusf_m1a1aim_tuski_wd","rhsusf_m1a1aim_tuski_d","rhsusf_m1a1fep_d","rhsusf_m1a1fep_wd","rhsusf_m1a1fep_od","rhsusf_m1a2tank_base","rhsusf_m1a2sep1d_usarmy","rhsusf_m1a2sep1wd_usarmy","rhsusf_m1a2sep1tuskid_usarmy","rhsusf_m1a2sep1tuskiwd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy","rhsusf_m1a2sep1tuskiid_usarmy","B_MBT_01_cannon_F","BWA3_Leopard2A6M_Fleck","O_APC_Tracked_02_cannon_F","BWA3_Puma_Fleck","B_APC_Tracked_01_rcws_F","B_APC_Tracked_01_AA_F","O_APC_Tracked_02_AA_F","I_APC_tracked_03_cannon_F","I_MBT_03_cannon_F","B_MBT_01_arty_F","B_MBT_01_mlrs_F","O_MBT_02_cannon_F","O_MBT_02_arty_F","B_APC_Wheeled_01_cannon_F","O_APC_Wheeled_02_rcws_F","B_MBT_01_TUSK_F","I_APC_Wheeled_03_cannon_F","CDF_A3_BMD2","CDF_A3_BTR70"];
VVS_Autonomous = ["B_UAV_01_F","O_UAV_01_F","I_UAV_01_F","B_UAV_02_F","O_UAV_02_F","I_UAV_02_F","B_UAV_02_CAS_F","O_UAV_02_CAS_F","I_UAV_02_CAS_F","B_UGV_01_F","O_UGV_01_F","I_UGV_01_F","B_UGV_01_rcws_F","O_UGV_01_rcws_F","I_UGV_01_rcws_F","rhs_pchela1t_vvs","rhs_pchela1t_vvsc"];
VVS_Support = ["rhs_btr_base","rhs_btr70_vmf","rhs_btr70_vdv","rhs_btr70_vv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80_vdv","rhs_btr80_vv","rhs_btr80_vmf","rhs_btr80a_msv","rhs_btr80a_vdv","rhs_btr80a_vv","rhs_btr80a_vmf","rhs_pts_base","rhs_pts_vmf","rhs_btr60_base","rhs_btr60_vmf","rhs_btr60_vdv","rhs_btr60_vv","rhs_btr60_msv","rhs_btr70_chdkz","rhs_btr60_chdkz","rhsusf_m113_usarmy","rhsusf_m113_usarmy_supply","rhsusf_m113_usarmy_unarmed","rhsusf_m113_usarmy_medical","rhsusf_m113_usarmy_M240","rhsusf_m113_usarmy_MK19","rhsusf_m113d_usarmy","rhsusf_m113d_usarmy_supply","rhsusf_m113d_usarmy_unarmed","rhsusf_m113d_usarmy_medical","rhsusf_m113d_usarmy_M240","rhsusf_m113d_usarmy_MK19","rhs_bmd_base","rhs_bmd2_base","rhs_bmd1_base","rhs_bmd1","rhs_bmd1k","rhs_bmd1p","rhs_bmd1pk","rhs_bmd1r","rhs_bmd2","rhs_bmd2m","rhs_bmd2k","rhs_bmp3tank_base","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_bmp1tank_base","rhs_bmp_base","rhs_bmp1_vdv","rhs_bmp1_tv","rhs_bmp1_msv","rhs_bmp1_vmf","rhs_bmp1_vv","rhs_bmp1p_vdv","rhs_bmp1p_tv","rhs_bmp1p_msv","rhs_bmp1p_vmf","rhs_bmp1p_vv","rhs_bmp1k_vdv","rhs_bmp1k_tv","rhs_bmp1k_msv","rhs_bmp1k_vmf","rhs_bmp1k_vv","rhs_bmp1d_vdv","rhs_bmp1d_tv","rhs_bmp1d_msv","rhs_bmp1d_vmf","rhs_bmp1d_vv","rhs_prp3_vdv","rhs_prp3_tv","rhs_prp3_msv","rhs_prp3_vmf","rhs_prp3_vv","rhs_bmp2e_vdv","rhs_bmp2e_tv","rhs_bmp2e_msv","rhs_bmp2e_vmf","rhs_bmp2e_vv","rhs_bmp2_vdv","rhs_bmp2_tv","rhs_bmp2_msv","rhs_bmp2_vmf","rhs_bmp2_vv","rhs_bmp2k_vdv","rhs_bmp2k_tv","rhs_bmp2k_msv","rhs_bmp2k_vmf","rhs_bmp2k_vv","rhs_bmp2d_vdv","rhs_bmp2d_tv","rhs_bmp2d_msv","rhs_bmp2d_vmf","rhs_bmp2d_vv","rhs_brm1k_base","rhs_brm1k_vdv","rhs_brm1k_tv","rhs_brm1k_msv","rhs_brm1k_vmf","rhs_brm1k_vv","rhs_bmd4_vdv","rhs_bmd4m_vdv","rhs_bmd4ma_vdv","rhs_bmd2_chdkz","rhs_bmd1_chdkz","RHS_M2A2_Base","RHS_M2A2","RHS_M2A2_BUSKI","RHS_M2A3","RHS_M2A3_BUSKI","RHS_M2A3_BUSKIII","RHS_M2A3_BUSKIII_wd","RHS_M6","RHS_M2A2_wd","RHS_M2A2_BUSKI_WD","RHS_M2A3_BUSKI_wd","RHS_M2A3_wd","RHS_M6_wd","rhs_p37","rhs_prv13","rhs_2P3_1","rhs_2P3_2","rhs_v2","rhs_v3","B_Slingload_01_Ammo_F","B_Slingload_01_Cargo_F","B_Slingload_01_Fuel_F","B_Slingload_01_Medevac_F","B_Slingload_01_Repair_F","Land_Pod_Heli_Transport_04_ammo_F","Land_Pod_Heli_Transport_04_bench_F","Land_Pod_Heli_Transport_04_box_F","Land_Pod_Heli_Transport_04_covered_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Pod_Heli_Transport_04_medevac_F","Land_Pod_Heli_Transport_04_repair_F","B_APC_Tracked_01_CRV_F","C_Offroad_01_repair_F","B_G_Offroad_01_repair_F","O_Truck_03_repair_F","O_Truck_03_ammo_F","O_Truck_03_fuel_F","O_Truck_03_medical_F","B_Truck_01_Repair_F","B_Truck_01_ammo_F","B_Truck_01_fuel_F","B_Truck_01_medical_F","O_Truck_02_box_F","O_Truck_02_medical_F","O_Truck_02_Ammo_F","O_Truck_02_fuel_F","I_Truck_02_ammo_F","I_Truck_02_box_F","I_Truck_02_medical_F","I_Truck_02_fuel_F","C_Van_01_fuel_F","B_G_Van_01_fuel_F","CDF_A3_Mi17_medevac","CDF_A3_Ural_Fuel","CDF_A3_Ural_Repair","CDF_A3_Ural_Reammo"];
*/
// <def 2015 09 19


/*
									Vehicle restriction
		Again, similar to VAS's functionality. If you want to restrict a specific vehicle you can do it or
		you can restrict an entire vehicle set by using its base class.
		
		Example:
		VVS_Car = ["Quadbike_01_base_F"]; //Completely removes all quadbikes for all sides
		VVS_Air = ["B_Heli_Light_01_armed_F"]; //Removes the Pawnee
*/
VVS_R_Car = [];
VVS_R_Air = [];
VVS_R_Ship = [];
VVS_R_Armored = [];
VVS_R_Autonomous = [];
VVS_R_Support = [];