#> thewii:calendar/time/hour

# Get daytime and convert it to 0-23 values
scoreboard players operation $hour twsc.data = $daytime twsc.data
scoreboard players operation $hour twsc.data /= #1000 twvp.math

# Convert 24hr format to 12hr format
execute if score $daytime twsc.data matches 7001.. run scoreboard players remove $hour twsc.data 12
execute if score $daytime twsc.data matches 19000.. run scoreboard players remove $hour twsc.data 12
scoreboard players add $hour twsc.data 6

# Update score compare
scoreboard players operation #hourUpdate twsc.data = $minuteSub twsc.data

# Update display names
function thewii:calendar/display/display_names