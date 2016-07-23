///BiomeGetStoreByTemp(minTemp, maxTemp)

var count = 0;

for(var i = 0; i < BiomeSystem.number; i++)
{
    if(BiomeSystem.store[i].buildable)
        if(BiomeSystem.store[i].temperature >= argument0 && BiomeSystem.store[i].temperature <= argument1)
            count++;
}

if(count == 0)
{
    show_debug_message("Error: BiomeGetStoreByTemp: No biomes within temperature range.");
    DebugSystem.errors++;
    return -1;
}

//var tempArray;
tempArray[count-1] = 0;

var tmin = argument1;//reversed for calculation
var threshold = argument0-1;
var index;

for(var i = 0; i < count; i++)
{
    for(var j = 0; j < BiomeSystem.number; j++)
    {
        if(BiomeSystem.store[j].buildable)
            if(BiomeSystem.store[j].temperature <= tmin && BiomeSystem.store[j].temperature > threshold)//less then previous minimum an higher then cut off
            {
                tmin = BiomeSystem.store[j].temperature;//new minimum
                index = j;//store index
            }
    }//found lowest temp between threshold and max
    tempArray[i] = index;
    tmin = argument1;//reset min to temp max
    threshold = BiomeSystem.store[index].temperature//bring threshold up to the current lowest
}

return tempArray;
