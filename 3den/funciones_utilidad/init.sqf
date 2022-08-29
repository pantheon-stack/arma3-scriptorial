
[] call compileFinal preprocessFileLineNumbers "campaign_config.sqf";

"=== ALERT: DEBUG ON ===" call A3L_fnc_debug;
"campaign_config file loaded" call A3L_fnc_debug;

[] call A3L_fnc_initHeadlessClients;
[] call A3LCampaign_fnc_init;
