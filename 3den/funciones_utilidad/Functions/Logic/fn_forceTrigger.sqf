/*
  AUTHOR: Dikus

  Ejecuta la lógica de muerte del jugador
  [ "mi_trigger" ] call A3L_fnc_forceTrigger;

*/
params [ "_trigger", ["_condition", "true"] ];

_statements = triggerStatements _trigger;
_statements set [0, _condition];
_trigger setTriggerStatements _statements;
