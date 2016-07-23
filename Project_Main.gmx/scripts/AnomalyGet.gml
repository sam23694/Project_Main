///AnomalyGet(index)

if(argument0 >= 0 && argument0 < AnomalySystem.number)
    return AnomalySystem.store[argument0];
else
    {
        DebugError("AnomalyGet: Index out of bounds.");
    }
