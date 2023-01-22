{systemChat "Mission Setup: 16";} remoteExec ["bis_fnc_call", 0];

#include "..\setUnitGlobalVars.sqf";
#include "..\RandFramework\RandScript\trendFunctions.sqf";
//#include "..\RandFramework\CustomMission\customMission.sqf";

//This is only ever called on server!!!!
{systemChat "Mission Setup: 15";} remoteExec ["bis_fnc_call", 0];

TRGM_Logic setVariable ["DeathRunning", false, true];
TRGM_Logic setVariable ["PointsUpdating", false, true];


//debugMessages = "";
//publicVariable "debugMessages";


{systemChat "Mission Setup: 14.5";} remoteExec ["bis_fnc_call", 0];

_ThisTaskTypes = nil;
_IsMainObjs = nil;
_MarkerTypes = nil;
_CreateTasks = nil;
_SamePrevAOStats = nil;
_bIsCampaign = false;
_bIsCampaignFinalMission = false;
_bSideMissionsCivOnly = nil;

_MainMissionTasksToUse = MainMissionTasks;
_SideMissionTasksToUse1 = SideMissionTasks;
_SideMissionTasksToUse2 = SideMissionTasks;
if (iMissionParamObjective > 0) then {
	_MainMissionTasksToUse = [iMissionParamObjective];
	_SideMissionTasksToUse1 = [iMissionParamObjective];
};
if (iMissionParamObjective2 > 0) then {
	_SideMissionTasksToUse1 = [iMissionParamObjective2];
};
if (iMissionParamObjective3 > 0) then {
	_SideMissionTasksToUse2 = [iMissionParamObjective3];
};

{systemChat "Mission Setup: 14";} remoteExec ["bis_fnc_call", 0];

iMissionSetup = iMissionParamType;
if (iMissionSetup == 0) then {
	_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse2];
	_IsMainObjs = [true,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
	_MarkerTypes = ["mil_objective","hd_dot","hd_dot"];
	_CreateTasks = [true,false,false];
	_SamePrevAOStats = [false,false,false];
	_bSideMissionsCivOnly = [false,false,false];
	MaxBadPoints = 1;
};
if (iMissionSetup == 1) then {
	_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom MissionsThatHaveIntel,selectRandom MissionsThatHaveIntel];
	_IsMainObjs = [true,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
	_MarkerTypes = ["empty","hd_dot","hd_dot"];
	_CreateTasks = [true,false,false];
	_SamePrevAOStats = [false,false,false];
	_bSideMissionsCivOnly = [false,false,false];
	MaxBadPoints = 1;
};
if (iMissionSetup == 2) then {
	_ThisTaskTypes = [selectRandom _MainMissionTasksToUse];
	_IsMainObjs = [true]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
	_MarkerTypes = ["mil_objective"]; //INFORMANT: changed this back to mil_objective
	_CreateTasks = [true];
	_SamePrevAOStats = [false];
	_bSideMissionsCivOnly = [false];
	MaxBadPoints = 1;
};

if (iMissionSetup == 8) then { //Heavy Mission, hidden AO and mission type
	if (selectRandom[false,false]) then {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse2];
		_IsMainObjs = [true,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","hd_dot"];
		_CreateTasks = [true,true];
		_SamePrevAOStats = [false,true];
		_bSideMissionsCivOnly = [false,false];
		MaxBadPoints = 1;
	}
	else {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,4];
		_IsMainObjs = [true,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","hd_dot","hd_dot"];
		_CreateTasks = [true,true,false];
		_SamePrevAOStats = [false,true,false];
		_bSideMissionsCivOnly = [false,false,true];
		MaxBadPoints = 1;
	}
};

