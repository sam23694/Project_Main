///BiomeGet(index)

if(argument0 >= 0 && argument0 < BiomeSystem.number)
    return BiomeSystem.store[argument0];
else
    {
        DebugError("BiomeGet: Index out of range.");
        return -1;
    }
