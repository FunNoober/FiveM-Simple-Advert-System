RegisterCommand("ad", function (source, args, rawCommand)
    TriggerClientEvent("chat:addMessage", -1, {
        args = {
            "[AD]",
            args[1],
        },
        color = {0, 255, 0}
    })
end, false)