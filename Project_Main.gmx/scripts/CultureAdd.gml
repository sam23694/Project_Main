///CultureAdd(name, description, BuildingSet);

DebugLog("Adding Culture; "+string(argument0)+" | description: "+string(argument1)+" | buildingSet: "+string(argument2));

var obj = instance_create(0, 0, Culture);

obj.name = argument0;
obj.description = argument1;
obj.buildingSet = argument2;

var index = CultureSystem.number;

CultureSystem.store[index] = obj;

CultureSystem.number++;

DebugLog(string(CultureSystem.store[index].name)+" culture added, index: "+string(index));
