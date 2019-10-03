_nukeobj = _this select 0;
nukepos = "Land_HelipadEmpty_F" createVehicle (getPosASL _nukeobj);
[nukepos] execVM "addons\nuke\scripts\nuclear\detonation.sqf";
