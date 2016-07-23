///AnomalyList(anomalyNumber)
//CHANGE THISE WHOLE THING TO MATCH THE BIOME SYSTEM
anomalyArray[argument0] = 0;
i = 0;

//Default anomaly
if(i < argument0)
{
    anomalyArray[i] = instance_create(0,0, Anomaly);
    //All variables remain default
    i++;
}

/*
//example anomaly
if(i < argument0)
{
    AnomalyArray[i] = instance_create(0,0, Anomaly);
    AnomalyArray[i].name = "example"
    AnomalyArray[i].tileMod.populationMod = 0.0;
    AnomalyArray[i].tileMod.productionMod = 0.0;
    AnomalyArray[i].tileMod.scienceMod = 0.0;
    AnomalyArray[i].tileMod.powerMod = 0.0;
    i++;
}
*/
return anomalyArray;
