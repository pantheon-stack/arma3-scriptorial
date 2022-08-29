params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
private ["_uid", "_player_lives", "_remaining_lives", "_newUnit"];

[_newUnit, _oldUnit , _respawn, _respawnDelay] call A3LCampaign_fnc_onPlayerRespawn;
[_newUnit, _oldUnit , _respawn, _respawnDelay] call A3LLives_fnc_onPlayerRespawn;
[ _newUnit ] call A3L_fnc_doRespawn;
