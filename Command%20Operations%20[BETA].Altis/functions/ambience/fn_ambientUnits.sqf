params ["_object","_single"];

if (!hasInterface) exitWith {};
if (!alive _object) exitWith {if (COAllowAmbience) then {[player, _single] spawn CO_fnc_ambientUnits};};

	waitUntil {_object distance2D (getMarkerPos "base_radius") > 2000};
if (!alive _object) exitWith {[player, _single] spawn CO_fnc_ambientUnits};
	_squadCount = 1;
	_townPos = getPos _object;
	_center = [_townPos select 0, _townPos select 1, 0];
	if (!_single) then {
	_squadCount = round (("AmbientUnits" call BIS_fnc_getParamValue)/(count ([_center,1500] call CO_fnc_nearPlayers)));
	};
	_enemies = [[["PATROL","PATROL_ROADS"], 1000, "RED", _center, "SAFE", [""], [5, "CIRCLE_L"]], 300, 1000, _squadCount, ("Ambience_" + str (ambienceCount + 1) + "_group_"), [east,resistance,east,resistance,east,resistance], "RANDOM", "MEN",["RECON","STANDARD","SPECIAL"], "AAPLANE", "CAR", [2,3,4,5,6,7,8],["COLUMN","FILE","STAG COLUMN"], false] call CO_fnc_enemyAssault;
	
	_object setVariable ["ambientSize", count ([_center,1500] call CO_fnc_nearPlayers)];
	ambienceCount = ambienceCount + 1;
{
	if (_x == leader group _x) then {
		[_x,_object] spawn CO_fnc_ambientCleanup;
	};
} forEach _enemies;
	

