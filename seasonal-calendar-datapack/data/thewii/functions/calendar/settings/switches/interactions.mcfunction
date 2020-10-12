#> thewii:calendar/settings/switches/interactions

scoreboard players add #interactions twsc.data 1
execute if score #interactions twsc.data matches 2.. run scoreboard players set #interactions twsc.data 0

execute if score #interactions twsc.data matches 0 run schedule clear thewii:calendar/interactions/main
execute if score #interactions twsc.data matches 1 run function thewii:calendar/interactions/main

function thewii:calendar/settings/show