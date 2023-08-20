/*
  AUTHOR: Dikus

  [ player ] call A3L_fnc_saveLoadout;

*/
params [ [ "_player", player ] ];

if ( !(local _player) ) exitWith {
  false;
};

_life_state = lifeState _player;
_is_dead = (
  _life_state isEqualTo "DEAD" ||
  _life_state isEqualTo "DEAD-RESPAWN" ||
  _life_state isEqualTo "DEAD-SWITCHING"
);

if ( _is_dead ) exitWith {
  false;
};

_my_loadout = getUnitLoadout [_player, false];

_player setVariable ['ENH_savedLoadout', _my_loadout];

missionProfileNamespace setVariable [ "a3l_last_loadout", _my_loadout];
