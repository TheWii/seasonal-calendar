# Player
execute as @a at @s run function thewii:calendar/player

# Forecast management
execute if score $weather twsc.data matches 201..299 run function thewii:calendar/weather/forecast_management

schedule function thewii:calendar/main_3 3t replace