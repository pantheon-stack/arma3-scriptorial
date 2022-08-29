/*
  AUTHOR: Dikus

	- SERVER SIDE ONLY -

  [ player, 3 ] call A3L_fnc_initLives;
  [ player ] call A3L_fnc_initLives;

	inicializa la cantidad de vidas para todo jugador.

*/
params [ [ "_player", objNull ], ["_default_total_lives", 3] ];
private ["_total_lives", "_all_players", "_headless_clients", "_players_total_lives"];

if ( isServer ) then {
  "init lives..." call A3L_fnc_debug;

  if ( isNull _player ) then {
    _headless_clients = entities "HeadlessClient_F";
    _all_players = allPlayers - _headless_clients;
  } else {
    // Me aseguro que el jugador quede en un arreglo
    _all_players = [_player];
  };

  {
    _uid = "lives_" + (getPlayerUID _x);
    _players_total_lives = missionNamespace getVariable [ _uid, [true, _default_total_lives] ];
    [format [
      "Lives %1 = %2",
      _uid,
      _players_total_lives
    ]] call A3L_fnc_debug;
    if ( (_players_total_lives select 1) > _default_total_lives ) then {
      _players_total_lives set [1, _default_total_lives];
    };

    // [ true, _players_total_lives ] => [lives_enabled, total_lives]
    missionNamespace setVariable [ _uid, _players_total_lives, true ];

  } forEach _all_players;

};
