/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_saveLoadout;
*/

params [ "_unit" ];

if ( !(local _unit) ) exitWith {
  false;
};

_my_loadout = getUnitLoadout [_unit, false];

missionProfileNamespace setVariable ['last_loadout', _my_loadout];

true;
