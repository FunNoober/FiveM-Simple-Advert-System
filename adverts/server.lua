for i, v in ipairs(Config.agencies) do
    local vL = string.lower(v)
    RegisterCommand(vL, function (source, args, rawCommand)
        if Config.acePerms then
            if IsPlayerAceAllowed(source, "adverts.ad") then
                if Config.chat == true then
                    sendAdChat(args, v)    
                end
                if Config.notification == true then
                    sendAdNotif("[ AD FROM " .. v .. "]", args[1])
                end
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
            if Config.chat == true then
                sendAdChat(args, v)
            end
            if Config.notification == true then
                sendAdNotif("[ AD FROM " .. v .. "]", args[1])
            end
        end
    end, false)
end

function sendAdChat(args, v)
    TriggerClientEvent("chat:addMessage", -1, {
        args = {
            "[ AD FROM " .. v .. "]",
            args[1],
        },
        color = {0, 255, 0}
    })
end

function sendAdNotif(author, text)
    TriggerClientEvent('adNotif', -1, author, text)
end