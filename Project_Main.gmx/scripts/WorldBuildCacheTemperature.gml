///WorldBuildCacheTemperature(minTemp, maxTemp)
//only includes buildable biomes

var tLow = argument0-0.001;
var tHigh = argument1+0.001;

var c = -1;

for(var i = 0; i < BiomeSystem.number; i++)
{
    for(var j = 0; j < BiomeSystem.number; j++)
    {
        if(BiomeGet(j).temperature > tLow && BiomeGet(j).temperature < tHigh)
        {
            c = j;
            tHigh = BiomeGet(j).temperature;
        }
    }
    if(c != -1)
    {
        if(BiomeGet(c).buildable && c != -1)
        {
            World.biomeCache[World.biomeCacheSize] = BiomeGet(c);
            World.biomeCacheSize++;
        }
    }
    tLow = tHigh;
    tHigh = argument1+0.001;
    c = -1;
}

