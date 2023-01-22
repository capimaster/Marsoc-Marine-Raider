taskIDGlobal = 0;
publicVariable "taskIDGlobal";
ambienceCount = 0;
publicVariable "ambienceCount";
doReset = true;
publicVariable "doReset";


COAllowAmbience = false;
if ("Ambience" call BIS_fnc_getParamValue == 1) then {COAllowAmbience = true};

publicVariable "COAllowAmbience";