#include "\z\a3l\addons\main\script_component.hpp"

class CfgPatches {
  class MAIN_ADDON {
    name = QUOTE(COMPONENT);
    units[] = {};
    weapons[] = {};
    requiredVersion = REQUIRED_VERSION;
    requiredAddons[] = {};
    author = "Dikusss";
    VERSION_CONFIG;
  };
};

PRELOAD_ADDONS;

#include "\z\a3l\addons\persistent_lives\CfgEventHandlers.hpp"