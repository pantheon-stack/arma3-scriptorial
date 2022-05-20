params ["_player", "_didJIP"];
private ["_id_campania_actual", "_id_campania_jugador"];

enableEngineArtillery (("EngineArtilleryEnabled" call BIS_fnc_getParamValue) == 1);

_id_campania_actual = "MissionGroup" call BIS_fnc_getParamValue;
_id_campania_jugador = profileNamespace getVariable ["a3l_mission_group", 0];

diag_log formatText ["Version Campaña: Actual (%1) <> Perfil (%2)", _id_campania_actual, _id_campania_jugador];

if ( _id_campania_actual != _id_campania_jugador ) then {
  profileNamespace setVariable ["a3l_last_loadout", nil];
  profileNamespace setVariable ["a3l_last_position", nil];
  profileNamespace setVariable ["a3l_last_vehicle_id", nil];
  profileNamespace setVariable ["a3l_mission_group", _id_campania_actual];
  saveProfileNamespace;
};

_player call A3L_fnc_loadLoadout;

[_player] spawn {
  params ["_player"];
  private ["_save_time"];
  waitUntil {
    sleep 1;
    _player getVariable ["a3l_respawned", false];
  };

  while { alive _player } do {
    _save_time = "SaveTime" call BIS_fnc_getParamValue;
    sleep _save_time;
    _player call A3L_fnc_saveLoadout;
    _player call A3L_fnc_saveCurrentPosition;
    saveProfileNamespace;
  };
};

_player addAction [
  "<t color='#FF0000'>Reaparecer</t>",
  {
    params ["_target", "_caller", "_actionId", "_arguments"];
    profileNamespace setVariable ["a3l_last_loadout", nil];
    profileNamespace setVariable ["a3l_last_position", nil];
    profileNamespace setVariable ["a3l_last_vehicle_id", nil];
    _target setDamage 1;
  },
	nil,
	0.1,
	false,
	true,
	"",
	"true",
	50,
	true
];
