/*
  AUTHOR: Dikus

  Realiza el manejo de spawns dependiendo de la facción del jugador.
  [ player ] call A3L_fnc_doRespawn;

  Se ejecuta de forma LOCAL
*/

params [ "_unit" ];
private [ "_player_side", "_my_respawn", "_last_position", "_last_vehicle", "_was_in_vehicle", "_has_last_position" ];

if ( !(local _unit) ) exitWith {
  false;
};

_a3l_prefix = format ["a3l_%1_%2", worldName, missionName];

_last_position = profileNamespace getVariable [ format ["%1_last_position", _a3l_prefix], []];
_has_last_position = (count _last_position) != 0;

_last_vehicle_id = profileNamespace getVariable [ format ["%1_last_vehicle_id", _a3l_prefix], ""];

_last_vehicle = missionNamespace getVariable [_last_vehicle_id, objNull];

//_last_vehicle puede ser el mismo jugador
_was_in_vehicle = !(isNull _last_vehicle) && _last_vehicle != _unit;

if ( _has_last_position && !_was_in_vehicle ) exitWith {
  [ _unit, _last_position ] call A3L_fnc_teleportToPosition;
};

if( _has_last_position && _was_in_vehicle && alive _last_vehicle ) exitWith {
  _unit moveInAny _last_vehicle;
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
