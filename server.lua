RegisterNetEvent("kaz-dw:someevent", function(blacklistedWord)
    local _src = source

    DropPlayer(_src, "Blacklisted word found: " .. blacklistedWord)
    print("SRC: " .. _src .. " got kicked for blacklisted word: " .. blacklistedWord)
end)