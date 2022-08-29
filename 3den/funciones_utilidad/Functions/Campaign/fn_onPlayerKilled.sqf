params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];
private ["_campaign_mode_enabled"];

_campaign_mode_enabled = "CampaignModeEnabled" call BIS_fnc_getParamValue;

format ["Muerte -> Variables %1(%2) %3(%4) %5 %6",
  _oldUnit, typeOf _oldUnit,
  _killer, typeOf _killer,
  _respawn,
  _respawnDelay
] call A3L_fnc_debug;
if ( _oldUnit isEqualTo _killer) then {
  "Same guy" call A3L_fnc_debug;
};

if ( _campaign_mode_enabled == 1 ) then {
  //revisar el exitWith y por que no then
  if ( local _oldUnit ) then {
    _loadout_delete_enabled = "DeleteLoadoutOnRespawn" call BIS_fnc_getParamValue;
    if ( _loadout_delete_enabled == 1 ) then {
      missionProfileNamespace setVariable [ "a3l_last_loadout", nil];
    } else {
      "Guardando por muerte" call A3L_fnc_debug;
      _oldUnit call A3L_fnc_saveLoadout;
    };
    missionProfileNamespace setVariable [ "a3l_last_position", nil];
    missionProfileNamespace setVariable [ "a3l_last_vehicle_id", nil];
    saveMissionProfileNamespace;
  };
};
