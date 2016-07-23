///WorldGenerateAnomaly(anomType, maxAnomalies, borderOffset)
DebugLog("Attempting anomaly generation...");

World.anomalyType = argument0;
World.maxAnomalies = argument1;

if(argument0 == 0)
    GenerateAnomalyRandom(argument1, argument2)//Update Ocean Index
else
    {
        DebugWarning("WorldGenerateAnomaly: Generation failed. "+string(argument0)+" is not valid.");
        return -1;
    }
        
DebugLog("Anomaly Generation complete.");
