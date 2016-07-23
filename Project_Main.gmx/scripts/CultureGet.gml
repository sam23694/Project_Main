///CultureGet(index)

if(argument0 >= 0 && argument0 < CultureSystem.number)
    return CultureSystem.store[argument0];
else
    {
        DebugError("CultureGet: Index out of range.");
        return -1;
    }
