#define COMPONENT persistent_loadout
#include "\z\a3l\addons\persistent_loadout\script_mod.hpp"

#define DEBUG_MODE_FULL
#define DISABLE_COMPILE_CACHE

#ifdef DEBUG_ENABLED_PERSISTENT_LOADOUT
    #define DEBUG_MODE_FULL
#endif
    #ifdef DEBUG_SETTINGS_PERSISTENT_LOADOUT
    #define DEBUG_SETTINGS DEBUG_SETTINGS_PERSISTENT_LOADOUT
#endif

#include "\z\a3l\addons\persistent_loadout\script_macros.hpp"
