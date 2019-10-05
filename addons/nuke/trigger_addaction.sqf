_target = _this select 0;
_caller = _this select 1;
_actionId = _this select 2;

_nukeobj = _this select 3 select 0;
_radius = _this select 3 select 1;
_time = _this select 3 select 2;

//remove menuitem once triggered
_target removeAction _actionId;

if (alive _target) then {
	if (_time > 0) then {
		for [{ _i = _time }, { _i > 0 }, { _i = _i - 1 }] do { 
			hintsilent parseText format["<t font='TahomaB' color='#ffaa00'>Tempest Device detonation in %1 seconds.</t>", _i];
			sleep 1;
		}; 
		hintsilent parseText "<t font='TahomaB' color='#ff0000'>Tempest Device detonated.</t>";
		nuke = "Land_HelipadEmpty_F" createVehicle (getPosASL _nukeobj);
		[nuke, _radius] remoteExec  ["NukeTriggerServer", 2, false];
	};
} else {
	hintsilent "Nuke was disabled by damage!";
};

