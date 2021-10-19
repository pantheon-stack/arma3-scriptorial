// Export of 'fase1.Mountains_ACR' by Dikus on v0.9


///////////////////////////////////////////////////////////////////////////////////////////
// Markers
private _markers = [];
private _markerIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Groups
private _groups = [];
private _groupIDs = [];

_item0 = createGroup resistance;
_this = _item0;
_groups pushback _this;
_groupIDs pushback 0;

_item4 = createGroup resistance;
_this = _item4;
_groups pushback _this;
_groupIDs pushback 4;

_item9 = createGroup resistance;
_this = _item9;
_groups pushback _this;
_groupIDs pushback 9;

_item14 = createGroup resistance;
_this = _item14;
_groups pushback _this;
_groupIDs pushback 14;

_item19 = createGroup resistance;
_this = _item19;
_groups pushback _this;
_groupIDs pushback 19;

_item24 = createGroup resistance;
_this = _item24;
_groups pushback _this;
_groupIDs pushback 24;

_item29 = createGroup resistance;
_this = _item29;
_groups pushback _this;
_groupIDs pushback 29;

_item61 = createGroup resistance;
_this = _item61;
_groups pushback _this;
_groupIDs pushback 61;

_item65 = createGroup resistance;
_this = _item65;
_groups pushback _this;
_groupIDs pushback 65;

_item85 = createGroup resistance;
_this = _item85;
_groups pushback _this;
_groupIDs pushback 85;

_item90 = createGroup resistance;
_this = _item90;
_groups pushback _this;
_groupIDs pushback 90;

_item105 = createGroup resistance;
_this = _item105;
_groups pushback _this;
_groupIDs pushback 105;

_item133 = createGroup resistance;
_this = _item133;
_groups pushback _this;
_groupIDs pushback 133;


///////////////////////////////////////////////////////////////////////////////////////////
// Objects
private _objects = [];
private _objectIDs = [];

