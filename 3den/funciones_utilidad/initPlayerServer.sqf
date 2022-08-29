params ["_playerUnit", "_didJIP"];
private ["_total_lives"];

[] call compileFinal preprocessFileLineNumbers "campaign_config.sqf";
_total_lives = "TotalLives" call BIS_fnc_getParamValue;

"Init Lives Server" call A3L_fnc_debug;
if ( _total_lives > 0 ) then {
  [format ["Jugador %1 => %2", _playerUnit,_total_lives]] call A3L_fnc_debug;
  [ _playerUnit, _total_lives ] call A3L_fnc_initLives;
};
