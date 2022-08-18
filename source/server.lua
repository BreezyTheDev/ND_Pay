--================================--
--      ND_Pay 1.0                --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--


-- ND_Framework export
NDCore = exports["ND_Core"]:GetCoreObject()

-- Commands
if Settings.Pay.Toggle then
    RegisterCommand(Settings.Pay.Command, function(source, args, rawCommand)
        local player = source
        local target = tonumber(args[1])
        local amount = tonumber(args[2])
        if target and amount ~= nil then
            NDCore.Functions.TransferBank(amount, player, target)
        else
           -- Wrong syntax, it's /pay <id> <amount>
           TriggerClientEvent('chatMessage', source, '^1ERROR: Wrong usage. /pay <id> <amount>')
        end
    end, false)
end

if Settings.Give.Toggle then
    RegisterCommand(Settings.Give.Command, function(source, args, rawCommand)
        local player = source
        local amount = tonumber(args[1])
        if amount ~= nil then
            NDCore.Functions.GiveCashToNearbyPlayer(player, amount)
        else
           -- Wrong syntax, it's /give <amount>
           TriggerClientEvent('chatMessage', source, '^1ERROR: Wrong usage. /give <amount>')
        end
    end, false)
end


