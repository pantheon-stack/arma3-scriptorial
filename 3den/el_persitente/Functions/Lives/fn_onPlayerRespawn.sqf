params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
private ["_uid", "_player_lives", "_remaining_lives", "_newUnit"];

"OnPlayerRespawn" call A3L_fnc_debug;
player call A3L_fnc_debug;
_oldUnit call A3L_fnc_debug;
_newUnit call A3L_fnc_debug;

_uid = "lives_" + (getPlayerUID player);
_player_lives = missionNamespace getVariable [ _uid, [false, 0] ];

[format ["Lives %1 = %2",_uid,_player_lives]] call A3L_fnc_debug;

if ( _player_lives select 0 ) then {
  _remaining_lives = _player_lives select 1;
  if ( _remaining_lives > 0 ) then {
    cutText [ str (formatText ["<t color='#ff0000' size='2'> Te quedan %1 vidas </t>", _remaining_lives]), "PLAIN DOWN", -1, true, true ];
  } else {
    call A3L_fnc_doDie;
  };
};
