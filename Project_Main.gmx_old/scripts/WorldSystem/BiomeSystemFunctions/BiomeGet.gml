///BiomeGet(index)

if(argument0 >= 0 && argument0 < BiomeSystem.number)
    return BiomeSystem.store[argument0];
else
    {
        show_debug_message("Error: BiomeGet: Index out of range.");
        DebugSystem.errors++;
        return -1;
    }
