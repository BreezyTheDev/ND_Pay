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
        if target ~= nil and amount ~= nil then
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

if Settings.AddMoney.Toggle then
    RegisterCommand(Settings.AddMoney.Command, function(source, args, rawCommand)
        local player = source
        local target = tonumber(args[1])
        local tname = GetPlayerName(target)
        local option = table.concat(args, " ", 2) -- cash or bank
        local amount = tonumber(args[3])
        if IsPlayerAceAllowed(player, Settings.AddMoney.Ace) then
            if target ~= nil and amount ~= nil then
                if option == "bank" then
                    NDCore.Functions.AddMoney(amount, target, "bank")
                    TriggerClientEvent('chatMessage', player, "^1[ND-PAY] ^3You have successfully added $"..amount.." to "..tname.."'s account"
                elseif option == "cash" then
                    NDCore.Functions.AddMoney(amount, target, "cash")
                    TriggerClientEvent('chatMessage', player, "^1[ND-PAY] ^3You have successfully added $"..amount.." to "..tname.."'s account"
                end
            else
                -- Wrong syntax, it's /addmoney <id> <cash:bank> <amount>
                TriggerClientEvent('chatMessage', player, '^1ERROR: Wrong usage. /addmoney <id> <cash:bank> <amount>')
            end
        else
            TriggerClientEvent('chatMessage', player, '^1ERROR: You need permission for this command!')
        end
    end, false)
end


