scoreboard players add @s twsc.cfg_title 1
execute unless score @s twsc.cfg_title matches 0..3 run scoreboard players set @s twsc.cfg_title 0

execute if entity @s run function thewii:calendar/settings/show