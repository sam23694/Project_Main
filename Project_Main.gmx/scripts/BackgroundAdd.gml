///BackgroundAdd(foreground, midground, background)

var obj = instance_create(0, 0, Background);

obj.foreground = argument0;
obj.midground = argument1;
obj.background = argument2;

var index = BackgroundSystem.number;

BackgroundSystem.store[index] = obj;

BackgroundSystem.number++;

DebugLog("Background "+string(index)+" added.");
