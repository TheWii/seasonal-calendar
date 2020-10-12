#> thewii:calendar/time/week

# Copy season day
scoreboard players operation $weekday twsc.data = $day twsc.data

# Module it down to (0-6) and add 1
scoreboard players operation $weekday twsc.data %= #7 twvp.math
scoreboard players add $weekday twsc.data 1

scoreboard players operation #dayUpdate twsc.data = $day twsc.data

# Update display names
function thewii:calendar/display/display_names