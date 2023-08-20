/*
  AUTHOR: Dikus

  a3l_states = [player, uniform, helmet, backpack]

*/
params [ [ "_player", player ] ];
private [ "_a3l_states" ];

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

_a3l_states = [];

// States for player
_variables = allVariables _player;
_player_variables = [];
{
  _valor = _player getVariable _x;
  _player_variables pushBack [_x, _valor];
} forEach _variables;
_a3l_states pushBack _player_variables;

// States for uniform
_uniform_container = uniformContainer _player;
_uniform_variables = [];
if ( !(isNull _uniform_container) ) then {
  _variables = allVariables _uniform_container;
  {
    _valor = _uniform_container getVariable _x;
    _uniform_variables pushBack [_x, _valor];
  } forEach _variables;
};
_a3l_states pushBack _uniform_variables;

// States for vest
_vest_container = vestContainer _player;
_vest_variables = [];
if ( !(isNull _vest_container) ) then {
  _variables = allVariables _vest_container;
  {
    _valor = _vest_container getVariable _x;
    _vest_variables pushBack [_x, _valor];
  } forEach _variables;
};
_a3l_states pushBack _vest_variables;

// States for backpacks
_backpack_container = backpackContainer _player;
_backpack_variables = [];
if ( !(isNull _backpack_container) ) then {
  _variables = allVariables _backpack_container;
  {
    _valor = _backpack_container getVariable _x;
    _backpack_variables pushBack [_x, _valor];
  } forEach _variables;
};
_a3l_states pushBack _backpack_variables;

missionProfileNamespace setVariable [ "a3l_states", _a3l_states];
