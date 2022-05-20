params ["_player", "_didJIP"];

enableEngineArtillery false;

diag_log "ENTRE AL INITPLAYER";
[] spawn {
  while { true } do {
    _player call A3L_fnc_saveLoadout;
    _player call A3L_fnc_saveCurrentPosition;
    sleep 60;
  };
};
