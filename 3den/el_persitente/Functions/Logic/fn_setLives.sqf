/*
  AUTHOR: Dikus

  Quita una vida al jugador local
  [ -1 ] call A3L_fnc_setLives;

  Quita una vida al jugador con la variable variable_jugador
  [ -1, player ] call A3L_fnc_setLives;

  Quita una vida al jugador con la variable variable_jugador
  [ 2, player, true ] call A3L_fnc_setLives;

	inicializa la cantidad de vidas para todo jugador

*/
params [ [ "_lives", 0 ], [ "_player", player ], [ "_force", false ] ];
private [ "_uid" ];

_uid = "lives_" + (getPlayerUID _player);
_player_lives = missionNamespace getVariable [ _uid, [false, 0] ];

_lives_enabled = _player_lives select 0;
if ( _lives_enabled ) then {

  if ( _force ) then {
    _lives = _lives max 0;
    _player_lives set [1, _lives];
  } else {
    _current_lives = _player_lives select 1;
    _remaining_lives = _current_lives + _lives;

    if ( _remaining_lives >= 0 ) then {
      _player_lives set [1, _remaining_lives];
    } else{
      _player_lives set [1, 0];
    };

  };
  missionNamespace setVariable [ _uid, _player_lives, true ];
};
