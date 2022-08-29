/*
  AUTHOR: Dikus
*/

params [["_objects", []]];

if ( !isServer ) exitWith {
  false;
};

private _persistant_objects = [];

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
  _my_containers = [];
  _my_containers_classes = [];
  _my_items = getItemCargo crate;
  _my_items_classes = _my_items select 0;
  _exculded_items_index = [];
  {
    // format [ _class, _items ]
    // _items => [
    //  [ _item_cargo_classes, _item_cargo_qties ],
    //  [ _weapon_cargo_classes, _weapon_cargo_qties ],
    //  [ _magazine_cargo_classes, _magazine_cargo_qties ]
    //]
    _my_class = _x select 0;
    _my_containers_classes pushBack _my_class;

    _my_container = (_x select 1);

    _item_cargo = getItemCargo _my_container;
    _magazine_cargo = getMagazineCargo _my_container;
    _weapon_cargo = getWeaponCargo _my_container;

    _my_containers pushBack ([
      _my_class,
      [_item_cargo] + [_weapon_cargo] + [_magazine_cargo]
    ]);
  } forEach (everyContainer crate);

  for [{_i = count _my_items_classes - 1}, {_i >= 0}, {_i = _i - 1}] do {
    _my_item_class = _my_items_classes select _i;
    if ( _my_item_class in _my_containers_classes ) then {
      (_my_items select 0) deleteAt _i;
      (_my_items select 1) deleteAt _i;
    } else {
      _qty = (_my_items select 1) select _i;
      _my_item_class
    };
  };

  // inventario obtener weapon magazines e item cargo solamente
  // No cargar mochilas, uniformes y chalecos
  _my_inventory = [];
  _my_inventory pushBack _my_items;
  _my_inventory pushBack ( getWeaponCargo _persistant_object );
  _my_inventory pushBack ( getMagazineCargo _persistant_object );

  // _inventory
  // format [ _items, _weapons, _magazines, _containers ]
  _my_object pushBack ( _my_inventory );

  // ** INVENTORY PROCESSING **

  // obtener objeto al cual esta attached
  _cargo_vehicle = attachedTo _persistant_object;

  // _is_attached
  _my_object pushBack ( !(isNull _cargo_vehicle) );

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

missionProfileNamespace setVariable [ "a3l_persistant_objects", _persistant_objects];

true;
