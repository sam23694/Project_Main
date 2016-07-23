///BiomeList(biomeNumber)
//Creates a list of all biomes and there stats. Purpose is for extendability
biomeArray[argument0] = 0;
i = 0;

//Default biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    //All variables remain default
    i++;
}

//Ocean biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].biomeName = "Ocean";
    biomeArray[i].index = 1;
    biomeArray[i].backgroundIndex = 0;
    biomeArray[i].temperature = 50;
    biomeArray[i].overlayColor = c_blue;
    //Further variables remain default
    i++;
}

//Tundra biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].buildable = true;
    biomeArray[i].biomeName = "Tundra";
    biomeArray[i].index = 2;
    biomeArray[i].backgroundIndex = 2;
    biomeArray[i].temperature = -10//-5;
    biomeArray[i].tileMod.populationMod = -0.25;
    biomeArray[i].tileMod.scienceMod = 0.5;
    biomeArray[i].overlayColor = c_white;
    //Further mods remain default
    i++;
}

//Taiga biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].buildable = true;
    biomeArray[i].biomeName = "Taiga";
    biomeArray[i].index = 3;
    biomeArray[i].backgroundIndex = 3;
    biomeArray[i].temperature = 0//5;
    biomeArray[i].tileMod.populationMod = -0.1;
    biomeArray[i].tileMod.scienceMod = 0.25;
    biomeArray[i].overlayColor = c_teal;
    //Further mods remain default
    i++;
}

//Temperate biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].buildable = true;
    biomeArray[i].biomeName = "Temperate";
    biomeArray[i].index = 4;
    biomeArray[i].backgroundIndex = 1;
    biomeArray[i].temperature = 10;
    biomeArray[i].tileMod.populationMod = 0.25;
    biomeArray[i].overlayColor = c_lime;
    //Further mods remain default
    i++;
}

//Savanna biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].buildable = true;
    biomeArray[i].biomeName = "Savanna";
    biomeArray[i].index = 5;
    biomeArray[i].backgroundIndex = 5;
    biomeArray[i].temperature = 20;
    biomeArray[i].tileMod.populationMod = -0.1;
    biomeArray[i].tileMod.productionMod = 0.25;
    biomeArray[i].tileMod.scienceMod = 0.1;
    biomeArray[i].overlayColor = c_orange;
    //Further mods remain default
    i++;
}

//Desert biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].buildable = true;
    biomeArray[i].biomeName = "Desert";
    biomeArray[i].index = 6;
    biomeArray[i].backgroundIndex = 4;
    biomeArray[i].temperature = 30//35;
    biomeArray[i].tileMod.populationMod = -0.5;
    biomeArray[i].tileMod.productionMod = 0.5;
    biomeArray[i].overlayColor = c_yellow;
    //Further mods remain default
    i++;
}

//Tropical biome
if(i < argument0)
{
    biomeArray[i] = instance_create(0,0, Biome);
    biomeArray[i].buildable = true;
    biomeArray[i].biomeName = "Tropical";
    biomeArray[i].index = 7;
    biomeArray[i].backgroundIndex = 6;
    biomeArray[i].temperature = 40//25;
    biomeArray[i].tileMod.populationMod = 0.75;
    biomeArray[i].tileMod.productionMod = -0.15;
    biomeArray[i].overlayColor = c_green;
    //Further mods remain default
    i++;
}

return biomeArray;
