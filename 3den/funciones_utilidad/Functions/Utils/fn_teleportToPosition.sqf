/*
  AUTHOR: Dikus

  Teletransporta al jugador a la ubicación del 2do parametro
  [ player, custom_respawn ] call A3L_fnc_teleportToMarker;

*/

params [ "_unit" , "_respawn_point" ];
private [ "_pos" ];

if ( isArray _respawn_point ) then {
  _pos = _respawn_point;
} else {
  _pos = getPosATL _respawn_point;
};
_unit setPosATL [ _pos select 0, _pos select 1, _pos select 2];

true;
