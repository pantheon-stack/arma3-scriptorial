// Export of 'fase2.Mountains_ACR' by Dikus on v0.9


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

_item14 = createGroup resistance;
_this = _item14;
_groups pushback _this;
_groupIDs pushback 14;

_item20 = createGroup resistance;
_this = _item20;
_groups pushback _this;
_groupIDs pushback 20;

_item25 = createGroup resistance;
_this = _item25;
_groups pushback _this;
_groupIDs pushback 25;

_item30 = createGroup resistance;
_this = _item30;
_groups pushback _this;
_groupIDs pushback 30;

_item35 = createGroup resistance;
_this = _item35;
_groups pushback _this;
_groupIDs pushback 35;

_item40 = createGroup resistance;
_this = _item40;
_groups pushback _this;
_groupIDs pushback 40;

_item46 = createGroup resistance;
_this = _item46;
_groups pushback _this;
_groupIDs pushback 46;

_item68 = createGroup resistance;
_this = _item68;
_groups pushback _this;
_groupIDs pushback 68;

_item76 = createGroup resistance;
_this = _item76;
_groups pushback _this;
_groupIDs pushback 76;

_item89 = createGroup resistance;
_this = _item89;
_groups pushback _this;
_groupIDs pushback 89;

_item95 = createGroup resistance;
_this = _item95;
_groups pushback _this;
_groupIDs pushback 95;

_item101 = createGroup resistance;
_this = _item101;
_groups pushback _this;
_groupIDs pushback 101;

_item111 = createGroup resistance;
_this = _item111;
_groups pushback _this;
_groupIDs pushback 111;

_item116 = createGroup resistance;
_this = _item116;
_groups pushback _this;
_groupIDs pushback 116;


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

_item15 = _item14 createUnit ["I_G_Soldier_TL_F",[928,5746,0],[],0,"CAN_COLLIDE"];
_item14 selectLeader _item15;
_this = _item15;
_objects pushback _this;
_objectIDs pushback 15;
_this setPosWorld [928,5746.05,235.369];
_this setVectorDirAndUp [[0.852592,-0.519042,0.0606787],[-0.065118,0.00968705,0.997831]];
_this setUnitLoadout [["arifle_Mk20_GL_F","","","optic_ACO_grn",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_ACPC2_F","","","",["9Rnd_45ACP_Mag",8],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_556x45_Stanag",3,30]]],["V_TacVest_blk",[["30Rnd_556x45_Stanag_Tracer_Yellow",2,30],["9Rnd_45ACP_Mag",1,8],["HandGrenade",1,1],["MiniGrenade",1,1],["1Rnd_HE_Grenade_shell",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",2,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",1,1],["1Rnd_SmokeRed_Grenade_shell",1,1],["1Rnd_SmokeBlue_Grenade_shell",1,1]]],[],"H_Booniehat_khk","AJAX_ShemaghM_Black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
_this setRank "SERGEANT";
_this setname "Elias Stanis";;
_this setface "GreekHead_A3_02";;
_this setspeaker "Male04GRE";;
_this setpitch 0.95;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};

_item16 = _item14 createUnit ["I_G_Soldier_GL_F",[921.172,5744.3,0],[],0,"CAN_COLLIDE"];
_this = _item16;
_objects pushback _this;
_objectIDs pushback 16;
_this setPosWorld [921.172,5744.35,235.443];
_this setVectorDirAndUp [[0.853047,-0.519323,0.0511337],[-0.0602853,-0.000742338,0.998181]];
_this setUnitLoadout [["arifle_TRG21_GL_F","","","",["30Rnd_556x45_Stanag",30],["1Rnd_HE_Grenade_shell",1],""],[],[],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],["V_Chestrig_blk",[["30Rnd_556x45_Stanag",3,30],["HandGrenade",2,1],["MiniGrenade",2,1],["1Rnd_HE_Grenade_shell",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",1,1],["1Rnd_Smoke_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",1,1],["1Rnd_SmokeRed_Grenade_shell",1,1],["1Rnd_SmokeBlue_Grenade_shell",1,1]]],[],"H_Bandanna_khk","G_BallisticGlasses_Grey",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
_this setname "Janos Melidoni";;
_this setface "Ioannou";;
_this setspeaker "male06gre";;
_this setpitch 0.964542;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};

_item17 = _item14 createUnit ["I_G_Soldier_AR_F",[926.372,5752.84,0],[],0,"CAN_COLLIDE"];
_this = _item17;
_objects pushback _this;
_objectIDs pushback 17;
_this setPosWorld [926.372,5752.89,235.611];
_this setVectorDirAndUp [[0.852751,-0.519143,0.0575049],[-0.0599231,0.0121313,0.998129]];
_this setUnitLoadout [["LMG_Mk200_F","","","",["200Rnd_65x39_cased_Box",200],[],"bipod_03_F_blk"],[],[],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["MiniGrenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",2,1]]],["V_TacVest_blk",[["200Rnd_65x39_cased_Box",2,200]]],[],"H_Bandanna_khk","G_BallisticGlasses_Black",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
_this setname "Markos Lara";;
_this setface "GreekHead_A3_07";;
_this setspeaker "male02gre";;
_this setpitch 0.987086;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};

