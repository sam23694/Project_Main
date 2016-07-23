///BiomeGet(name)

for(var i = 0; i < BiomeSystem.number; i++)
{
    if(BiomeSystem.store[i].name == argument0)
        return BiomeSystem.store[i];
}

return -1;//return error if not found
