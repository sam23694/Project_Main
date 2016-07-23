///GenerateOceanPatch(oceanIndex, oceanNum, coverage, smooth)
var totalOcean = (World.mapWidth*World.mapHeight)*argument2;//total ocean coverage

var regPerOcean = totalOcean/argument1;//regions per ocean

var allowedDistance = sqrt(regPerOcean);//ocean radius or allowed distance to convert to ocean

var allowedStrikes = 5500;

DebugLog("Oceans: "+string(argument1)+" Coverage: "+string(argument2)+" OceanRegions: "+string(totalOcean)+" Regions per Ocean: "+string(regPerOcean));

var ox, oy, oceanRegions, strike, ex, ey, dx, dy, dis;

for(var i = 0; i < argument1; i++)//for each ocean
{
    ox = random_range(0, World.mapWidth);//ocean x position
    oy = random_range(0, World.mapHeight);//ocean y positon
    oceanRegions = regPerOcean;//ocean regions left to use
    
    WorldSetRegionBiome_xy(ox, oy, BiomeGet(argument0));//make ocean center
    strike = 0;//the number of strikes until loop break, used to avoid infinite looping
    do
    {
        //select a random region anywhere
        ex = random_range(0, World.mapWidth);
        ey = random_range(0, World.mapHeight);
        
        //if not ocean
        if(!WorldGetRegionBiome_xy(ex, ey).ocean)
        {        
            dx = ex - ox;//calculate x distance to random region from ocean x
            dy = ey - oy;//calculate y distance to random region from ocean y
            //make negative positive
            if(dx < 0) dx *= -1;
            if(dy < 0) dy *= -1;
            
            //get grid distance value, number of cells to traverse to reach without diagonal
            dis = (dx + dy);
            //distance less then or equal to allowed distance
            if(dis <= allowedDistance+random_range(0, argument3))
            {
                //make random region ocean
                WorldSetRegionBiome_xy(ex, ey, BiomeGet(argument0));
                oceanRegions--;//reduce remaining regions by one
            }
            else
                strike++;//failed to make an ocean tile, increase strike
        }
        
    }until(oceanRegions == 0 || strike > allowedStrikes);//loop until the ocean is complete or allowed strikes exceeded
}
