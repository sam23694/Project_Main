///WorldGenerateCities(cityType, maxCities, borderOffset, minDistance)
DebugLog("Attempting city generation...");

World.cityType = argument0;
World.maxCities = argument1;

if(argument0 == 0)
    GenerateCitiesRandom(argument1, argument2)//Update Ocean Index
else
    if(argument0 == 1)
        GenerateCitiesSpaced(argument1, argument2, argument3);
    else
        {
            DebugWarning("WorldGenerateCities: Generation failed. "+string(argument0)+" is not valid.");
            return -1;
        }
        
DebugLog("City Generation complete.");
