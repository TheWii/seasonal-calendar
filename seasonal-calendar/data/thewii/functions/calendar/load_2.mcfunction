execute unless data storage thewii:calendar/data {FirstReload:true} run function thewii:calendar/install

execute if data storage thewii:calendar/data {Version:"2.0.1"} run tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Seasonal Calendar v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:calendar/data","color":"white","bold":false},{"text":" is loaded. ","color":"white","bold":false},{"text":"[SETTINGS]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 1"}}]
execute unless data storage thewii:calendar/data {Version:"2.0.1"} run function thewii:calendar/update

scoreboard players set $1.16 twsc.temp 0 
function thewii:calendar/detect_1.16

scoreboard players operation $1.15 twsc.data = $1.15 twsc.temp
scoreboard players operation $1.16 twsc.data = $1.16 twsc.temp

execute if score #interactions twsc.data matches 1 run function thewii:calendar/interactions/main
function thewii:calendar/main_3