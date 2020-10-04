execute store result score $gamerule twvp.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

scoreboard players add #crops_growth twsc.data 1
execute if score #crops_growth twsc.data matches 2.. run scoreboard players set #crops_growth twsc.data 0

execute if score #crops_growth twsc.data matches 0 run gamerule randomTickSpeed 3
execute if score #crops_growth twsc.data matches 1 run function thewii:calendar/rts_set

execute if score $gamerule twvp.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append

execute if entity @s run function thewii:calendar/settings/triggered