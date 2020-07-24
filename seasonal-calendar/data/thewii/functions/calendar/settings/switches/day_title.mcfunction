scoreboard players add @s twsc.cfg_title 1
execute if score @s twsc.cfg_title matches 2.. run scoreboard players set @s twsc.cfg_title 0

execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] run function thewii:calendar/settings/show