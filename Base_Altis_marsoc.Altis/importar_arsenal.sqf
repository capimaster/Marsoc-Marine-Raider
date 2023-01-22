archivo=_this select 3;
fnc_editString = 
{ 
  params ["_str", "_toFind", "_subsitution", ["_numLimit",10,[1]], ["_limit",true,[true]]]; 
  if (typeName _toFind != typeName []) then {_toFind = [_toFind]}; 
  { 
      _char = count _x; 
      _no = _str find _x; 
      private _loop = 0; 
      while {-1 != _str find _x && _loop < _numLimit} do { 
          _no = _str find _x; 
          _splitStr = _str splitString ""; 
          _splitStr deleteRange [(_no +1), _char -1]; 
          _splitStr set [_no, _subsitution]; 
          _str = _splitStr joinString ""; 
          if (_limit) then {_loop = _loop +1;}; 
      }; 
  } forEach (_toFind); 
  _str 
};

eq = preprocessFile (archivo);
eq=[eq, ["this"], "player",1,false] call fnc_editString;
eq=[eq, ["if (!local this) exitWith {};"], "",1,false] call fnc_editString;
eq=[eq, ["call BIS_fnc_setIdentity"], "call null",1,false] call fnc_editString;
call compile eq;
