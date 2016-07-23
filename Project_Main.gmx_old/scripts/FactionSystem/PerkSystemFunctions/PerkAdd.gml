///PerkAdd(name, description, propMod, prodMod, sciMod, powerMod)

show_debug_message("Adding Perk; "+string(argument0)+" | description: "+string(argument1)+" | populationMod: "+string(argument2)+" | productionMod: "+string(argument3)+" | scienceMod: "+string(argument4)+" | powerMod: "+string(argument5));

var obj = instance_create(0, 0, Perk);

obj.name = argument0;
obj.description = argument1;
obj.resMod.populationMod = argument2;
obj.resMod.productionMod = argument3;
obj.resMod.scienceMod = argument4;
obj.resMod.powerMod = argument5;

var index = PerkSystem.number;

PerkSystem.store[index] = obj;

show_debug_message("Added "+string(PerkSystem.store[index].name)+" Perk.");
