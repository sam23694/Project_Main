///AnomalyAdd(name, descriptionString, populationMod, productionMod, scienceMod, powerMod)

show_debug_message("Adding anomaly; "+string(argument0)+" | "+string(argument1)+" | "+string(argument2)+" | "+string(argument3)+" | "+string(argument4)+" | "+string(argument5));

var i = AnomalySystem.number;

AnomalySystem.store[i] = instance_create(0, 0, Anomaly);
AnomalySystem.store[i].name = argument0;
AnomalySystem.store[i].descriptionString = argument1;
AnomalySystem.store[i].resMod.populationMod = argument2;
AnomalySystem.store[i].resMod.productionMod = argument3;
AnomalySystem.store[i].resMod.scienceMod = argument4;
AnomalySystem.store[i].resMod.powerMod = argument5;

AnomalySystem.number++;

show_debug_message(string(argument0)+" anomaly added.");
