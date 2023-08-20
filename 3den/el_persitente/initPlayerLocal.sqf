params ["_player", "_didJIP"];

[] call compileFinal preprocessFileLineNumbers "campaign_config.sqf";
"campaign_config file loaded from initPlayerLocal.sqf" call A3L_fnc_debug;
