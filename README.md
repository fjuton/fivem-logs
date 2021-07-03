## FiveM Discord Logs | Embeds

How-to use?
```lua
-- server-side
TriggerEvent('logs:sendEmbedWebhook', {
    -- your embed here
}, "channel_stored_in_variable")
```


### How-to add a channel?

```lua

-- edit this in the server/main.lua
local logs = {
    channels = {
        ["mychannelone"] = "webhook",
        ["channel2"] = "webhook",
        ["etc"] = "webhook"
    }
}

```


### Example of use

```lua

TriggerEvent('logs:sendEmbedWebhook', {
    ["title"] = "example",
    ["description"] = "embed",
    ["author"] = {
        ["name"] = "me"
    },

    ["color"] = 53380, -- use math decimal color
    ["fields"] = {
        [1] = {
            ["name"] = "field one",
            ["value"] = "value one",
            ["inline"] = true -- inline true:false
        }

    }
}, "mychannelone")

```


