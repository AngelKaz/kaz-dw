local cooldown = 5 -- 5 seconds
local blacklistedWords = {
    "Dopamine", "Dillersutning", "Du klam", "Neger"
}

CreateThread(function()
    while true do
        exports['screenshot-basic']:requestScreenshot(function(data)
            SendNUIMessage({ ss = data })
        end)
        
        Wait(cooldown * 1000)
    end
end)

RegisterNUICallback("screenShot", function(res)
	if res.data ~= nil then
		for _, word in pairs(blacklistedWords) do
			if string.find(string.lower(res.data), string.lower(word)) then
				TriggerServerEvent("kaz-dw:someevent", word)
			end
		end
	end
end)