

private ["_MaxIntensity","_Boost","_Intensity","_looptime", "_plane","_emitters"];

_MaxIntensity = 1;
_Boost = 0.6;
_Intensity = 0.4;
_maxspeed = 1450;
_plane = _this;
_fueldrag = 3500;

_looptime = 0.1;
_runtime = 200;

_FX_ab_l = "#particlesource" createVehicle (getpos _plane);
_FX_ab_r = "#particlesource" createVehicle (getpos _plane);
_emitters = [_FX_ab_l, _FX_ab_r]; 
{_x setParticleRandom [0.05,[0.05,0.05,0.05],[0.05,0.05,0.05],0,0.8,[0.1,0.1,0.1,0],0,0]} foreach _emitters; 
{_x setDropInterval 0} foreach _emitters; 

while {(alive _plane) and (_plane animationphase "ab_switch" >= 0.1)} do {
if (isengineon _plane) then 
{
if (_Intensity < _MaxIntensity) then {_Intensity = _Intensity + 0.1*(15*_looptime)};
if ((speed _plane) < _maxspeed) then {_plane setVelocity [(velocity _plane select 0)+((vectordir _plane) select 0)*((_Boost*_Intensity/2)*(15*_looptime)),(velocity _plane select 1)+((vectordir _plane) select 1)*((_Boost*_Intensity/2)*(15*_looptime)),(velocity _plane select 2)+((vectordir _plane) select 2)*((_Boost*_Intensity/2)*(15*_looptime))]};
if (fuel _plane > 0) then {_plane setFuel ((fuel _plane)-((1/_fueldrag)*(3*_looptime)))};
} 
else {if (_Intensity > 0) then {_Intensity = _Intensity - 0.2*(15*_looptime)}};

_plane animate["engine_glow",0];

_FX_ab_l setParticleParams [["\A3\data_f\cl_exp",1,0,1,0],"","Billboard",1,0.07,_plane selectionposition "ABpointL",[(velocity _this select 0) - ((vectordir _this) select 0)*30,(velocity _this select 1) - ((vectordir _this) select 1)*30,(velocity _this select 2) - ((vectordir _this) select 2)*30],1,1.2745,1,0,[1,1],[[0.040,0.100,0.900,1],[0.200,0.200,0.800,1],[0.500,0.200,0.000,1],[0.000,0.000,0.000,1]],[0],0,0,"","",_this, 0, true, 0.5, [[100,100,100,1]]];

_FX_ab_r setParticleParams [["\A3\data_f\cl_exp",1,0,1,0],"","Billboard",1,0.07,_plane selectionposition "ABpointR",[(velocity _this select 0) - ((vectordir _this) select 0)*30,(velocity _this select 1) - ((vectordir _this) select 1)*30,(velocity _this select 2) - ((vectordir _this) select 2)*30],1,1.2745,1,0,[1,1],[[0.040,0.100,0.900,1],[0.200,0.200,0.800,1],[0.500,0.200,0.000,1],[0.000,0.000,0.000,1]],[0],0,0,"","",_this, 0, true, 0.5, [[100,100,100,1]]];




{_x setpos (getpos _this)} foreach _emitters; 
if (_Intensity > 0) then {{_x setDropInterval 0.001} foreach _emitters} else {{_x setDropInterval 0} foreach _emitters}; 
	
sleep 0.05;
_runtime = _runtime - 1;
};

_plane animate["engine_glow",1];
deleteVehicle _FX_ab_l;
deleteVehicle _FX_ab_r;


