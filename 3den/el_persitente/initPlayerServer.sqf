params ["_playerUnit", "_didJIP"];
private [];

[] call compileFinal preprocessFileLineNumbers "campaign_config.sqf";
"campaign_config file loaded from initPlayerServer.sqf" call A3L_fnc_debug;

[ _playerUnit ] call A3L_Lives_initPlayerServer;
