///FactionAddWeapon(factionIndex, weaponIndex)

var target = FactionGet(argument0);

if(argument1 >= 0 && argument1 < WeaponSystem.number)
{
    target.weaponStore[target.weaponNumber] = WeaponSystem.store[argument1];
}
else
    DebugLog("FactionAddWeapon: Index out of range;");


