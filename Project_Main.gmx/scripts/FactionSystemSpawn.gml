///FactionSystemSpawn(factionStartType)

DebugLog("Attempting Faction placement in world.");
if(WorldExists())
{
    if(argument[0] == 0)
    {
        for(var i = 1; i < FactionSystem.number; i++)
        {
            FactionRandomSpawn(i);
        }
    }
}
else
    {
        DebugError("FactionSystemStart: No World object found.");
    }

DebugLog("Faction placement complete.");
