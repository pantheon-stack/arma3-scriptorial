params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];
private ["_campaign_mode_enabled", "_a3l_prefix"];

_campaign_mode_enabled = "CampaignModeEnabled" call BIS_fnc_getParamValue;

if ( _campaign_mode_enabled == 1 ) then {
  //revisar el exitWith y por que no then
  if ( local _oldUnit ) then {
    _a3l_prefix = format ["a3l_%1_%2", worldName, missionName];

    profileNamespace setVariable [ format ["%1_last_loadout", _a3l_prefix], nil];
    profileNamespace setVariable [ format ["%1_last_position", _a3l_prefix], nil];
    profileNamespace setVariable [ format ["%1_last_vehicle_id", _a3l_prefix], nil];
    saveProfileNamespace;
  };
};
