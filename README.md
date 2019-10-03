# A3Nuke
Arma 3 Nuke mission addon (no mods needed)

INSTALLATION

1. add the addons folder to your mission, so should be (Exile.Namalsk\addons\nuke)

2. edit description.ext and look for "class CfgSounds" 
  -if its not there just add #include "addons\nuke\config\sound.hpp"
  -if its there add the contents of sound.hpp to it (without the classname ofc)

3. edit init.sqf and add this
radiationtime = 360;
damage_enabled = true;
radiation_radius = 1400;
main_nuclear_blow_speed = 170;
main_nuclear_half_life = 10 * 30;
main_nuclear_radiation_damage = 0.02;
main_nuclear_car_armour = 2 / 4;


4. now to trigger it theres only this manual option for now (add at end of init.sqf) :
sleep 60; // time until detonation
nukepos = "Land_HelipadEmpty_F" createVehicle [14914,16535,10]; //coordinates are altis airport
[nukepos] execVM "addons\nuke\scripts\nuclear\detonation.sqf";


<iframe width="560" height="315" src="https://www.youtube.com/embed/eZEn2WTFvhw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
