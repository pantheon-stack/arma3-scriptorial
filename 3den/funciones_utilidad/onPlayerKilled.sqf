params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];
private ["_lives_enabled"];

[ -1 ] call A3L_fnc_setLives;

[_oldUnit, _killer, _respawn, _respawnDelay] call A3LCampaign_fnc_onPlayerKilled;
