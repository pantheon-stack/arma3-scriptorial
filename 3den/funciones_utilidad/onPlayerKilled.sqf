params ["_oldUnit", "_killer", "_respawn", "_respawnDelay"];
private ["_lives_enabled"];

if ( local _oldUnit ) then {
  _uid = "init_campaign_" + (getPlayerUID player);
  _init_done = missionNamespace getVariable [ _uid, false ];

  if ( _init_done ) then {
    [ -1 ] call A3L_fnc_setLives;

    [_oldUnit, _killer, _respawn, _respawnDelay] call A3LCampaign_fnc_onPlayerKilled;
  };
};
