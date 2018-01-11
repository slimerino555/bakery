local ITEM = Clockwork.item:New();
ITEM.name = "Flour";
ITEM.model = "models/props_junk/garbage_bag001a.mdl";
ITEM.weight = 2;
ITEM.useText = "Open";
ITEM.description = "Flour to cook food";

function ITEM:CanPickup(player, quickUse, itemEntity)
	if (quickUse) then
		if (!player:CanHoldWeight(self.weight)) then
			Clockwork.player:Notify(player, "You do not have enough inventory space!");	
			return false;
		end;
	end;
end;

function ITEM:OnDrop(player, position) end;

ITEM:Register();