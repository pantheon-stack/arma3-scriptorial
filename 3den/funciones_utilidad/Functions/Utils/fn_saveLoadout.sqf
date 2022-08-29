/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_saveLoadout;
*/

params [ "_player" ];

if ( !(local _player) ) exitWith {
  false;
};

_my_loadout = getUnitLoadout [_player, false];

_player setVariable ['ENH_savedLoadout', _my_loadout];

missionProfileNamespace setVariable [ "a3l_last_loadout", _my_loadout];
[format ["my saved loadout => %1", _my_loadout]] call A3L_fnc_debug;

true;
