execute store result score @s twsc.outside run execute if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked

execute unless score @s twsc.outside matches 1.. run particle falling_dust minecraft:honey_block ~ ~1 ~ 10 8 10 0.01 3 force @s

tag @s[scores={twsc.outside=0}] add twsc.outside
tag @s[scores={twsc.outside=1..}] remove twsc.outside