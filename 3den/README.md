Utils

Exportando un mapa a formato SVG

Cambiar Arma a dev, en las betas de Steam.

diag_exportTerrainSVG ["C:\Users\dmira\Desktop\colombia.svg", true, true, true, true, true, false];

**-filePatching** "-mod=@ace;@ACE Compat - RHS - GREF;@ACE Compat - RHS - SAF;@ACE Compat - RHS Armed Forces of the Russian Federation;@ACE Compat - RHS United States Armed Forces;@ACEX;@Aphelion;@CBA_A3;@CUP Terrains - Core;@CUP Terrains - Maps;@FTE Compat 2.0;@FTE Equipamiento 2.0;@FTE Vehiculos 2.0;@KAT - Advanced Medical REWRITE;@Project OPFOR;@RHSAFRF;@RHSGREF;@RHSSAF;@RHSUSAF;@Task Force Arrowhead Radio (BETA);AoW;argo;curator;enoch;heli;jets;kart;mark;orange;tacops;tank;@UMB Colombia"

Disable AI movement
```sqf
	this disableai "PATH";this setUnitPos "UP";
```

	[this, "BRIEFING_POINT_LEFT"] call BIS_fnc_AmbientAnim;

	[this, this, 50, 3, 0] call CBA_fnc_taskDefend;

Adding Arsenal
```sqf
	["AmmoboxInit",[this,true]] call BIS_fnc_arsenal;
```

{Faction}_Call_Sign
IND_A1_1 -> Independent Alpha 1-1

Formation

https://cbateam.github.io/CBA_A3/docs/files/ai/fnc_addWaypoint-sqf.html

CBA_fnc_addWaypoint
CBA_fnc_buildingPositions
CBA_fnc_clearWaypoints
CBA_fnc_searchNearby
CBA_fnc_taskAttack

CBA_fnc_taskDefend

[Unidad, Posición, Radio, Cant. Min. de edificios, Prob. de patrulla, Prob. de mantener la defensa ]
[this, this, 50, 2, 0.2, 0.3] call CBA_fnc_taskDefend;

CBA_fnc_taskPatrol

[this, this, 50] call CBA_fnc_taskPatrol
[this, getMarkerPos "objective1", 50] call CBA_fnc_taskPatrol
[this, this, 300, 7, "MOVE", "AWARE", "YELLOW", "FULL", "STAG COLUMN", "this call CBA_fnc_searchNearby", [3, 6, 9]] call CBA_fnc_taskPatrol;

CBA_fnc_taskSearchArea
fnc_waypointGarrison

¿Cómo crear una mision dinamica?

Creando Fases en Misiones
Crear mision con triggers que llamen a la siguiente funcion

```sqf
	[] spawn compile preprocessFileLineNumbers "fases\mi_fase.sqf";
```

Utilizando un Headless client
```sqf
	if ( !hasInterface && !isServer ) {
    [] spawn compile preprocessFileLineNumbers "fases\mi_fase.sqf";
  }
```

*IMPORTANTE* Siempre que se crea una fase es necesario modificar el call sign de las unidades, para que al momento de ser agregadas no se dupliquen.
Una buena ¿norma? es usar el prefijo de la fase, por ejemplo `Alpha 1-1` seria `F1 Alpha 1-1`

Como generar una fase?

https://community.bistudio.com/wiki/BIS_fnc_3DENExportSQF
[ true, false ] call BIS_fnc_3DENExportSQF;

Ejecutar en servidor desde zeus y se copia en portapapeles del cliente
call BIS_fnc_3DENExportOldSQM
