for i, v in ipairs(Config.agencies) do
    local vL = string.lower(v)
    TriggerEvent("chat:addSuggestion", "/" .. vL, "Send out an ad from " .. v, {
        { name="contents", help="When using multiple words, surround them in quotes"}
    })
    TriggerEvent("chat:addSuggestion", "/" .. v, "Send out an ad from " .. v, {
        { name="contents", help="When using multiple words, surround them in quotes"}
    })
end


RegisterNetEvent('adNotif')
AddEventHandler('adNotif', function (author, text)
    SetNotificationTextEntry("STRING")
    AddTextComponentSubstringPlayerName(author .. '\n' .. text)
    DrawNotification(true, true)
end)