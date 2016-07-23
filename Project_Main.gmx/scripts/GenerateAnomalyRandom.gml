///GenerateAnomalyRandom(maxAnomalies, borderOffset)
var valid = false;
var rx, ry;
var aIndex = 0;

DebugLog("Generating "+string(argument0)+" anomalies...");
for(i = 0; i < argument0; i++)
{
    do
    {
        rx = round(random_range(argument1, World.mapWidth-argument1));
        ry = round(random_range(argument1, World.mapHeight-argument1));
        if(WorldGetRegionBiome_xy(rx, ry).buildable == true
            && !WorldRegionHasAnomaly_xy(rx, ry))//buildable and no existing anomaly
        {
            AnomalyInsertRandom(rx, ry);
            valid = true;
        }
        else
            valid = false;
    }until(valid == true)
}

