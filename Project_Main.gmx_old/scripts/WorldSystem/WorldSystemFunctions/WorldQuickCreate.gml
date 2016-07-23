///WorldQuickCreate(x, y, x2, y2, mapWidth, mapHeight, biomeType, oceanType, cityType, maxCities, biomeNormalise, oceanNormalise)

show_debug_message("Attempting world generation...");

//Initialise world
WorldInit(argument0, argument1, argument2, argument3, argument4, argument5, 12345);
//Generate biomes
WorldGenerateBiomes(argument6, argument10, 3, 6);

//Generate oceans
WorldGenerateOceans(argument7, 20, 0.5, 2,  argument11, 3, 5);
//Generate Cities
WorldGenerateCities(argument8, argument9, 5, 5);
//Generate factions
//WorldGenerateFactions(argument9);

show_debug_message("World generation complete.");
