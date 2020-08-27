# Visuals
execute store result score @s twsc.outside run execute if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked

execute unless score @s twsc.outside matches 1.. if predicate thewii:calendar/in_overworld run particle dust 0.25 0 0 1 ~ ~1 ~ 10 8 10 0.01 2 force @s


# Mechanics
execute if score @s twsc.outside matches 0 if score $daytime twsc.data matches 1..13500 unless score @s twsc.athmos matches 3000.. if predicate thewii:calendar/in_overworld run scoreboard players add @s twsc.athmos 1
execute if score @s twsc.outside matches 1.. if score @s twsc.athmos matches 2.. run scoreboard players remove @s twsc.athmos 2

execute if score @s twsc.athmos matches 10.. if block ~ ~ ~ water run scoreboard players remove @s twsc.athmos 10

execute if score @s twsc.athmos matches 3000.. run function thewii:calendar/weather/seasonal/sideeffects/heat_sick