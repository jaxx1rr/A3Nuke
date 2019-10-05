_nukeobj = _this select 0;
_radius = _this select 1;
_time = _this select 2;

if (_time >0) then {
	sleep _time;
};
nuke = "Land_HelipadEmpty_F" createVehicle (getPosASL _nukeobj);
[nuke, _radius] remoteExec  ["NukeTriggerServer", 2, false];
