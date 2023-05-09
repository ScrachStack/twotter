RegisterServerEvent("sendTweet")
AddEventHandler("sendTweet", function(message)
    TriggerClientEvent("displayTweet", -1, message)
end)
