///BiomeGenerateRandom()
var biomevar;

if(World.biomeCacheSize == 0)
{
    DebugWarning("BiomeGenerateRandom: biome cache was not defined, using all biomes.");
    WorldBuildCache(0, BiomeSystem.number);
}

for(var i = 0; i < World.mapWidth; i++)
{
    for(var j = 0; j < World.mapHeight; j++)
    {
        //excludes default biome at index 0
        biomevar = random_range(0, World.biomeCacheSize);
        WorldSetRegionBiome_xy(i, j,  World.biomeCache[biomevar]);
        if(debug_mode)
        {
            DebugLog("Region: "+string(i)+", "+string(j)+"biome: "+string(WorldGetRegionBiome_xy(i, j)));
        }
    }
}

DebugLog("Generated as Random");
