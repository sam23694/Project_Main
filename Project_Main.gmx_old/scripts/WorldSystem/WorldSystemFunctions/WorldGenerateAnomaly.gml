///WorldGenerateAnomaly(anomType, maxAnomalies, borderOffset)
show_debug_message("Attempting anomaly generation...");

World.anomalyType = argument0;
World.maxAnomalies = argument1;

if(argument0 == 0)
    GenerateAnomalyRandom(argument1, argument2)//Update Ocean Index
else
    {
        show_debug_message("Warning: Generation failed. "+string(argument0)+" is not valid.");
        DebugSystem.warnings++;
        return -1;
    }
        
show_debug_message("Anomaly Generation complete.");
