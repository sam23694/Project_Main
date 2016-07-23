///CityExt1Add(regionX, regionY)

//This function makes the assumption that the x and y of the city is valid, buildable and index is not over riding a current city

var obj = instance_create(0, 0, City);
obj.regionX = argument0;
obj.regionY = argument1;
obj.extCity = true;

index = CitySystem.number;
CitySystem.store[index] = obj;
CitySystem.number++;

WorldSetRegionExtCity1_xy(argument0, argument1, obj);

DebugLog("City "+string(index)+" initialise at "+string(CityGet(index).regionX)+", "+string(CityGet(index).regionY));
