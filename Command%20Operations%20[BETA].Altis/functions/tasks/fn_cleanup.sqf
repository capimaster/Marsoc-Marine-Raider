params ["_position","_minDistance","_objects","_markers"];

waitUntil {_position distance2D ([_position] call CO_fnc_nearestPlayer) > _minDistance;};


if (count _objects > 0) then {
{
  if (!isNil "_x") then {
    private _vehicle = _x;
    {_vehicle deleteVehicleCrew _x } forEach (crew _vehicle);
};
} forEach _objects;{if (alive _X) then {deleteVehicle _x}} forEach _objects;};
if (count _markers > 0) then {{deleteMarker _x} forEach _markers;};
true;