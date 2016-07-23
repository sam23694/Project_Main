///FactionAdd(name, description, factionColor, flag, cultureIndex)

DebugLog("Adding Faction "+string(argument0)
                    +" | description: "+string(argument1)
                    +" | color1: "+string(argument2)
                    +" | flag: "+string(argument3)
                    +" | cultureIndex: "+string(argument4));
                    
var obj = instance_create(0, 0, Faction);

obj.name = argument0;
obj.description = argument1;
obj.factionColor = argument2;
obj.flag = argument3;
obj.culture = argument4;

var index = FactionSystem.number;

FactionSystem.store[index] = obj;

FactionSystem.number++;

DebugLog(string(FactionSystem.store[index].name)+" Faction added.");
