///GenerateBiomeStandard(noise, offset)

/*
    Calculates the distance of each region from the equator(mapHeight/2). The max distance is divided by the number of biomes
    to calculate the height each band of biome has. The distance of the region is divided by this interval to determine the biome
    index that the region will have. A noise varible is added to avoid perfect edges and an offset is added to reduce or expand the
    inner(close to equator) biome band heights.
*/
if(World.biomeCacheSize == 0)
{
    show_debug_message("Warning: biome cache was not defined, using all biomes.");
    DebugSystem.warnings++;
    WorldBuildCache(0, BiomeSystem.number);
}
var divisor = World.biomeCacheSize;
var equator = round((World.mapHeight-1)/2);//Get equator
var interval = floor(equator/World.biomeCacheSize);//((argument3+1)-argument2);//equator/BiomeSystem.storeSizeBuildable;//Number of regions for each biome band from the equator
var noise = argument0;//Random noise limit
var offset = argument1;//Offset from the equator
var distance, index;
var i, j;

for(i = 0; i < World.mapWidth; i++)
{
    for(j = 0; j < World.mapHeight; j++)
    {
        distance = equator - j;//region distance from the equator
        if(distance < 0) 
            distance = -1*distance;//regions with j greater then equator; their negative distance made positive
        
        distance += offset;//add offset
        
        index = (distance/interval)+random_range(-noise, noise);;//determine with biome band the region is in
        index = floor(index);//round to integer
        index = World.biomeCacheSize - index;//(BiomeSystem.storeSizeBuildable) - index;//biome distance is equator to poles, whereas biomes are stored cold to warm
                                                            //the index needs to be reversed to warm-cold
        //index += random_range(0, noise);//add random noise
        
        
        if(index < 0) index = 0;//Adjust index if out of bounds
        if(index >= World.biomeCacheSize) index = World.biomeCacheSize-1;
        
        WorldSetRegionBiome_xy(i, j, World.biomeCache[index]);//set biome
        show_debug_message("Region "+string(i)+", "+string(j)+" biome set to "+string(WorldGetRegionBiome_xy(i, j).name));
    }
}

show_debug_message("Generated as Standard");
