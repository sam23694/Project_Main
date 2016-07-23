///WorldBuildCache(minIndex, maxIndex) 
//only includes buildable biomes

var iMin, iMax;
var diff; 

//check bounds
if(argument0 < 0)
    iMin = 0;
else
    if(argument0 >= BiomeSystem.number)
        iMin = BiomeSystem.number-1;

if(argument1 < 0)
    iMax = 0;
else
    if(argument1 >= BiomeSystem.number)
        iMax = BiomeSystem.number-1;
        
//build cache

for(var i = argument0; i < argument1; i++)
{
    if(BiomeGet(i).buildable)
    {
        World.biomeCache[World.biomeCacheSize] = BiomeGet(i);
        World.biomeCacheSize++;
    }
}
