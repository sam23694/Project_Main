///WorldInit(x, y, x2, y2, mapWidth, mapHeight, seed)
if(WorldExists())
{
    show_debug_message("World already exists, deleting");
    with(World)instance_destroy();
    with(City)instance_destroy();
    CitySystemReset();
}

//instantiate
instance_create(argument0, argument1, World);
show_debug_message("World instantiated");

random_set_seed(argument6);
World.seed = argument6;

World.x2 = argument2;
World.y2 = argument3;

World.mapWidth = argument4;
World.mapHeight = argument5;
World.regionNumber = argument4*argument5;

//Fill regionData
for(i = 0; i < World.regionNumber; i++)
{
    WorldCreateRegionData(i, -1, -1, -1, 0, -1);
}

//Fill regionStore with regionData indexes
var t = 0;
for(var i = 0; i < World.mapWidth; i++)
{
    for(var j = 0; j < World.mapHeight; j++)
    {
        World.regionStore[i, j] = t;//Store 0 -> regionNum
        t++;
    }
}

