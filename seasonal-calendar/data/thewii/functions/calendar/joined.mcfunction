execute unless score @s twsc.cfg_display matches 1.. run scoreboard players set @s twsc.cfg_display 2
execute unless score @s twsc.cfg_title matches 1.. run scoreboard players set @s twsc.cfg_title 1
execute unless score @s twsc.cfg_pos matches 1.. run scoreboard players set @s twsc.cfg_pos 1

execute if score $1.16 twsc.data matches 0 run scoreboard players set @s twsc.cfg_display 2

scoreboard players enable @s SeasonalCalendar