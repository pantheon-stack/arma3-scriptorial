_br = tostring [13,10];
_export = "";
_tab = "";
_fnc_setTab = {
	_tab = "";
	for "_i" from 1 to _this do {_tab = _tab + "	";};
};
_fnc_addLine = {
	_export = _export + _tab + _this + _br;
};
_idObj = 1;

_fnc_get_unit = {
  params ["_unit"];
};

_fnc_get_groups = {
  params ["_group", "_index"];

  //--- Groups
  format ["class Item%1 {", _index] call _fnc_addLine;
  2 call _fnc_setTab;
  _id = 0;
  format ["items=%1;",count units _group] call _fnc_addLine;
  {
  	format ["class Item%1",_id] call _fnc_addLine;
  	"{" call _fnc_addLine;
  	3 call _fnc_setTab;
  	format ["side=""%1"";",side _x] call _fnc_addLine;

  	//--- Units
  	"class Vehicles" call _fnc_addLine;
  	"{" call _fnc_addLine;
  	4 call _fnc_setTab;
  	_idUnits = 0;
  	format ["items=%1;",count units _x] call _fnc_addLine;
  	{
  		format ["class Item%1",_idUnits] call _fnc_addLine;
  		"{" call _fnc_addLine;
  		5 call _fnc_setTab;

  		format ["side=""%1"";",side _x] call _fnc_addLine;
  		format ["vehicle=""%1"";",typeof _x] call _fnc_addLine;
  		format ["id=%1;",_idObj] call _fnc_addLine;
  		format ["position[]={%1,%2,%3};",getposasl _x select 0,getposasl _x select 2,getposasl _x select 1] call _fnc_addLine;
  		format ["azimut=%1;",direction _x] call _fnc_addLine;
  		format ["offsetY=%1;",getposatl _x select 2] call _fnc_addLine;
  		format ["leader=%1;",[0,1] select (_x == leader _x)] call _fnc_addLine;
  		format ["skill=%1;",skill _x] call _fnc_addLine;

  		4 call _fnc_setTab;
  		"};" call _fnc_addLine;
  		_idUnits = _idUnits + 1;
  		_idObj = _idObj + 1;
  	} foreach units _x;
  	3 call _fnc_setTab;
  	"};" call _fnc_addLine;

  	2 call _fnc_setTab;
  	"};" call _fnc_addLine;
  	_id = _id + 1;
  } foreach allgroups;
  1 call _fnc_setTab;
  "};" call _fnc_addLine;


};

_fnc_get_vehicles = {

};

_fnc_get_not_groups = {
  {
    if ( isnull group _x  ) then {
      format ["class Item%1",_id] call _fnc_addLine;
  		"{" call _fnc_addLine;
  		3 call _fnc_setTab;

  		"side=""EMPTY"";" call _fnc_addLine;
  		format ["vehicle=""%1"";",typeof _x] call _fnc_addLine;
  		format ["id=%1;",_idObj] call _fnc_addLine;
  		format ["position[]={%1,%2,%3};",getposasl _x select 0,getposasl _x select 2,getposasl _x select 1] call _fnc_addLine;
  		format ["azimut=%1;",direction _x] call _fnc_addLine;
  		format ["offsetY=%1;",getposatl _x select 2] call _fnc_addLine;
    }
  } forEach allmissionobjects "All";
};

_fnc_get_triggers = {
  private ["_triggers"];
  _triggers = allMissionObjects "EmptyDetector";
};

_fnc_get_logics = {
  private ["_logics"];
  _triggers = allMissionObjects "Logic";
};


//---          ---//
//--- BEGINING ---//
//---          ---//

//--- 3DEN
"version=54;" call _fnc_addLine;
"class EditorData" call _fnc_addLine;
"{" call _fnc_addLine;
1 call _fnc_setTab;
"class Camera {};" call _fnc_addLine;
0 call _fnc_setTab;
"};" call _fnc_addLine;
"binarizationWanted=0;" call _fnc_addLine;
"randomSeed=42;" call _fnc_addLine;
"addons[]={};" call _fnc_addLine;


"class Mission {" call _fnc_addLine;
1 call _fnc_setTab;

"class Intel {" call _fnc_addLine;
2 call _fnc_setTab;
1 call _fnc_setTab;
"};" call _fnc_addLine;

