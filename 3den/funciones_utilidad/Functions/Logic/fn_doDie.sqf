/*
  AUTHOR: Dikus

  Ejecuta la lógica de muerte del jugador
  [ player ] call A3L_fnc_doDie;

*/
params [ [ "_player", player ] ];
private [ "_uid", "_total_lives", "_remaining_lives" ];

_uid = "lives_" + (getPlayerUID _player);
_total_lives = missionNamespace getVariable [ _uid, [false, 0] ];

if ( _total_lives select 0 ) then {
  _remaining_lives = _total_lives select 1;
  if ( _remaining_lives <= 0 ) then {
    if (hasInterface) then {
      // Me aseguro que sea un jugador
      cutText [ "<t color='#ff0000' size='2'> Te has quedado sin vidas </t>", "PLAIN DOWN", -1, true, true ];
    };
    [ _player, true ] remoteExec [ "hideObjectGlobal", 2 ];
    [ "Initialize", [ _player ] ] call BIS_fnc_EGSpectator;
  };
};
