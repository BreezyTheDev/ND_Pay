--================================--
--      ND_Pay 1.0                --
--      by BreezyTheDev           --
--		GNU License v3.0		  --
--================================--


Settings = {
    Pay = {
        Toggle = true,
        Command = "pay" -- /pay <id> <amount> -- Uses your bank balance to transfer funds to the desired player.
    },
    Give = {
        Toggle = true,
        Command = "give" -- /give <amount> -- Uses your cash balance to transfer funds to the nearest player.
    }
    AddMoney = {
        Toggle = true,
        Ace = "AddMoney.access", -- Ace Permission
        Command = "addmoney" -- /addmoney <id> <cash:bank> <amount> -- Adds money to cash or bank to the targeted player.
    }
}
