/*
  AUTHOR: Dikus

  [ group player,  vehicle_id, 3, true ] call COP_fnc_isGroupInVehicle;
  Obtiene si 3 o mas unidades del grupo del jugador no estan en el vehiculo

  [ group player,  vehicle_id, 3 ] call COP_fnc_isGroupInVehicle;
  Obtiene si 3 o mas unidades del grupo del jugador estan en el vehiculo

  [ player,  vehicle_id ] call COP_fnc_isGroupInVehicle;
  Obtiene si el jugador esta en el vehiculo (_limit y _revertir no aplican si es solo una unidad)

  [ player ] call COP_fnc_isGroupInVehicle;
  Obtiene si el jugador esta en el vehiculo
*/

params ["_group_or_unit" , ["_vehicle", nil], ["_limit", false], ["_revertir", false]];
private ["_units", "_total_units", "_total_units_vehicle", "_result", "_is_player"];

if ( [_group_or_unit] call COP_fnc_isGroup ) then {
  diag_log "Entre en grupo";
  //  Soy un grupo
  _units = units _group_or_unit;

  if (_limit) then {
    _total_units = _limit;
  } else {
    _total_units = count _units;
  };

  if (_revertir) then {

    _total_units_vehicle = {

      if ( isNil "_vehicle" ) then {
        //  Si no existe el vehiculo reviso si la unidad esta en un vehiculo
        _vehicle = vehicle _x;
      };

      !( _vehicle isEqualTo _x ) && (alive _x) && !(_x in _vehicle);

    } count _units;

  } else {

    _total_units_vehicle = {

      if ( isNil "_vehicle" ) then {
        //  Si no existe el vehiculo reviso si la unidad esta en un vehiculo
        _vehicle = vehicle _x;
      };

      !( _vehicle isEqualTo _x ) && (alive _x) && (_x in _vehicle);

    } count _units;

  };

  _result = (_total_units_vehicle >= _total_units);
} else {
  //  Soy una unidad

  if ( isNil "_vehicle") then {
    //  Si no existe el vehiculo reviso si la unidad esta en un vehiculo
    _vehicle = vehicle _group_or_unit;
  };

  _result = !( _vehicle isEqualTo _group_or_unit ) && (alive _group_or_unit) && (_group_or_unit in _vehicle);
};

_result;
