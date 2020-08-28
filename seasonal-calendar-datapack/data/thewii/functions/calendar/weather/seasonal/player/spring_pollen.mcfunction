# Visuals
execute store result score @s twsc.outside run execute if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked

execute unless score @s twsc.outside matches 1.. if predicate thewii:calendar/in_overworld run particle falling_dust minecraft:honey_block ~ ~1 ~ 10 8 10 0.01 3 force @s


# Mechanics
execute if score @s twsc.outside matches 0 unless score @s twsc.athmos matches 6000.. if predicate thewii:calendar/in_overworld run scoreboard players add @s twsc.athmos 1
execute if score @s twsc.outside matches 1.. if score @s twsc.athmos matches 3.. run scoreboard players remove @a twsc.athmos 3

execute if score @s twsc.athmos matches 6000.. run function thewii:calendar/weather/seasonal/sideeffects/pollen_sick
