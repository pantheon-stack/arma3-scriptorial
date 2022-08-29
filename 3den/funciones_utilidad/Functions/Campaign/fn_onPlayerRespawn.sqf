params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
private ["_campaign_mode_enabled"];

_campaign_mode_enabled = "CampaignModeEnabled" call BIS_fnc_getParamValue;

if ( _campaign_mode_enabled == 1 ) then {
  diag_log formatText ["Version Campaña Actual: 'a3l_%1_%2'", worldName, missionName];
  _uid = "init_campaign_" + (getPlayerUID player);
  missionNamespace setVariable [ _uid, true, true ];

  _newUnit call A3L_fnc_loadLoadout;

  [_newUnit] spawn {
    params ["_player"];
    private ["_save_time","_position_persistance_enabled","_loadout_persistance_enabled"];

    _position_persistance_enabled = "PositionPersistanceEnabled" call BIS_fnc_getParamValue;
    _loadout_persistance_enabled = "LoadoutPersistanceEnabled" call BIS_fnc_getParamValue;

    while { alive _player } do {
      _save_time = "SaveTime" call BIS_fnc_getParamValue;
      sleep _save_time;
      if ( (lifeState _player) isEqualTo "HEALTHY" ) then {
        if (_position_persistance_enabled == 1) then {
          "saving location..." call A3L_fnc_debug;
          _player call A3L_fnc_saveCurrentPosition;
        };
        if (_loadout_persistance_enabled == 1) then {
          "saving loadout..." call A3L_fnc_debug;
          _player call A3L_fnc_saveLoadout;
        };
        saveMissionProfileNamespace;
      };
    };
  };

};
