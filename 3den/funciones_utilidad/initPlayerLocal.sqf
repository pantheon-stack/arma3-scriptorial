params ["_player", "_didJIP"];
private ["_a3l_prefix"];

enableEngineArtillery (("EngineArtilleryEnabled" call BIS_fnc_getParamValue) == 1);

diag_log formatText ["Version Campaña: Actual (%1)", worldName];
// TODO Revisar cuantas veces se vuelve a ejecutar el player local

_a3l_prefix = format ["a3l_%1", worldName];

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
    if ( !((lifeState _player) isEqualTo "INCAPACITATED") ) then {
      _player call A3L_fnc_saveLoadout;
      _player call A3L_fnc_saveCurrentPosition;
      saveProfileNamespace;
    };
  };
};

_player addAction [
  "<t color='#FF0000'>Reaparecer</t>",
  {
    params ["_target", "_caller", "_actionId", "_arguments"];
    profileNamespace setVariable [ format ["%1_last_loadout", _a3l_prefix], nil];
    profileNamespace setVariable [ format ["%1_last_position", _a3l_prefix], nil];
    profileNamespace setVariable [ format ["%1_last_vehicle_id", _a3l_prefix], nil];
    _target setDamage 1;
  },
	nil,
	0.1,
	false,
	true,
	"",
	"!((lifeState _player) isEqualTo 'INCAPACITATED')",
	50,
	true
];
