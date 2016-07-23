///FactionRandomSpawn(index)

var cindex;
var strike;
var strikeLimit = 1000;
var valid = false

do
{
    strike = 0;
    cindex = random_range(0, CitySystem.number);
    
    if(CityGet(cindex).factionOwner == FactionGet(0))//if neutral
    {
        CitySetFactionOwner(cindex, argument0);
        show_debug_message("Faction started at city "+string(CityGet(cindex).name)+" ("+string(CityGet(cindex).regionX)+"/"+string(CityGet(cindex).regionY)+")");
        valid = true;
    }
}until(valid || strike == strikeLimit);
