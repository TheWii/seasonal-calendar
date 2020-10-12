scoreboard players add #weather_generation twsc.data 1
execute if score #weather_generation twsc.data matches 3.. run scoreboard players set #weather_generation twsc.data 0

execute if score #weather_generation twsc.data matches 0 run gamerule doWeatherCycle true
execute if score #weather_generation twsc.data matches 1..2 run gamerule doWeatherCycle false

function thewii:calendar/settings/show