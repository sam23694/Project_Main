///WeaponpartAdd(name, description, effect, isDelivery, isPrimary, isSecondary, ispassive)

var obj = instance_create(0, 0, WeaponPart);

obj.name = argument0;
obj.description = argument1
obj.effect = argument2;
obj.isDelivery = argument3;
obj.isPrimary = argument4;
obj.isSecondary = argument5;
obj.isPassive = argument6;

var index = WeaponSystem.number;

WeaponSystem.store[index] = obj;

WeaponSystem.number++;

DebugLog("Weapon part "+string(WeaponSystem.store[index].name)+" added.");
