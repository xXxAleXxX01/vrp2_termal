--------------------------CREDITS--------------------------
-------------------Script made by AleXxX-------------------
--      Script made for ZenTrix Romania RolePlay         --
--         Discord: https://discord.gg/BEFrqay           --
--   Copyright 2019 ©AleXxXScript's. All rights served   --
-----------------------------------------------------------


local termal = class("termal", vRP.Extension)

local stat = false

function termal:__construct()
	vRP.Extension.__construct(self)
	vRP.EXT.Inventory:defineItem("termali", "Ochelari Termali", "", nil, 0,5)
	vRP.EXT.GUI:registerMenuBuilder("main", function(menu)
		local user = menu.user
		if user:hasPermission("termal.politie") and user:getItemAmount("termali") then
			menu:addOption("Ochelari Termali", function(menu)
				local user = menu.user
				if user then 
					if stat then
						stat = false
						TriggerClientEvent('termali', user.source, false)
						vRP.EXT.Base.remote._notify(user.source,"Ai dezactivat ochelarii termali.")
					else
						stat = true
						TriggerClientEvent('termali', user.source, true)
						vRP.EXT.Base.remote._notify(user.source, "Ai activat ochelarii termali.")
					end
				end
			end)
		end
	end)

end


vRP:registerExtension(termal)
