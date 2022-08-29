/*
  AUTHOR: Dikus
*/

params [];

if ( !isServer ) exitWith {
  false;
};


// garantizar que no se repitan objetos
private _persistant_objects = missionProfileNamespace getVariable [
  "a3l_persistant_objects",
  []
];

// format [_object_class, _position, _inventory, _is_attached, _state_variables]
{
  _persistant_object = _x;

  _object_class = _persistant_object select 0;
  _position = _persistant_object select 1;
  _inventory = _persistant_object select 2;

  _item_cargo = _inventory select 0;
  _weapon_cargo = _inventory select 1;
  _magazine_cargo = _inventory select 2;

  _is_attached = _persistant_object select 3;
  _state_variables = _persistant_object select 4;

  _my_object = _object_class createVehicle _position;

  // Clean & Fill
  [_my_object] call A3L_fnc_clearContainer;

  {

  } forEach _item_cargo;

  {

  } forEach _item_cargo;

  {

  } forEach _item_cargo;



  if ( _is_attached ) then {
    // Get closest vehicle in 2d plane

    _vehicle_options = entities [
      A3L_persistant_objects,
      A3L_persistant_vehicles + A3L_persistant_blacklist,
      true,
      false
    ];

    _my_vehicle = objNull;
    _prev_distance = 1e10;
    {
      _cur_distance = _my_object distance2D _x;
      if ( _cur_distance < _prev_distance) then {
        _prev_distance = _cur_distance;
        _my_vehicle = _x;
      };
    } forEach _vehicle_options;

    [_my_object, _my_vehicle] call ace_cargo_fnc_loadItem;
  }

} forEach _persistant_objects;



if _in_vehicle then
_near_entites = _position_vehicle nearEntities [A3L_persistant_vehicles, 100]
_closest = null;
{
  if ( isNull _closest ) then {
    _closest = _x;
  } else {
    _new_is_closer = (getPos _x distance _position_vehicle) < (getPos _closest distance _position_vehicle);
    if ( _new_is_closer ) then {
      _closest = _x;
    };
  };
} forEach _near_entites;

if ( !(isNull _closest) ) then {
  _cargo = _closest emptyPositions "cargo";
  if (_cargo > 0) then {_x moveInCargo _veh};
};


if ( (count _objects) == 0 ) then {
  _objects = entities [
    A3L_persistant_objects,
    A3L_persistant_vehicles + A3L_persistant_blacklist,
    true,
    false
  ];
};


{
  _persistant_object = _x;

  // format [_object_class, _position, _inventory, _is_attached, _state_variables]
  _my_object = [];
  _state_variables = [];

  // _object_class
  _my_object pushBack ( typeOf _persistant_object );

  // _position
  _my_object pushBack ( getPos _persistant_object );

  // ** INVENTORY PROCESSING **

  // inventario obtener weapon magazines e item cargo solamente
  _my_inventory = [];
  _my_inventory pushBack ( getItemCargo _persistant_object );
  _my_inventory pushBack ( getWeaponCargo _persistant_object );
  _my_inventory pushBack ( getMagazineCargo _persistant_object );

  // _inventory
  _my_object pushBack ( _my_inventory );

  // ** INVENTORY PROCESSING **

  // obtener objeto al cual esta attached
  _cargo_vehicle = attachedTo _persistant_object;

  if ( !(isNull _cargo_vehicle) ) then {
    // _in_cargo
    if (_cargo_vehicle call A3L_fnc_isPersistantObject) then {
      _my_object pushBack true;
    } else {
      _my_object pushBack false;
    };

    // _in_vehicle
    if (_cargo_vehicle call A3L_fnc_isPersistantVehicle) then {
      _my_object pushBack true;
    } else {
      _my_object pushBack false;
    };

  };

  {
    _object_state = _x;
    _current_state = _persistant_object getVariable [_object_state, nil];
    if ( !(isNil "_current_state") ) then {
      _state_variables pushBack [_object_state, _current_state];
    };
  } forEach A3L_persistant_object_states;

  // _state_variables
  _my_object pushBack _state_variables;

  _persistant_objects pushBack _my_object;

  /*
    For Loading
    if _in_vehicle then
    _near_entites = _position_vehicle nearEntities [A3L_persistant_vehicles, 100]
    _closest = null;
    {
      if ( isNull _closest ) then {
        _closest = _x;
      } else {
        _new_is_closer = (getPos _x distance _position_vehicle) < (getPos _closest distance _position_vehicle);
        if ( _new_is_closer ) then {
          _closest = _x;
        };
      };
    } forEach _near_entites;

    if ( !(isNull _closest) ) then {
      _cargo = _closest emptyPositions "cargo";
      if (_cargo > 0) then {_x moveInCargo _veh};
    };
  */

} forEach _objects;

// garantizar que no se repitan objetos
 missionProfileNamespace setVariable [ "a3l_persistant_objects", _persistant_objects];

true;
