/*
  AUTHOR: Dikus

  Quita una vida al jugador local
  [ -1 ] call A3L_fnc_setLives;

  Quita una vida al jugador con la variable variable_jugador
  [ -1, variable_jugador ] call A3L_fnc_setLives;

	inicializa la cantidad de vidas para todo jugador

*/
params [ [ "_lives", 0 ], [ "_player", player ] ];
private [ "_uid" ];
// Debe existir la cantidad de vidas de no ser asi debo agregarlo al listado

_uid = "lives_" + (getPlayerUID _player);
_player_lives = missionNamespace getVariable [ _uid, [false, 0] ];

// Reviso si tiene habilitadas las vidas
if ( _player_lives select 0 ) then {
  _remaining_lives = (_player_lives select 1) + _lives;

  if ( _remaining_lives >= 0 ) then {
    _player_lives set [1, _remaining_lives];
  } else{
    // Si la cantidad de vidas es menor a cero no puede reaparecer
    _player_lives set [1, 0];
  };
  // revisar si se modifica por referencia
  missionNamespace setVariable [ _uid, _player_lives, true ];
};
