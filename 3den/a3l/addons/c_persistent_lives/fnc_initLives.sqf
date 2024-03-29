#include "\z\a3l\addons\persistent_lives\script_component.hpp"

/*
  AUTHOR: Dikus

	- SERVER SIDE ONLY -

  [ player, 3 ] call A3L_fnc_initLives;
  [ player ] call A3L_fnc_initLives;

	inicializa la cantidad de vidas para todo jugador.

  lives contains 2 variables, if the lives system is enabled and the amount of lives

*/
params [ [ "_player", objNull ], ["_default_total_lives", 3] ];
private ["_total_lives", "_all_players", "_headless_clients", "_players_total_lives"];

if ( isServer ) then {

  if ( isNull _player ) then {
    _headless_clients = entities "HeadlessClient_F";
    _all_players = allPlayers - _headless_clients;
    "initializing lives in all players" call FUNC_INNER(main,debug);
  } else {
    // Me aseguro que el jugador quede en un arreglo
    _all_players = [_player];
    format ["initializing lives in %1",_player] call FUNC_INNER(main,debug);
  };

  {
    _uid = "lives_" + (getPlayerUID _x);
    _player_lives = missionNamespace getVariable [ _uid, [true, _default_total_lives] ];
    _players_total_lives = _player_lives select 1;

    [format [
      "Lives %1 = %2",
      _uid,
      _player_lives
    ]] call FUNC_INNER(main,debug);

    if ( _players_total_lives > _default_total_lives ) then {
      _player_lives set [1, _default_total_lives];
    };

    // [ true, _players_total_lives ] => [lives_enabled, total_lives]
    missionNamespace setVariable [ _uid, _player_lives, true ];

  } forEach _all_players;

  missionNamespace setVariable ["a3l_lives_system_init", true, true];
};

if (hasInterface && local player) then {
  // on client assign events handlers for managing

  [] spawn {
    
    waitUntil {
      sleep 1;
      !isNil { player } && missionNamespace getVariable ["a3l_lives_system_init", false];
    };

    _uid = "lives_" + (getPlayerUID player);
    _player_lives = missionNamespace getVariable [ _uid, [false, 0] ];

    if ( _player_lives select 0 ) then {
      _remaining_lives = _player_lives select 1;
      if ( _remaining_lives > 0 ) then {
        [player] call FUNC(hintLives);
      } else {
        call FUNC(doDie);
      };
    };

    player addMPEventHandler ["MPKilled", {
      params ["_unit", "_killer", "_instigator", "_useEffects"];
      diag_log(_unit);
      hint "Mori";

      [ -1, _unit ] call FUNC(setLives);
    }];

    player addMPEventHandler ["MPRespawn", {
      params ["_unit", "_corpse"];
      diag_log(_unit);
      hint "Reapareci";

      waitUntil {
        sleep 1;
        !isNil { _unit } && missionNamespace getVariable ["a3l_lives_system_init", false];
      };

      _uid = "lives_" + (getPlayerUID _unit);
      _player_lives = missionNamespace getVariable [ _uid, [false, 0] ];

      if ( _player_lives select 0 ) then {
        _remaining_lives = _player_lives select 1;
        if ( _remaining_lives > 0 ) then {
          if (_unit getVariable ["a3l_is_dead", false]) then {
            _unit allowDamage true;
            _unit enableSimulation true;
            [ _unit, false ] remoteExec [ "hideObjectGlobal", 2 ];
            [ "Terminate", [ _unit, [], true ] ] call BIS_fnc_EGSpectator;
            _unit setVariable ["a3l_is_dead", false, true];
          };
          [_unit] call FUNC(hintLives);
        } else {
          call FUNC(doDie);
        };
      };
    }];
  };

};
