params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];
private ["_uid", "_player_lives", "_remaining_lives", "_newUnit"];

_uid = "init_campaign_" + (getPlayerUID player);
missionNamespace setVariable [ _uid, true, true ];

_uid = "lives_" + (getPlayerUID player);
_player_lives = missionNamespace getVariable [ _uid, [false, 0] ];

if ( _player_lives select 0 ) then {
  _remaining_lives = _player_lives select 1;
  if ( _remaining_lives > 0 ) then {
    cutText [ str (formatText ["<t color='#ff0000' size='2'> Te quedan %1 vidas </t>", _remaining_lives]), "PLAIN DOWN", -1, true, true ];
  } else {
    call A3L_fnc_doDie;
  };
};

[_newUnit, _oldUnit , _respawn, _respawnDelay] call A3LCampaign_fnc_onPlayerRespawn;

[ _newUnit ] call A3L_fnc_doRespawn;
