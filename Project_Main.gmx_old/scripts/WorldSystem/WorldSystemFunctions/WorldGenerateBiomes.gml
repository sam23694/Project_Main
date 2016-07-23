///WorldGenerateBiomes(biomeType, biomeNormalise, iterations, interval, noise, offset)  
show_debug_message("Attempting biome generation: "+string(argument_count)+" arguments.");

World.biomeType = argument[0];

if(argument[0] == 0)
    GenerateBiomeDefault();
else
    if(argument[0] == 1) 
        GenerateBiomeRandom();
    else
        if(argument[0] == 2 && argument_count >= 4)
            GenerateBiomeStandard(argument[4], argument[5]);//upper and lower range needs to init elsewhere
        else
            {
                show_debug_message("Warning: Generation failed, "+string(argument[0])+" is not valid.");
                DebugSystem.warnings++;
                return -1;
            }
if(argument_count < 4)
{
    show_debug_message("Warning:WorldGenerateBiomes: Not enough arguments to perform any action");
    DebugSystem.warnings++;
}
else
    if(argument[1] == true)
    {
        show_debug_message("Normalising biomes...");
        BiomeNormalise(argument[2], argument[3]);
    }
show_debug_message("Biome generation complete.");      
