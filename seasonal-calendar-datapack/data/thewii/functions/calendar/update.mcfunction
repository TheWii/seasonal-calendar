scoreboard objectives add twsc.data dummy

scoreboard players operation $day twsc.data = Day Calendar
scoreboard players operation $season twsc.data = Season Calendar
scoreboard players operation $weather twsc.data = Weather Calendar
scoreboard players operation $ForecStart twsc.data = #ForecStart Calendar
scoreboard players operation $ForecEnd twsc.data = #ForecEnd Calendar

data remove storage calendar:storage Saved
data remove storage calendar:storage Installed
data remove storage calendar:storage FirstReload
data remove storage calendar:storage Version

scoreboard objectives remove Calendar
scoreboard objectives remove sc.display
scoreboard objectives remove sc.day_title

function thewii:calendar/uninstall
function thewii:calendar/install

tellraw @a[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Seasonal Calendar was updated to v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:calendar/data","color":"white","bold":false},{"text":"!","color":"white","bold":false},{"text":"[SETTINGS]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 1"}}]