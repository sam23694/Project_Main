//OceanNormalise(oceanIndex, iterations, interval)

//Normalise for all regions
var t = 0, w, c;
var ocean, ground;
for(var k = 0; k < argument1; k++)//iterations
{
    for(var i = 0; i < World.mapWidth; i++)//row - reduced by one to avoid border regions
    {
        for(var j = 0; j < World.mapHeight; j++)//column - reduced by one to avoid border regions
        {
                ocean = 0;
                ground = 0;
                //t1   
                if(WorldBoundsCheck(i-1, j-1))
                if(WorldGetRegionBiome_xy(i-1, j-1).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                //t2
                if(WorldBoundsCheck(i, j-1))
                if(WorldGetRegionBiome_xy(i, j-1).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                //t3
                if(WorldBoundsCheck(i+1, j-1))
                if(WorldGetRegionBiome_xy(i+1, j-1).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                        
                //t4
                if(WorldBoundsCheck(i-1, j))      
                if(WorldGetRegionBiome_xy(i-1, j).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                //t5
                if(WorldBoundsCheck(i+1, j))
                if(WorldGetRegionBiome_xy(i+1, j).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                        
                //t6
                if(WorldBoundsCheck(i-1, j+1))                      
                if(WorldGetRegionBiome_xy(i-1, j+1).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                //t7
                if(WorldBoundsCheck(i, j+1))
                if(WorldGetRegionBiome_xy(i, j+1).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                //t8
                if(WorldBoundsCheck(i+1, j+1))
                if(WorldGetRegionBiome_xy(i+1, j+1).ocean)
                    ocean++;
                else
                    if(WorldGetRegionBiome_xy(i, j).ocean)
                        ground++;
                    
                if(i <= 1 || i >= World.mapWidth-1 || j <= 1 || j >= World.mapHeight-1)
                {
                    if(ocean >= 3)
                        WorldSetRegionBiome_xy(i, j, BiomeGet(argument0));
                }
                else
                    {
                    if(ocean >= argument2)
                        WorldSetRegionBiome_xy(i, j, BiomeGet(argument0));
                    
                    if(ground >=7)
                        WorldSetRegionBiome_xy(i, j, WorldGetRegionBiome_xy(i, j+1));
                    }
        }
    }
}

