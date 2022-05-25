/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_saveCurrentPosition;
*/

params [ "_unit" ];
private [ "_my_current_position" ];

if ( !(local _unit) ) exitWith {
  false;
};

_my_current_position = getPosATL _unit;
_a3l_prefix = format ["a3l_%1", worldName];

profileNamespace setVariable [format ["%1_last_position", _a3l_prefix], _my_current_position];
profileNamespace setVariable [format ["%1_last_vehicle_id", _a3l_prefix], (vehicle _unit) call BIS_fnc_objectVar];

true;
