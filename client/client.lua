RegisterCommand("tweet", function(source, args, rawCommand)
    local message = table.concat(args, " ")
    if message ~= nil and message ~= "" then
  
        local playerName = GetPlayerName(PlayerId())
    TriggerServerEvent("sendTweet",  "@ " .. playerName..   " ".. message)
    end
end)

RegisterNetEvent("displayTweet")
AddEventHandler("displayTweet", function(message)
    SendNUIMessage({
        type = "new_tweet",
        message = message
    })
end)
TriggerEvent('chat:addSuggestion', '/tweet', 'Sends Twotter Message.', {
    { name="message", help="Tweet Message." }
})
