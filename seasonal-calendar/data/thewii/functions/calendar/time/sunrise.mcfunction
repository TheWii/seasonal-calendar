scoreboard players reset @a twsc.athmos

# Add day
scoreboard players add $day twsc.data 1
execute if score $day twsc.data matches 22.. run function thewii:calendar/time/season_swap

# Update display names
function thewii:calendar/time/week

# Weather
execute if score #weather_generation twsc.data matches 1.. run function thewii:calendar/weather/generate
execute unless score #weather_generation twsc.data matches 1.. run scoreboard players set $weather twsc.data 0

function thewii:calendar/weather/seasonal

function thewii:calendar/rts_set

execute if entity @a[scores={twsc.cfg_title=1}] run schedule function thewii:calendar/title/title 1t