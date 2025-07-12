Discord = {
    initialized = false,
    cache = {},
}

---Call discord's API for the configured guild
---@param endpoint string api endpoint i.e. "members/discord_id"
---@return { success: true; data: any } | { success: false, code: number, message: string }
function Discord:GuildApiCall(endpoint)
    local result = promise:new()

    PerformHttpRequest(
        string.format("https://discord.com/api/v10/guilds/%s/%s", Config.Discord.BotToken, endpoint),
        function (status, text, _)
            if (status == 200) then
                local data = json.decode(text)
                result:resolve({ success = true, data = data});
            else
                result:resolve({ success = false, code = status, message = text })
            end
        end,
        {
            ["Content-Type"] = "application/json",
            ["Authorization"] = "Bot " .. Config.Discord.GuildId,
        }
    )

    return Citizen.Await(result)
end