if (iMissionSetup == 3) then {
	if (selectRandom [true,false,false]) then {
		_ThisTaskTypes = [selectRandom _SideMissionTasksToUse1,4];
		_IsMainObjs = [false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","hd_dot"];
		_CreateTasks = [true,false];
		_SamePrevAOStats = [false,false];
		MaxBadPoints = 1;
		_bSideMissionsCivOnly = [false,true];
	}
	else {
		_ThisTaskTypes = [selectRandom _SideMissionTasksToUse1];
		_IsMainObjs = [false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective"];
		_CreateTasks = [true];
		_SamePrevAOStats = [false];
		_bSideMissionsCivOnly = [false];
		MaxBadPoints = 1;
	};
};
if (iMissionSetup == 9) then { //Heavy Mission (two objectives at AO, chance of side)
	if (selectRandom[true,false]) then {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1];
		_IsMainObjs = [false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","hd_dot"];
		_CreateTasks = [true,true];
		_SamePrevAOStats = [false,true];
		_bSideMissionsCivOnly = [false,false];
		MaxBadPoints = 1;
	}
	else {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,4];
		_IsMainObjs = [false,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","hd_dot","hd_dot"];
		_CreateTasks = [true,true,false];
		_SamePrevAOStats = [false,true,false];
		_bSideMissionsCivOnly = [false,false,true];
		MaxBadPoints = 1;
	}
};

if (iMissionSetup == 4) then {
	if (iMissionParamObjective > 0) then {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse2];
	}
	else {
		_ThisTaskTypes = [selectRandom SideMissionTasks,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse2];
	};
	
	_IsMainObjs = [false,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
	_MarkerTypes = ["mil_objective","mil_objective","mil_objective"];
	_CreateTasks = [true,true,true];
	_SamePrevAOStats = [false,false,false];
	_bSideMissionsCivOnly = [false,false,false];
	MaxBadPoints = 1;
};
if (iMissionSetup == 5) then {
	_totalRep = [MaxBadPoints - BadPoints,1] call BIS_fnc_cutDecimals;
	if (_totalRep >= 10) then {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom MissionsThatHaveIntel,selectRandom MissionsThatHaveIntel];
		_IsMainObjs = [true,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","hd_dot","hd_dot"];
		_CreateTasks = [true,false,false];
		_SamePrevAOStats = [false,false,false];
		_bSideMissionsCivOnly = [false,false,false];
		_bIsCampaignFinalMission = true;
	}
	else {
		if (selectRandom [true,false,false]) then {
			_ThisTaskTypes = [selectRandom _SideMissionTasksToUse1,4];
			_IsMainObjs = [false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
			_MarkerTypes = ["mil_objective","hd_dot"];
			_CreateTasks = [true,false];
			_SamePrevAOStats = [false,false];
			_bSideMissionsCivOnly = [false,true];
		}
		else {
			_ThisTaskTypes = [selectRandom _SideMissionTasksToUse1];
			_IsMainObjs = [false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
			_MarkerTypes = ["mil_objective"];
			_CreateTasks = [true];
			_SamePrevAOStats = [false];
			_bSideMissionsCivOnly = [false];
		};
	};
	_bIsCampaign = true;
};
if (iMissionSetup == 6) then {
	_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse1];
	_IsMainObjs = [true,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
	_MarkerTypes = ["mil_objective","empty","empty"];
	_CreateTasks = [true,false,false];
	_SamePrevAOStats = [false,false,false];
	_bSideMissionsCivOnly = [false,false,false];
	MaxBadPoints = 1;
};
if (iMissionSetup == 7) then {
	if (iMissionParamObjective > 0) then {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse2];
	}
	else {
		_ThisTaskTypes = [selectRandom SideMissionTasks,selectRandom _SideMissionTasksToUse1,selectRandom _SideMissionTasksToUse2];
	};
	_IsMainObjs = [false,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
	_MarkerTypes = ["empty","empty","empty"];
	_CreateTasks = [true,true,true];
	_SamePrevAOStats = [false,false,false];
	_bSideMissionsCivOnly = [false,false,false];
	MaxBadPoints = 1;
};


if (iMissionSetup == 10) then { //Hidden Full map Heavy Mission 
	IsFullMap = true;
	publicVariable "IsFullMap";
	if (selectRandom[true]) then {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse];
		_IsMainObjs = [true]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["empty"];
		_CreateTasks = [true];
		_SamePrevAOStats = [false];
		_bSideMissionsCivOnly = [false];
		MaxBadPoints = 1;
	}
	else {
		_ThisTaskTypes = [selectRandom _MainMissionTasksToUse,selectRandom _SideMissionTasksToUse1,4];
		_IsMainObjs = [true,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["empty","empty","hd_dot"];
		_CreateTasks = [true,true,false];
		_SamePrevAOStats = [false,true,false];
		_bSideMissionsCivOnly = [false,false,true];
		MaxBadPoints = 1;
	}
};



//HERE.... two objectives at one AO : as above, but also... randomo chance of third mission (inttel or mission)

if (!(isNil "IsTraining")) then {
		_ThisTaskTypes = [12,8,3];
		_IsMainObjs = [false,false,false]; //if false, then chacne of no enemu, or civs only etc.... if true, then more chacne of bad shit happening
		_MarkerTypes = ["mil_objective","mil_objective","mil_objective"];
		_CreateTasks = [true,true,true];
		_SamePrevAOStats = [false,false,false];
		_bSideMissionsCivOnly = [false,false,false];
		MaxBadPoints = 100;
};

MissionParamsSet = true;
publicVariable "MissionParamsSet";

{systemChat "Mission Setup: 13";} remoteExec ["bis_fnc_call", 0];

publicVariable "MaxBadPoints";

_randInfor1X = nil;
_randInfor1Y = nil;
_buildings = nil;

{systemChat "Mission Setup: 12.5";} remoteExec ["bis_fnc_call", 0];

while {(InfTaskCount < count _ThisTaskTypes)} do {
	_iTaskIndex = 0;
	if (_bIsCampaign) then {
		_iTaskIndex = (iCampaignDay-1) + InfTaskCount;
	}
	else {
		_iTaskIndex = InfTaskCount;
	};

	_iThisTaskType = nil;
	_iThisTaskType = _ThisTaskTypes select InfTaskCount;


//_iThisTaskType = 12;

	_bIsMainObjective = _IsMainObjs select InfTaskCount;  //more chance of bad things, and set middle area stuff around (comms, base etc...)
	_MarkerType = _MarkerTypes select InfTaskCount; //"Empty" or other
	_bCreateTask = _CreateTasks select InfTaskCount;
	_SamePrevAO = _SamePrevAOStats select InfTaskCount;
	_allowFriendlyIns = true;
	_bSideMissionsCivOnlyToUse = _bSideMissionsCivOnly select InfTaskCount;
	_hideTitleAndDesc = false;

	if (_MarkerTypes select 0 == "empty") then {
		MainIsHidden = true;
		publicVariable "MainIsHidden";
	}
	else {
		MainIsHidden = false;
		publicVariable "MainIsHidden";
	};

	//hint "c";
{systemChat "Mission Setup: 12";} remoteExec ["bis_fnc_call", 0];

	//if (!InfTaskStarted) then {
	if (true) then {
		InfTaskStarted = true;
		publicVariable "InfTaskStarted";

		//InfTaskCount = InfTaskCount + 1;
		//publicVariable "InfTaskCount";

			//InformantStuff
			SideCompleted = [];
			publicVariable "SideCompleted";

				SideCompleted pushBack False;
				publicVariable "SideCompleted";
				_bInfor1Found = false;

				_MissionTitle = "";
				_RequiresNearbyRoad = false;
				_roadSearchRange = 20;
				_CustomMissionEnabled = false;

				_bNewTaskSetup = false;
				{systemChat "Mission Setup: 11";} remoteExec ["bis_fnc_call", 0];

				if (_iThisTaskType == 1) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle1"}; //Hack Data
				if (_iThisTaskType == 2) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle2"}; //Steal data from research vehicle
				if (_iThisTaskType == 3) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle3"}; //Destroy Ammo Trucks
				if (_iThisTaskType == 4) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle4"}; //Speak with informant
				if (_iThisTaskType == 5) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle5"}; //interrogate officer
				if (_iThisTaskType == 6) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle6"}; //Transmit Enemy Comms to HQ
				if (_iThisTaskType == 7) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle7"}; //Eliminate Officer   -   gain 1 point if side, if main, need to id him before complete
				if (_iThisTaskType == 8) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle8"}; //Assasinate weapon dealer   -   gain 1 point if side, no intel from him... if main need to id him before complete
				if (_iThisTaskType == 9) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle9"}; //Destroy AAA vehicles
				if (_iThisTaskType == 10) then {_MissionTitle = localize "STR_TRGM2_startInfMission_MissionTitle10"}; //Destroy Artillery vehicles
				if (_iThisTaskType == 11) then {_MissionTitle = localize "STR_TRGM2_Rescue_POW"}; 
				if (_iThisTaskType == 12) then {_MissionTitle = localize "STR_TRGM2_Rescue_Reporter"}; 		
				if (_iThisTaskType == 13) then {
					#include "..\RandFramework\CustomMission\Mission13.sqf"; //defuse 3 IEDs
					[] call fnc_CustomVars;
				};	
				if (_iThisTaskType == 14) then {
					#include "..\RandFramework\CustomMission\Mission14.sqf"; //defuse bomb
					[] call fnc_CustomVars;
				};	
				if (_iThisTaskType == 15) then {
					#include "..\RandFramework\CustomMission\Mission15.sqf"; //Search and Destroy
					[] call fnc_CustomVars;
				};	
				if (_iThisTaskType == 16) then {
					#include "..\RandFramework\CustomMission\Mission16.sqf"; //Search and Destroy
					[] call fnc_CustomVars;
				};			
				if (_iThisTaskType == 99999) then {
					//hint format["pre: %1",_RequiresNearbyRoad]; sleep 2;
					#include "..\RandFramework\CustomMission\customMission.sqf"; //meeting assasination
					[] call fnc_CustomVars;					
					//hint format["post: %1",_RequiresNearbyRoad]; sleep 2;
				};

				if (_iThisTaskType > 12 && _iThisTaskType < 99999) then {
					_bNewTaskSetup = true; 
				};	


				_bUserDefinedAO = false;
				///*orangestest
				if (_iTaskIndex == 0 && !isNil "Mission1Loc") then {
					_bUserDefinedAO = true;
				};
				if (_iTaskIndex == 1 && !isNil "Mission2Loc") then {
					_bUserDefinedAO = true;
				};
				if (_iTaskIndex == 2 && !isNil "Mission3Loc") then {
					_bUserDefinedAO = true;
				};
				//orangestest*/

				//kill leader (he will run away in car to AO)    ::   save stranded guys    ::      
				{systemChat "Mission Setup: 10";} remoteExec ["bis_fnc_call", 0];
				_attempts = 0;
				while {!_bInfor1Found} do {
					_attempts = _attempts + 1;
					{systemChat "Mission Setup: 9";} remoteExec ["bis_fnc_call", 0];
					_markerInformant1 = nil;


					
					if (!_SamePrevAO || _bUserDefinedAO || _attempts > 100) then {
						_randInfor1X = 0 + (floor random 25000);
						_randInfor1Y = 0 + (floor random 25000);
						_buildings = nearestObjects [[_randInfor1X,_randInfor1Y], BasicBuildings, 200];
						if (_iTaskIndex == 0 && !_bIsCampaign && !(isNil "Mission1Loc")) then {
							_randInfor1X = Mission1Loc select 0;
							_randInfor1Y = Mission1Loc select 1;							
							_buildings = nearestObjects [[_randInfor1X,_randInfor1Y], BasicBuildings, 50*_attempts];
							if (_attempts > 100) then {hint format["Still no location found after %1 attempts!",_attempts]}
						};
						if (_iTaskIndex == 1 && !_bIsCampaign && !(isNil "Mission2Loc")) then {
							_randInfor1X = Mission2Loc select 0;
							_randInfor1Y = Mission2Loc select 1;							
							_buildings = nearestObjects [[_randInfor1X,_randInfor1Y], BasicBuildings, 50*_attempts];
							if (_attempts > 100) then {hint format["Still no location found after %1 attempts!",_attempts]}
						};
						if (_iTaskIndex == 2 && !_bIsCampaign && !(isNil "Mission3Loc")) then {
							_randInfor1X = Mission3Loc select 0;
							_randInfor1Y = Mission3Loc select 1;							
							_buildings = nearestObjects [[_randInfor1X,_randInfor1Y], BasicBuildings, 50*_attempts];
							if (_attempts > 100) then {hint format["Still no location found after %1 attempts!",_attempts]}
						};
						
						//hint format["_buildings: %1 pos: %2,%3", count _buildings,_randInfor1X,_randInfor1Y];
						
					};

					
					_isPosFarEnoughFromHq = (getMarkerPos "mrkHQ" distance [_randInfor1X, _randInfor1Y]) > SideMissionMinDistFromBase;
					_playerSelectedAo = false;
					if (AdvancedSettings select ADVSET_SELECT_AO_IDX == 1) then {
						_playerSelectedAo = true;
					};

					if ((_isPosFarEnoughFromHq || _playerSelectedAo) && (count _buildings) > 0) then {
						_bInfor1Found = true;
						_infBuilding = selectRandom _buildings;
						_infBuilding setDamage 0;
						_allBuildingPos = _infBuilding buildingPos -1;
						_inf1X = position _infBuilding select 0;
						_inf1Y = position _infBuilding select 1;
						if (count _allBuildingPos > 2) then {

							//_iThisTaskType = _ThisTaskTypes select InfTaskCount;
							//_SamePrevAOStats
							_TasksToValidate = [_iThisTaskType];
							if (count _SamePrevAOStats > InfTaskCount) then {
								if (_SamePrevAOStats select (InfTaskCount + 1)) then {
									_TasksToValidate = _TasksToValidate + [_ThisTaskTypes select (InfTaskCount + 1)];
									if (count _SamePrevAOStats > InfTaskCount+1) then {
										if (_SamePrevAOStats select (InfTaskCount + 2)) then {
											_TasksToValidate = _TasksToValidate + [_ThisTaskTypes select (InfTaskCount + 2)];
										};	
									};
								};
							};

							_nearestRoads = nil;
							{
								if (_x == 99999 || _bNewTaskSetup) then {
									_bCustomRequiredPass = true;
									if (_CustomMissionEnabled || _bNewTaskSetup) then {_bCustomRequiredPass = [_infBuilding,_inf1X,_inf1Y] call fnc_CustomRequired;};							
									if (!_bCustomRequiredPass) then {_bInfor1Found = false};
								};		

								if (_x == 3) then {_roadSearchRange = 100;};
								_nearestRoads = [_inf1X,_inf1Y] nearRoads _roadSearchRange;					
								if (_x == 2 || _x == 3 || _RequiresNearbyRoad) then { //2 = retrive tank << so we need a nearby road
									if (count _nearestRoads == 0) then {
										_bInfor1Found = false;
									};
								};
							} forEach _TasksToValidate;


							if (_bInfor1Found) then {
								ObjectivePossitions pushBack [_inf1X,_inf1Y];
								publicVariable "ObjectivePossitions";
								if (_MarkerType == "empty") then {
									HiddenPossitions pushBack [_inf1X,_inf1Y];
									publicVariable "HiddenPossitions";
									_hideTitleAndDesc = true;
								};
								_sTaskDescription = "";
								if (ISUNSUNG) then {
									if (_iThisTaskType == 6) then {
										_radio = selectRandom ["uns_radio2_transitor_NVA","uns_radio2_transitor_NVA"] createVehicle (selectRandom (_infBuilding buildingPos -1));
									}
									else {
										_radio = selectRandom ["uns_radio2_nva_radio","uns_radio2_transitor_NVA","uns_radio2_transitor_NVA"] createVehicle (selectRandom (_infBuilding buildingPos -1));
									};

								};
								//###################################### CUSTOM MISSION ###################
				
								{systemChat "Mission Setup: 8-0-10";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 99999 || _bNewTaskSetup) then {
									[_MarkerType,_infBuilding,_inf1X,_inf1Y,_roadSearchRange, _bCreateTask, _iTaskIndex, _bIsMainObjective] call fnc_CustomMission;		
								};
								//###################################### Hack Data ###################
								{systemChat "Mission Setup: 8-0-9";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 1) then {
									_allpositionsLaptop1 = _infBuilding buildingPos -1;
									_sLaptop1Name = format["objLaptop%1",_iTaskIndex];
									_objLaptop1 = "Land_Laptop_device_F" createVehicle [0,0,500];
									_objLaptop1 setVariable [_sLaptop1Name, _objLaptop1, true];
									missionNamespace setVariable [_sLaptop1Name, _objLaptop1];
									_objLaptop1 setPosATL (selectRandom _allpositionsLaptop1);

									if (selectRandom[true,false]) then {
										_sIED1Name = format["objIED%1",_iTaskIndex];
										_objIED1 = selectRandom IEDClassNames createVehicle [0,0,500];
										_objIED1 setVariable [_sIED1Name, _objIED1, true];
										missionNamespace setVariable [_sIED1Name, _objIED1];
										_objIED1 setPosATL (selectRandom _allpositionsLaptop1);
									};
									[[_objLaptop1, [localize "STR_TRGM2_startInfMission_MissionTitle1","RandFramework\hackIntel1.sqf",[_iTaskIndex,_bCreateTask]]],"addAction",true,true] call BIS_fnc_MP;
									_sTaskDescription = selectRandom[
										localize "STR_TRGM2_startInfMission_MissionTitle1_Desc1",
										localize "STR_TRGM2_startInfMission_MissionTitle1_Desc2"];
								};
								//###################################### Steal data from research vehicle ###################
								{systemChat "Mission Setup: 8-0-8";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 2) then {
									if (_MarkerType != "empty") then { _MarkerType = "hd_unknown"; };
									_nearestRoad = nil;
									_nearestRoad = [[_inf1X,_inf1Y], _roadSearchRange, []] call BIS_fnc_nearestRoad;
									_roadConnectedTo = nil;
									_roadConnectedTo = roadsConnectedTo _nearestRoad;
									_objVehicle = selectRandom sideResarchTruck createVehicle [0,0,500];
									_objVehicle setPosATL getPosATL _nearestRoad;
									[[_objVehicle, [localize "STR_TRGM2_startInfMission_MissionTitle2_Button","RandFramework\downloadResearchData.sqf",[_iTaskIndex,_bCreateTask]]],"addAction",true,true] call BIS_fnc_MP;
									if (count _roadConnectedTo > 0) then {
										_connectedRoad = _roadConnectedTo select 0;
										_direction = [_nearestRoad, _connectedRoad] call BIS_fnc_DirTo;
										_objVehicle setDir (_direction);
									};
									_sTaskDescription = selectRandom[
										localize "STR_TRGM2_startInfMission_MissionTitle2_Desc"];
								};
								//###################################### Destroy Ammo Trucks ###################
								{systemChat "Mission Setup: 8-0-7";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 3) then {
									_allowFriendlyIns = false;
									if (_MarkerType != "empty") then { _MarkerType = "hd_unknown"; };
									_nearestRoad = nil;
									_nearestRoad = selectRandom _nearestRoads;
									_roadConnectedTo = nil;
									_roadConnectedTo = roadsConnectedTo _nearestRoad;
									_sTargetName = format["objInformant%1",_iTaskIndex];
									_sTargetName2 = format["objInformant2_%1",_iTaskIndex];

									_objVehicle = nil;
									_truckType = selectRandom sideAmmoTruck ;
									_objVehicle = _truckType createVehicle [0,0,500];
									_objVehicle setVariable [_sTargetName, _objVehicle, true];
									missionNamespace setVariable [_sTargetName, _objVehicle];
									_objVehicle setPosATL getPosATL _nearestRoad;
									if (count _roadConnectedTo > 0) then {
										_connectedRoad = _roadConnectedTo select 0;
										_direction = [_nearestRoad, _connectedRoad] call BIS_fnc_DirTo;
										_objVehicle setDir (_direction);
									};

									_roadsTooCloseToRoad2 = getPosATL _nearestRoad nearRoads 20;
									_nearestRoad2 = [getPosATL _nearestRoad, _roadSearchRange, _roadsTooCloseToRoad2] call BIS_fnc_nearestRoad;
									_objVehicle2 = nil;
									_objVehicle2 = _truckType createVehicle [20,20,500];
									_objVehicle2 setVariable [_sTargetName2, _objVehicle2, true];
									missionNamespace setVariable [_sTargetName2, _objVehicle2];
									if (isNil "_nearestRoad2") then {
										_flatPos = nil;
										_flatPos = [[_inf1X,_inf1Y,0] , 10, 40, 7, 0, 0.5, 0,[],[[_inf1X,_inf1Y,0],[_inf1X,_inf1Y,0]]] call BIS_fnc_findSafePos;
										_objVehicle2 setPos _flatPos;
									}
									else {
										_objVehicle2 setPosATL getPosATL _nearestRoad2;
										_roadConnectedTo2 = roadsConnectedTo _nearestRoad2;
										//hint format ["roadsConnected: %1",str(_roadConnectedTo2)];
										if (count _roadConnectedTo2 > 0) then {
											_connectedRoad2 = _roadConnectedTo2 select 0;
											_direction = [_nearestRoad2, _connectedRoad2] call BIS_fnc_DirTo;
											_objVehicle2 setDir (_direction);
										};
									};
									_triggerAmmoTruckClear = nil;
									_triggerAmmoTruckClear = createTrigger ["EmptyDetector", [0,0]];
									_triggerAmmoTruckClear setVariable ["DelMeOnNewCampaignDay",true];
									if (!_bCreateTask) then {

										_triggerAmmoTruckClear setTriggerStatements [format["!alive(%1) && !alive(%2)",_sTargetName,_sTargetName2], " [1, ""Destroyed ammo trucks""] execVM ""RandFramework\AdjustMaxBadPoints.sqf""; Hint (localize ""STR_TRGM2_startInfMission_MissionTitle3_Destory""); ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant" + str(_iTaskIndex) + "] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";", ""];			
									}
									else {
										//!([InfSide%3] call FHQ_TT_areTasksCompleted)
										_sKillOfficerTaskComplete = format["[""InfSide%1"", ""succeeded""] remoteExec [""FHQ_TT_setTaskState"", 0]; ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant%1] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";",_iTaskIndex];
										_triggerAmmoTruckClear setTriggerStatements [format["!alive(%1) && !alive(%2) && !([""InfSide%3""] call FHQ_TT_areTasksCompleted)",_sTargetName,_sTargetName2,_iTaskIndex], _sKillOfficerTaskComplete, ""];	

									};
									_sTaskDescription = selectRandom[
										localize "STR_TRGM2_startInfMission_MissionTitle3_Desc"];
								};

								//###################################### Destroy AAA ###################
								{systemChat "Mission Setup: 8-0-6";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 9) then {
									_allowFriendlyIns = false;
									if (_MarkerType != "empty") then { _MarkerType = "hd_unknown"; };

									_sTargetName = format["objInformant%1",_iTaskIndex];
									_sTargetName2 = format["objInformant2_%1",_iTaskIndex];
									_sTargetName3 = format["objInformant3_%1",_iTaskIndex];
									_truckType = selectRandom DestroyAAAVeh;
									sAliveCheck = format["!alive(%1) && !alive(%2) && !([""InfSide%3""] call FHQ_TT_areTasksCompleted)",_sTargetName,_sTargetName2,_iTaskIndex];

									_flatPos = nil;
									_flatPos = [[_inf1X,_inf1Y,0] , 15, 200, 12, 0, 0.5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;
									if (str(_flatPos) == "[0,0,0]") then {_flatPos = [[_inf1X,_inf1Y,0] , 15, 250, 7, 0, 0.5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;};
									_objVehicle = nil;
									_objVehicle = _truckType createVehicle [0,0,500];
									_objVehicle setVariable [_sTargetName, _objVehicle, true];
									createVehicleCrew _objVehicle;
									missionNamespace setVariable [_sTargetName, _objVehicle];
									_objVehicle setPos _flatPos;
									_objVehicle disableAI "MOVE";
									TREND_fnc_AAARadioLoop1 = {
										_radioName = _this select 0;
										_bPlay = true;
										while {_bPlay && !isnil(_radioName)} do {
											if (!alive(call compile _radioName)) then {_bPlay = false};
											playSound3D ["A3\Sounds_F\sfx\radio\" + selectRandom EnemyRadioSounds + ".wss",call compile _radioName,false,getPosASL call compile _radioName,0.5,1,0];
											sleep selectRandom [10,15,20,30];
										};
									};
									[_sTargetName] spawn TREND_fnc_AAARadioLoop1;

									_flatPos2 = nil;
									_flatPos2 = [[_inf1X,_inf1Y,0] , 15, 200, 12, 0, 0.5, 0,[[_flatPos,100]],[[_inf1X,_inf1Y,0],[_inf1X,_inf1Y,0]]] call BIS_fnc_findSafePos;
									if (str(_flatPos2) == "[0,0,0]") then {
										sAliveCheck = format["!alive(%1) && !([""InfSide%2""] call FHQ_TT_areTasksCompleted)",_sTargetName,_iTaskIndex];
									}
									else {
										_objVehicle2 = nil;
										_objVehicle2 = _truckType createVehicle [20,20,500];
										_objVehicle2 setVariable [_sTargetName2, _objVehicle2, true];
										createVehicleCrew _objVehicle2;
										missionNamespace setVariable [_sTargetName2, _objVehicle2];
										_objVehicle2 setPos _flatPos2;
										_objVehicle2 disableAI "MOVE";
										TREND_fnc_AAARadioLoop2 = {
											_radioName = _this select 0;
											_bPlay = true;
											while {_bPlay && !isnil(_radioName)} do {
												if (!alive(call compile _radioName)) then {_bPlay = false};
												//hint format["radio: %1",_radioName];
												playSound3D ["A3\Sounds_F\sfx\radio\" + selectRandom EnemyRadioSounds + ".wss",call compile _radioName,false,getPosASL call compile _radioName,0.5,1,0];
											sleep selectRandom [10,15,20,30];
											};
										};
										[_sTargetName2] spawn TREND_fnc_AAARadioLoop2;
									};

									_triggerAmmoTruckClear = nil;
									_triggerAmmoTruckClear = createTrigger ["EmptyDetector", [0,0]];
									_triggerAmmoTruckClear setVariable ["DelMeOnNewCampaignDay",true];
									if (!_bCreateTask) then {

										_triggerAmmoTruckClear setTriggerStatements [sAliveCheck, " [1, ""Destroyed AAA""] execVM ""RandFramework\AdjustMaxBadPoints.sqf""; Hint (localize ""STR_TRGM2_startInfMission_MissionTitle9_Destory""); ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant" + str(_iTaskIndex) + "] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";", ""];			
									}
									else {
										_sKillOfficerTaskComplete = format["[""InfSide%1"", ""succeeded""] remoteExec [""FHQ_TT_setTaskState"", 0]; ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant%1] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";",_iTaskIndex];
										_triggerAmmoTruckClear setTriggerStatements [sAliveCheck, _sKillOfficerTaskComplete, ""];	

									};
									_sTaskDescription = selectRandom[
										localize "STR_TRGM2_startInfMission_MissionTitle9_Desc"];

								};
								//###################################### Destroy Arti ###################
								{systemChat "Mission Setup: 8-0-5";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 10) then {
									_allowFriendlyIns = false;
									if (_MarkerType != "empty") then { _MarkerType = "hd_unknown"; };

									_sTargetName = format["objInformant%1",_iTaskIndex];
									_sTargetName2 = format["objInformant2_%1",_iTaskIndex];
									_truckType = sArtilleryVeh;
									sAliveCheck = format["!alive(%1) && !alive(%2) && !([""InfSide%3""] call FHQ_TT_areTasksCompleted)",_sTargetName,_sTargetName2,_iTaskIndex];

									_flatPos = nil;
									_flatPos = [[_inf1X,_inf1Y,0] , 15, 200, 12, 0, 0.5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;
									if (str(_flatPos) == "[0,0,0]") then {_flatPos = [[_inf1X,_inf1Y,0] , 15, 250, 7, 0, 0.5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;};
									_objVehicle = nil;
									_objVehicle = _truckType createVehicle [0,0,500];
									_objVehicle setVariable [_sTargetName, _objVehicle, true];
									createVehicleCrew _objVehicle;
									missionNamespace setVariable [_sTargetName, _objVehicle];
									_objVehicle setPos _flatPos;
									_objVehicle disableAI "MOVE";
									TREND_fnc_ArtiFireLoop1 = {
											_objVehicle = _this select 0;
											_Ammo = getArtilleryAmmo [_objVehicle] select 0;
											while {alive(_objVehicle)} do {
												_flatPos = nil;
												_flatPos = [getMarkerPos "mrkHQ", 1000, 1200, 20, 0, 0.5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;
												[[_objVehicle, 1],"setVehicleAmmo",true,false] call BIS_fnc_MP;
												[[_objVehicle, [_flatPos, _Ammo, 1]],"commandArtilleryFire",false,false] call BIS_fnc_MP;
												sleep selectRandom[10,30,60,120,240];
											};
										};
										[_objVehicle] spawn TREND_fnc_ArtiFireLoop1;

									_flatPos2 = nil;
									_flatPos2 = [[_inf1X,_inf1Y,0] , 15, 200, 12, 0, 0.5, 0,[[_flatPos,100]],[[_inf1X,_inf1Y,0],[_inf1X,_inf1Y,0]]] call BIS_fnc_findSafePos;
									if (str(_flatPos2) == "[0,0,0]") then {
										sAliveCheck = format["!alive(%1) && !([""InfSide%2""] call FHQ_TT_areTasksCompleted)",_sTargetName,_iTaskIndex];
									}
									else {
										_objVehicle2 = nil;
										_objVehicle2 = _truckType createVehicle [20,20,500];
										_objVehicle2 setVariable [_sTargetName2, _objVehicle2, true];
										createVehicleCrew _objVehicle2;
										missionNamespace setVariable [_sTargetName2, _objVehicle2];
										_objVehicle2 setPos _flatPos2;
										_objVehicle2 disableAI "MOVE";
										TREND_fnc_ArtiFireLoop2 = {
											_objVehicle = _this select 0;
											_Ammo = getArtilleryAmmo [_objVehicle] select 0;
											while {alive(_objVehicle)} do {
												_flatPos = nil;
												_flatPos = [getMarkerPos "mrkHQ", 1000, 1200, 20, 0, 0.5, 0,[],[[0,0,0],[0,0,0]]] call BIS_fnc_findSafePos;
												[[_objVehicle, 1],"setVehicleAmmo",true,false] call BIS_fnc_MP;
												[[_objVehicle, [_flatPos, _Ammo, 1]],"commandArtilleryFire",false,false] call BIS_fnc_MP;
												sleep selectRandom[10,30,60,120,240];
											};
										};
										[_objVehicle2] spawn TREND_fnc_ArtiFireLoop2;
									};

									_triggerAmmoTruckClear = nil;
									_triggerAmmoTruckClear = createTrigger ["EmptyDetector", [0,0]];
									_triggerAmmoTruckClear setVariable ["DelMeOnNewCampaignDay",true];
									if (!_bCreateTask) then {

										_triggerAmmoTruckClear setTriggerStatements [sAliveCheck, " [1, ""Destroyed Artillery""] execVM ""RandFramework\AdjustMaxBadPoints.sqf""; Hint (localize ""STR_TRGM2_startInfMission_MissionTitle10_Destory""); ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant" + str(_iTaskIndex) + "] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";", ""];			
									}
									else {
										_sKillOfficerTaskComplete = format["[""InfSide%1"", ""succeeded""] remoteExec [""FHQ_TT_setTaskState"", 0]; ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant%1] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";",_iTaskIndex];
										_triggerAmmoTruckClear setTriggerStatements [sAliveCheck, _sKillOfficerTaskComplete, ""];	

									};

									//ATTACH RADIO COMMS SOUND! (but quite)... but will need to stop sound when destroyied
									_sTaskDescription = selectRandom[
										localize "STR_TRGM2_startInfMission_MissionTitle10_Desc"];
								};
								 //###################################### informant,intorigate officer, weapon dealer or kill officer, POW #########################################
								 {systemChat "Mission Setup: 8-4";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 4 || _iThisTaskType == 5 || _iThisTaskType == 7 || _iThisTaskType == 8 || _iThisTaskType == 11 || _iThisTaskType == 12) then { //if informant,intorigate officer, weapon dealer or kill officer or rescue POW, rescue reporter

									_allpositionsLaptop1 = _infBuilding buildingPos -1;
									if (InfTaskCount == 0) then {
										AllowUAVLocateHelp = true;
										publicVariable "AllowUAVLocateHelp";
									};

									_sInformant1Name = format["objInformant%1",_iTaskIndex];
									_infClassToUse = "";
									_sideToUse = EnemySide;

									if (_iThisTaskType == 4) then { //if informant
										_infClassToUse = selectRandom InformantClasses;
										_sideToUse = Civilian;
									};
									if (_iThisTaskType == 8) then { //if weapon dealer
										_infClassToUse = selectRandom WeaponDealerClasses;
										_sideToUse = Civilian;
									};
									if (_iThisTaskType == 5 || _iThisTaskType == 7) then { //if interogate officer or eleminate officer
										_infClassToUse = selectRandom InterogateOfficerClasses;
										_sideToUse = EnemySide;
									};

									if (_iThisTaskType == 11) then { //if rescue POW
										_infClassToUse = selectRandom FriendlyVictims;
										_sideToUse = West;
									};
									if (_iThisTaskType == 12) then { //if rescue reporter
										_infClassToUse = selectRandom Reporters;
										_sideToUse = Civilian;
									};
	
									_objInformant = createGroup _sideToUse createUnit [_infClassToUse,[0,0,500],[],0,"NONE"];
									_objInformant setVariable [_sInformant1Name, _objInformant, true];
									_objInformant setVariable [_sInformant1Name, _objInformant, true];
									_objInformant setVariable ["taskIndex",_iTaskIndex, true];
									missionNamespace setVariable [_sInformant1Name, _objInformant];
									sleep 0.2;
									_MissionTitle = _MissionTitle + ": " + name _objInformant;
									//orangestest s
									if (_iThisTaskType == 11 || _iThisTaskType == 12) then { //if POW or reporter
										[_objInformant,["Carry",{
											_civ=_this select 0; 
											_player=_this select 1;
											[_civ, _player] execVM "RandFramework\CarryAndJoinWounded.sqf";		
											ClearedPositions pushBack ([ObjectivePossitions, _player] call BIS_fnc_nearestPosition);	
											publicVariable "ClearedPositions";
										}]] remoteExecCall ["addAction", 0];
									}; 
									_initPos = selectRandom _allpositionsLaptop1;
									_flatPosInform = nil;
									_flatPosInform = [_initPos , 10, 75, 7, 0, 0.5, 0,[],[_initPos,_initPos]] call BIS_fnc_findSafePos;
									if (count _flatPosInform == 3) then {
										//if pos is [x,x] instead of [x,x,x] then dont setPosATL!
										_objInformant setPosATL (_flatPosInform);
									}
									else {
										_objInformant setPos (_flatPosInform);
									};
									//_objInformant setPos (getPos player);

									//_objInformant setPosATL (_initPos);
									_objInformant allowDamage false;
									_objInformant setVariable ["TaskType",_iThisTaskType,true];

									[[_objInformant, ["HitPart",
										{
											_thisInformant = ((_this select 0) select 0);
											_thisShooter =((_this select 0) select 1);
											//_hitLocation = str(((_this select 0) select 5) select 0);
											_hitLocation = ((_this select 0) select 5) select 0;
											if (bDebugMode) then {hint format["ARHH2:%1",_hitLocation];};
											if (side (_thisShooter) == West && alive(_thisInformant)) then {
												_thisInformant allowDamage true;
												_bDone = false;
												group _thisInformant setBehaviour "ALERT";
												_thisInformant switchMove "";
												_ThisTaskType = _thisInformant getVariable ["TaskType",0];
												if (!isPlayer _thisShooter && _ThisTaskType == 5) then {
													_thisInformant disableAI "anim";
													_thisInformant switchMove "Acts_CivilInjuredLegs_1";
													_thisInformant disableAI "anim";
													_thisInformant setHit ['legs',1];
													_thisInformant setCaptive true;
												}
												else {
													if (_hitLocation == "head" || _hitLocation == "neck" || _hitLocation == "spine1" || _hitLocation == "spine2" || _hitLocation == "spine3" || _hitLocation == "body" ) then {
														_thisInformant setDamage 1;
														_bDone = true;
													};
													if (_hitLocation == "leftleg" || _hitLocation == "rightleg" || _hitLocation == "rightupleg" || _hitLocation == "leftupleg") then {
														_ThisTaskType = _thisInformant getVariable ["TaskType",0];
														//debugMessages = debugMessages + "\nhit leg 4 - " + str(_ThisTaskType);
														if (_ThisTaskType == 5) then {
															//debugMessages = debugMessages + "\nhit leg 5 - " + _hitLocation;
															_thisInformant disableAI "anim";
															_thisInformant switchMove "Acts_CivilInjuredLegs_1";
															_thisInformant disableAI "anim";
															_thisInformant setHit ['legs',1];
															_thisInformant setVariable ["StopWalkScript", true, true];
															_thisInformant setCaptive true;
															removeAllWeapons _thisInformant;
														}
														else {
															//debugMessages = debugMessages + "\nhit leg 6 - " + _hitLocation;
															_thisInformant setHit ['legs',1];
															//hint "hmmm2";
															//debugMessages = debugMessages + "\nOfficerShotInLeg 2";
														};
														//debugMessages = debugMessages + "\nhit leg 7 - " + _hitLocation;
														_bDone = true;
													};

													//debugMessages = debugMessages + "\nOfficerShot 3 - " + str(_hitLocation);

													if (!_bDone) then {
														_thisInformant setDamage 0.8;
													};
												};
											};

										}
									]],"addEventHandler",true,true] call BIS_fnc_MP;

									if (_bIsMainObjective && (_iThisTaskType == 5 || _iThisTaskType == 8 || _iThisTaskType == 7)) then {
										//if interrogate officer or kill weapon dealer or eleminate officer and main objective, then complete task when searched
										//its only the main objectie that we require the player to get to the body... otherwise, can kill him from a distance
										[[_objInformant, [localize "STR_TRGM2_startInfMission_MissionTitle8_Button","RandFramework\IdentifyHVT.sqf",[_iTaskIndex,_bCreateTask],10,true,true,"","_this distance _target < 3"]],"addAction",true,true] call BIS_fnc_MP;
									}
									else {
										if (!(_iThisTaskType == 5)) then {
											//pass in false so we know to just hint if this was our guy or not (just in case player wants to be sure before moving to next objective)
											//only need to search if its a kill objective... if for example its "interogate officer", there will already be an action to get intel
											[[_objInformant, [localize "STR_TRGM2_startInfMission_MissionTitle8_Button","RandFramework\IdentifyHVT.sqf",[_iTaskIndex,false],10,true,true,"","_this distance _target < 3"]],"addAction",true,true] call BIS_fnc_MP;
										};
									};


									if (_iThisTaskType == 5 || _iThisTaskType == 8 || _iThisTaskType == 7) then { //if interrogate officer or kill weapon dealer or eleminate officer
										if (_iThisTaskType == 5 || _iThisTaskType == 7) then {  //only give weapon if officer (not weapon dealer)
											_grpName = createGroup EnemySide;
											[_objInformant] joinSilent _grpName;
											_objInformant addMagazine "30Rnd_9x21_Mag_SMG_02";
											_objInformant addMagazine "30Rnd_9x21_Mag_SMG_02";
											_objInformant addWeapon "SMG_02_F";
										};
										if (_iThisTaskType == 5) then {
											[[_objInformant, [localize "STR_TRGM2_startInfMission_MissionTitle8_Button2","RandFramework\interrogateOfficer.sqf",[_iTaskIndex,_bCreateTask],10,true,true,"","_this distance _target < 3"]],"addAction",true,true] call BIS_fnc_MP;
										};
										if (_iThisTaskType == 5 || _iThisTaskType == 8 || _iThisTaskType == 7) then {

											TREND_fnc_WalkingGuyLoop = {
												_objManName = _this select 0;
												_thisInitPos = _this select 1;
												_objMan = missionNamespace getVariable _objManName;

												group _objMan setSpeedMode "LIMITED";
												group _objMan setBehaviour "SAFE";
												sleep 5; //allow five seconds for any scripts to be run on officer before he moves e.g. if set as hostage when friendly rebels)

												while {true && alive(_objMan)} do {
													_bIsShot = _objMan getVariable ["StopWalkScript", false];
													if (behaviour _objMan != "COMBAT" && !_bIsShot) then {
														[_objManName,_thisInitPos,_objMan,75] execVM "RandFramework\HVTWalkAround.sqf";
														sleep 2;
														waitUntil {sleep 1; speed _objMan < 0.5};
														sleep 10;
													};
												};
											};
											[_sInformant1Name,_initPos] spawn TREND_fnc_WalkingGuyLoop;

											if (_bIsMainObjective) then {
												//[[_objInformant, [localize "STR_TRGM2_startInfMission_MissionTitle8_Button","RandFramework\IdentifyHVT.sqf",[_iTaskIndex,_bCreateTask],10,true,true,"","_this distance _target < 3"]],"addAction",true,true] call BIS_fnc_MP;
											}
											else {
												if (_iThisTaskType != 5) then {
													_trgKillOfficer = nil;
													_trgKillOfficer = createTrigger ["EmptyDetector", [0,0]];
													_trgKillOfficer setTriggerArea [0, 0, 0, false];
													_trgKillOfficer setVariable ["DelMeOnNewCampaignDay",true];
													//_trgKillOfficer setTriggerStatements [format["!alive(%1)",_sInformant1Name], " MaxBadPoints = MaxBadPoints + 1; publicVariable ""MaxBadPoints""; Hint ""A HVT has been eliminated, reputation increased""; ", ""];
													if (!_bCreateTask) then {

														_trgKillOfficer setTriggerStatements [format["!alive(%1)",_sInformant1Name], " [1, ""HVT Killed""] execVM ""RandFramework\AdjustMaxBadPoints.sqf""; Hint (localize ""STR_TRGM2_startInfMission_MissionTitle8_Eliminated""); ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant" + str(_iTaskIndex) + "] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions""; ", ""];			

													}
													else {
														_sKillOfficerTaskComplete = format["[""InfSide%1"", ""succeeded""] remoteExec [""FHQ_TT_setTaskState"", 0]; ClearedPositions pushBack ([ObjectivePossitions, getPos objInformant%1] call BIS_fnc_nearestPosition); publicVariable ""ClearedPositions"";",_iTaskIndex];
														//sleep 2;
														//hint _sKillOfficerTaskComplete;
														//sleep 2;
														_trgKillOfficer setTriggerStatements [format["!alive(%1) && !([""InfSide%2""] call FHQ_TT_areTasksCompleted)",_sInformant1Name,_iTaskIndex], _sKillOfficerTaskComplete, ""];
													};
												};
											};

										};
									}
									else {

										if (_iThisTaskType == 4) then {
											[[_objInformant, [localize "STR_TRGM2_startInfMission_MissionTitle8_Button2","RandFramework\SpeakInformant.sqf",[_iTaskIndex,_bCreateTask],1,false,true,"","_this distance _target < 3"]],"addAction",true,true] call BIS_fnc_MP;
										};
										if (_iThisTaskType == 11 || _iThisTaskType == 12) then { //pow or reporter
											_allowFriendlyIns = false;
											[_objInformant, "Acts_ExecutionVictim_Loop"] remoteExec ["switchMove", 0];
											_objInformant setCaptive true;
											_objInformant setDamage 0.8;
											_objInformant setHitPointDamage ["hitLegs", 1];
											//_sideMainBuilding
											_allpositionsMainBuiding = _infBuilding buildingPos -1;
											_objInformant setPosATL (selectRandom _allpositionsMainBuiding);
											removeAllWeapons _objInformant;
											[_objInformant,["Join Group",{
													_civ=_this select 0; 
													_player=_this select 1;
													[_civ] join (group _player);
													_civ enableAI "MOVE"; 
													//removeAllActions _civ;
													_civ switchMove "Acts_ExecutionVictim_Unbow"; 
													_civ enableAI "anim";
													_civ setCaptive false;
													addSwitchableUnit _civ;
													_taskIndex = _civ getVariable ["taskIndex",-1];
													//ClearedPositions pushBack (ObjectivePossitions select _taskIndex);
													ClearedPositions pushBack ([ObjectivePossitions, getPos _civ] call BIS_fnc_nearestPosition);
													publicVariable "ClearedPositions";
											}]] remoteExecCall ["addAction", 0];

											TREND_fnc_POWCheck = {		
												_objManName = _this select 0;
												_bCreateTask = _this select 1;
												_iTaskIndex = _this select 2;
												_objMan = missionNamespace getVariable _objManName;
												_doLoop = true;
												while {_doLoop} do {
													if (!alive(_objMan)) then {
														_doLoop = false;
														_sName = format["InfSide%1",_iTaskIndex];
														[_sName, "failed"] remoteExec ["FHQ_TT_setTaskState", 0, true];
													};
													if (_objMan distance (getMarkerPos "mrkHQ") < 500 || vehicle _objMan distance (getMarkerPos "mrkHQ") < 500) then {
														_doLoop = false;
														if (!_bCreateTask) then {
															if (_iThisTaskType == 11) then {
																[0.2, "Rescued a POW"] execVM "RandFramework\AdjustMaxBadPoints.sqf";
																[_objMan] join grpNull;
																deleteVehicle _objMan;
															};
															if (_iThisTaskType == 12) then {
																[0.2, "Rescued a Reporter"] execVM "RandFramework\AdjustMaxBadPoints.sqf";
																[_objMan] join grpNull;
																deleteVehicle _objMan;
															};
														}
														else {
															_sName = format["InfSide%1",_iTaskIndex];
															[_sName, "succeeded"] remoteExec ["FHQ_TT_setTaskState", 0, true];
															[_objMan] join grpNull;
															deleteVehicle _objMan;
														};
														
													};
												};
											};
											[_sInformant1Name,_bCreateTask,_iTaskIndex] spawn TREND_fnc_POWCheck; 

										};
									
									};
									//orangestest e*/
									//4=Speak with informant || 5=interrogate officer || 7=Eliminate Officer || 8=Assasinate weapon dealer

									_bodyIDRequiredText = "";
									if (_bIsMainObjective && (_iThisTaskType == 7 || _iThisTaskType == 8)) then {_bodyIDRequiredText = localize "STR_TRGM2_startInfMission_MissionTitle8_MustSearch"};
									if (_iThisTaskType == 4) then {
										_sTaskDescription = selectRandom[
										(localize "STR_TRGM2_startInfMission_MissionTitle4_Desc") + InformantImage];
									};
									if (_iThisTaskType == 5) then {
										_sTaskDescription = selectRandom[
										(localize "STR_TRGM2_startInfMission_MissionTitle5_Desc") + OfficerImage];
									};
									if (_iThisTaskType == 7) then {
										_sTaskDescription = selectRandom[
										(localize "STR_TRGM2_startInfMission_MissionTitle7_Desc") + _bodyIDRequiredText + OfficerImage];
									};
									if (_iThisTaskType == 8) then {
										_sTaskDescription = selectRandom[
										(localize "STR_TRGM2_startInfMission_MissionTitle8_Desc") + _bodyIDRequiredText + WeaponDealerImage];
									};
									if (_iThisTaskType == 11) then { //pow or reporter
										_sTaskDescription = selectRandom[
										"We need you to locate and rescue our POW, the enemy are trying to gain valuable information from our guy!"];
									};
									if (_iThisTaskType == 12) then { //pow or reporter
										_sTaskDescription = selectRandom[
										"We need you to locate and rescue a reporter!"];
									};

								};
								//####################BUG RADIO##########################
								{systemChat "Mission Setup: 8-3";} remoteExec ["bis_fnc_call", 0];
								if (_iThisTaskType == 6) then {
									_allpositionsRadio1 = _infBuilding buildingPos -1;
									_sRadio1Name = format["objRadio%1",_iTaskIndex];
									_objRadio1 = selectRandom SideRadioClassNames createVehicle [0,0,500];
									_objRadio1 setVariable [_sRadio1Name, _objRadio1, true];
									missionNamespace setVariable [_sRadio1Name, _objRadio1];
									_objRadio1 setPosATL (selectRandom _allpositionsRadio1);

									[[_objRadio1, [localize "STR_TRGM2_startInfMission_MissionTitle6_Button","RandFramework\bugRadio1.sqf",[_iTaskIndex,_bCreateTask]]],"addAction",true,true] call BIS_fnc_MP;

									TREND_fnc_RadioLoop = {
										_radioName = _this select 0;
										_bPlay = true;
										while {_bPlay && !isnil(_radioName)} do {
											if (!alive(call compile _radioName)) then {_bPlay = false};
											//hint format["radio: %1",_radioName];
											playSound3D ["A3\Sounds_F\sfx\radio\" + selectRandom EnemyRadioSounds + ".wss",call compile _radioName,false,getPosASL call compile _radioName,0.5,1,0];
											sleep selectRandom [10,15,20,30];
										};
									};
									[_sRadio1Name] spawn TREND_fnc_RadioLoop;
									_sTaskDescription = selectRandom[
										(localize "STR_TRGM2_startInfMission_MissionTitle6_Desc")];
								};
								//##############################################
								{systemChat "Mission Setup: 8-2";} remoteExec ["bis_fnc_call", 0];

								if (!isNil "Mission1Title") then {_MissionTitle = Mission1Title};
								if (!isNil "Mission1Desc") then {_sTaskDescription = Mission1Desc};

								debugMessages = debugMessages + format["\n_bIsMainObjective: %1",_bIsMainObjective];
								debugMessages = debugMessages + format["\n_iTaskIndex: %1",_iTaskIndex];
								debugMessages = debugMessages + format["\n_MissionTitle: %1",_MissionTitle];

								_mrkPrefix = "";
								if (_bIsMainObjective) then {
									_markerInformant1 = createMarker [format["mrkMainObjective%1",_iTaskIndex], [_inf1X,_inf1Y]];
									_mrkPrefix = "mrkMainObjective";
								}
								else {
									_markerInformant1 = createMarker [format["Informant%1",_iTaskIndex], [_inf1X,_inf1Y]];
									_mrkPrefix = "Informant";
								};

								_markerInformant1 setMarkerShape "ICON";

								_hideAoMarker = false;
								if (!isNil "HideAoMarker") then {
									_hideAoMarker = HideAoMarker;
								};
								if (_hideAoMarker) then {
									_markerInformant1 setMarkerType "empty";
								}
								else {
									_markerInformant1 setMarkerType _MarkerType;
								};
								
								//_markerInformant1 setMarkerText _MissionTitle;

								_bIsSameMrkPos = false;
								if (_iTaskIndex > 0) then {
									_sPrevMrkName = format["%1%2",_mrkPrefix,_iTaskIndex-1];
									_sCurrMrkName = format["%1%2",_mrkPrefix,_iTaskIndex];
									if (str(getMarkerPos _sCurrMrkName) == str(getMarkerPos _sPrevMrkName)) then {
										_bIsSameMrkPos = true;
										_sPrevMrkName setMarkerText format["%1 / %2",MarkerText _sPrevMrkName,_MissionTitle];
									};	
								};
								
								if (!_bIsSameMrkPos) then {
									if (_bIsMainObjective) then {
										_markerInformant1 setMarkerText format["(%2) %1 ",_MissionTitle,localize "STR_TRGM2_startInfMission_MainMission"];
									}
									else {
										if (_bCreateTask) then {
											_markerInformant1 setMarkerText format["%1 ",_MissionTitle];
										}
										else {
											_markerInformant1 setMarkerText format["(%2) %1 ",_MissionTitle,localize "STR_TRGM2_startInfMission_OptionalMission"];
										};
									};
								};

								if (_iTaskIndex == 0 && iMissionParamType != 5) then {_allowFriendlyIns = false};

								if (_bSideMissionsCivOnlyToUse && !_bCreateTask) then {
									ClearedPositions pushBack [_inf1X,_inf1Y];
									publicVariable "ClearedPositions";
									_markerInformant1 setMarkerText (localize "STR_TRGM2_startInfMission_markerInformant");
									if (!_SamePrevAO) then {
										[[_inf1X,_inf1Y],_iThisTaskType,_infBuilding,_bIsMainObjective, _iTaskIndex, _allowFriendlyIns,true] spawn TREND_fnc_PopulateSideMission;
									};
								}
								else {
									if (!_SamePrevAO) then {
										[[_inf1X,_inf1Y],_iThisTaskType,_infBuilding,_bIsMainObjective, _iTaskIndex, _allowFriendlyIns] spawn TREND_fnc_PopulateSideMission;
									};
								};

								//hint _sTaskDescription;
								
								if (_bCreateTask) then {
									if (_bIsCampaign) then {
										[FriendlySide,[format["InfSide%1",_iTaskIndex], _sTaskDescription, format[localize "STR_TRGM2_startInfMission_MissionDayTitle",_iTaskIndex+1,_MissionTitle],""]] call FHQ_TT_addTasks;
										ActiveTasks pushBack format["InfSide%1",_iTaskIndex];
										publicVariable "ActiveTasks";
									}
									else {
										if (_hideTitleAndDesc) then {
											[FriendlySide,[format["InfSide%1",_iTaskIndex], "Objective unknown, recon the area!", format["%1 : %2",_iTaskIndex+1,"Objective Unknown"],""]] call FHQ_TT_addTasks;
										}
										else {
											[FriendlySide,[format["InfSide%1",_iTaskIndex], _sTaskDescription, format["%1 : %2",_iTaskIndex+1,_MissionTitle],""]] call FHQ_TT_addTasks;
										};
										
										ActiveTasks pushBack format["InfSide%1",_iTaskIndex];
										publicVariable "ActiveTasks";
									};
								};

								//_triggerSidePassClear = createTrigger ["EmptyDetector", [_inf1X,_inf1Y]];
								//_triggerSidePassClear setTriggerArea [2000, 2000, 0, false];
								//_triggerSidePassClear setTriggerStatements ["false", "{deleteVehicle _x} forEach nearestObjects [this, [""all""], 2000]", ""];


							};
						}
						else {
							_bInfor1Found = false;
						};

					};
					{systemChat "Mission Setup: 8-1";} remoteExec ["bis_fnc_call", 0];
				};
				if (InfTaskCount == 0) then {
					CurrentZeroMissionTitle = _MissionTitle; //curently only used for campaign
					if (MainMissionTitle != "") then {CurrentZeroMissionTitle = MainMissionTitle};
					publicVariable "CurrentZeroMissionTitle";
					if (_hideTitleAndDesc) then {
						MainMissionTitle = "Objective Unknown";
					};
				};
				{systemChat "Mission Setup: 8-0";} remoteExec ["bis_fnc_call", 0];
				InfTaskCount = InfTaskCount + 1;


			//};

	};
};


{systemChat "Mission Setup: 7";} remoteExec ["bis_fnc_call", 0];

_trgComplete = createTrigger ["EmptyDetector", [0,0]];
_trgComplete setVariable ["DelMeOnNewCampaignDay",true];
_trgComplete setTriggerArea [0, 0, 0, false];
if (iMissionParamType == 5) then {
	//MaxBadPoints = MaxBadPoints + 1; publicVariable ""MaxBadPoints""
	_totalRep = [MaxBadPoints - BadPoints,1] call BIS_fnc_cutDecimals;

	if (_totalRep >= 10 && FinalMissionStarted) then {
		_trgComplete setTriggerStatements ["ActiveTasks call FHQ_TT_areTasksCompleted;", "[FriendlySide, [""DeBrief"", localize ""STR_TRGM2_mainInit_Debrief"", ""Debrief"", """"]] call FHQ_TT_addTasks;  [[""CAMPAIGN_END""],""RandFramework\Campaign\SetMissionBoardOptions.sqf""] remoteExec [""BIS_fnc_execVM"",0,true];}; deletevehicle thisTrigger", ""];

	}
	else {
		_trgComplete setTriggerStatements ["ActiveTasks call FHQ_TT_areTasksCompleted;", "hint (localize ""STR_TRGM2_startInfMission_RTBNextMission""); [[""MISSION_COMPLETE""],""RandFramework\Campaign\SetMissionBoardOptions.sqf""] remoteExec [""BIS_fnc_execVM"",0,true]; if (ActiveTasks call FHQ_TT_areTasksSuccessful) then {[1, format[localize ""STR_TRGM2_startInfMission_DayComplete"",str(iCampaignDay)]] execVM 'RandFramework\AdjustMaxBadPoints.sqf'}; deletevehicle thisTrigger", ""];
	};
	//TESTTEST = triggerStatements _trgComplete;
}
else {
	//_trgComplete setTriggerStatements ["ActiveTasks call FHQ_TT_areTasksCompleted;", "", ""]; //not sure why this is here... commented out on 5th Jan 2018... delete of no issues sinse

	//If not campaign and rep is disabled, then we will not fail the mission if rep low, but will be a task to keep rep above average
	if (iMissionParamRepOption == 0) then {
		//CREATE TASK HERE... we fail it in mainInit.sqf when checking rep points
		[FriendlySide, ["tskKeepAboveAverage",localize "STR_TRGM2_startInfMission_HoldReputation_Desc",localize "STR_TRGM2_startInfMission_HoldReputation_Title",""]] call FHQ_TT_addTasks;
		["tskKeepAboveAverage", "succeeded"] call FHQ_TT_setTaskState;
	};
	if (iMissionParamRepOption == 1) then {
		//CREATE TASK HERE... we fail it in mainInit.sqf when checking rep points
		[FriendlySide, ["tskKeepAboveAverage",localize "STR_TRGM2_startInfMission_HoldReputation_Desc",localize "STR_TRGM2_startInfMission_HoldReputation_Title2",""]] call FHQ_TT_addTasks;
		["tskKeepAboveAverage", "succeeded"] call FHQ_TT_setTaskState;
	};

};

{systemChat "Mission Setup: 6";} remoteExec ["bis_fnc_call", 0];
///*orangestest



///*orangestest
//now we have all our location positinos, we can set other area stuff
[] execVM "RandFramework\RandScript\TREND_fnc_setOtherAreaStuff.sqf";
//orangestest*/

//orangestest*/
{systemChat "Mission Setup: 2";} remoteExec ["bis_fnc_call", 0];


TREND_fnc_PopulateLoadingWait = {
	hintSilent "Populating AO please wait...";
	_percentage = 0;
	while {_percentage < 100} do {
		[format["Populating AO please wait... %1 percent", _percentage]] remoteExecCall ["hintSilent", 0];
		//Hint format["Populating AO please wait... %1 %", _percentage];
		_percentage = _percentage + 1;
		sleep 0.1;
	};
	[""] remoteExecCall ["Hint", 0];
	MissionLoaded = true;
	publicVariable "MissionLoaded";
};
[] spawn TREND_fnc_PopulateLoadingWait;

	

{systemChat "Mission Setup: 1";} remoteExec ["bis_fnc_call", 0];


publicVariable "debugMessages";

hint (localize "STR_TRGM2_startInfMission_SoItBegin");

///*orangestest
[[],"RandFramework\animateAnimals.sqf"] remoteExec ["BIS_fnc_execVM",0,true];
//orangestest*/



{systemChat "Mission Setup: 0";} remoteExec ["bis_fnc_call", 0];