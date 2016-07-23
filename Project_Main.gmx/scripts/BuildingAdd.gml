///BuildingAdd(name, description, maxHealth, cellWidth, graphicalCellWidth, popMod, prodMod, sciMod, powMod)
//Not to be confused with CityBuildingAdd
//This script adds a new building to BuildingSystem for later reference

var obj = instance_create(0, 0, Building);

obj.name = argument0;
obj.description = argument1;
obj.maxHealth = argument2;
obj.cellWidth = argument3;
obj.graphicalCellWidth = argument4;
obj.resMod.populationMod = argument5;
obj.resMod.productionMod = argument5;
obj.resMod.scienceMod = argument5;
obj.resMod.powerMod = argument5;

index = BuildingSystem.number;

BuildingSystem.store[index] = obj;

BuildingSystem.number++;

DebugLog("Building "+string(BuildingSystem.store[index].name)+" added. "+string(BuildingSystem.number)+" total buildings.");
