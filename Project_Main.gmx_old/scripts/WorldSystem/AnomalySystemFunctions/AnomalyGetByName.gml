///AnomalyGetByName(name)

for(var i = 0; i < AnomalySystem.number; i++)
{
    if(AnomalySystem.store[i].name == argument0)
        return AnomalySystem.store[i];
}

return -1;//return error if not found
