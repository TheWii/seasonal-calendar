# Command feedback
execute store result score $gamerule twsc.temp run gamerule sendCommandFeedback

gamerule sendCommandFeedback false
execute if score $gamerule twsc.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append


# Weather generation
execute if score #weather_generation twsc.data matches 1 run gamerule doWeatherCycle true
weather clear


# Chat message
function thewii:calendar/settings/successfuly_uninstalled


# Store season and weather
execute store result storage thewii:calendar/data Saved.Day int 1 run scoreboard players get $day twsc.data
execute store result storage thewii:calendar/data Saved.Season int 1 run scoreboard players get $season twsc.data
execute store result storage thewii:calendar/data Saved.Year int 1 run scoreboard players get $year twsc.data
execute store result storage thewii:calendar/data Saved.Weather int 1 run scoreboard players get $weather twsc.data
execute store result storage thewii:calendar/data Saved.Forecast.Start int 1 run scoreboard players get #ForecStart twsc.data
execute store result storage thewii:calendar/data Saved.Forecast.End int 1 run scoreboard players get #ForecEnd twsc.data


# Remove data
scoreboard objectives remove twsc.temp
scoreboard objectives remove twsc.data
scoreboard objectives remove twsc.math

scoreboard objectives remove twsc.cfg_display
scoreboard objectives remove twsc.cfg_title
scoreboard objectives remove twsc.cfg_pos

scoreboard objectives remove SeasonalCalendar

data remove storage thewii:calendar/data display
data remove storage thewii:calendar/temp Array
data remove storage thewii:calendar/temp pos
data remove storage thewii:calendar/temp start
data remove storage thewii:calendar/temp minute
data remove storage thewii:calendar/temp season

data merge storage thewii:calendar/data {Installed:false,FirstReload:true}