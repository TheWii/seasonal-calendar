scoreboard players add @s twsc.cfg_pos 1
execute if score @s twsc.cfg_pos matches 4.. run scoreboard players set @s twsc.cfg_pos 1

execute if score $1.16 twsc.data matches 0 if score @s twsc.cfg_pos matches 2.. run scoreboard players set @s twsc.cfg_pos 1

execute if entity @s run function thewii:calendar/settings/show