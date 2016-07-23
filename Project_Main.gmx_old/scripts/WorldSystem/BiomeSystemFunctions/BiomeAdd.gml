///BiomeAdd(name, description, backgroundIndex, buildable, ocean, temperature, overlayColor, populationMod, productionMod, scienceMod, powerMod)

show_debug_message("Adding biome; "+string(argument0)
                    +" | background index: "+string(argument2)
                    +" | buildable: "+string(argument3)
                    +" | ocean: "+string(argument4)
                    +" | temperature: "+string(argument5)
                    +" | overlay color: "+string(argument6)
                    +" | pop mod: "+string(argument7)
                    +" | prod Mod: "+string(argument8)
                    +" | scie Mod: "+string(argument9)
                    +" | pow Mod: "+string(argument10));

var obj = instance_create(0, 0, Biome);


obj.name = argument0;
obj.description = argument1
obj.backgroundIndex = argument2;
obj.buildable = argument3;
obj.ocean = argument4;
obj.temperature = argument5;
obj.overlayColor = argument6;
obj.resMod.populationMod = argument7;
obj.resMod.productionMod = argument8;
obj.resMod.scienceMod = argument9;
obj.resMod.powerMod = argument10;

var index = BiomeSystem.number;

BiomeSystem.store[index] = obj;

BiomeSystem.number++;

show_debug_message(string(BiomeSystem.store[index].name)+" biome added.");   
