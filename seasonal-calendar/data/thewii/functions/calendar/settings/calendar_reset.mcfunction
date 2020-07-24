execute store result score $gamerule twsc.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

scoreboard players set $day twsc.data 1
scoreboard players set $season twsc.data 1

function thewii:calendar/settings/triggered

execute if score $gamerule twsc.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append

