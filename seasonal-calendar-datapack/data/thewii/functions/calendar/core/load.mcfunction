# Clear schedules
schedule clear thewii:calendar/core/main_3
schedule clear thewii:calendar/interactions/main


# Check minimum version required
scoreboard objectives add twsc.temp dummy
scoreboard players set $1.15 twsc.temp 0 
function thewii:calendar/core/detect_1.15


# Proceed
execute if score $1.15 twsc.temp matches 1 run function thewii:calendar/core/load_2
execute if score $1.15 twsc.temp matches 0 run tellraw @a ["",{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Seasonal Calendar v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:calendar/data","color":"white","bold":false},{"text":" failed to load. It requires at least minecraft 1.15. ","color":"white","bold":false}]