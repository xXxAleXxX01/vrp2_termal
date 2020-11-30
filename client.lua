--------------------------CREDITS--------------------------
-------------------Script made by AleXxX-------------------
--      Script made for ZenTrix Romania RolePlay         --
--         Discord: https://discord.gg/BEFrqay           --
--   Copyright 2020 ©AleXxXScript's. All rights served   --
-----------------------------------------------------------

RegisterNetEvent('termali')
AddEventHandler('termali', function(a)
	if a then
		SetNightvision(true)
		SetSeethrough(true)
	  else
		SetNightvision(false)
		SetSeethrough(false)
	  end
end)
