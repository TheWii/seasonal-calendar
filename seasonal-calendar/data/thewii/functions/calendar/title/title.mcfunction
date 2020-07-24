execute unless score $weekday twsc.data = #weekdayUpdate twsc.data run function thewii:calendar/display/weekday_rename

title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] times 5 60 5
title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] title [{"nbt":"display.weekday.allCapslock","storage":"thewii:calendar/data","bold":true,"color":"white"},{"text":", DAY ","bold":true,"color":"white"},{"score":{"name":"$day","objective":"twsc.data"},"bold":true,"color":"white"}]
execute at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 0.15 0.9

execute if score $season twsc.data matches 1 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"SPRING","color":"light_purple","bold":true}]
execute if score $season twsc.data matches 2 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle ["",{"text":"SUMMER","color":"yellow","bold":true}]
execute if score $season twsc.data matches 3 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle ["",{"text":"AUTUMN","color":"gold","bold":true}]
execute if score $season twsc.data matches 4 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle ["",{"text":"WINTER","color":"aqua","bold":true}]

scoreboard players set #title twsc.data 0
execute if score $season twsc.data matches 1 run function thewii:calendar/title/sounds_spring
execute if score $season twsc.data matches 2 run function thewii:calendar/title/sounds_summer
execute if score $season twsc.data matches 3 run function thewii:calendar/title/sounds_autumn
execute if score $season twsc.data matches 4 run function thewii:calendar/title/sounds_winter

execute if score #weather_generation twsc.data matches 1.. run schedule function thewii:calendar/weather/weather_title 70t