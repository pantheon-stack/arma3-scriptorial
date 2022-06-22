params ["_player", "_didJIP"];

  /* Borrar o ver que hacer con esto
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
  ]; */
