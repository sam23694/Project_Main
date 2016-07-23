///FactionResSetPowerState(index, powerState)

//value check, must be binary
val = argument1;
if(val < 0 || val < 0.5) val = 0;
if(val > 1 || val >= 0.5) val = 1;

FactionSystem.store[argument0].resource.power_state = val;
