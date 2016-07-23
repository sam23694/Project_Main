///WorldGenerateBiomes(biomeType, biomeNormalise, iterations, interval, noise, offset)  
DebugLog("Attempting biome generation: "+string(argument_count)+" arguments.");

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
                DebugWarning("WorldGenerateBiomes: Generation failed, "+string(argument[0])+" is not valid.");
                return -1;
            }
if(argument_count < 4)
{
    DebugWarning("WorldGenerateBiomes: Not enough arguments to perform any action");
}
else
    if(argument[1] == true)
    {
        DebugLog("Normalising biomes...");
        BiomeNormalise(argument[2], argument[3]);
    }
DebugLog("Biome generation complete.");      
