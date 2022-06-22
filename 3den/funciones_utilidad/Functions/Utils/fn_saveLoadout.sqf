/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_saveLoadout;
*/

params [ "_unit" ];

if ( !(local _unit) ) exitWith {
  false;
};

_my_loadout = getUnitLoadout [_unit, false];
_a3l_prefix = format ["a3l_%1_%2", worldName, missionName];

profileNamespace setVariable [ format ["%1_last_loadout", _a3l_prefix], _my_loadout];

true;
