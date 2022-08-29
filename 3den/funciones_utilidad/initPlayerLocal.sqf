params ["_player", "_didJIP"];

[] call compileFinal preprocessFileLineNumbers "campaign_config.sqf";
[_player, _didJIP] call A3LCampaign_fnc_initPlayerLocal;
