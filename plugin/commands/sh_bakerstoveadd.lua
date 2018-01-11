local COMMAND = Clockwork.command:New("bakeraddstove");
COMMAND.tip = "Add a stove to bake in.";
COMMAND.flags = CMD_DEFAULT;
COMMAND.access = "B";


-- Called when the command has been run.
function COMMAND:OnRun(player, arguments)
	local trace = player:GetEyeTraceNoCursor();
	local entity = ents.Create("cw_bakerstove");
	
	entity:SetPos(trace.HitPos + Vector(0,0,10));
	entity:Spawn();
	
	if (IsValid(entity)) then
		entity:SetAngles( Angle(0, player:EyeAngles().yaw + 180,0) );

		Clockwork.player:Notify(player, "You have added a stove.");
	end;
end;

COMMAND:Register();