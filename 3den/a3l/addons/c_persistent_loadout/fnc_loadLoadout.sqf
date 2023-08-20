/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_loadLoadout;
*/

params [ "_player" ];
private [ "_my_loadout", "_can_load" ];

if ( !(local _player) ) exitWith {
  false;
};

// Loadout modes; 0: All, 1: Whitelist, 2: Blacklist

_player_uid = getPlayerUID _player;

_loadout_persistance_enabled = "LoadoutPersistanceEnabled" call BIS_fnc_getParamValue;

_loadout_persistance_mode = "LoadoutPersistanceMode" call BIS_fnc_getParamValue;
_loadout_persistance_list = "LoadoutPersistanceList" call BIS_fnc_getParamValue;

_index = _loadout_persistance_list findIf { _x isEqualTo _player_uid };
switch ( _loadout_persistance_mode ) do {
  case "1": {
    // Whitelist
    _can_load = _index > -1;
  };
  case "2": {
    // Blacklist
    _can_load = _index == -1;
  };
  case "0";
  default {
    // All
    _can_load = true;
  };
};

if ( !_can_load ) exitWith {
  false;
};

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
  _player setUnitLoadout _my_loadout;
};

true;
