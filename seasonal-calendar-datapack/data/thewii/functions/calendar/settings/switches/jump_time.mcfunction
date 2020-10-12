#> thewii:calendar/settings/switches/jump_time

# Store
execute if score @s SeasonalCalendar matches 101..121 store result score $day twsc.data run scoreboard players remove @s SeasonalCalendar 100
execute if score @s SeasonalCalendar matches 201..204 store result score $season twsc.data run scoreboard players remove @s SeasonalCalendar 200

# Update week displays
function thewii:calendar/time/week

# Show menu
function thewii:calendar/settings/jump_time