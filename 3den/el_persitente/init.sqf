
[] call compileFinal preprocessFileLineNumbers "campaign_config.sqf";

"=== ALERT: DEBUG ON ===" call A3L_fnc_debug;
"campaign_config file loaded from init.sqf" call A3L_fnc_debug;

// This way we can control when init has finish on MP sessions
missionNamespace setVariable ["a3l_mp_init_done", true, true];

[] call A3L_fnc_initHeadlessClients;
