///GenerateStandard(maxCities, biomeLowerRange, biomeUpperRange)
for(i = 0; i < World.mapWidth; i++)
{
    for(j = 0; j < World.mapHeight; j++)
    {
        
        //excludes default biome at index 0 and ocean at index 1
        biomevar = random_range(2, BiomeSystem.biomeNumber);
        World.regionData[World.regionStore[i, j], 3] = BiomeSystem.biomeStore[biomevar];
        if(debug_mode)
        {
            show_debug_message("Region: "+string(i)+", "+string(j));
            show_debug_message("-biome: "+string(World.regionData[World.regionStore[i, j], 3].biomeName));
        }
        
        
    }
}
BiomeNormalise(3, 6, argument1, argument2);
World.worldType = 2;
show_debug_message("Generated as Standard");
