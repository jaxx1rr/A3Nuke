/*
 * NUKE MODULE - INIT
 * by Jaxx0rr
*/

radiationtime = 360;
damage_enabled = true;
main_nuclear_blow_speed = 170;
main_nuclear_half_life = 10 * 30;
main_nuclear_radiation_damage = 0.02;
main_nuclear_car_armour = 2 / 4;

if (isMultiplayer) then { 
	if (isServer) then {
		[] execVM "addons\nuke\detonation_server.sqf";
	};
	if (!isDedicated) then {
		[] execVM "addons\nuke\detonation_client.sqf";
	};
} else {
	[] execVM "addons\nuke\detonation_server.sqf";
	[] execVM "addons\nuke\detonation_client.sqf";
};


//manual trigger example
/*
nukepos = "Land_HelipadEmpty_F" createVehicle [14914,16535,10]; //test coordinates are altis airport
[nukepos, 1400, 60] execVM "addons\nuke\trigger.sqf"; //POS, RADIATION RADIUS, TIME (s)
*/

//addaction trigger examples (Tempest Device now has the functionality it deserves)

{
	if (typeOf _x == "O_Truck_03_device_F" && alive _x) then {																   //RADIATION RADIUS, TIME (s)
		_tmp = _x addAction [format ["<t>Activate Tempest Device (700kt Nuke 300s)</t>"], "addons\nuke\trigger_addaction.sqf", [_x, 700, 300], 11, true, true, "", "_this distance _target < 10"]; 
	}
} foreach vehicles;

{
	if (typeOf _x == "O_T_Truck_03_device_ghex_F" && alive _x) then {															//RADIATION RADIUS, TIME (s)
		_tmp = _x addAction [format ["<t>Activate Tempest Device (1400kt Nuke 300s)</t>"], "addons\nuke\trigger_addaction.sqf", [_x, 1400, 300], 11, true, true, "", "_this distance _target < 10"]; 
	} 
} foreach vehicles;

