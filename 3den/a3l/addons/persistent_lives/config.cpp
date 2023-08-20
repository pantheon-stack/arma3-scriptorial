#include "\z\a3l\addons\persistent_lives\script_component.hpp"

class CfgPatches {
	class ADDON {
		name = QUOTE(COMPONENT);
		units[]={
			QGVAR(moduleSetLives)
		};
		weapons[]={};
		requiredVersion=REQUIRED_VERSION;
		requiredAddons[]=
		{
			"A3_Modules_F",
			"a3l_main",
			"cba_common"
		};
		author = "Dikusss";
    	VERSION_CONFIG;
	};
};

PRELOAD_ADDONS;

#include "\z\a3l\addons\persistent_lives\CfgEventHandlers.hpp"
#include "\z\a3l\addons\persistent_lives\CfgFactionClasses.hpp"
#include "\z\a3l\addons\persistent_lives\CfgVehicles.hpp"

#include "\z\a3l\addons\persistent_lives\UI\BaseControls.hpp"
#include "\z\a3l\addons\persistent_lives\UI\RscDisplaySetLives.hpp"

