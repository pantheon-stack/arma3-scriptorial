params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
private ["_campaign_mode_enabled", "_a3l_prefix"];

_campaign_mode_enabled = "CampaignModeEnabled" call BIS_fnc_getParamValue;

if ( _campaign_mode_enabled == 1 ) then {
  diag_log formatText ["Version Campaña Actual: 'a3l_%1_%2'", worldName, missionName];

  _a3l_prefix = format ["a3l_%1_%2", worldName, missionName];

  _newUnit call A3L_fnc_loadLoadout;

  [_newUnit] spawn {
    params ["_player"];
    private ["_save_time"];

    while { alive _player } do {
      _save_time = "SaveTime" call BIS_fnc_getParamValue;
      sleep _save_time;
      if ( (lifeState _player) isEqualTo "HEALTHY" ) then {
        _player call A3L_fnc_saveLoadout;
        _player call A3L_fnc_saveCurrentPosition;
        saveProfileNamespace;
      };
    };
  };

};
