/*
  AUTHOR: Dikus

  [ group player, 3 ] call A3L_fnc_surrenderGroup;
  [ player, 3 ] call A3L_fnc_surrenderGroup;
  Si el grupo tiene al menos 3 unidades vivas se rinden

*/

params [ "_unit" , "_respawn_point" ];
private [ "_pos" ];

_pos = getPosATL _respawn_point;
_unit setPosATL [ _pos select 0, _pos select 1, _pos select 2];
