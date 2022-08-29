/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_loadLoadout;
*/

params [ "_unit" ];
private [ "_my_loadout" ];

if ( !(local _unit) ) exitWith {
  false;
};

_loadout_persistance_enabled = "LoadoutPersistanceEnabled" call BIS_fnc_getParamValue;
_loadout_delete_enabled = "DeleteLoadoutOnRespawn" call BIS_fnc_getParamValue;

_my_loadout = missionProfileNamespace getVariable [ "a3l_last_loadout", []];

if ( _loadout_delete_enabled == 1 ) then {
  _my_loadout = getUnitLoadout (configFile >> "EmptyLoadout");
};

[format ["my loaded loadout => %1", _my_loadout]] call A3L_fnc_debug;

if (
  _loadout_persistance_enabled == 1 &&
  (count _my_loadout) > 0
) then {
  _unit setUnitLoadout _my_loadout;
};

true;
