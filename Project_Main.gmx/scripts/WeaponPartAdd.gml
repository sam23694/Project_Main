///WeaponpartAdd(name, description, effect, isDelivery, isPrimary, isSecondary, isPassive, prodCost)

var obj = instance_create(0, 0, WeaponPart);

obj.name = argument0;
obj.description = argument1
obj.effect = argument2;
obj.isDelivery = argument3;
obj.isPrimary = argument4;
obj.isSecondary = argument5;
obj.isPassive = argument6;
obj.prodCost = argument7;

var index = WeaponPartSystem.number;

WeaponPartSystem.store[index] = obj;

WeaponPartSystem.number++;

DebugLog("Weapon part "+string(WeaponPartSystem.store[index].name)+" added.");
