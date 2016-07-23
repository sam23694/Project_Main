///GenerateCitiesSpaced(maxCities, borderOffset, minDistance)
var valid = false;
var cx, cy, dx, dy;

var currentCities = 0;
var dis, strikes;

var allowedStrikes = 500;

//debug
var oceanFails = 0;
var disFails = 0;

DebugLog("Generating "+string(argument0)+" cities...");
var i, j;
for(i = 0; i < argument0; i++)
{
    strikes = 0;//reset strikes 
    dis = 0;//reset dis
    
    do
    {
        //select a random region
        cx = round(random_range(argument1, World.mapWidth-argument1));
        cy = round(random_range(argument1, World.mapHeight-argument1));
        DebugLog("City placement attempt at "+string(cx)+", "+string(cy));
        
        //if ocean or already has a city then not valid
        if(WorldGetRegionBiome_xy(cx, cy).buildable == false
            || WorldRegionHasCity_xy(cx, cy))
        {
            valid = false;
            strikes++;
            DebugWarning("GenerateCitiesSpaced: Failed. Ocean or city occupying region.");
            oceanFails++;
        }
        else
        {
            //valid assumed to be true
            valid = true;
            
            //loop through all current cities, if none exist then the loop skips and remains valid
            for(j = 0; j < currentCities; j++)
            {
                //get distance to city
                dx = CityGet(j).regionX - cx;
                dy = CityGet(j).regionY - cy;
                
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
                    DebugWarning("GenerateCitiesSpaced: Failed. Too close to CitySystem.cityStore["+string(j)+"]");
                    disFails++;
                    break;
                }
    
            }
            //cases
            //first run will skip the for loop and will be not valid until it hits an eligible region
            //will choose a valid region outside the minimum distance of all cities and will remain valid after the for loop ending the do loop
            //will choose a valid region inside the distance of one or more cities and will continue until 500 do loops, then will break with a strike, number will be set to currentCities
            
        }
        
    }until(valid == true || strikes >= allowedStrikes);
    
    //Create city if valid is true
    if(valid == true)
    {
        CityAdd("DefaultName", cx, cy);
        CitySetFactionOwner(currentCities, 0);//Set faction to Neutral
        currentCities++;
    }
    else
        if(valid == false && strikes >= allowedStrikes)
        {
            DebugWarning("GenerateCitiesSpaced: Failed. Exceeded strikes with "+string(currentCities)+" cities");;
        }
}
//loop terminated, if strikes reached and current cities larger then number
//if(currentCities > CitySystem.number)CitySystem.number = currentCities;
DebugLog("City generation complete. Cities: "+string(currentCities)+" | Fails: "+string(oceanFails+disFails)+" | Ocean fails: "+string(oceanFails)+" | distance fails: "+string(disFails));
