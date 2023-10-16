#include "\z\a3l\addons\persistent_lives\script_component.hpp"

params ["_display", ["_config", configNull]];

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

uiNamespace setVariable ["A3L_Module_Display_setLives", _display];