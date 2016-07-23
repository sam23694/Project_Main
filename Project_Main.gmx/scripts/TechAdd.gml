///TechAdd(name, description, popMod, prodMod, sciMod, powMod)

var obj = instance_create(0, 0, Tech);

obj.name = argument0;
obj.description = argument1;
obj.resMod.populationMod = argument2;
obj.resMod.productionMod = argument3;
obj.resMod.scienceMod = argument4;
obj.resMod.powerMod = argument5;

var index = TechSystem.number;

TechSystem.store[index] = obj;
TechSystem.number++;

DebugLog("Tech added: "+string(TechSystem.store[index].name));
