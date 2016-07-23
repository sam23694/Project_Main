///CultureSetPerk(index, perkIndex)

var cindex = argument0; 
var pindex = CultureSystem.store[cindex].perkNumber;

if(pindex < CultureSystem.culturePerkLimit)
{
    CultureSystem.store[cindex].perks[pindex] = PerkSystem.store[argument1];
    CultureSystem.store[cindex].perkNumber++;
}
else
    {
        show_debug_message("Warning: perk limit reached for culture "+string(CultureSystem.store[cindex].name));
        DebugSystem.warnings++;
    }
show_debug_message("Perk "+string(argument1)+" added to "+string(CultureSystem.store[cindex].name)+" culture.");

