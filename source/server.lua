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
        NDCore.Functions.TransferBank(amount, player, target)
    end, false)
end

if Settings.Give.Toggle then
    RegisterCommand(Settings.Give.Command, function(source, args, rawCommand)
        local player = source
        local amount = tonumber(args[2])
        NDCore.Functions.GiveCashToNearbyPlayer(player, amount)
    end, false)
end


