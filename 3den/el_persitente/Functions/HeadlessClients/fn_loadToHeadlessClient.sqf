/*
  AUTHOR: Dikus

  Debe ser ejecutado en contexto global para que itere por los clientes hasta encontrar el headless client
  Al ejecutarse con execVM se ejecuta de forma asincrona

  [ "fases\fase1.sqf",  true ] call A3L_fnc_loadToHeadlessClient;

  remoteExec

*/

params ["_file_location" , ["_server_whitelisted", true]];
private ["_best_hc", "_target", "_min_fps"];

if ( isServer ) then {

  _headless_clients_hashmap = missionNamespace getVariable "A3L_headless_clients";

  _best_hc = "A3L_HC_NONE";
  _min_fps = 0;
  _target = -1;

  {
    _hc_min_fps = _y select 2;

    if ( _hc_min_fps > _min_fps ) then {
      _best_hc = _x;
      _target = _y select 0;
    };

  } forEach _headless_clients_hashmap;

  if (
    _best_hc isEqualTo "A3L_HC_NONE" &&
    _server_whitelisted == true
  ) then {
    // Execute into server
    _target = 2;
  };

  if ( hasInterface ) then {
    // I'm the host
    _target = 0;
  };

  if ( _target >= 0 ) then {
    _file_location remoteExec ["execVM", _target];
  } else {
    diag_log format ["Se intento compilar el archivo '%1' en una entidad que no es un Headless Client.", _file_location];
  };

};