_item2 = _item0 createUnit ["UK3CB_TKM_I_RIF_1",[2031.46,5166.07,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item2;
_objects pushback _this;
_objectIDs pushback 2;
_this setPosWorld [2033.5,5167.48,198.209];
_this setVectorDirAndUp [[0.892575,0.44919,-0.0392255],[0.0527193,-0.0175674,0.998455]];
F1_BTRD = _this;
_this setVehicleVarName "F1_BTRD";
_this setname "Karim Rahimi";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male02per";;
_this setpitch 0.993162;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item3 = _item0 createUnit ["UK3CB_TKM_I_RIF_1",[2031.58,5166.03,2.19998],[],0,"CAN_COLLIDE"];
_item0 selectLeader _item3;
_this = _item3;
_objects pushback _this;
_objectIDs pushback 3;
_this setPosWorld [2032.17,5166.53,198.696];
_this setVectorDirAndUp [[0.892575,0.44919,-0.0392255],[0.0527193,-0.0175674,0.998455]];
F1_BTRG = _this;
_this setVehicleVarName "F1_BTRG";
_this setname "Hafiz Khalili";;
_this setface "PersianHead_A3_01";;
_this setspeaker "Male01PER";;
_this setpitch 0.97;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item1 = createVehicle ["UK3CB_TKM_I_BTR60",[2031.46,5166.06,0],[],0,"CAN_COLLIDE"];
_this = _item1;
_objects pushback _this;
_objectIDs pushback 1;
_this setPosWorld [2031.58,5166.03,199.295];
_this setVectorDirAndUp [[0.892575,0.44919,-0.0392255],[0.0527193,-0.0175674,0.998455]];
[_this,"TKA_O"] call bis_fnc_initVehicle;
F1_BTR = _this;
_this setVehicleVarName "F1_BTR";
[_this,"[[[[""FirstAidKit""],[1]],[[],[]],[[],[]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 4] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;
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
[_this,0,'crate_l3_unhide'] call rhs_fnc_setHabarEden;
[_this,0,'crate_r1_unhide'] call rhs_fnc_setHabarEden;
[_this,1,'crate_r2_unhide'] call rhs_fnc_setHabarEden;
[_this,0,'wheel_1_unhide'] call rhs_fnc_setHabarEden;
[_this,0,'rhs_disableHabar',0] call rhs_fnc_setHabarEden;
_this animateDoor ['driverViewHatch',0,true];
_this animateDoor ['commanderViewHatch',0,true];
[_this,false] call rhs_fnc_lockTop;

_item5 = _item4 createUnit ["UK3CB_TKM_I_TL",[2152,5115,0],[],0,"CAN_COLLIDE"];
_item4 selectLeader _item5;
_this = _item5;
_objects pushback _this;
_objectIDs pushback 5;
_this setPosWorld [2152,5115.05,198.836];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Hafiz Gailani";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "Male01PER";;
_this setpitch 0.95;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item6 = _item4 createUnit ["UK3CB_TKM_I_AR",[2155,5112,0],[],0,"CAN_COLLIDE"];
_this = _item6;
_objects pushback _this;
_objectIDs pushback 6;
_this setPosWorld [2155,5112.05,199.537];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Jajil Faruqi";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 1.01815;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item7 = _item4 createUnit ["UK3CB_TKM_I_AR",[2157,5112,0],[],0,"CAN_COLLIDE"];
_this = _item7;
_objects pushback _this;
_objectIDs pushback 7;
_this setPosWorld [2157,5112.05,199.791];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abdul-Aziz Sangeen";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male03per";;
_this setpitch 0.958316;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item8 = _item4 createUnit ["UK3CB_TKM_I_RIF_2",[2159,5112,0],[],0,"CAN_COLLIDE"];
_this = _item8;
_objects pushback _this;
_objectIDs pushback 8;
_this setPosWorld [2159,5112.05,200.059];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Ehsan Karizi";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male02per";;
_this setpitch 1.04695;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item10 = _item9 createUnit ["UK3CB_TKM_I_TL",[2010.24,5030.75,0],[],0,"CAN_COLLIDE"];
_item9 selectLeader _item10;
_this = _item10;
_objects pushback _this;
_objectIDs pushback 10;
_this setPosWorld [2010.24,5030.8,200.424];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Abdullah Ahmed-Jan";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 0.972459;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item11 = _item9 createUnit ["UK3CB_TKM_I_RIF_2",[2013.24,5027.75,0],[],0,"CAN_COLLIDE"];
_this = _item11;
_objects pushback _this;
_objectIDs pushback 11;
_this setPosWorld [2013.24,5027.8,202.201];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Qasim Jawadi";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 0.972532;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item12 = _item9 createUnit ["UK3CB_TKM_I_LAT",[2015.24,5027.75,0],[],0,"CAN_COLLIDE"];
_this = _item12;
_objects pushback _this;
_objectIDs pushback 12;
_this setPosWorld [2015.24,5027.8,202.434];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Khalil Mohammadi";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male03per";;
_this setpitch 1.03267;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item13 = _item9 createUnit ["UK3CB_TKM_I_RIF_1",[2017.24,5027.75,0],[],0,"CAN_COLLIDE"];
_this = _item13;
_objects pushback _this;
_objectIDs pushback 13;
_this setPosWorld [2017.24,5027.8,202.827];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Sami Zakhilwal";;
_this setface "PersianHead_A3_03";;
_this setspeaker "male01per";;
_this setpitch 0.950571;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item15 = _item14 createUnit ["UK3CB_TKM_I_TL",[1935,5019,0],[],0,"CAN_COLLIDE"];
_item14 selectLeader _item15;
_this = _item15;
_objects pushback _this;
_objectIDs pushback 15;
_this setPosWorld [1935,5019.05,193.223];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Majeed Amin";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 1.00571;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item16 = _item14 createUnit ["UK3CB_TKM_I_RIF_2",[1938,5016,0],[],0,"CAN_COLLIDE"];
_this = _item16;
_objects pushback _this;
_objectIDs pushback 16;
_this setPosWorld [1938,5016.05,193.417];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Ehsan Tanwir";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male02per";;
_this setpitch 0.96825;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item17 = _item14 createUnit ["UK3CB_TKM_I_LAT",[1940,5016,0],[],0,"CAN_COLLIDE"];
_this = _item17;
_objects pushback _this;
_objectIDs pushback 17;
_this setPosWorld [1940,5016.05,193.51];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Sibhatullah Zahor";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 1.02953;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item18 = _item14 createUnit ["UK3CB_TKM_I_RIF_1",[1942,5016,0],[],0,"CAN_COLLIDE"];
_this = _item18;
_objects pushback _this;
_objectIDs pushback 18;
_this setPosWorld [1942,5016.05,193.606];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Basharat Tanwir";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male01per";;
_this setpitch 1.00807;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item20 = _item19 createUnit ["UK3CB_TKM_I_TL",[1900.05,5075.83,0],[],0,"CAN_COLLIDE"];
_item19 selectLeader _item20;
_this = _item20;
_objects pushback _this;
_objectIDs pushback 20;
_this setPosWorld [1900.05,5075.88,194.191];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Hasan Gailani";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male03per";;
_this setpitch 0.995418;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item21 = _item19 createUnit ["UK3CB_TKM_I_RIF_2",[1903.05,5072.83,0],[],0,"CAN_COLLIDE"];
_this = _item21;
_objects pushback _this;
_objectIDs pushback 21;
_this setPosWorld [1903.05,5072.88,193.891];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Khalil Bahadur";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male03per";;
_this setpitch 1.03673;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item22 = _item19 createUnit ["UK3CB_TKM_I_LAT",[1905.05,5072.83,0],[],0,"CAN_COLLIDE"];
_this = _item22;
_objects pushback _this;
_objectIDs pushback 22;
_this setPosWorld [1905.05,5072.88,193.811];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Luqman Khusraw";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male01per";;
_this setpitch 0.986662;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item23 = _item19 createUnit ["UK3CB_TKM_I_RIF_1",[1907.05,5072.83,0],[],0,"CAN_COLLIDE"];
_this = _item23;
_objects pushback _this;
_objectIDs pushback 23;
_this setPosWorld [1907.05,5072.88,193.745];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Basharat Khusraw";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 1.04216;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item25 = _item24 createUnit ["UK3CB_TKM_I_TL",[1956.24,5081.61,0],[],0,"CAN_COLLIDE"];
_item24 selectLeader _item25;
_this = _item25;
_objects pushback _this;
_objectIDs pushback 25;
_this setPosWorld [1956.24,5081.66,195.477];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Abbas Kohzad";;
_this setface "PersianHead_A3_02";;
_this setspeaker "Male01PER";;
_this setpitch 0.983543;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item26 = _item24 createUnit ["UK3CB_TKM_I_AT",[1959.24,5078.61,0],[],0,"CAN_COLLIDE"];
_this = _item26;
_objects pushback _this;
_objectIDs pushback 26;
_this setPosWorld [1959.24,5078.66,195.62];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Abdul-Latif Yusufzai";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "Male01PER";;
_this setpitch 0.972758;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item27 = _item24 createUnit ["UK3CB_TKM_I_AT_ASST",[1961.24,5078.61,0],[],0,"CAN_COLLIDE"];
_this = _item27;
_objects pushback _this;
_objectIDs pushback 27;
_this setPosWorld [1961.24,5078.66,195.806];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Faisal Nazari";;
_this setface "PersianHead_A3_02";;
_this setspeaker "Male01PER";;
_this setpitch 1.04713;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item28 = _item24 createUnit ["UK3CB_TKM_I_RIF_1",[1963.24,5078.61,0],[],0,"CAN_COLLIDE"];
_this = _item28;
_objects pushback _this;
_objectIDs pushback 28;
_this setPosWorld [1963.24,5078.66,196.004];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Luqman Saikal";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "Male01PER";;
_this setpitch 1.04662;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item30 = _item29 createUnit ["UK3CB_TKM_I_TL",[1965,5437,0],[],0,"CAN_COLLIDE"];
_item29 selectLeader _item30;
_this = _item30;
_objects pushback _this;
_objectIDs pushback 30;
_this setPosWorld [1965,5437.05,330.557];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Hafiz Hakimi";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male02per";;
_this setpitch 0.987669;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item31 = _item29 createUnit ["UK3CB_TKM_I_RIF_2",[1968,5434,0],[],0,"CAN_COLLIDE"];
_this = _item31;
_objects pushback _this;
_objectIDs pushback 31;
_this setPosWorld [1968,5434.05,331.694];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Faisal Aybak";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male01per";;
_this setpitch 0.98585;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item32 = _item29 createUnit ["UK3CB_TKM_I_LAT",[1970,5434,0],[],0,"CAN_COLLIDE"];
_this = _item32;
_objects pushback _this;
_objectIDs pushback 32;
_this setPosWorld [1970,5434.05,332.134];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Sadat Zakhilwal";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male01per";;
_this setpitch 1.01256;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item33 = _item29 createUnit ["UK3CB_TKM_I_RIF_1",[1972,5434,0],[],0,"CAN_COLLIDE"];
_this = _item33;
_objects pushback _this;
_objectIDs pushback 33;
_this setPosWorld [1972,5434.05,332.438];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Umar Habibzai";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male03per";;
_this setpitch 0.952524;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item63 = _item61 createUnit ["UK3CB_TKM_I_RIF_1",[1347.02,5592.55,0.923569],[],0,"CAN_COLLIDE"];
_this = _item63;
_objects pushback _this;
_objectIDs pushback 63;
_this setPosWorld [1347.02,5592.6,220.283];
_this setVectorDirAndUp [[0.415582,-0.909546,0.00429727],[-0.00169146,0.00395175,0.999991]];
F1_veh_1_2 = _this;
_this setVehicleVarName "F1_veh_1_2";
_this setname "Ehsan Zahor";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "Male01PER";;
_this setpitch 0.97;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item64 = _item61 createUnit ["UK3CB_TKM_I_RIF_1",[1341.82,5592.08,0.574768],[],0,"CAN_COLLIDE"];
_item61 selectLeader _item64;
_this = _item64;
_objects pushback _this;
_objectIDs pushback 64;
_this setPosWorld [1341.82,5592.13,220.011];
_this setVectorDirAndUp [[0.415663,-0.90949,0.00720136],[-0.00832222,0.00411418,0.999957]];
F1_veh_1_1 = _this;
_this setVehicleVarName "F1_veh_1_1";
_this setname "Mufid Fahim";;
_this setface "asczHead_boomlakhaoo_A3";;
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

_item62 = createVehicle ["UK3CB_TKM_I_Hilux_Pkm",[1358.95,5581.99,-0.000671387],[],0,"CAN_COLLIDE"];
_this = _item62;
_objects pushback _this;
_objectIDs pushback 62;
_this setPosWorld [1359.03,5581.92,220.58];
_this setVectorDirAndUp [[-0.307934,-0.951205,-0.0196352],[0.0399682,-0.0335532,0.998637]];
[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 6] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item67 = _item65 createUnit ["UK3CB_TKM_I_RIF_1",[1257.18,3880.43,0.628174],[],0,"CAN_COLLIDE"];
_this = _item67;
_objects pushback _this;
_objectIDs pushback 67;
_this setPosWorld [1257.18,3880.48,211.834];
_this setVectorDirAndUp [[0.0310494,-0.999518,-2.62596e-005],[0.000845734,0,1]];
F1_veh_2_2 = _this;
_this setVehicleVarName "F1_veh_2_2";
_this setname "Hafiz Nazari";;
_this setface "PersianHead_A3_03";;
_this setspeaker "Male02PER";;
_this setpitch 0.98;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item68 = _item65 createUnit ["UK3CB_TKM_I_RIF_1",[1256.3,3882.27,0.62645],[],0,"CAN_COLLIDE"];
_item65 selectLeader _item68;
_this = _item68;
_objects pushback _this;
_objectIDs pushback 68;
_this setPosWorld [1256.3,3882.32,211.826];
_this setVectorDirAndUp [[-0.76628,0.642507,0.000648069],[0.000845734,0,1]];
F1_veh_2_1 = _this;
_this setVehicleVarName "F1_veh_2_1";
_this setname "Abdul-Aziz Bahadur";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "Male03PER";;
_this setpitch 1.05;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item66 = createVehicle ["UK3CB_TKM_I_Hilux_Pkm",[1267.99,3888.29,-0.000732422],[],0,"CAN_COLLIDE"];
_this = _item66;
_objects pushback _this;
_objectIDs pushback 66;
_this setPosWorld [1268.07,3888.34,212.505];
_this setVectorDirAndUp [[0.841855,0.537076,-0.0532002],[0.0447551,0.0287623,0.998584]];
[_this,"[[[[],[]],[[],[]],[[""FirstAidKit""],[1]],[[],[]]],false]"] call bis_fnc_initAmmoBox;;
_this setVariable ['s',1];;
[_this, 6] call ace_cargo_fnc_setSpace;;
if !(true) then { _this call UK3CB_Factions_Vehicles_fnc_disable_randomize; };;

_item86 = _item85 createUnit ["UK3CB_TKM_I_TL",[2412,4837,0],[],0,"CAN_COLLIDE"];
_item85 selectLeader _item86;
_this = _item86;
_objects pushback _this;
_objectIDs pushback 86;
_this setPosWorld [2412,4837.05,343.069];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Latif Rahimi";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male02per";;
_this setpitch 0.964075;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item87 = _item85 createUnit ["UK3CB_TKM_I_MG",[2415,4834,0],[],0,"CAN_COLLIDE"];
_this = _item87;
_objects pushback _this;
_objectIDs pushback 87;
_this setPosWorld [2415,4834.05,345.433];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Majeed Shah";;
_this setface "PersianHead_A3_02";;
_this setspeaker "male02per";;
_this setpitch 1.04388;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item88 = _item85 createUnit ["UK3CB_TKM_I_MG_ASST",[2417,4834,0],[],0,"CAN_COLLIDE"];
_this = _item88;
_objects pushback _this;
_objectIDs pushback 88;
_this setPosWorld [2417,4834.05,346.679];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Habib Habibi";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 0.964508;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item89 = _item85 createUnit ["UK3CB_TKM_I_RIF_1",[2419,4834,0],[],0,"CAN_COLLIDE"];
_this = _item89;
_objects pushback _this;
_objectIDs pushback 89;
_this setPosWorld [2419,4834.05,347.936];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Jabr Sangeen";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male02per";;
_this setpitch 0.980442;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item91 = _item90 createUnit ["UK3CB_TKM_I_TL",[1881,5137,1.52588e-005],[],0,"CAN_COLLIDE"];
_item90 selectLeader _item91;
_this = _item91;
_objects pushback _this;
_objectIDs pushback 91;
_this setPosWorld [1881,5137.05,195.485];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setRank "SERGEANT";
_this setname "Sami Ghafurzai";;
_this setface "PersianHead_A3_01";;
_this setspeaker "male01per";;
_this setpitch 0.968455;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item92 = _item90 createUnit ["UK3CB_TKM_I_RIF_2",[1884,5134,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item92;
_objects pushback _this;
_objectIDs pushback 92;
_this setPosWorld [1884,5134.05,195.549];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.45;
_this setRank "CORPORAL";
_this setname "Sibhatullah Takhtar";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 0.958921;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item93 = _item90 createUnit ["UK3CB_TKM_I_LAT",[1886,5134,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item93;
_objects pushback _this;
_objectIDs pushback 93;
_this setPosWorld [1886,5134.05,195.55];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Hasib Zamani";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "male02per";;
_this setpitch 1.03141;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item94 = _item90 createUnit ["UK3CB_TKM_I_RIF_1",[1888,5134,1.52588e-005],[],0,"CAN_COLLIDE"];
_this = _item94;
_objects pushback _this;
_objectIDs pushback 94;
_this setPosWorld [1888,5134.05,195.554];
_this setVectorDirAndUp [[0,1,0],[0,0,1]];
_this setSkill 0.4;
_this setname "Abdul-Latif Masood";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male01per";;
_this setpitch 0.989048;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item106 = _item105 createUnit ["UK3CB_TKM_I_MG",[2098.54,5146.8,2.77299],[],0,"CAN_COLLIDE"];
_item105 selectLeader _item106;
_this = _item106;
_objects pushback _this;
_objectIDs pushback 106;
_this setPosWorld [2098.54,5146.85,199.194];
_this setVectorDirAndUp [[0.803452,0.59537,0],[0,0,1]];
_this setname "Azim Jawadi";;
_this setface "asczHead_obacki_A3";;
_this setspeaker "Male02PER";;
_this setpitch 1;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item129 = createVehicle ["Land_HelipadCircle_F",[119,7886,0],[],0,"CAN_COLLIDE"];
_this = _item129;
_objects pushback _this;
_objectIDs pushback 129;
_this setPosWorld [119,7886,217.875];
_this setVectorDirAndUp [[0,0.998166,0.0605288],[0.0609638,-0.0604162,0.99631]];

_item135 = _item133 createUnit ["UK3CB_TKA_I_HELI_PILOT",[127.203,7870.14,1.52588e-005],[],0,"CAN_COLLIDE"];
_item133 selectLeader _item135;
_this = _item135;
_objects pushback _this;
_objectIDs pushback 135;
_this setPosWorld [119.596,7883.53,219.535];
_this setVectorDirAndUp [[0.227116,-0.971615,-0.0661965],[0.0542182,-0.0552524,0.996999]];
_this setname "Akbar Adel";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male03per";;
_this setpitch 1.02936;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item136 = _item133 createUnit ["UK3CB_TKA_I_HELI_PILOT",[127.377,7869.97,3.18411],[],0,"CAN_COLLIDE"];
_this = _item136;
_objects pushback _this;
_objectIDs pushback 136;
_this setPosWorld [119.964,7882.15,218.783];
_this setVectorDirAndUp [[0.227116,-0.971615,-0.0661965],[0.0542182,-0.0552524,0.996999]];
_this setname "Hafiz Kohzad";;
_this setface "asczHead_boomlakhaoo_A3";;
_this setspeaker "male02per";;
_this setpitch 1.0312;;
if !(0 == ([0, 1] select (_this getUnitTrait 'engineer')) || {0 == -1}) then {_this setVariable ['s', 0, true]};
_this setVariable ["ace_advanced_fatigue_performanceFactor", 1, true];
_this setVariable ['ACE_isEOD', false, true];
if (0 >= 0.1) then {_this setVariable ["ace_medical_damageThreshold", 0, true]};
if (0 != -1 && {0 != (parseNumber (_this getUnitTrait 'medic'))}) then {_this setVariable ["ace_medical_medicClass", 0, true]};
if !(true) then { _this call uk3cb_factions_common_fnc_disable_loadout; };;
if !(true) then { _this call uk3cb_factions_common_fnc_disable_randomize; };;
if (false) then { _this call uk3cb_factions_common_fnc_force_loadout; };;

_item134 = createVehicle ["UK3CB_TKA_I_Mi_24V",[118.138,7889.06,-0.00367737],[],0,"CAN_COLLIDE"];
_this = _item134;
_objects pushback _this;
_objectIDs pushback 134;
_this setPosWorld [118.31,7888.89,221.263];
_this setVectorDirAndUp [[0.227116,-0.971615,-0.0661965],[0.0542182,-0.0552524,0.996999]];
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


///////////////////////////////////////////////////////////////////////////////////////////
// Triggers
private _triggers = [];
private _triggerIDs = [];

_item95 = createTrigger ["EmptyDetector",[1736,5455,0],false];
_this = _item95;
_triggers pushback _this;
_triggerIDs pushback 95;
_item95 setPosATL [1736,5455,0];
_this setTriggerStatements ["!alive F1_BTR","F1_veh_1_1 enableAI ""PATH"";
F1_veh_1_2 enableAI ""PATH"";
F1_veh_2_1 enableAI ""PATH"";
F1_veh_2_2 enableAI ""PATH"";",""];
BTR_KILLED = _this;


///////////////////////////////////////////////////////////////////////////////////////////
// Group attributes (applied only once group units exist)
_this = _item0;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 1-1"];                            } else {                                [_this, "F1 Alpha 1-1"] call CBA_fnc_setCallsign;                            };                        ;
	_this setBehaviour "SAFE";
};
_this = _item4;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 1-2"];                            } else {                                [_this, "F1 Alpha 1-2"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item9;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 1-3"];                            } else {                                [_this, "F1 Alpha 1-3"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item14;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 1-4"];                            } else {                                [_this, "F1 Alpha 1-4"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item19;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 1-5"];                            } else {                                [_this, "F1 Alpha 1-5"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item24;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 1-6"];                            } else {                                [_this, "F1 Alpha 1-6"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item29;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 2-1"];                            } else {                                [_this, "F1 Alpha 2-1"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item61;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 2-2"];                            } else {                                [_this, "F1 Alpha 2-2"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item65;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 2-3"];                            } else {                                [_this, "F1 Alpha 2-3"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item85;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 2-4"];                            } else {                                [_this, "F1 Alpha 2-4"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item90;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 2-5"];                            } else {                                [_this, "F1 Alpha 2-5"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item105;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 3-1"];                            } else {                                [_this, "F1 Alpha 3-1"] call CBA_fnc_setCallsign;                            };                        ;
};
_this = _item133;
if !(units _this isEqualTo []) then {
	[_this,0] setWaypointPosition [position leader _this,0];
	                            if (isNil 'CBA_fnc_setCallsign') then {                                _this setGroupID ["F1 Alpha 3-2"];                            } else {                                [_this, "F1 Alpha 3-2"] call CBA_fnc_setCallsign;                            };                        ;
};


///////////////////////////////////////////////////////////////////////////////////////////
// Waypoints
private _waypoints = [];
private _waypointIDs = [];

_item97 = _item61 addWaypoint [[1342.04,5592.88,0.541916],0];
_this = _item97;
_waypoints pushback _this;
_waypointIDs pushback 97;
_this setWaypointType "MOVE";

_item69 = _item61 addWaypoint [[1358.95,5581.99,0.499329],0];
_this = _item69;
_waypoints pushback _this;
_waypointIDs pushback 69;
_this setWaypointType "GETIN";

_item70 = _item61 addWaypoint [[2042,5142,-1.52588e-005],0];
_this = _item70;
_waypoints pushback _this;
_waypointIDs pushback 70;
_this setWaypointType "MOVE";

_item98 = _item65 addWaypoint [[1257.72,3882.7,0.676956],0];
_this = _item98;
_waypoints pushback _this;
_waypointIDs pushback 98;
_this setWaypointType "MOVE";

_item73 = _item65 addWaypoint [[1267.99,3888.29,0.499268],0];
_this = _item73;
_waypoints pushback _this;
_waypointIDs pushback 73;
_this setWaypointType "GETIN";

_item74 = _item65 addWaypoint [[1925.19,5100.33,0],0];
_this = _item74;
_waypoints pushback _this;
_waypointIDs pushback 74;
_this setWaypointType "MOVE";

_item137 = _item133 addWaypoint [[121,7875,0],0];
_this = _item137;
_waypoints pushback _this;
_waypointIDs pushback 137;
_this setWaypointType "MOVE";

_item139 = _item133 addWaypoint [[2000,5100,0],0];
_this = _item139;
_waypoints pushback _this;
_waypointIDs pushback 139;
_this setWaypointStatements ["true","[this, this, 400] call CBA_fnc_taskPatrol"];
_this setWaypointType "MOVE";


///////////////////////////////////////////////////////////////////////////////////////////
// Logics
private _logics = [];
private _logicIDs = [];


///////////////////////////////////////////////////////////////////////////////////////////
// Crews
if (!isNull _item2 && !isNull _item1) then {_item2 moveInDriver _item1;};
if (!isNull _item3 && !isNull _item1) then {_item3 moveInTurret [_item1,[0]];};
if (!isNull _item135 && !isNull _item134) then {_item135 moveInDriver _item134;};
if (!isNull _item136 && !isNull _item134) then {_item136 moveInTurret [_item134,[0]];};


///////////////////////////////////////////////////////////////////////////////////////////
// Vehicle cargo


///////////////////////////////////////////////////////////////////////////////////////////
// Connections
if (!isNull _item95 && !(_item97 isEqualTo [])) then {_item95 synchronizeWaypoint [_item97];};
if (!isNull _item95 && !(_item98 isEqualTo [])) then {_item95 synchronizeWaypoint [_item98];};
if (!isNull _item95 && !(_item137 isEqualTo [])) then {_item95 synchronizeWaypoint [_item137];};


///////////////////////////////////////////////////////////////////////////////////////////
// Inits (executed only once all entities exist; isNil used to ensure non-scheduled environment)
isNil {
	if !(isnull _item4) then {
		this = _item4;
		[this, this, 50] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item9) then {
		this = _item9;
		[this, this, 100] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item14) then {
		this = _item14;
		[this, this, 50, 2, 0] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item19) then {
		this = _item19;
		[this, this, 50, 2, 0] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item24) then {
		this = _item24;
		[this, this, 50, 2, 0] call CBA_fnc_taskDefend;;
	};
	if !(isnull _item29) then {
		this = _item29;
		[this, this, 100] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item85) then {
		this = _item85;
		[this, this, 100] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item90) then {
		this = _item90;
		[this, this, 100] call CBA_fnc_taskPatrol;;
	};
	if !(isnull _item63) then {
		this = _item63;
		this disableAI "PATH";;
	};
	if !(isnull _item64) then {
		this = _item64;
		this disableAI "PATH";;
	};
	if !(isnull _item67) then {
		this = _item67;
		this disableAI "PATH";;
	};
	if !(isnull _item68) then {
		this = _item68;
		this disableAI "PATH";;
	};
	if !(isnull _item106) then {
		this = _item106;
		this disableAI "PATH";;
	};
};


///////////////////////////////////////////////////////////////////////////////////////////
// Module activations (only once everything is spawned and connected)


///////////////////////////////////////////////////////////////////////////////////////////
[[_objects,_groups,_triggers,_waypoints,_logics,_markers],[_objectIDs,_groupIDs,_triggerIDs,_waypointIDs,_logicIDs,_markerIDs]]
