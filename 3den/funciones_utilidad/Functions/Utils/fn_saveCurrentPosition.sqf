/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_saveCurrentPosition;
*/

params [ "_unit" ];

if ( !(local _unit) ) exitWith {
  false;
};

_my_current_position = getPosATL _unit;

missionProfileNamespace setVariable ['last_position', _my_current_position];

true;
