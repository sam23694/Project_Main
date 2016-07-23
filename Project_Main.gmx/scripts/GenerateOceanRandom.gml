///GenerateOceanRandom(oceanIndex, percent)

var i, j;
var percent = argument1;
if(percent > 1)
    percent = 1;
if(percent < 0)
    percent = 0;

var ocean = (World.mapWidth*World.mapHeight)*percent;
do
{
    i = random_range(0, World.mapWidth-1);
    j = random_range(0, World.mapHeight-1);
    if(!WorldGetRegionBiome_xy(i, j).ocean)
    {
        WorldSetRegionBiome_xy(i, j, BiomeGet(argument0));
        ocean--;
    }
}until(ocean == 0);
