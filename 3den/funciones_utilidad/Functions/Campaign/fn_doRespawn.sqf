/*
  AUTHOR: Dikus

  Realiza el manejo de spawns dependiendo de la facción del jugador.
  [ player ] call A3L_fnc_doRespawn;

  Se ejecuta de forma LOCAL
*/

params [ "_unit" ];
private [ "_last_position", "_last_vehicle", "_was_in_vehicle", "_has_last_position" ];

_campaign_mode_enabled = "CampaignModeEnabled" call BIS_fnc_getParamValue;

if ( !(local _unit) || _campaign_mode_enabled == 0 ) exitWith {
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
  true;
};

if( _has_last_position && _was_in_vehicle && alive _last_vehicle ) exitWith {
  _unit moveInAny _last_vehicle;
  true;
};
