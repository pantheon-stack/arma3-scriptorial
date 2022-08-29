/*
  AUTHOR: Dikus

  [ _player ] call A3L_fnc_saveLoadout;
*/

params [ "_player" ];

if ( !(local _player) ) exitWith {
  false;
};

_my_loadout = getUnitLoadout [_player, false];

_player setVariable ['ENH_savedLoadout', _my_loadout];

missionProfileNamespace setVariable [ "a3l_last_loadout", _my_loadout];
[format ["my saved loadout => %1", _my_loadout]] call A3L_fnc_debug;

_backpack_container = backpackContainer _player;
_backpack_variables = [];
if ( !(isNull _backpack_container) ) then {
  _variables = allVariables _backpack_container;
  {
    _valor = _backpack_container getVariable _x;
    _backpack_variables pushBack [_x, _valor];
  } forEach _variables;
};
missionProfileNamespace setVariable [ "a3l_backpack_variables", _backpack_variables];
[format ["my saved loadout => %1", _backpack_variables]] call A3L_fnc_debug;


true;
