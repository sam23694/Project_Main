///BuildingGet(index)

if(argument0 >= 0 && argument0 < BuildingSystem.number)
    return BuildingSystem.store[argument0];
else
    {
        DebugError("BuildingGet: Index out of bounds.");
    }
