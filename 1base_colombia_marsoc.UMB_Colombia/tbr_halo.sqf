_host = _this select 0;
_caller = _this select 1;
_id = _this select 2;
_params = _this select 3;
_startHeight = _params select 0;

//in objects init-field:
//this addAction ["HALO 500MTS", "tbr_halo.sqf", [500], 6, true, true, "", "true", 3, false, ""];
// the [200] parameter is the insertion height

systemChat "Seleccione zona de despliegue.";
systemChat "Cierre el mapa para cancelar salto.";

tbr_mapclick = false;
tbr_halopos = [];

openMap true;
[
	"tbr_haloSelect",
	"onMapSingleClick",
	{
        tbr_halopos = _pos;
        tbr_mapclick = true;
	},
	[]
] call BIS_fnc_addStackedEventHandler;

waitUntil {tbr_mapclick or !visibleMap};
["tbr_haloSelect", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;

if(tbr_mapclick) then {
    _caller setPos [tbr_halopos select 0, tbr_halopos select 1, _startHeight];
    [_caller, _startHeight] spawn BIS_fnc_halo;
    systemChat "Recuerde abrir su paracaidas y buena suerte";
} else {
    systemChat "Salto HALO abortado.";
};

openMap false;