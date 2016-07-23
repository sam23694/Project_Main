///BackgroundGet(index)

if(argument0 >= 0 && argument0 < BackgroundSystem.number)
{
    return BackgroundSystem.store[argument0];
}
else
    DebugWarning("BackgroundGet: Index out of range.");
