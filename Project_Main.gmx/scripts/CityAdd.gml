///CityAdd(name, regionX, regionY)

//This function makes the assumption that the x and y of the city is valid, buildable and index is not over riding a current city

var obj = instance_create(0, 0, City);
obj.name = argument0;
obj.regionX = argument1;
obj.regionY = argument2;
obj.extCity = false;

index = CitySystem.number;
CitySystem.store[index] = obj;
CitySystem.number++;

WorldSetRegionCapitalCity_xy(argument1, argument2, obj);

DebugLog("City "+string(index)+" initialise at "+string(CityGet(index).regionX)+", "+string(CityGet(index).regionY));
