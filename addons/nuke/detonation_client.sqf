NukeTriggerClient = {
	private ["_object", "_radius", "_xpos", "_ypos"];
	_object = _this select 0;
	_radius = _this select 1;
	_xpos = getpos _object select 0;
	_ypos = getpos _object select 1;

	radiation_radius = _radius;
	
	[_object] execvm "addons\nuke\scripts\script\destroy.sqf"; 
	
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\escape.sqf";

	sleep 2;
		
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\glare.sqf";
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\light.sqf";
	[_xpos, _ypos] exec "addons\nuke\scripts\script\blast_1.sqs";
	[_xpos, _ypos] exec "addons\nuke\scripts\script\blast1.sqs";
	[_xpos, _ypos] exec "addons\nuke\scripts\script\hat.sqs";
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\ears.sqf";
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\aperture.sqf";

	sleep 0.5;

	[_xpos, _ypos] exec "addons\nuke\scripts\script\hatnod.sqs";
	[_xpos, _ypos] exec "addons\nuke\scripts\script\blast1.sqs";

	[_xpos, _ypos] execvm "addons\nuke\scripts\script\damage.sqf"; 

	[_xpos, _ypos] exec "addons\nuke\scripts\script\ring1.sqs";

	sleep 0.5;

	[_xpos, _ypos] exec "addons\nuke\scripts\script\ring2.sqs";

	[_xpos, _ypos] exec "addons\nuke\scripts\script\blast2.sqs";
	sleep 0.4;
	[_xpos, _ypos] exec "addons\nuke\scripts\script\blast3.sqs";
	[_xpos, _ypos] execVM "addons\nuke\scripts\colorcorrection.sqf";

	sleep 5;
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\heartbeat.sqf";

	sleep 60;

	sleep 10;
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\dust.sqf";
	[_xpos, _ypos] execvm "addons\nuke\scripts\script\snow.sqf";

	sleep 41.6;
	[_xpos, _ypos] execVM "addons\nuke\scripts\colorcorrection_clear.sqf";

};