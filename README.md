# ND_Pay

## What is it?

This resource was made to give those the option to have pay commands for the [ND_Framework](https://github.com/Andyyy7666/ND_Framework). The pay commands was removed in preparation for future updates with that in mind it is completely understandable but this was requested to be added back by members of my community so I went ahead and made it. I thought it would be helpful for others if they also would like to have it back so I figured I would release it.

## Commands

`/pay <id> <amount>` - Uses your bank balance to transfer funds to the desired player.

`/give <amount>` - Uses your cash balance to transfer funds to the nearest player.

`/addmoney <id> <cash:bank> <amount>` - Adds money to the targeted player's cash or bank balance. Requires `AddMoney.access` Ace permission.

## Required Dependencies

[ND_Framework](https://github.com/Andyyy7666/ND_Framework)

## Configuration

The following can be found in the ``config.lua`` file.
```
    Pay = {
        Toggle = true,
        Command = "pay" -- /pay <id> <amount> -- Uses your bank balance to transfer funds to the desired player.
    },
    Give = {
        Toggle = true,
        Command = "give" -- /give <amount> -- Uses your cash balance to transfer funds to the nearest player.
    },
    AddMoney = {
        Toggle = true,
        Ace = "AddMoney.access", -- Ace Permission
        Command = "addmoney" -- /addmoney <id> <cash:bank> <amount> -- Adds money to the targeted player's cash or bank balance.
    }
```
You can toggle the commands on or off & change the commands to your preference.

## Download
https://github.com/BreezyTheDev/ND_Pay


