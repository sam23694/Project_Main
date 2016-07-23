///BiomeAdd(name, description, buildable, ocean, temperature, overlayColor, populationMod, productionMod, scienceMod, powerMod)

DebugLog("Adding biome; "+string(argument0)
                    +" | description: "+string(argument1)
                    +" | buildable: "+string(argument2)
                    +" | ocean: "+string(argument3)
                    +" | temperature: "+string(argument4)
                    +" | overlay color: "+string(argument5)
                    +" | pop mod: "+string(argument6)
                    +" | prod Mod: "+string(argument7)
                    +" | scie Mod: "+string(argument8)
                    +" | pow Mod: "+string(argument9));

var obj = instance_create(0, 0, Biome);


obj.name = argument0;
obj.description = argument1
obj.buildable = argument2;
obj.ocean = argument3;
obj.temperature = argument4;
obj.overlayColor = argument5;
obj.resMod.populationMod = argument6;
obj.resMod.productionMod = argument7;
obj.resMod.scienceMod = argument8;
obj.resMod.powerMod = argument9;

var index = BiomeSystem.number;

BiomeSystem.store[index] = obj;

BiomeSystem.number++;

DebugLog(string(BiomeSystem.store[index].name)+" biome added.");   
