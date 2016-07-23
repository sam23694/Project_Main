///GenerateAnomaliesSpaced(maxAnomalies, borderOffset, minDistance)


/*
This algorithm does not work for anomalies, each anomaly is a list, similar to biome, which store an index, not an instance in the region data
This algorithm requires the storage of each x and y value for each anomaly to compare distance, only if a spaced anomaly system is needed should an algorithm or structure redesign be needed

var valid = false;
var ax, ay, dx, dy;

var currentAnomalies = 0;
var dis, strikes;

var allowedStrikes = 500;

//debug
var oceanFails = 0;
var disFails = 0;

show_debug_message("Generating "+string(argument0)+" anomalies...");
var i, j;
for(i = 0; i < argument0; i++)
{
    strikes = 0;//reset strikes 
    dis = 0;//reset dis
    
    do
    {
        //select a random region
        ax = random_range(argument1, World.mapWidth-argument1);
        ay = random_range(argument1, World.mapHeight-argument1);
        show_debug_message("Anomaly placement attempt at "+string(ax)+", "+string(ay));
        
        //if ocean or already has a anomaly then not valid
        if(World.regionData[World.regionStore[ax, ay], 3].buildable == false
            || World.regionData[World.regionStore[ax, ay], 4] != -1)
        {
            valid = false;
            strikes++;
            show_debug_message("Failed. Ocean or anomaly occupying region.");
            oceanFails++;
        }
        else
        {
            //valid assumed to be true
            valid = true;
            
            //loop through all current anomalies, if none exist then the loop skips and remains valid
            for(j = 0; j < currentAnomalies; j++)
            {
                //get distance to city
                dx = CitySystem.cityStore[j].regionX - ax;
                dy = CitySystem.cityStore[j].regionY - ay;
                
                //make positive
                if(dx < 0) dx *= -1;
                if(dy < 0) dy *= -1;
                
                //Calculate manhattan distance
                dis = dx + dy;
                
                //if dis is within min distance placement becomes invalid in ALL cases, break the loop
                if(dis < argument2)
                {
                    valid = false;
                    strikes++;
                    show_debug_message("Failed. Too close to CitySystem.cityStore["+string(j)+"]");
                    disFails++;
                    break;
                }
    
            }
            //cases
            //first run will skip the for loop and will be not valid until it hits an eligible region
            //will choose a valid region outside the minimum distance of all cities and will remain valid after the for loop ending the do loop
            //will choose a valid region inside the distance of one or more cities and will continue until 500 do loops, then will break with a strike, maxCities will be set to currentAnomalies
            
        }
        
    }until(valid == true || strikes >= allowedStrikes);
    
    //Create city if valid is true
    if(valid == true)
    {
        CitySystem.cityStore[currentAnomalies] = instance_create(0, 0, City);
        CitySystem.cityStore[currentAnomalies].regionX = ax;
        CitySystem.cityStore[currentAnomalies].regionY = ay;
        World.regionData[World.regionStore[ax, ay], 0] = i;
        currentAnomalies++;
        show_debug_message("City "+string(i)+" initialise at "+string(ax)+", "+string(ay));
    }
    else
        if(valid == false && strikes >= allowedStrikes)
        {
            show_debug_message("Failed. Exceeded strikes with "+string(currentAnomalies)+" cities");
        }
}
//loop terminated, if strikes reached and current cities larger then maxCities
if(currentAnomalies > CitySystem.maxCities)CitySystem.maxCities = currentAnomalies;
show_debug_message("City generation complete. Cities: "+string(currentAnomalies)+" | Fails: "+string(oceanFails+disFails)+" | Ocean fails: "+string(oceanFails)+" | distance fails: "+string(disFails));
*/
