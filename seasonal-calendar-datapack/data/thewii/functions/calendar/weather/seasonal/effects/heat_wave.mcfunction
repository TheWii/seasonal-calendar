execute store result score @s twsc.outside run execute if blocks ~ ~1 ~ ~ 255 ~ ~ ~1 ~ masked

execute unless score @s twsc.outside matches 1.. run particle dust 0.25 0 0 1 ~ ~1 ~ 10 8 10 0.01 2 force @s

tag @s[scores={twsc.outside=0}] add twsc.outside
tag @s[scores={twsc.outside=1..}] remove twsc.outside