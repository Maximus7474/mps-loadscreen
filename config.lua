---@class Config
---@field Discord DiscordConfig
Config = {
    Discord = {
        InviteUrl = "https://discord.gg/XXXXXX",
        BotToken = "DISCORD.BOT.TOKEN",
        GuildId = "GUILDID",

        RefreshDataInterval = 30 * 60 * 1000,

        ConnectedStaff = {
            EnableDisplay = true,
            Roles = { "ROLE_ID", "ROLE_ID" },
            DisplayNames = true,
            DisplayCount = true,
        },

        Roles = {
            Staffs = { "ROLE_ID", "ROLE_ID" },
            Developers = { "ROLE_ID", "ROLE_ID" },
            Admins = { "ROLE_ID", "ROLE_ID" },
            Owners = { "ROLE_ID", "ROLE_ID" },
        },
    }
}

---@class DiscordConfigConnectedStaff
---@field EnableDisplay boolean Should it be displayed on the loading screen which staff are connected
---@field Roles string[] The role IDs for tracking connected staff
---@field DisplayNames boolean Display the names of the connected staff
---@field DisplayCount boolean Display the number of staff connected

---@class DiscordConfig
---@field InviteUrl string | false Discord invite url
---@field BotToken string The discord bot token to gather information from the discord guild
---@field GuildId string The guild id of the discord server
---@field RefreshDataInterval number | false What interval (in ms) should the data refresh
---@field ConnectedStaff DiscordConfigConnectedStaff Details about connected staff diplayed on the loading screen
---@field Roles table<string, string[]> | false Role groups from discord displayed on the loading screen, if false the section is disabled
