# Visuals
execute store result score @s twsc.outside run execute if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked

execute unless score @s twsc.outside matches 1.. if predicate thewii:calendar/in_overworld run particle cloud ~ ~1 ~ 12 8 12 0.1 1 normal @s