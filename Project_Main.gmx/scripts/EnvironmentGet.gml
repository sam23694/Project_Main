///EnvironmentGet(index)

if(argument0 >= 0 && argument0 < EnvironmentSystem.number)
{
    return EnvironmentSystem.store[argument0];
}
else
    DebugWarning("EnvironmentSystemGet: Index out of range.");
