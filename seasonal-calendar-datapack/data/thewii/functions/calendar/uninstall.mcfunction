#> thewii:calendar/uninstall

# Command feedback
execute store result score $gamerule twvp.temp run gamerule sendCommandFeedback

gamerule sendCommandFeedback false
execute if score $gamerule twvp.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append


# Weather generation
execute if score #weather_generation twsc.data matches 1 run gamerule doWeatherCycle true
weather clear


# Store season and weather
execute store result storage thewii:calendar/data saved.day int 1 run scoreboard players get $day twsc.data
execute store result storage thewii:calendar/data saved.season int 1 run scoreboard players get $season twsc.data
execute store result storage thewii:calendar/data saved.year int 1 run scoreboard players get $year twsc.data
execute store result storage thewii:calendar/data saved.weather int 1 run scoreboard players get $weather twsc.data
execute store result storage thewii:calendar/data saved.forecast.start int 1 run scoreboard players get #ForecStart twsc.data
execute store result storage thewii:calendar/data saved.forecast.end int 1 run scoreboard players get #ForecEnd twsc.data


# Remove data
scoreboard objectives remove twsc.data

scoreboard objectives remove twsc.cfg_display
scoreboard objectives remove twsc.cfg_title
scoreboard objectives remove twsc.cfg_pos

scoreboard objectives remove twsc.athmos
scoreboard objectives remove twsc.outside

scoreboard objectives remove SeasonalCalendar


# Vanilla+ Library Modules
execute if data storage thewii:calendar/data installed run function thewii:vp_library/math/remove


# Clear storages
function thewii:calendar/core/clear_storage

data remove storage thewii:calendar/data version
data remove storage thewii:calendar/data installed


# Clear schedules
schedule clear thewii:calendar/core/main_3
schedule clear thewii:calendar/interactions/main


# Uninstalled message
tellraw @s [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Seasonal Calendar was uninstalled. Disable the datapack to complete uninstallation or /reload to reinstall it.","color":"white","bold":false}]