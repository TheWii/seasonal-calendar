scoreboard players add #crops_growth twsc.data 1
execute if score #crops_growth twsc.data matches 2.. run scoreboard players set #crops_growth twsc.data 0

execute if score #crops_growth twsc.data matches 0 run gamerule randomTickSpeed 3
execute if score #crops_growth twsc.data matches 1 run function thewii:calendar/time/tickspeed

function thewii:calendar/settings/show