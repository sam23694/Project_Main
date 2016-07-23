///FactionSystemSpawn(factionStartType)

show_debug_message("Attempting Faction placement in world.");
if(WorldExists())
{
    if(argument[0] == 0)
    {
        for(var i = 1; i < FactionSystem.number; i++)
        {
            FactionRandomStart(i);
        }
    }
}
else
    {
        show_debug_message("Error:FactionSystemStart: No World object found.");
        DebugSystem.errors++;
    }

show_debug_message("Faction placement complete.");
