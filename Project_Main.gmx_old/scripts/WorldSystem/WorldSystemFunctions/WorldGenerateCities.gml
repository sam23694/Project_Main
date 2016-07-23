///WorldGenerateCities(cityType, maxCities, borderOffset, minDistance)
show_debug_message("Attempting city generation...");

World.cityType = argument0;
World.maxCities = argument1;

if(argument0 == 0)
    GenerateCitiesRandom(argument1, argument2)//Update Ocean Index
else
    if(argument0 == 1)
        GenerateCitiesSpaced(argument1, argument2, argument3);
    else
        {
            show_debug_message("Warning: Generation failed. "+string(argument0)+" is not valid.");
            DebugSystem.warnings++;
            return -1;
        }
        
show_debug_message("City Generation complete.");
