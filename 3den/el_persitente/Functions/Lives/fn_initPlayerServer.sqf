
"Initilizing lives on Player Server" call A3L_fnc_debug;

_total_lives = "TotalLives" call BIS_fnc_getParamValue;
if ( _total_lives > 0 ) then {
  [ _playerUnit, _total_lives ] call A3L_fnc_initLives;
};
