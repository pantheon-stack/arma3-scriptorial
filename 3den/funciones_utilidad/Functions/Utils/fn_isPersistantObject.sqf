/*
  AUTHOR: Dikus
*/

params [ "_object" ];

{
  _persistant_object = _x;
  if ( _object isKindOf _persistant_object ) exitWith {
    {
      if (_object isKindOf _x) exitWith {
        false;
      };
    } forEach A3L_persistant_blacklist;
    true;
  };
} forEach A3L_persistant_objects;

false;
