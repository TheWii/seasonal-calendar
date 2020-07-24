execute store result score $gamerule twsc.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

scoreboard players add #interactions twsc.data 1
execute if score #interactions twsc.data matches 2.. run scoreboard players set #interactions twsc.data 0

execute if score #interactions twsc.data matches 1 run function thewii:calendar/interactions/main

execute if score $gamerule twsc.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append

execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] run function thewii:calendar/settings/triggered