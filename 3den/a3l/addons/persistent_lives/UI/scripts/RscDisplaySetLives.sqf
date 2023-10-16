#include "\z\a3l\addons\persistent_lives\script_component.hpp"

_mode = _this select 0;
_params = _this select 1;
_logic = _params select 0;

diag_log "============= MODULE RscDisplaySetLives LIVES ====================";
diag_log _this;
diag_log _mode;
diag_log _params;

switch (_mode) do {
	
	case "onLoad": {
		diag_log("== EJECUTANDO ON LOAD SET LIVES MODULE");

		_display = _params select 0;

		_player_controller = _display displayCtrl 1003;
		_lives_controller = _display displayCtrl 1006;
		_lives_label_controller = _display displayCtrl 1002;

		_all_players = allPlayers - entities "HeadlessClient_F";

		if ( (count _all_players) > 0 ) then {
			{
				_player_controller lbAdd (name _x);
			} forEach _all_players;

			_player_controller lbSetCurSel 0;
		};

		_current_selection = sliderPosition _lives_controller;
		_lives_label_controller ctrlSetText (str _current_selection);
	};

	case "onUnload": {
		diag_log("== EJECUTANDO ON UNLOAD SET LIVES MODULE");
		_params params ["_display", "_exitCode"];

		_logic = missionnamespace getVariable ["BIS_fnc_initCuratorAttributes_target",objnull];

		if ( _exitCode == 1 ) then {

			diag_log _logic;
			diag_log (allVariables _logic);
			diag_log (typeof _logic);

			_lives = sliderPosition 1002;
			_index = lbCurSel 1003;
			_player_name = lbText[1003,_index];

			if ( _player_name == "" ) then {
				diag_log "NO NAME";
				exit;
			};

			_all_players = allPlayers - entities "HeadlessClient_F";
			_player = _all_players select { name _x == _player_name };
			_player = _player # 0;

			_logic setVariable ["NumberOfLives", _lives];
			_logic synchronizeObjectsAdd [_player];
		};
	};
 
};