"class Entities {" call _fnc_addLine;
2 call _fnc_setTab;
format ["items=%1;",count entities ""] call _fnc_addLine;
{

  //-- Groups
  [_x, _forEachIndex] call _fnc_get_group;

  format ["class Item%1 {", _forEachIndex] call _fnc_addLine;
  3 call _fnc_setTab;
  format ["dataType=""%1"";",_x call BIS_fnc_objectType select 0] call _fnc_addLine;
  "class PositionInfo {" call _fnc_addLine;
  4 call _fnc_setTab;
  format ["position[]={%1,%2,%3};", getPosATL _x select 0, getPosATL _x select 1, getPosATL _x select 2] call _fnc_addLine;
  format ["angles[]={%1,%2,%3};", vectorDir _x select 0, vectorDir _x select 1, vectorDir _x select 2] call _fnc_addLine;
  3 call _fnc_setTab;
  "};" call _fnc_addLine;
  format ["name=""%1"";",_x call BIS_fnc_objectVar] call _fnc_setTab;
  format ["id=""%1"";",_idObj ] call _fnc_setTab;
  format ["type=""%1"";", typeOf _x] call _fnc_setTab;

  2 call _fnc_setTab;
  "}" call _fnc_addLine;
  _idObj = _idObj + 1;
} forEach entities "";
1 call _fnc_setTab;
"};" call _fnc_addLine;

"class Connections {" call _fnc_addLine;
2 call _fnc_setTab;

1 call _fnc_setTab;
"};" call _fnc_addLine;

"class VehicleInVehicleLinks {" call _fnc_addLine;
2 call _fnc_setTab;

1 call _fnc_setTab;
"};" call _fnc_addLine;


//--- Mission
"version=12;" call _fnc_addLine;
"class Mission" call _fnc_addLine;
"{" call _fnc_addLine;
1 call _fnc_setTab;
"addOns[]={};" call _fnc_addLine;
"addOnsAuto[]={};" call _fnc_addLine;
"randomSeed=42;" call _fnc_addLine;

//--- Intel
"class Intel" call _fnc_addLine;
"{" call _fnc_addLine;
2 call _fnc_setTab;
1 call _fnc_setTab;
"};" call _fnc_addLine;




//--- Vehicles
"class Vehicles" call _fnc_addLine;
"{" call _fnc_addLine;
2 call _fnc_setTab;
_id = 0;
format ["items=%1;",{isnull group _x} count (allmissionobjects "All")] call _fnc_addLine;
{
	if (isnull group _x) then {
		format ["class Item%1",_id] call _fnc_addLine;
		"{" call _fnc_addLine;
		3 call _fnc_setTab;

		"side=""EMPTY"";" call _fnc_addLine;
		format ["vehicle=""%1"";",typeof _x] call _fnc_addLine;
		format ["id=%1;",_idObj] call _fnc_addLine;
		format ["position[]={%1,%2,%3};",getposasl _x select 0,getposasl _x select 2,getposasl _x select 1] call _fnc_addLine;
		format ["azimut=%1;",direction _x] call _fnc_addLine;
		format ["offsetY=%1;",getposatl _x select 2] call _fnc_addLine;

		2 call _fnc_setTab;
		"};" call _fnc_addLine;
		_id = _id + 1;
		_idObj = _idObj + 1;
	};
} foreach (allmissionobjects "All");
1 call _fnc_setTab;
"};" call _fnc_addLine;

0 call _fnc_setTab;
"};" call _fnc_addLine;


//--- Intro, OutroWin, OutroLoose
{
	format ["class %1",_x] call _fnc_addLine;
	"{" call _fnc_addLine;
	1 call _fnc_setTab;
	"addOns[]={};" call _fnc_addLine;
	"addOnsAuto[]={};" call _fnc_addLine;
	"randomSeed=42;" call _fnc_addLine;

	"class Intel" call _fnc_addLine;
	"{" call _fnc_addLine;
	2 call _fnc_setTab;
	1 call _fnc_setTab;
	"};" call _fnc_addLine;

	0 call _fnc_setTab;
	"};" call _fnc_addLine;
} foreach ["Intro","OutroWin","OutroLoose"];

copytoclipboard _export;
titletext ["SQM code copied to clipboard","plain"];
