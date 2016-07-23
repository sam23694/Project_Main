///TechGet(index)

if(argument0 >= 0 && argument0 < TechSystem.number)
{
    return TechSystem.store[argument0];
}
else
    DebugLog("TechGet: Index out of range.");
