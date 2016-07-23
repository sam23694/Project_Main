///WorldGenerateOceans(oceanIndex, OceanNormalise, iterations, interval, oceanNum, coverage, smooth, borderOffset)
DebugLog("Attempting ocean generation: "+string(argument_count)+" arguments.");

World.oceanType = argument[0];

var oceanIndex = BiomeGetOcean(false);
if(argument[0] == 0 && argument_count >= 6) 
    GenerateOceanRandom(oceanIndex, argument[5])//oceanIndex needs init elsewhere//random
else
    if(argument[0] == 1 && argument_count >= 7)
        GenerateOceanPatch(oceanIndex, argument[4], argument[5], argument[6]);
    else
        if(argument[0] == 2 && argument_count >= 8)
            GenerateOceanPatchBorder(oceanIndex, argument[4], argument[5], argument[6], argument[7]);
        else
            {
                DebugWarning("WorldGenerateOceans: generation failed, "+string(argument[1])+" is not valid.");
                return -1;
            }
if(argument_count < 4)
{
    DebugWarning("WorldGenerateOceans: Not enough arguments to perform any action.");
    DebugSystem.warnings++;
}
else
{
    if(argument[1] == true)
    {
        DebugLog("Normalising oceans...");
        OceanNormalise(oceanIndex, argument[2], argument[3]);//Ocean Index needs updating
    }
}       
DebugLog("Ocean generation complete.");
