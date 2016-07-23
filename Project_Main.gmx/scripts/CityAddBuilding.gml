///CityAddBuilding(City, Building, cellPosition);
//Uses building max health for the currentHealth value
//Uses the default status for the status effect value
//This function requires access to the correct city id AND building id

var city = argument0;

city.buildingStore[city.buildingNumber, 0] = argument1;
city.buildingStore[city.buildingNumber, 1] = argument1.maxHealth;
city.buildingStore[city.buildingNumber, 2] = argument2;

city.buildingNumber++;
