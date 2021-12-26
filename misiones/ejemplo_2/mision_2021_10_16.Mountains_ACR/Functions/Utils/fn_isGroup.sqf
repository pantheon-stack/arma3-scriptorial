/*
  AUTHOR: Dikus

  [ objeto ] call COP_fnc_isGroup;

  Busca en todo grupo existente si el objeto entregado como parametro
    es igual a algún grupo del listado.
*/

params [ "_group_or_unit" ];
private ["_result"];

_result = { (_group_or_unit isEqualTo _x) } count allGroups;
_result != 0;
