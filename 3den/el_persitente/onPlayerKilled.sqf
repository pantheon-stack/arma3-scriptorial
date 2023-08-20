params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];
private [];

format ["%1 has been killed by %2", _oldUnit, _killer] call A3L_fnc_debug;
