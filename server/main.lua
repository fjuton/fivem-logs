local logs = {
    channels = {
        ["yourchannel"] = "webhook"
    }
}

logs.sendEmbedWebhook = function(embed, channel)

    PerformHttpRequest(logs.channels[channel], function(err, text, headers) 
        print("[server] webhook sent to (" .. channel .. ")") 
    end, 'POST', json.encode({username = "test", embeds = {embed}}), { ['Content-Type'] = 'application/json' })
end

AddEventHandler('logs:sendEmbedWebhook', function(embed, channel)
    logs.sendEmbedWebhook(embed, channel)
end)
