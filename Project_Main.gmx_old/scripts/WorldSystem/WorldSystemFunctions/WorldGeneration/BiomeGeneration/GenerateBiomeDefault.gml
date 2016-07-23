///BiomeGenerateDefault()
for(var i = 0; i < World.mapWidth; i++)
{
    for(var j = 0; j < World.mapHeight; j++)
    {
        WorldSetRegionBiome_xy(i, j, BiomeGet(0));
        if(debug_mode)
        {
            show_debug_message("Region: "+string(i)+", "+string(j)+" biome: "+string(WorldGetRegionBiome_xy(i, j)));
        }
    }
}
show_debug_message("Generated as Default");
