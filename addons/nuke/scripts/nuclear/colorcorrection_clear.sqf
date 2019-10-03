//////////////////////////////////////////////////////////////
// MADE BY MOERDERHOSCHI
// EDITED VERSION OF THE ARMA2 ORIGINAL SCRIPT
// ARMED-ASSAULT.DE
// 06.11.2013
//////////////////////////////////////////////////////////////

"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5, 0.5, 0.5, 0.0], [0.5, 0.5, 0.5, 1.0], [0.5, 0.5, 0.5, 0.0]];
"colorCorrections" ppEffectCommit 0;

"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5, 0.5, 0.5, 0.0], [0.5, 0.5, 0.5, 1.0], [0.5, 0.5, 0.5, 0.0]];
"colorCorrections" ppEffectCommit 0;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.5, 0.5, 0.5, 0.0], [0.5, 0.5, 0.5, 1.0], [0.9, 0.9, 0.9, 0.0]];
"colorCorrections" ppEffectCommit 0;
"colorCorrections" ppEffectEnable true;
"filmGrain" ppEffectEnable false;
"filmGrain" ppEffectAdjust [0.0, 0, 0, 0.0, 0, false];
"filmGrain" ppEffectCommit 0;
ppEffectDestroy ["colorCorrections","filmGrain"];