params ["_unit","_allUnits","_object"];


_groupPos = getPosATL _unit;
_group = group _unit;
waitUntil {(_groupPos distance2D ([_groupPos] call CO_fnc_nearestPlayer)) > 1700 or isNull _group or player getVariable ["hasDied",false]};
if (isNull _group) exitWith {[_object,true] spawn CO_fnc_ambientVehicles;};
if (count _allUnits > 0) then {
{
  if (!isNil "_x") then {
    private _vehicle = _x;
    {_vehicle deleteVehicleCrew _x } forEach (crew _vehicle);
	sleep 0.05;
};
} forEach _allUnits;{if (alive _X) then {deleteVehicle _x}} forEach _allUnits};

if (player getVariable ["hasDied",false] or (COAllowAmbience == false)) exitWith {};
[_object,true] spawn CO_fnc_ambientVehicles;