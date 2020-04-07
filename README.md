# A3Nuke
Arma 3 Nuke mission addon (no mods needed) - MULTIPLAYER WORKS !

INSTALLATION

1. add the addons folder to your mission, so should be (Exile.Namalsk\addons\nuke)

2. edit description.ext and look for "class CfgSounds" 
  -if its not there just add 
```
#include "addons\nuke\config\sound.hpp"
```
  -if its there add the contents of sound.hpp to it (without the classname ofc)
  
  
3. also in description.ext look for class CfgRemoteExec and in class Functions add
```
class NukeTriggerServer			{ allowedTargets=2; }; 
class NukeTriggerClient			{ allowedTargets=1; }; 
```
 

4. edit init.sqf and add
```
[] execVM "addons\nuke\nuke_init.sqf";
```

5. optionally edit nuke_init.sqf and change the way its triggered (currently Tempest Device trucks are nukes - Note: the trigger option will not appear on the vehicle upon spawn or purchase, only on server restart.. this is WIP..)


[![A3Nuke Test](https://img.youtube.com/vi/eZEn2WTFvhw/0.jpg)](https://www.youtube.com/watch?v=eZEn2WTFvhw)


