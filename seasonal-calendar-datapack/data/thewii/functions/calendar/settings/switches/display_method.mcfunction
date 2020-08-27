scoreboard players add @s twsc.cfg_display 1
execute if score @s twsc.cfg_display matches 5.. run scoreboard players set @s twsc.cfg_display 1

execute if entity @s run function thewii:calendar/settings/show