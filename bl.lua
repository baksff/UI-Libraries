local blockAttempts = true
local logAttempts = true
local noWebhooksREQ
noWebhooksREQ = hookfunction(syn.request, newcclosure(function(reqTable) -- wont stop httpget, other forms of sending a request **cough fh's logger** ;-;
    if reqTable.Url:find("webhooks") then
        if logAttempts then
            rconsoleprint("\n\nDiscord webhook logger detected and blocked! Webhook URL: " .. reqTable.Url)
        end
        if blockAttempts then
            return "woah so easy"
        end
    end
    return noWebhooksREQ(reqTable) -- removed some stupid shit with else statements
end))
loadstring(game:HttpGet(""))()