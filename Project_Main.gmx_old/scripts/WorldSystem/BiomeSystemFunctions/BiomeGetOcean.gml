///BiomeGetOcean(randomIndex)

//randomIndex: boolean value to signify if a random ocean index or the first ocean index is returned
//Return: an ocean biome index

var oceanIndex = 0;
var count = 0;
var tempArray;

var ran;

for(var i = 0; i < BiomeSystem.number; i++)
{
    if(BiomeSystem.store[i].ocean == true)
    {
        tempArray[count] = i;
        count++;
    }
}

if(argument0 == false && count > 0)//return first index, if count is zero there is no ocean biome
{
    return tempArray[0];
}
else
    if(count > 0)
    {
        ran = random_range(0, count-1);
        return tempArray[ran];
    }
    else
        {
            show_debug_message("Error: BiomeGetOcean: No ocean biome.");
            DebugSystem.errors++;
        }
return -1;
