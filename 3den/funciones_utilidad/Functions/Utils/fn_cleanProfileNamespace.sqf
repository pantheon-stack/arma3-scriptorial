/*
  AUTHOR: Dikus
  Depracated
*/

params [["_objects", []]];

private _my_variables = allVariables missionProfileNamespace;
{
	if (_x find "A3L_" == 0) then {
	 missionProfileNamespace setVariable [_x, nil];
	};
} forEach _my_variables;
saveMissionProfileNamespace;
