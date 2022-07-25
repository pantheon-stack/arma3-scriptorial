if ( isServer ) then {
  private _id_mission = "CampaignSQFMission" call BIS_fnc_getParamValue;
  if ( _id_mission > 0 ) then {
    private _mission_name = format ["missions\mission_%1.sqf", _id_mission];
    [ _mission_name,  true ] call A3L_fnc_loadToHeadlessClient;
  };
};
