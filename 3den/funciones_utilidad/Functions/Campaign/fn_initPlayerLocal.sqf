params ["_player", "_didJIP"];

_a3l_prefix = format ["a3l_%1_%2", worldName, missionName];
_my_loadout = getUnitLoadout [_player, false];

profileNamespace setVariable [ format ["%1_initial_loadout", _a3l_prefix], _my_loadout];
