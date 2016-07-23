///CityGet(index)

if(argument0 >= 0 && argument0 < CitySystem.number)
    return CitySystem.store[argument0];
else
    {
        DebugError("CityGet: Index out of range.");
        return -1;
    }

