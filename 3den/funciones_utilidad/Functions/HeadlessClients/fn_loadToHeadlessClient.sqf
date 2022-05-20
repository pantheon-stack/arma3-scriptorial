/*
  AUTHOR: Dikus

  Debe ser ejecutado en contexto global para que itere por los clientes hasta encontrar el headless client
  Al ejecutarse con execVM se ejecuta de forma asincrona

  [ "fases\fase1.sqf",  "HC1" ] call A3L_fnc_loadToHeadlessClient;

*/

params ["_file_location" , "_headless_client_name"];
private ["_my_name"];

// Reviso que efectivamente sea un headless client
if ( !isServer && !hasInterface ) then {

  // Obtengo el nombre de id del headless client actual
  _my_name = player call BIS_fnc_objectvar;

  // Busco el nombre del objeto que coincida
  if (_my_name isEqualTo _headless_client_name) then {
    // Si coincide ejecuto algo, con spawn para ejecutarlo de forma asincrona
    [] execVM _file_location;
  };

} else {

  // Revisar si es un cliente hosteando un servidor
  if (
    ( isServer && hasInterface ) ||
    ( isServer && _headless_client_name isEqualTo "server" )
  ) then {

    [] execVM _file_location;

  } else {
    diag_log format ["Se intento compilar el archivo '%1' en un objeto que no es un Headless Client.", _file_location];
  };

};
