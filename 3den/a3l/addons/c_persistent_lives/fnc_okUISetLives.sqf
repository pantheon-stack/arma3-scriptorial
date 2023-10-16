#include "\z\a3l\addons\persistent_lives\script_component.hpp"

_logic = missionnamespace getVariable ["bis_functions_mainscope",objnull];
diag_log _logic;
diag_log (allVariables _logic);
diag_log (typeof _logic);

_lives = sliderPosition 1002;
_index = lbCurSel 1003;
_player_name = lbText[1003,_index];

if ( _player_name == "" ) then {
	exit;
};

_all_players = allPlayers - entities "HeadlessClient_F";
_player = _all_players select { name _x == _player_name };
_player = _player # 0;

_logic setVariable ["player", _player];
_logic setVariable ["total_lives", _lives];