diag_log("EJECUTANDO PREINIT MAIN ==================");

#include "\z\a3l\addons\main\script_component.hpp"

ADDON = false;

PREP_RECOMPILE_START;
#include "\z\a3l\addons\c_main\XEH_PREP.hpp"
PREP_RECOMPILE_END;

ADDON = true;
