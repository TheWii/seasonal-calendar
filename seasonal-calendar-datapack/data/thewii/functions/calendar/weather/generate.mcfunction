# Rng percentage
scoreboard players set #min twsc.math 1
scoreboard players set #max twsc.math 100
function thewii:calendar/rng/ranged_rng
scoreboard players operation $weather twsc.data = #result twsc.math

# Reset weather and scores
weather clear

scoreboard players reset #forecStart twsc.data
scoreboard players reset #forecEnd twsc.data
scoreboard players reset #forecLengh twsc.data
scoreboard players reset $forecStart twsc.data
scoreboard players reset $forecEnd twsc.data

# Translate percentage to weather state depending on season
execute if score $season twsc.data matches 1 run function thewii:calendar/weather/generate/weather_spring
execute if score $season twsc.data matches 2 run function thewii:calendar/weather/generate/weather_summer
execute if score $season twsc.data matches 3 run function thewii:calendar/weather/generate/weather_autumn
execute if score $season twsc.data matches 4 run function thewii:calendar/weather/generate/weather_winter

# Set weather(if all day)
execute if score $weather twsc.data matches 100 run weather clear 24020
execute if score $weather twsc.data matches 301 run weather rain 24020
execute if score $weather twsc.data matches 302 run weather thunder 24020

# Generate forecast(if temporary)
execute if score $weather twsc.data matches 201..299 run function thewii:calendar/weather/generate/forecast