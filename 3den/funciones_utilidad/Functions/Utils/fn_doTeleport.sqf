/*
  AUTHOR: Dikus

  [ group player, 3 ] call A3L_fnc_surrenderGroup;
  [ player, 3 ] call A3L_fnc_surrenderGroup;
  Si el grupo tiene al menos 3 unidades vivas se rinden

*/

params [ "_unit" ];
private [ "_player_side", "_my_respawn" ];

_player_side = side _unit;

if ( !(isNil "custom_respawn") ) then {
  _my_respawn = custom_respawn;
};

switch ( _player_side ) do
{
	case west: {
    if ( !(isNil "custom_respawn_west") ) then {
      _my_respawn = custom_respawn_west;
    };
  };
	case east: {
    if ( !(isNil "custom_respawn_east") ) then {
      _my_respawn = custom_respawn_east;
    };
  };
  case resistance: {
    if ( !(isNil "custom_respawn_guerrila") ) then {
      _my_respawn = custom_respawn_guerrila;
    };
  };
  case civilian: {
    if ( !(isNil "custom_respawn_civilian") ) then {
      _my_respawn = custom_respawn_civilian;
    };
  };
};

if ( !(isNil "_my_respawn") ) then {
  diag_log "Existe respawn";
  [ _unit, _my_respawn ] call A3L_fnc_teleportToMarker;
} else {
  diag_log "No existe respawn";
};
