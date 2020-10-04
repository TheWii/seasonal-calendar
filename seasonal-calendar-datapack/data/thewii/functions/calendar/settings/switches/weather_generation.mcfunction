execute store result score $gamerule twvp.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

scoreboard players add #weather_generation twsc.data 1
execute if score #weather_generation twsc.data matches 3.. run scoreboard players set #weather_generation twsc.data 0

execute if score #weather_generation twsc.data matches 0 run gamerule doWeatherCycle true
execute if score #weather_generation twsc.data matches 1..2 run gamerule doWeatherCycle false

execute if score $gamerule twvp.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append

execute if entity @s run function thewii:calendar/settings/triggered