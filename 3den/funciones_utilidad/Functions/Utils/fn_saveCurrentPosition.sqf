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

profileNamespace setVariable ["a3l_last_position", _my_current_position];
profileNamespace setVariable ["a3l_last_vehicle_id", (vehicle _unit) call BIS_fnc_objectVar];

true;
