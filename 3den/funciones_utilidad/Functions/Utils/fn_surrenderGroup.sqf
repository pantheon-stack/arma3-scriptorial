/*
  AUTHOR: Dikus

  [ group player, 3 ] call COP_fnc_isGroupInVehicle;
  [ player, 3 ] call COP_fnc_isGroupInVehicle;
  Si el grupo tiene al menos 3 unidades vivas se rinden

*/

params ["_group_or_unit" , "_limit"];
private ["_units", "_dead_units", "_result"];

_units = units _group_or_unit;
_alive_units = { alive _x } count _units;
_result = false;

if ( _alive_units <= _limit  ) then {
  { [_x, true] call ace_captives_fnc_setSurrendered } forEach _units;
  _result = true;
};

_result;
