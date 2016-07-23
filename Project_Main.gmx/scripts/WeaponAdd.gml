///WeaponAdd(name, delivery, primary, secondary, passive, creator)

//This function assumes each weapon part has been previously validated, otherwise parts can be added to incorrect categories, ie: a delivery only part as a primary.

var obj = instance_create(0, 0, Weapon);

obj.name = argument0;
obj.delivery = argument1;
obj.primary = argument2;
obj.secondary = argument3;
obj.passive = argument4;
obj.creator = argument5;

var index = WeaponSystem.number;

WeaponSystem.store[index] = obj;

WeaponSystem.number++;

DebugLog("Weapon created: "+string(obj.name)+" | delivery: "+string(obj.delivery)
                                            +" | primary: "+string(obj.primary)
                                            +" | secondary: "+string(obj.delivery)
                                            +" | passive: "+string(obj.delivery)
                                            +" | creator: "+string(obj.delivery));
