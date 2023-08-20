#include "\z\a3l\addons\persistent_loadout\script_component.hpp"

class CfgPatches {
	class ADDON_C {
		name = QUOTE(COMPONENT_C);
		units[]={};
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
