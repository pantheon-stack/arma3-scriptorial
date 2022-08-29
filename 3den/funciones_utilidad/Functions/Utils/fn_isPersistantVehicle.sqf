/*
  AUTHOR: Dikus
*/

params [ "_object" ];

{
  _persistant_vehicle = _x;
  if ( _vehicle isKindOf _persistant_vehicle ) exitWith {
    {
      if (_vehicle isKindOf _x) exitWith {
        false;
      };
    } forEach A3L_persistant_blacklist;
    true;
  };
} forEach A3L_persistant_vehicles;

false;
