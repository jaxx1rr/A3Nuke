//------------------------------------------
//|      Modified By Reece The Geese       |
//------------------------------------------


private ["_object", "_xpos", "_ypos"];

_object = _this select 0;
_xpos = getpos _object select 0;
_ypos = getpos _object select 1;

//call compile preprocessfile "addons\nuke\scripts\nuclear\config.sqf";

[_object] execvm "addons\nuke\scripts\nuclear\script\destroy.sqf";

[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\escape.sqf";

//[] execVM "addons\nuke\scripts\nuclear\script\athmo.sqf";

sleep 2;

[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\glare.sqf";
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\light.sqf";
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\blast_1.sqs";
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\blast1.sqs";
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\hat.sqs";
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\ears.sqf";
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\aperture.sqf";

sleep 0.5;
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\hatnod.sqs";
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\blast1.sqs";
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\damage.sqf";

[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\ring1.sqs";
sleep 0.5;
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\ring2.sqs";

[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\blast2.sqs";
sleep 0.4;
[_xpos, _ypos] exec "addons\nuke\scripts\nuclear\script\blast3.sqs";
[_xpos, _ypos] execVM "addons\nuke\scripts\nuclear\colorcorrection.sqf";

sleep 5;
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\heartbeat.sqf";

sleep 60;

sleep 10;
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\dust.sqf";
[_xpos, _ypos] execvm "addons\nuke\scripts\nuclear\script\snow.sqf";

sleep 41.6;
[_xpos, _ypos] execVM "addons\nuke\scripts\nuclear\colorcorrection_clear.sqf";