///EnvironmentAdd(color1, color2, color3, color4)

var obj = instance_create(0, 0, Environment);

obj.sky_color1 = argument0;
obj.sky_color2 = argument1;
obj.sky_color3 = argument2;
obj.sky_color4 = argument3;

var index = EnvironmentSystem.number;

EnvironmentSystem.store[index] = obj;

EnvironmentSystem.number++;

DebugLog("Environment "+string(index)+" added.");

