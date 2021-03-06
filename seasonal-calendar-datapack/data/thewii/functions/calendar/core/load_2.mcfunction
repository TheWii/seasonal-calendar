# Install
execute unless data storage thewii:calendar/data {FirstReload:true} run function thewii:calendar/install


# Load version and update
execute store result score $version twsc.data run data get storage thewii:calendar/data NumericVersion

execute if score $installed twsc.data matches 1 if score $version twsc.data matches ..20001 run function thewii:calendar/core/update


# Versions
scoreboard players set $1.16 twsc.temp 0 
function thewii:calendar/core/detect_1.16

scoreboard players operation $1.15 twsc.data = $1.15 twsc.temp
scoreboard players operation $1.16 twsc.data = $1.16 twsc.temp

scoreboard players set #seasonal_calendar thewii.load 020002


# Schedule
execute if score #interactions twsc.data matches 1 run schedule function thewii:calendar/interactions/main 1t replace
schedule function thewii:calendar/core/main_3 1t replace