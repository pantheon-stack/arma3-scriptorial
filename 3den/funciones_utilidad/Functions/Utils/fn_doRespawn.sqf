/*
  AUTHOR: Dikus

  Realiza el manejo de spawns dependiendo de la facción del jugador.
  [ player ] call A3L_fnc_doRespawn;

  Se ejecuta de forma LOCAL
*/

params [ "_unit" ];
private [ "_player_side", "_my_respawn" ];

if ( !(local _unit) ) exitWith {
  false;
};

if ( [ _unit ] call A3LCampaign_fnc_doRespawn ) exitWith {
  true;
};

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
  [ _unit, _my_respawn ] call A3L_fnc_teleportToPosition;
} else {
  // diag_log "No existe respawn";
};

true;
