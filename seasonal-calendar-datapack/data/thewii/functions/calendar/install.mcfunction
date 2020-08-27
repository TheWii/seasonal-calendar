# Check minimum version required
scoreboard objectives add twsc.temp dummy
scoreboard players set $1.15 twsc.temp 0 
function thewii:calendar/core/detect_1.15


# Proceed
execute if score $1.15 twsc.temp matches 1 run function thewii:calendar/core/install_2