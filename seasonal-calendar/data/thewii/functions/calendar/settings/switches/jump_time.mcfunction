execute if score @s SeasonalCalendar matches 101..121 store result score $day twsc.data run scoreboard players remove @s SeasonalCalendar 100
execute if score @s SeasonalCalendar matches 201..204 store result score $season twsc.data run scoreboard players remove @s SeasonalCalendar 200

function thewii:calendar/time/week

execute if entity @s[tag=!global.ignore,tag=!global.ignore.gui] run function thewii:calendar/settings/jump_time