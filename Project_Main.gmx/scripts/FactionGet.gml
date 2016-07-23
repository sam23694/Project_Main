///FactionGet(index)

if(argument0 >= 0 && argument0 < FactionSystem.number)
    return FactionSystem.store[argument0];
else
    {
        DebugError("FactionGet: Index out of bounds.");
    }
