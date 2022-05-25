params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];
private ["_lives_enabled"];

[ -1 ] call A3L_fnc_setLives;

if ( local _oldUnit ) exitWith {
  _a3l_prefix = format ["a3l_%1", worldName];

  profileNamespace setVariable [ format ["%1_last_loadout", _a3l_prefix], nil];
  profileNamespace setVariable [ format ["%1_last_position", _a3l_prefix], nil];
  profileNamespace setVariable [ format ["%1_last_vehicle_id", _a3l_prefix], nil];
  saveProfileNamespace;
};
