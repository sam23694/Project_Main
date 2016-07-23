///FactionAdd(name, description, color1, color2, flag, cultureIndex)

show_debug_message("Adding Faction "+string(argument0)
                    +" | description: "+string(argument1)
                    +" | color1: "+string(argument2)
                    +" | color2: "+string(argument3)
                    +" | flag: "+string(argument4)
                    +" | cultureIndex: "+string(argument5));
                    
var obj = instance_create(0, 0, Faction);

obj.name = argument0;
obj.description = argument1;
obj.color1 = argument2;
obj.color2 = argument3;
obj.flag = argument4;
obj.culture = argument5;

index = FactionSystem.number;

FactionSystem.store[index] = obj;

FactionSystem.number++;

show_debug_message(string(FactionSystem.store[index].name)+" Faction added.");
