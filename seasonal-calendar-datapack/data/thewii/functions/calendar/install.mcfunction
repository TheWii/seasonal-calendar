scoreboard objectives add twsc.temp dummy
scoreboard players set $1.15 twsc.temp 0 
function thewii:calendar/detect_1.15

execute if score $1.15 twsc.temp matches 1 run function thewii:calendar/install_2
execute if score $1.15 twsc.temp matches 0 run scoreboard objectives remove twsc.temp