#include "\z\a3l\addons\persistent_lives\script_component.hpp"

createDialog "RscDisplaySetLives";

_all_players = allPlayers - entities "HeadlessClient_F";

if ( (count _all_players) > 0 ) then {
	{
		lbAdd [1003,name _x];
	} forEach _all_players;

	lbSetCurSel [1003, 0];
};

_current_selection = sliderPosition 1002;
ctrlSetText [1006, str _current_selection];