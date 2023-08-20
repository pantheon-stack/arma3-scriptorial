class CBA_Extended_EventHandlers_base;

class CfgVehicles {
  class Logic;
  class Module_F: Logic
  {
    class AttributesBase
    {
      class Default;
      class Edit;
      class Combo;
      class Checkbox;
      class CheckboxNumber;
      class ModuleDescription;
      class Units;
    };

    // Description base classes (for more information see below):
    class ModuleDescription
    {
      class AnyBrain;
    };
  };

  class GVAR(moduleBase): Module_F {
    author = "Dikusss";
    category = "NO_CATEGORY";
    function = "";
    scope = 1;
    scopeCurator = 2;
    class EventHandlers {
        //init = QUOTE(_this call FUNC(initModule));
        class CBA_Extended_EventHandlers: CBA_Extended_EventHandlers_base {};
    };
  };

  class GVAR(moduleSetLives): GVAR(moduleBase) {
    scope = 2;
    curatorCanAttach = 1;
    category = GVAR(Misc);
    displayName = "Set Lives";
    function = QFUNC(setLives);
    curatorInfoType = "RscDisplaySetLives";
    //icon = "\TAG_addonName\data\icon_Nuke_ca.paa";

    // function = "A3L_fnc_setLives";	// Name of function triggered once conditions are met
    // functionPriority = 1;				// Execution priority, modules with lower number are executed first. 0 is used when the attribute is undefined
    // isGlobal = 1;						// 0 for server only execution, 1 for global execution, 2 for persistent global execution
    // isTriggerActivated = 1;				// 1 for module waiting until all synced triggers are activated
    // isDisposable = 1;					// 1 if modules is to be disabled once it is activated (i.e. repeated trigger activation won't work)
    // is3DEN = 0;							// 1 to run init function in Eden Editor as well
    // curatorInfoType = "RscDisplayAttributeModuleNuke"; // Menu displayed when the module is placed or double-clicked on by Zeus

    // Module attributes (uses https://community.bistudio.com/wiki/Eden_Editor:_Configuring_Attributes#Entity_Specific):
    class Attributes: AttributesBase {
      // Arguments shared by specific module type (have to be mentioned in order to be present):
      class Units: Units {
        property = "A3L_Module_SetLives_Units";
      };

      // Module-specific arguments:
      class NumberOfLives: CheckboxNumber {
        property = "TAG_Module_Nuke_Yield";				// Unique property (use "<tag>_<moduleClass>_<attributeClass>" format to ensure that the name is unique)
        displayName = "Nuclear weapon yield";			// Argument label
        tooltip = "How strong will the explosion be";	// Tooltip description
        typeName = "NUMBER";							// Value type, can be "NUMBER", "STRING" or "BOOL"
        defaultValue = "50";							// Default attribute value. Warning: This is an expression, and its returned value will be used (50 in this case).

        // Listbox items:
        class Values
        {
          class 50Mt	{ name = "50 megatons";	value = 50; };
          class 100Mt	{ name = "100 megatons"; value = 100; };
        };
      };

      class Name: Edit
      {
        displayName = "Name";
        tooltip = "Name of the nuclear device";
        // Default text for the input box:
        defaultValue = """Tsar Bomba"""; // Because this is an expression, one must have a string within a string to return a string
      };

      class ModuleDescription: ModuleDescription{}; // Module description should be shown last
    };

    // Module description (must inherit from base class, otherwise pre-defined entities won't be available):
    class ModuleDescription: ModuleDescription {
      description = "Short module description";	// Short description, will be formatted as structured text
      sync[] = {"LocationArea_F"};				// Array of synced entities (can contain base classes)

      class LocationArea_F
      {
        description[] = { // Multi-line descriptions are supported
          "First line",
          "Second line"
        };
        position = 1;	// Position is taken into effect
        direction = 1;	// Direction is taken into effect
        optional = 1;	// Synced entity is optional
        duplicate = 1;	// Multiple entities of this type can be synced
        synced[] = {"BluforUnit", "AnyBrain"}; // Pre-defined entities like "AnyBrain" can be used (see the table below)
      };

      class BluforUnit
      {
        description = "Short description";
        displayName = "Any BLUFOR unit";	// Custom name
        icon = "iconMan";					// Custom icon (can be file path or CfgVehicleIcons entry)
        side = 1;							// Custom side (determines icon color)
      };
    };
  };
};
