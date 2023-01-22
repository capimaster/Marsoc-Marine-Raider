params ["_position","_radius"];

_list = [
"Land_i_Shop_01_V2_F",
"Land_i_Shop_01_V1_F",
"Land_i_Shop_01_V3_F",
"Land_u_Shop_01_V1_F",
"Land_i_House_Big_01_V3_F",
"Land_i_House_Big_01_V1_F",
"Land_i_House_Big_01_V2_F",
"Land_u_House_Big_01_V1_F",
"Land_u_House_Big_02_V1_F",
"Land_i_House_Big_02_V3_F",
"Land_i_House_Big_02_V1_F",
"Land_i_House_Big_02_V2_F",
"Land_i_Stone_HouseSmall_V1_F",
"Land_i_Stone_HouseSmall_V2_F",
"Land_i_Stone_HouseSmall_V3_F",
"Land_i_Stone_HouseBig_V2_F",
"Land_i_Stone_HouseBig_V1_F",
"Land_i_Stone_HouseBig_V3_F",
"Land_i_House_Small_01_V3_F",
"Land_i_House_Small_01_V1_F",
"Land_i_House_Small_01_V2_F",
"Land_u_House_Small_01_V1_F",
"Land_i_House_Big_02_b_blue_F",
"Land_i_House_Big_02_b_pink_F",
"Land_i_House_Big_02_b_whiteblue_F",
"Land_i_House_Big_02_b_white_F",
"Land_i_House_Big_02_b_brown_F",
"Land_i_House_Big_02_b_yellow_F",
"Land_i_House_Big_01_b_blue_F",
"Land_i_House_Big_01_b_pink_F",
"Land_i_House_Big_01_b_whiteblue_F",
"Land_i_House_Big_01_b_white_F",
"Land_i_House_Big_01_b_brown_F",
"Land_i_House_Big_01_b_yellow_F",
"Land_i_House_Small_01_b_blue_F",
"Land_i_House_Small_01_b_pink_F",
"Land_i_House_Small_01_b_whiteblue_F",
"Land_i_Stone_House_Big_01_b_clay_F",
"Land_i_House_Small_01_b_white_F",
"Land_i_House_Small_01_b_brown_F",
"Land_i_House_Small_01_b_yellow_F"
];

_allHouses = nearestObjects [_position, _list, _radius];

_allHouses;

