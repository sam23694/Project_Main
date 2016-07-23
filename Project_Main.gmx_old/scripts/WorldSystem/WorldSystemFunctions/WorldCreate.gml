///WorldCreate(x, y, x2, y2, mapWidth, mapHeight, worldType, maxCities)
if(instance_number(World) > 0)
{
    show_debug_message("World already exists, deleting");
    with(World)instance_destroy();
    with(City)instance_destroy();
}

//instantiate
instance_create(argument0, argument1, World);
show_debug_message("World instantiated");

World.x2 = argument2;
World.y2 = argument3;

World.mapWidth = argument4;
World.mapHeight = argument5;
World.regionNumber = argument4*argument5;
World.worldType = argument6;
World.maxCities = argument7;

//Fill regionData
for(i = 0; i < World.regionNumber; i++)
{
    World.regionData[i, 0] = -1;//capital city
    World.regionData[i, 1] = -1;//extCity1
    World.regionData[i, 2] = -1;//extCity2
    World.regionData[i, 3] = 0;//biome
    World.regionData[i, 4] = 0;//natural anomaly
}

//Fill regionStore with regionData indexes
var t = 0;
for(i = 0; i < World.mapWidth; i++)
{
    for(j = 0; j < World.mapHeight; j++)
    {
        World.regionStore[i, j] = t;//Store 0 -> regionNum
        t++;
    }
}

//Generate world
WorldGenerate(argument6, argument7);
