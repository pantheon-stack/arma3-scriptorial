/*
  AUTHOR: Dikus

  a3l_states = [player, uniform, helmet, backpack]

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

// Loadout modes; 0: All, 1: Whitelist, 2: Blacklist

_player_uid = getPlayerUID _player;

_states_persistance_enabled = "StatesPersistanceEnabled" call BIS_fnc_getParamValue;

_states_persistance_mode = "StatesPersistanceMode" call BIS_fnc_getParamValue;
_states_persistance_list = "StatesPersistanceList" call BIS_fnc_getParamValue;

_index = _states_persistance_list findIf { _x isEqualTo _player_uid };
switch ( _states_persistance_mode ) do {
  case "1": {
    // Whitelist
    _can_load = _index > -1;
  };
  case "2": {
    // Blacklist
    _can_load = _index == -1;
  };
  case "0";
  default {
    // All
    _can_load = true;
  };
};

if ( !_can_load ) exitWith {
  false;
};

_a3l_states = missionProfileNamespace getVariable [ "a3l_states", [] ];

_player_variables = _a3l_states select 0;

// States for player
{
  _key = _x select 0;
  _value = _x select 1;
  _player setVariable [_key, _value];
} forEach _player_variables;

// States for uniform
_uniform_variables = _a3l_states select 1;
_uniform_container = uniformContainer _player;
if ( !(isNull _uniform_container) ) then {
  {
    _key = _x select 0;
    _value = _x select 1;
    _uniform_container setVariable [_key, _value];
  } forEach _uniform_variables;
};

// States for vest
_vest_variables = _a3l_states select 1;
_vest_container = vestContainer _player;
if ( !(isNull _vest_container) ) then {
  {
    _key = _x select 0;
    _value = _x select 1;
    _vest_container setVariable [_key, _value];
  } forEach _vest_variables;
};

// States for backpacks
_backpack_variables = _a3l_states select 1;
_backpack_container = backpackContainer _player;
if ( !(isNull _backpack_container) ) then {
  {
    _key = _x select 0;
    _value = _x select 1;
    _backpack_container setVariable [_key, _value];
  } forEach _backpack_variables;
};