_item18 = _item14 createUnit ["I_G_Soldier_F",[914.301,5742.63,0],[],0,"CAN_COLLIDE"];
_this = _item18;
_objects pushback _this;
_objectIDs pushback 18;
_this setPosWorld [914.301,5742.68,235.404];
_this setVectorDirAndUp [[0.853368,-0.519519,0.0431606],[-0.0526499,-0.00352114,0.998607]];
_this setUnitLoadout [["arifle_TRG21_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_556x45_Stanag",2,30],["Chemlight_blue",1,1]]],["V_Chestrig_oli",[["30Rnd_556x45_Stanag",3,30],["HandGrenade",1,1],["MiniGrenade",1,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_blue",1,1]]],[],"H_Shemag_olive","AJAX_ShemaghM_Gold",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]];
_this setname "Biton Papadopoulos";;
_this setface "GreekHead_A3_07";;
_this setspeaker "male05gre";;
_this setpitch 0.988557;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};

_item21 = _item20 createUnit ["UK3CB_TKM_I_TL",[1046.67,5702.52,0],[],0,"CAN_COLLIDE"];
_item20 selectLeader _item21;
_this = _item21;
_objects pushback _this;
_objectIDs pushback 21;
_this setPosWorld [1046.67,5702.57,229.515];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Hussein Takhtar";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 1.02246;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item22 = _item20 createUnit ["UK3CB_TKM_I_AT",[1049.67,5699.52,0],[],0,"CAN_COLLIDE"];
_this = _item22;
_objects pushback _this;
_objectIDs pushback 22;
_this setPosWorld [1049.67,5699.57,229.336];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Rahim Ahmed-Jan";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male01per";;
_this setpitch 1.00777;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item23 = _item20 createUnit ["UK3CB_TKM_I_AT_ASST",[1051.67,5699.52,-1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item23;
_objects pushback _this;
_objectIDs pushback 23;
_this setPosWorld [1051.67,5699.57,229.263];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Faisal Nazari";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 0.993898;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item24 = _item20 createUnit ["UK3CB_TKM_I_RIF_1",[1053.67,5699.52,-1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item24;
_objects pushback _this;
_objectIDs pushback 24;
_this setPosWorld [1053.67,5699.57,229.196];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abdul-Latif Faruqi";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male01per";;
_this setpitch 1.03832;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item26 = _item25 createUnit ["UK3CB_TKM_I_TL",[987,5659,0],[],0,"CAN_COLLIDE"];
_item25 selectLeader _item26;
_this = _item26;
_objects pushback _this;
_objectIDs pushback 26;
_this setPosWorld [987,5659.05,229.583];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Khalil Khusraw";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male02per";;
_this setpitch 0.952078;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item27 = _item25 createUnit ["UK3CB_TKM_I_MG",[990,5656,0],[],0,"CAN_COLLIDE"];
_this = _item27;
_objects pushback _this;
_objectIDs pushback 27;
_this setPosWorld [990,5656.05,229.476];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Jajil Habibzai";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 0.984651;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item28 = _item25 createUnit ["UK3CB_TKM_I_MG_ASST",[992,5656,0],[],0,"CAN_COLLIDE"];
_this = _item28;
_objects pushback _this;
_objectIDs pushback 28;
_this setPosWorld [992,5656.05,229.45];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abdullah Haidari";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male01per";;
_this setpitch 1.00974;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item29 = _item25 createUnit ["UK3CB_TKM_I_RIF_1",[994,5656,0],[],0,"CAN_COLLIDE"];
_this = _item29;
_objects pushback _this;
_objectIDs pushback 29;
_this setPosWorld [994,5656.05,229.423];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Latif Ahmed-Jan";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 0.97346;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item31 = _item30 createUnit ["UK3CB_TKM_I_TL",[888.639,5811.43,1.52588e-005],[],0,"CAN_COLLIDE"];
_item30 selectLeader _item31;
_this = _item31;
_objects pushback _this;
_objectIDs pushback 31;
_this setPosWorld [888.639,5811.48,242.361];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Jabr Wardak";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male02per";;
_this setpitch 0.960602;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item32 = _item30 createUnit ["UK3CB_TKM_I_RIF_2",[891.639,5808.43,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item32;
_objects pushback _this;
_objectIDs pushback 32;
_this setPosWorld [891.639,5808.48,242.203];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Faisal Gailani";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male03per";;
_this setpitch 0.963086;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item33 = _item30 createUnit ["UK3CB_TKM_I_LAT",[893.639,5808.43,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item33;
_objects pushback _this;
_objectIDs pushback 33;
_this setPosWorld [893.639,5808.48,242.376];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Basharat Fahim";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male01per";;
_this setpitch 1.03325;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item34 = _item30 createUnit ["UK3CB_TKM_I_RIF_1",[895.639,5808.43,0],[],0,"CAN_COLLIDE"];
_this = _item34;
_objects pushback _this;
_objectIDs pushback 34;
_this setPosWorld [895.639,5808.48,242.57];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abdul-Qadir Spanta";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male02per";;
_this setpitch 0.99445;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item36 = _item35 createUnit ["UK3CB_TKM_I_TL",[845.867,5765.94,0],[],0,"CAN_COLLIDE"];
_item35 selectLeader _item36;
_this = _item36;
_objects pushback _this;
_objectIDs pushback 36;
_this setPosWorld [845.867,5765.99,238.273];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Abdul-Latif Zakhilwal";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 1.04889;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item37 = _item35 createUnit ["UK3CB_TKM_I_RIF_2",[848.867,5762.94,0],[],0,"CAN_COLLIDE"];
_this = _item37;
_objects pushback _this;
_objectIDs pushback 37;
_this setPosWorld [848.867,5762.99,237.994];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Qasim Aybak";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male01per";;
_this setpitch 0.974052;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item38 = _item35 createUnit ["UK3CB_TKM_I_LAT",[850.867,5762.94,0],[],0,"CAN_COLLIDE"];
_this = _item38;
_objects pushback _this;
_objectIDs pushback 38;
_this setPosWorld [850.867,5762.99,237.874];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Bashir Bakhtari";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 1.02848;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item39 = _item35 createUnit ["UK3CB_TKM_I_RIF_1",[852.867,5762.94,0],[],0,"CAN_COLLIDE"];
_this = _item39;
_objects pushback _this;
_objectIDs pushback 39;
_this setPosWorld [852.867,5762.99,237.749];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abbas Nazari";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male01per";;
_this setpitch 0.96467;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item41 = _item40 createUnit ["UK3CB_TKM_I_TL",[942,5666,0],[],0,"CAN_COLLIDE"];
_item40 selectLeader _item41;
_this = _item41;
_objects pushback _this;
_objectIDs pushback 41;
_this setPosWorld [942,5666.05,230.637];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Amir Anwari";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male03per";;
_this setpitch 1.01317;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item42 = _item40 createUnit ["UK3CB_TKM_I_AT",[945,5663,0],[],0,"CAN_COLLIDE"];
_this = _item42;
_objects pushback _this;
_objectIDs pushback 42;
_this setPosWorld [945,5663.05,230.279];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Abdul-Latif Haidari";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male01per";;
_this setpitch 1.00728;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item43 = _item40 createUnit ["UK3CB_TKM_I_AT_ASST",[947,5663,0],[],0,"CAN_COLLIDE"];
_this = _item43;
_objects pushback _this;
_objectIDs pushback 43;
_this setPosWorld [947,5663.05,230.19];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Kabir Takhtar";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male03per";;
_this setpitch 1.01005;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item44 = _item40 createUnit ["UK3CB_TKM_I_RIF_1",[949,5663,0],[],0,"CAN_COLLIDE"];
_this = _item44;
_objects pushback _this;
_objectIDs pushback 44;
_this setPosWorld [949,5663.05,230.1];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Mufid Ratebzad";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male03per";;
_this setpitch 1.02008;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item48 = _item46 createUnit ["UK3CB_TKM_I_RIF_1",[909.045,6393.5,6.10352e-005],[],0,"CAN_COLLIDE"];
_this = _item48;
_objects pushback _this;
_objectIDs pushback 48;
_this setPosWorld [898.521,6413.54,345.072];
_this setVectorDirAndUp [[0.0530157,-0.99779,-0.040068],[0.00183279,-0.0400272,0.999197]];
_this setname "Hussein Spanta";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 1.00966;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item49 = _item46 createUnit ["UK3CB_TKM_I_RIF_1",[908.938,6393.17,2.22507],[],0,"CAN_COLLIDE"];
_item46 selectLeader _item49;
_this = _item49;
_objects pushback _this;
_objectIDs pushback 49;
_this setPosWorld [898.203,6415.13,345.569];
_this setVectorDirAndUp [[0.0530157,-0.99779,-0.040068],[0.00183279,-0.0400272,0.999197]];
_this setname "Amir Muhtaram";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male01per";;
_this setpitch 0.963205;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item47 = createVehicle ["UK3CB_TKM_I_BTR60",[898,6416,0.0750122],[],0,"CAN_COLLIDE"];
_this = _item47;
_objects pushback _this;
_objectIDs pushback 47;
_this setPosWorld [898.004,6415.88,346.175];
_this setVectorDirAndUp [[0.0530157,-0.99779,-0.040068],[0.00183279,-0.0400272,0.999197]];
[_this,"TKA_B"] call bis_fnc_initVehicle;
[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 4] call ace_cargo_fnc_setSpace;;
if !(false) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
if("NoChange" != 'NoChange')then{ _this setVariable ['rhs_decalNumber_type', "NoChange"];[_this,[['Number', cBTR3NumberPlaces, "NoChange"]]] call rhs_fnc_decalsInit};
if( 0 >= 0)then{if( 0 == 0)then{{[_this setobjectTexture [_x,'a3\data_f\clear_empty.paa']]}foreach cBTR3NumberPlaces}else{[_this, [['Number', cBTR3NumberPlaces, _this getVariable ['rhs_decalNumber_type','Default'], 0] ] ] call rhs_fnc_decalsInit}};;
_this setVariable ['rhs_decalPlatoon_type', "Platoon"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRPlnSymPlaces,  _this getVariable ['rhs_decalPlatoon_type','Platoon'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalArmy_type', "Army"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRBackArmSymPlaces,  _this getVariable ['rhs_decalArmy_type','Army'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalRightTurret_type', "Honor"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRRightGvardSymPlaces,  _this getVariable ['rhs_decalRightTurret_type','Honor'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalLeftTurret_type', "Honor"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRLeftGvardSymPlaces,  _this getVariable ['rhs_decalLeftTurret_type','Honor'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalFront_type', "Army"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTROMONSymbolPlaces,  _this getVariable ['rhs_decalFront_type','Army'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalLowerFront_type', "Army"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRFrontPlatePlaces,  _this getVariable ['rhs_decalLowerFront_type','Army'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalFlag_type', "Army"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRFlagSymPlaces,  _this getVariable ['rhs_decalFlag_type','Army'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
_this setVariable ['rhs_decalVV_type', "Platoon"];;
if(parseNumber "0" >= 0)then{ [_this, [ [ 'Label', cBTRVVLetterSymPlaces,  _this getVariable ['rhs_decalVV_type','Platoon'],call compile "0"] ] ] call rhs_fnc_decalsInit};;
[_this,1,'crate_l1_unhide'] call rhs_fnc_setHabarEden;
[_this,0,'crate_l2_unhide'] call rhs_fnc_setHabarEden;
[_this,1,'crate_l3_unhide'] call rhs_fnc_setHabarEden;
[_this,1,'crate_r1_unhide'] call rhs_fnc_setHabarEden;
[_this,1,'crate_r2_unhide'] call rhs_fnc_setHabarEden;
[_this,1,'wheel_1_unhide'] call rhs_fnc_setHabarEden;
[_this,0,'rhs_disableHabar',0] call rhs_fnc_setHabarEden;
_this animateDoor ['driverViewHatch',0,true];
_this animateDoor ['commanderViewHatch',0,true];
[_this,false] call rhs_fnc_lockTop;

_item52 = createVehicle ["land_bunker_garage",[895,6419,0],[],0,"CAN_COLLIDE"];
_this = _item52;
_objects pushback _this;
_objectIDs pushback 52;
_this setPosWorld [895,6419,344.078];
_this setVectorDirAndUp [[0.015424,-0.999079,-0.0400497],[0.00182659,-0.0400262,0.999197]];

_item65 = createVehicle ["UK3CB_TKM_I_Hilux_Pkm",[150.977,4754.03,0.769012],[],0,"CAN_COLLIDE"];
_this = _item65;
_objects pushback _this;
_objectIDs pushback 65;
_this setPosWorld [150.77,4754,443.179];
_this setVectorDirAndUp [[-0.24269,0.967689,-0.0684136],[-0.0916928,0.0473247,0.994662]];
[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 6] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item66 = _item68 createUnit ["UK3CB_TKM_I_RIF_1",[156,4752,0.590942],[],0,"CAN_COLLIDE"];
_item68 selectLeader _item66;
_this = _item66;
_objects pushback _this;
_objectIDs pushback 66;
_this setPosWorld [150.333,4754.45,441.784];
_this setVectorDirAndUp [[-0.24269,0.967689,-0.0684136],[-0.0916928,0.0473247,0.994662]];
_this setname "Khairullah Sangeen";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male03per";;
_this setpitch 0.954251;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item67 = _item68 createUnit ["UK3CB_TKM_I_RIF_1",[152.943,4744.17,2.62241],[],0,"CAN_COLLIDE"];
_this = _item67;
_objects pushback _this;
_objectIDs pushback 67;
_this setPosWorld [151.077,4752.91,442.928];
_this setVectorDirAndUp [[-0.24269,0.967689,-0.0684136],[-0.0916928,0.0473247,0.994662]];
_this setname "Abdul-Basir Shah";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male01per";;
_this setpitch 0.995616;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item77 = _item76 createUnit ["UK3CB_TKM_I_RIF_1",[118,5683,0.106384],[],0,"CAN_COLLIDE"];
_this = _item77;
_objects pushback _this;
_objectIDs pushback 77;
_this setPosWorld [121.868,5682.04,286.671];
_this setVectorDirAndUp [[0.892859,-0.449684,-0.0242214],[0.0431835,0.0319566,0.998556]];
_this setname "Majeed Yusufzai";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male01per";;
_this setpitch 1.04018;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item78 = _item76 createUnit ["UK3CB_TKM_I_RIF_1",[43.35,5643.31,3.19308],[],0,"CAN_COLLIDE"];
_item76 selectLeader _item78;
_this = _item78;
_objects pushback _this;
_objectIDs pushback 78;
_this setPosWorld [120.152,5682.49,287.729];
_this setVectorDirAndUp [[0.892859,-0.449684,-0.0242214],[0.0431835,0.0319566,0.998556]];
_this setname "Ismail Habibzai";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male01per";;
_this setpitch 1.00689;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item80 = createVehicle ["UK3CB_TKM_I_Hilux_Pkm",[121.075,5681.94,0.209015],[],0,"CAN_COLLIDE"];
_this = _item80;
_objects pushback _this;
_objectIDs pushback 80;
_this setPosWorld [121.163,5682,288.03];
_this setVectorDirAndUp [[0.892859,-0.449684,-0.0242214],[0.0431835,0.0319566,0.998556]];
[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 6] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item91 = _item89 createUnit ["UK3CB_TKM_I_RIF_1",[954.614,5648.64,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item91;
_objects pushback _this;
_objectIDs pushback 91;
_this setPosWorld [956.343,5648.43,230.688];
_this setVectorDirAndUp [[0.962855,-0.266912,-0.0408443],[0.0463571,0.014383,0.998821]];
_this setname "Ismail Khusraw";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 0.965247;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item92 = _item89 createUnit ["UK3CB_TKM_I_RIF_1",[954.702,5648.67,1.89342],[],0,"CAN_COLLIDE"];
_this = _item92;
_objects pushback _this;
_objectIDs pushback 92;
_this setPosWorld [952.728,5649.75,232.197];
_this setVectorDirAndUp [[0.962855,-0.266912,-0.0408443],[0.0463571,0.014383,0.998821]];
_this setname "Abdul-Mussawir Ahmed-Jan";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male03per";;
_this setpitch 1.0103;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item93 = _item89 createUnit ["UK3CB_TKM_I_RIF_1",[954.702,5648.67,1.89342],[],0,"CAN_COLLIDE"];
_item89 selectLeader _item93;
_this = _item93;
_objects pushback _this;
_objectIDs pushback 93;
_this setPosWorld [952.477,5648.91,232.252];
_this setVectorDirAndUp [[0.962855,-0.266912,-0.0408443],[0.0463571,0.014383,0.998821]];
_this setname "Abdul-Wahhab Jawadi";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male01per";;
_this setpitch 0.975843;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item90 = createVehicle ["UK3CB_TKM_I_Ural_Zu23",[954.614,5648.64,0],[],0,"CAN_COLLIDE"];
_this = _item90;
_objects pushback _this;
_objectIDs pushback 90;
_this setPosWorld [954.702,5648.67,231.764];
_this setVectorDirAndUp [[0.962855,-0.266912,-0.0408443],[0.0463571,0.014383,0.998821]];
[_this,"[[[[""FirstAidKit""],[10]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 8] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item97 = _item95 createUnit ["UK3CB_TKA_I_HELI_PILOT",[-302.085,10236.1,0.00012207],[],0,"CAN_COLLIDE"];
_item95 selectLeader _item97;
_this = _item97;
_objects pushback _this;
_objectIDs pushback 97;
_this setPosWorld [-304.807,10225.3,311.929];
_this setVectorDirAndUp [[0.158736,-0.981755,-0.104688],[0.0697045,-0.0946246,0.99307]];
_this setname "Abdul-Wahhab Bakhtari";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male02per";;
_this setpitch 1.02534;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item98 = _item95 createUnit ["UK3CB_TKA_I_HELI_PILOT",[-301.775,10235.8,3.21048],[],0,"CAN_COLLIDE"];
_this = _item98;
_objects pushback _this;
_objectIDs pushback 98;
_this setPosWorld [-304.55,10223.9,311.121];
_this setVectorDirAndUp [[0.158736,-0.981755,-0.104688],[0.0697045,-0.0946246,0.99307]];
_this setname "Mufid Khalili";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male01per";;
_this setpitch 0.989921;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item96 = createVehicle ["UK3CB_TKA_I_Mi_24V",[-305.91,10230.9,-0.00100708],[],0,"CAN_COLLIDE"];
_this = _item96;
_objects pushback _this;
_objectIDs pushback 96;
_this setPosWorld [-305.69,10230.6,313.869];
_this setVectorDirAndUp [[0.158736,-0.981755,-0.104688],[0.0697045,-0.0946246,0.99307]];
_this setPylonLoadout [1,"rhs_mag_b8v20a_s8kom"];
_this setPylonLoadout [2,"rhs_mag_b8v20a_s8kom"];
_this setPylonLoadout [3,"rhs_mag_b8v20a_s8df"];
_this setPylonLoadout [4,"rhs_mag_b8v20a_s8df"];
_this setPylonLoadout [5,"rhs_mag_9M120M_Mi24_2x"];
_this setPylonLoadout [6,"rhs_mag_9M120M_Mi24_2x"];
_this setPylonLoadout [7,"rhs_ASO2_CMFlare_Chaff_Magazine_x4"];
[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
[_this, 4] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item103 = _item101 createUnit ["UK3CB_TKA_I_HELI_PILOT",[-4842.42,4958.7,0],[],0,"CAN_COLLIDE"];
_item101 selectLeader _item103;
_this = _item103;
_objects pushback _this;
_objectIDs pushback 103;
_this setPosWorld [-4836.33,4958.69,308.996];
_this setVectorDirAndUp [[0.997169,-0.0647158,-0.0382788],[0.0371717,-0.0182267,0.999143]];
_this setname "Haikal Sabet";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 0.985942;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item104 = _item101 createUnit ["UK3CB_TKA_I_HELI_PILOT",[-4842.31,4958.64,3.17749],[],0,"CAN_COLLIDE"];
_this = _item104;
_objects pushback _this;
_objectIDs pushback 104;
_this setPosWorld [-4834.88,4958.68,308.288];
_this setVectorDirAndUp [[0.997169,-0.0647158,-0.0382788],[0.0371717,-0.0182267,0.999143]];
_this setname "Mahmood Aybak";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male03per";;
_this setpitch 0.965671;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item102 = createVehicle ["UK3CB_TKA_I_Mi_24V",[-4842,4959,0],[],0,"CAN_COLLIDE"];
_this = _item102;
_objects pushback _this;
_objectIDs pushback 102;
_this setPosWorld [-4841.88,4958.94,310.566];
_this setVectorDirAndUp [[0.997169,-0.0647158,-0.0382788],[0.0371717,-0.0182267,0.999143]];
_this setPylonLoadout [1,"rhs_mag_b8v20a_s8kom"];
_this setPylonLoadout [2,"rhs_mag_b8v20a_s8kom"];
_this setPylonLoadout [3,"rhs_mag_b8v20a_s8df"];
_this setPylonLoadout [4,"rhs_mag_b8v20a_s8df"];
_this setPylonLoadout [5,"rhs_mag_9M120M_Mi24_2x"];
_this setPylonLoadout [6,"rhs_mag_9M120M_Mi24_2x"];
_this setPylonLoadout [7,"rhs_ASO2_CMFlare_Chaff_Magazine_x4"];
[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
[_this, 4] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item109 = createVehicle ["Land_i_Garage_V1_F",[120,5682,0.167969],[],0,"CAN_COLLIDE"];
_this = _item109;
_objects pushback _this;
_objectIDs pushback 109;
_this setPosWorld [120,5682,286.255];
_this setVectorDirAndUp [[-0.321874,-0.945751,0.0441766],[0.0431578,0.031955,0.998557]];

_item110 = createVehicle ["Land_i_Garage_V1_F",[151,4754,0.613617],[],0,"CAN_COLLIDE"];
_this = _item110;
_objects pushback _this;
_objectIDs pushback 110;
_this setPosWorld [151,4754,441.255];
_this setVectorDirAndUp [[0.967526,0.240548,0.0776489],[-0.0915947,0.0473301,0.994671]];

_item112 = _item111 createUnit ["UK3CB_TKM_I_TL",[907.385,5803.8,0],[],0,"CAN_COLLIDE"];
_item111 selectLeader _item112;
_this = _item112;
_objects pushback _this;
_objectIDs pushback 112;
_this setPosWorld [907.385,5803.85,243.094];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Jabr Ahmed-Jan";;
_this setface "PersianHead_A3_03";;
_this setspeaker "Male03PER";;
_this setpitch 1.04;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item113 = _item111 createUnit ["UK3CB_TKM_I_MG",[910.385,5800.8,0],[],0,"CAN_COLLIDE"];
_this = _item113;
_objects pushback _this;
_objectIDs pushback 113;
_this setPosWorld [910.385,5800.85,242.955];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Ehsan Ratebzad";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 0.972208;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item114 = _item111 createUnit ["UK3CB_TKM_I_MG_ASST",[912.385,5800.8,-1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item114;
_objects pushback _this;
_objectIDs pushback 114;
_this setPosWorld [912.385,5800.85,243.211];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Jamal Yusufzai";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male02per";;
_this setpitch 0.983393;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item115 = _item111 createUnit ["UK3CB_TKM_I_RIF_1",[914.385,5800.8,0],[],0,"CAN_COLLIDE"];
_this = _item115;
_objects pushback _this;
_objectIDs pushback 115;
_this setPosWorld [914.385,5800.85,243.634];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abdul-Aziz Amin";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male01per";;
_this setpitch 0.951276;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item117 = _item116 createUnit ["UK3CB_TKM_I_TL",[869.744,5725.48,0],[],0,"CAN_COLLIDE"];
_item116 selectLeader _item117;
_this = _item117;
_objects pushback _this;
_objectIDs pushback 117;
_this setPosWorld [869.744,5725.53,236.43];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Ali Amani";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male03per";;
_this setpitch 0.99051;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item118 = _item116 createUnit ["UK3CB_TKM_I_MG",[872.744,5722.48,0],[],0,"CAN_COLLIDE"];
_this = _item118;
_objects pushback _this;
_objectIDs pushback 118;
_this setPosWorld [872.744,5722.53,236.462];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Karim Haidari";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 0.954367;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item119 = _item116 createUnit ["UK3CB_TKM_I_MG_ASST",[874.744,5722.48,0],[],0,"CAN_COLLIDE"];
_this = _item119;
_objects pushback _this;
_objectIDs pushback 119;
_this setPosWorld [874.744,5722.53,236.302];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Jamal Ahmed-Khan";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male01per";;
_this setpitch 0.95415;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item120 = _item116 createUnit ["UK3CB_TKM_I_RIF_1",[876.744,5722.48,0],[],0,"CAN_COLLIDE"];
_this = _item120;
_objects pushback _this;
_objectIDs pushback 120;
_this setPosWorld [876.744,5722.53,236.078];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Ismail Ajani";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male02per";;
_this setpitch 0.962909;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

_item56 = createTrigger ["EmptyDetectorArea10x10",[1032,5639,1.584],false];
_this = _item56;
_triggers pushback _this;
_triggerIDs pushback 56;
_item56 setPosATL [1032,5639,1.584];
_this setTriggerArea [5,117.848,27.476,true,9.866];
_this setTriggerActivation ["EAST","PRESENT",false];
_this setTriggerStatements ["this","true",""];
F2_trigger_BTR = _this;

_item73 = createTrigger ["EmptyDetectorArea10x10",[925,5727,0],false];
_this = _item73;
_triggers pushback _this;
_triggerIDs pushback 73;
_item73 setPosATL [925,5727,0];
_this setTriggerArea [5,79.346,32.953,true,17.918];
_this setTriggerActivation ["EAST","PRESENT",false];
_this setTriggerStatements ["this","true",""];
F2_trigger_hilux = _this;

_item94 = createTrigger ["EmptyDetectorAreaR250",[1403,5554,495.073],false];
_this = _item94;
_triggers pushback _this;
_triggerIDs pushback 94;
_item94 setPosATL [1403,5554,495.073];
_this setTriggerArea [5,1000,24.022,true,500];
_this setTriggerActivation ["EAST","PRESENT",false];
_this setTriggerStatements ["private _vehiculo_aereo = false; 
{ 
 private _vehiculo; 
 _vehiculo = vehicle _x; 
 _vehiculo_aereo = _vehiculo_aereo || (!isTouchingGround _vehiculo && !(_vehiculo isKindOf ""Man"") && !(_vehiculo isKindOf ""LandVehicle"")); 
} forEach thisList; 
this && _vehiculo_aereo;","true",""];
F2_trigger_helicopteros = _this;


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item14;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 1-1"];                            } else {                                [_this, "F2 Alpha 1-1"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item20;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 1-2"];                            } else {                                [_this, "F2 Alpha 1-2"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item25;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 1-3"];                            } else {                                [_this, "F2 Alpha 1-3"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item30;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 1-4"];                            } else {                                [_this, "F2 Alpha 1-4"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item35;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 1-5"];                            } else {                                [_this, "F2 Alpha 1-5"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item40;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 1-6"];                            } else {                                [_this, "F2 Alpha 1-6"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item46;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 2-1"];                            } else {                                [_this, "F2 Alpha 2-1"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item68;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 2-2"];                            } else {                                [_this, "F2 Alpha 2-2"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item76;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 2-3"];                            } else {                                [_this, "F2 Alpha 2-3"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item89;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 2-4"];                            } else {                                [_this, "F2 Alpha 2-4"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item95;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 2-5"];                            } else {                                [_this, "F2 Alpha 2-5"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item101;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 2-6"];                            } else {                                [_this, "F2 Alpha 2-6"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item111;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 3-1"];                            } else {                                [_this, "F2 Alpha 3-1"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item116;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F2 Alpha 3-2"];                            } else {                                [_this, "F2 Alpha 3-2"] call CBA_fnc_setCallsign;                            };                        ;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

_item57 = _item46 addWaypoint [[898,6409,0.667999],0];
_this = _item57;
_waypoints pushback _this;
_waypointIDs pushback 57;
_this setWaypointStatements ["triggerActivated F2_trigger_BTR;",""];
_this setWaypointType "MOVE";

_item58 = _item46 addWaypoint [[934,5744,-0.0639954],0];
_this = _item58;
_waypoints pushback _this;
_waypointIDs pushback 58;
_this setWaypointType "MOVE";

_item69 = _item68 addWaypoint [[150,4760,0],0];
_this = _item69;
_waypoints pushback _this;
_waypointIDs pushback 69;
_this setWaypointStatements ["triggerActivated F2_trigger_hilux;",""];
_this setWaypointType "MOVE";

_item72 = _item68 addWaypoint [[998,5707,0],0];
_this = _item72;
_waypoints pushback _this;
_waypointIDs pushback 72;
_this setWaypointType "MOVE";

_item79 = _item76 addWaypoint [[125,5680,0],0];
_this = _item79;
_waypoints pushback _this;
_waypointIDs pushback 79;
_this setWaypointStatements ["triggerActivated F2_trigger_hilux;",""];
_this setWaypointType "MOVE";

_item87 = _item76 addWaypoint [[856,5783,1.52588e-005],0];
_this = _item87;
_waypoints pushback _this;
_waypointIDs pushback 87;
_this setWaypointType "MOVE";

_item99 = _item95 addWaypoint [[-304,10220,0],0];
_this = _item99;
_waypoints pushback _this;
_waypointIDs pushback 99;
_this setWaypointStatements ["triggerActivated F2_trigger_helicopteros;",""];
_this setWaypointType "MOVE";

_item100 = _item95 addWaypoint [[968.134,5723.5,0],0];
_this = _item100;
_waypoints pushback _this;
_waypointIDs pushback 100;
_this setWaypointStatements ["true","[this, this, 500] call CBA_fnc_taskPatrol"];
_this setWaypointType "MOVE";

_item105 = _item101 addWaypoint [[-4831.4,4959,0],0];
_this = _item105;
_waypoints pushback _this;
_waypointIDs pushback 105;
_this setWaypointStatements ["triggerActivated F2_trigger_helicopteros;",""];
_this setWaypointType "MOVE";

_item106 = _item101 addWaypoint [[1079.32,5598.4,0],0];
_this = _item106;
_waypoints pushback _this;
_waypointIDs pushback 106;
_this setWaypointStatements ["true","[this, this, 500] call CBA_fnc_taskPatrol"];
_this setWaypointType "MOVE";


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];

_item53 = (group (missionNamespace getvariable ["BIS_functions_mainscope",objnull])) createUnit ["ModuleDoorOpen_F",[876,6416,0.227997],[],0,"CAN_COLLIDE"];
_this = _item53;
_logics pushback _this;
_logicIDs pushback 53;
_this setPosWorld [876,6416,345];
_this setVectorDirAndUp [[0,0.997564,0.0697564],[0.067963,-0.0695951,0.995257]];
_this setVariable ['Radius',50,true];;
_this setVariable ['Door',"1",true];;
_this setVariable ['Hatch',"-1",true];;
_this setvariable ["BIS_fnc_initModules_disableAutoActivation",true];


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item48 && !isNull _item47) then {_item48 moveInDriver _item47;};
if (!isNull _item49 && !isNull _item47) then {_item49 moveInTurret [_item47,[0]];};
if (!isNull _item66 && !isNull _item65) then {_item66 moveInDriver _item65;};
if (!isNull _item67 && !isNull _item65) then {_item67 moveInTurret [_item65,[0]];};
if (!isNull _item77 && !isNull _item80) then {_item77 moveInDriver _item80;};
if (!isNull _item78 && !isNull _item80) then {_item78 moveInTurret [_item80,[0]];};
if (!isNull _item91 && !isNull _item90) then {_item91 moveInDriver _item90;};
if (!isNull _item92 && !isNull _item90) then {_item92 moveInTurret [_item90,[0]];};
if (!isNull _item93 && !isNull _item90) then {_item93 moveInTurret [_item90,[1]];};
if (!isNull _item97 && !isNull _item96) then {_item97 moveInDriver _item96;};
if (!isNull _item98 && !isNull _item96) then {_item98 moveInTurret [_item96,[0]];};
if (!isNull _item103 && !isNull _item102) then {_item103 moveInDriver _item102;};
if (!isNull _item104 && !isNull _item102) then {_item104 moveInTurret [_item102,[0]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections
if (!isNull _item52 && !isNull _item53) then {_item52 synchronizeObjectsAdd [_item53]; _item53 synchronizeObjectsAdd [_item52];};


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item14) then {
		this = _item14;
		[this, this, 50, 3, false] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item20) then {
		this = _item20;
		[this, this, 50, 2, false] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item25) then {
		this = _item25;
		[this, this, 150] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item30) then {
		this = _item30;
		[this, this, 50, 2, 0.25] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item35) then {
		this = _item35;
		[this, this, 150] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item40) then {
		this = _item40;
		[this, this, 50, 2, false] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item111) then {
		this = _item111;
		[this, this, 50, 2, false] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item116) then {
		this = _item116;
		[this, this, 50, 2, false] call CBA_fnc_taskDefend;;
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)
if !(isNull _item53) then {_item53 setvariable ["BIS_fnc_initModules_activate",true];};


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
