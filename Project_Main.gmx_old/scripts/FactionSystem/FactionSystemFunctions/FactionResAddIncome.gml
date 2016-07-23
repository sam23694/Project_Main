///FactionResAddIncome(index)

var obj = FactionSystem.store[argument0];

obj.resource.population += obj.resource.pop_growth;
obj.resource.production += obj.resource.prod_income;
obj.resource.sci_phys += obj.resource.sci_physIn;
obj.resource.sci_math += obj.resource.sci_mathIn;
obj.resource.sci_chem += obj.resource.sci_chemIn;
obj.resource.sci_bio += obj.resource.sci_bioIn;

