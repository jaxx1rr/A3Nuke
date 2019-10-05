NukeTriggerServer = {
	private ["_object", "_radius", "_xpos", "_ypos"];
	_object = _this select 0;
	_radius = _this select 1;
	_xpos = getpos _object select 0;
	_ypos = getpos _object select 1;
	[_object, _radius] remoteExec  ["NukeTriggerClient", -2, false];
};
