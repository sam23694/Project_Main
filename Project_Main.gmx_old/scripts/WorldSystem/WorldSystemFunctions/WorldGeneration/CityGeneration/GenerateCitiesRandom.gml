///GenerateCitiesRandom(maxCities, borderOffset)
var valid = false;
var rx, ry;
//CitySystem.number = argument0;
show_debug_message("Generating "+string(argument0)+" cities...");
for(i = 0; i < argument0; i++)
{
    do
    {
        rx = random_range(argument1, World.mapWidth-argument1);
        ry = random_range(argument1, World.mapHeight-argument1);
        if(WorldGetRegionBiome_xy(rx, ry).buildable == true
            && !WorldRegionHasCity_xy(rx, ry))//buildable and no existing city
        {
            CityAdd("DefaultName", rx, ry);
            CitySetFactionOwner(i, 0);//Set faction to Neutral
            valid = true;
        }
        else
            valid = false;
    }until(valid == true)
}

