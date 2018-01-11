

DEFINE_BASECLASS("base_gmodentity");

ENT.Type = "anim";
ENT.Author = "Marshall Mathers";
ENT.PrintName = "Stove";
ENT.Spawnable = false;
ENT.AdminSpawnable = false;
ENT.PhysgunDisabled = true;

function ENT:SetupDataTables()
	self:DTVar("Int", 0, "index");
	self:DTVar("Bool", 1, "breens_water");
	self:DTVar("Bool", 2, "flour");
	self:DTVar("Bool", 3, "full");
end;

function ENT:IsFull()
	return self:GetDTBool(3);
end;