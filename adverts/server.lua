for i, v in ipairs(Config.agencies) do
    print(v)
    local vL = string.lower(v)
    RegisterCommand(vL, function (source, args, rawCommand)
        if Config.acePerms then
            if IsPlayerAceAllowed(source, "adverts.ad") then
                sendAd(args, v)
            end
            if IsPlayerAceAllowed(source, "adverts.ad") == false then
                TriggerClientEvent("chat:addMessage", source, {
                    args = {
                        "[ADVERTS]",
                        "INSUFFIECENT PERMS"
                    },
                    color = {255, 0, 0}
                })
            end
        else
            sendAd(args, v)
        end
    end, false)
end

function sendAd(args, v)
    TriggerClientEvent("chat:addMessage", -1, {
        args = {
            "[ AD FROM " .. v .. "]",
            args[1],
        },
        color = {0, 255, 0}
    })
end