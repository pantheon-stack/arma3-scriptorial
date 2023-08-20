diag_log("EJECUTANDO PREINIT PERSISTENT LIVES 1");

#include "\z\a3l\addons\persistent_lives\script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "\z\a3l\addons\c_persistent_lives\XEH_PREP.hpp"
PREP_RECOMPILE_END;


#include "\z\a3l\addons\persistent_lives\initSettings.sqf"

ADDON = true;
