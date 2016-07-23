///BiomeAddBackground(biomeName, backgroundIndex)

var target = BiomeGetByName(argument0);

if(target != -1)
{
    if(argument1 >= 0 && argument1 < BackgroundSystem.number)
    {
        target.backgroundStore[target.backgroundNumber] = BackgroundSystem.store[argument1];
    }
    else
        {
            DebugError("BiomeAddBackground: No background found at index "+string(argument1));
        }
}
else
    {
        DebugError("BiomeAddBackground: Biome "+string(argument0)+" not found.");
    }
