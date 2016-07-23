#define BiomeNormalise
///BiomeNormalise(iterations, interval, biomeLowerRange, biomeUpperRange)

//interations: the number of times the normalise algorithm repeats, attaining more smooth with higher values
//Interval: between 0 ad 8, the threshold or number of neighbours required to have a higher or lower temperature before a change occurs


//Normalise for all regions
var c;
var high, low, value;
var biomeMin = -1;
var biomeMax = World.biomeCacheSize;
for(var k = 0; k < argument0; k++)//iterations
{
    for(var i = 0; i < World.mapWidth; i++)//row - reduced by one to avoid border regions
    {
        for(var j = 0; j < World.mapHeight; j++)//column - reduced by one to avoid border regions
        {
            high = 0;
            low = 0;
            
            //t1
            if(WorldBoundsCheck(i-1, j-1))
            {
                value = NeighbourTempCheck(i-1, j-1, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;         
            }
            
            //t2
            if(WorldBoundsCheck(i, j-1))
            {
                value = NeighbourTempCheck(i, j-1, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;                    
            }

            //t3
            if(WorldBoundsCheck(i+1, j-1))
            {
                value = NeighbourTempCheck(i+1, j-1, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;
            }
                
            //t4
            if(WorldBoundsCheck(i-1, j))
            {
                value = NeighbourTempCheck(i-1, j, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;                    
            }

            //t5
            if(WorldBoundsCheck(i+1, j))
            {
                value = NeighbourTempCheck(i+1, j, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;                    
            }
                    
            //t6
            if(WorldBoundsCheck(i-1, j+1))
            {
                value = NeighbourTempCheck(i-1, j+1, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;                    
            }

            //t7
            if(WorldBoundsCheck(i, j+1))
            {
                value = NeighbourTempCheck(i, j+1, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;                    
            }

            //t8
            if(WorldBoundsCheck(i+1, j+1))
            {
                value = NeighbourTempCheck(i+1, j+1, i, j);
                if(value == -1) low++;
                else
                    if(value == 1) high++;                    
            }
                    
            c = GetBiomeCacheIndex(WorldGetRegionBiome_xy(i, j));
            if(!WorldBorderRegion(i, j))
            {
                if(low >= argument1 && c > biomeMin)
                    WorldSetRegionBiome_xy(i, j, World.biomeCache[c-1]);
                    
                if(high >= argument1 && c < biomeMax)
                    WorldSetRegionBiome_xy(i, j, World.biomeCache[c+1]);
            }
        }
    }
}

//outlier removal - regardless of interval singular biomes occur using the above algorithm, outliers with 7 of the same different biome surrounding should change
/*
var bindex

for(var i = 0; i < World.mapWidth; i++)
{
    for(var j = 0; j < World.mapHeight; j++)
    {
        if(WorldBoundsCheck(
    }
}*/


#define NeighbourTempCheck
///NeighbourTempCheck(a, b, i, j)

var a = argument0;
var b = argument1;

var i = argument2;
var j = argument3;

if(World.regionData[World.regionStore[a, b], 3].temperature < World.regionData[World.regionStore[i, j], 3].temperature)
    return(-1);
else
    if(World.regionData[World.regionStore[a, b], 3].temperature > World.regionData[World.regionStore[i, j], 3].temperature)
        return(1);
    else
        return(0);


#define WorldBorderRegion
///WorldBorderRegion(i, j)

return(argument0 == 0 || argument0 == World.mapWidth-1 && argument1 == 0 || argument1 == World.mapHeight-1)



#define WorldBoundsCheck
///WorldBoundsCheck(i, j)

return((argument0 >= 0 && argument0 < World.mapWidth) && (argument1 >= 0 && argument1 < World.mapHeight))



#define GetBiomeCacheIndex
///GetBiomeCacheIndex(Biome)

for(var i = 0; i < World.biomeCacheSize; i++)
{
    if(argument0.temperature == World.biomeCache[i].temperature)
        return i;
}
