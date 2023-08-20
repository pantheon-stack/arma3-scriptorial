if ( isServer ) then {
  private _id_mission = "CampaignSQFMission" call BIS_fnc_getParamValue;
  private _campaign_mode_enabled = "CampaignModeEnabled" call BIS_fnc_getParamValue;
  if ( (_id_mission > 0) && (_campaign_mode_enabled == 1) ) then {
    private _mission_name = format ["Missions\mission_%1.sqf", _id_mission];
    [ _mission_name ] call A3L_fnc_loadToHeadlessClient;
  };
};
