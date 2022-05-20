/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_loadLoadout;
*/

params [ "_unit" ];

if ( !(local _unit) ) exitWith {
  false;
};

_my_loadout = missionProfileNamespace getVariable ['last_loadout', []];

if ( count _my_loadout != 0 ) then {
  _unit setUnitLoadout _my_loadout;
};

true;
