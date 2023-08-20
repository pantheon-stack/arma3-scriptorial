/*
  AUTHOR: Dikus

  Inicializa los headless clients para la carga de sqf
*/

if ( isServer ) then {
  private _headless_clients_hashmap = createHashMap;
  missionNamespace setVariable ["A3L_headless_clients", _headless_clients_hashmap, true];
};

if ( !isServer && !hasInterface ) then {

  // Obtengo el nombre de id del headless client actual
  _my_id = player call BIS_fnc_objectvar;
  diag_log _my_id;

  [ _my_id ] spawn {
    params ["_my_id"];
    private ["_headless_clients_hashmap", "_current_hc"];

    diag_log _my_id;

    while {true} do {
      _headless_clients_hashmap = missionNamespace getVariable "A3L_headless_clients";

      _current_hc = [clientOwner, diag_fps, diag_fpsMin];
      diag_log _current_hc;
      _headless_clients_hashmap set [_my_id, _current_hc];

      sleep 5;
    };

  };
};
