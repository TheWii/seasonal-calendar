# Visuals
execute store result score @s twsc.outside run execute if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked

scoreboard players set #overworld twvp.temp 0
execute if predicate thewii:calendar/in_overworld run scoreboard players set #overworld twvp.temp 1

execute if score #overworld twvp.temp matches 1 unless score @s twsc.outside matches 1 run particle block minecraft:snow ~ ~1 ~ 10 8 10 1 5 normal
execute if score #overworld twvp.temp matches 1 unless score @s twsc.outside matches 1 run particle minecraft:falling_dust minecraft:snow ~ ~1 ~ 10 8 10 1 8 normal