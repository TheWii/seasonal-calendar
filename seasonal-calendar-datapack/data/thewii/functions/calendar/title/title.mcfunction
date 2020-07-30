execute unless score $weekday twsc.data = #weekdayUpdate twsc.data run function thewii:calendar/display/weekday_rename

execute as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run function thewii:calendar/title/player

scoreboard players set #title twsc.data 0
execute if score $season twsc.data matches 1 run function thewii:calendar/title/sounds_spring
execute if score $season twsc.data matches 2 run function thewii:calendar/title/sounds_summer
execute if score $season twsc.data matches 3 run function thewii:calendar/title/sounds_autumn
execute if score $season twsc.data matches 4 run function thewii:calendar/title/sounds_winter

execute if score #weather_generation twsc.data matches 1.. run schedule function thewii:calendar/weather/weather_title 70t