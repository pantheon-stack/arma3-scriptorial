/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_loadLoadout;
*/

params [ "_unit" ];

if ( !(local _unit) ) exitWith {
  false;
};

_a3l_prefix = format ["a3l_%1", worldName];
_my_loadout = profileNamespace getVariable [format ["%1_last_loadout", _a3l_prefix], []];

if ( count _my_loadout != 0 ) then {
  _unit setUnitLoadout _my_loadout;
};

true;
