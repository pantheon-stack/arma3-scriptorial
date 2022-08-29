/*
  AUTHOR: Dikus
*/

if ( !isServer ) exitWith {
  false;
};

private _my_vehicles = entities [
  A3L_persistant_vehicles,
  A3L_persistant_blacklist,
  true,
  false
];

// ** ACE CARGO PROCESSING **
// revisar y modificar las cajas que esten en el vehiculo, deben guardarse con saveObjects
private _my_cargo = attachedObjects _vehicle;
{
  [_x] call A3L_fnc_saveObjects;
} forEach _my_cargo;

// ** OTHER INVENTORY PROCESSING **
// format [ _item_cargo, _weapon_cargo, magazine_cargo, ammo_cargo, fuel_cargo, _repair_cargo, _vehicle_cargo ]
_my_inventory = [];
_my_inventory pushBack (getItemCargo _vehicle);
_my_inventory pushBack (getWeaponCargo _vehicle);
_my_inventory pushBack (getMagazineCargo _vehicle);
_my_inventory pushBack (getAmmoCargo _vehicle);
_my_inventory pushBack (getFuelCargo _vehicle);
_my_inventory pushBack (getRepairCargo _vehicle);
_my_inventory pushBack (getVehicleCargo _vehicle);


//[hitpointsNamesArray, selectionsNamesArray, damageValuesArray]
_hitpoints = getAllHitPointsDamage _vehicle;
/*
  // For loading purposes
  _hitpoints_names = _hit_points select 0;
  _hitpoints_damages = _hit_points select 2;

  {
    _actual_damage = _hitpoints_damages select _forEachIndex;
    _vehicle setHitPointDamage [_x, _actual_damage];
  } forEach _hitpoints_names;
*/

_my_saved_vehicles = [];

{

  // format [_vehicle_class, _position, _inventory, _hitpoints, _fuel, _fuel_cargo]
  _my_vehicle = [];

  _my_vehicle pushBack ( typeOf _x );
  _my_vehicle pushBack ( getPos _x );
  _my_vehicle pushBack ( getItemCargo _x );
  _my_vehicle pushBack ( getAllHitPointsDamage _x );
  _my_vehicle pushBack ( fuel _x );
  _my_vehicle pushBack ( getFuelCargo _x );

  // ** CARGO PROCESSING **
  // revisar y modificar las cajas que esten en el vehiculo, deben guardarse con saveObjects
  // revisar si con saveObjects toma los objetos en los vehiculos
  getVehicleCargo _vehicle;

  _my_saved_vehicles pushBack _my_vehicle;
} forEach _my_vehicles;

// format [_vehicle, _position, _inventory, _hitpoints, _fuel, _fuel_cargo]
missionProfileNamespace setVariable [ "a3l_persistant_vehicles", _my_loadout];

true;
