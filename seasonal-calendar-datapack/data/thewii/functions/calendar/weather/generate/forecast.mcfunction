# Generate event length
execute if score $season twsc.data matches 1..3 run scoreboard players set #min twsc.math 2
execute if score $season twsc.data matches 4 run scoreboard players set #min twsc.math 1

execute if score $season twsc.data matches 1 run scoreboard players set #max twsc.math 4
execute if score $season twsc.data matches 2 run scoreboard players set #max twsc.math 5
execute if score $season twsc.data matches 3 run scoreboard players set #max twsc.math 3
execute if score $season twsc.data matches 4 run scoreboard players set #max twsc.math 3

function thewii:calendar/rng/ranged_rng
scoreboard players operation #forecLengh twsc.data = #result twsc.math

# Generate event start
scoreboard players set #min twsc.math 1
scoreboard players set #max twsc.math 24

function thewii:calendar/rng/ranged_rng
scoreboard players operation #forecStart twsc.data = #result twsc.math

# Calculate event end
scoreboard players operation #forecEnd twsc.data = #forecStart twsc.data
scoreboard players operation #forecEnd twsc.data += #forecLengh twsc.data

# Repair event times if end is above the limit
execute if score #forecEnd twsc.data matches 25.. run function thewii:calendar/weather/generate/forecastend_repair

# Copy forecast start and end to another place
scoreboard players operation $forecStart twsc.data = #forecStart twsc.data
scoreboard players operation $forecEnd twsc.data = #forecEnd twsc.data

# Generate forecast start display
execute if score $forecStart twsc.data matches ..5 run data merge storage thewii:calendar/data {display:{forecast:{startNoon:"AM"}}}
execute if score $forecStart twsc.data matches 6..17 run data merge storage thewii:calendar/data {display:{forecast:{startNoon:"PM"}}}
execute if score $forecStart twsc.data matches 18.. run data merge storage thewii:calendar/data {display:{forecast:{startNoon:"AM"}}}

execute if score $forecStart twsc.data matches 7.. run scoreboard players remove $forecStart twsc.data 12
execute if score $forecStart twsc.data matches 7.. run scoreboard players remove $forecStart twsc.data 12
scoreboard players add $forecStart twsc.data 6

# Generate forecast end display
execute if score $forecEnd twsc.data matches ..5 run data merge storage thewii:calendar/data {display:{forecast:{endNoon:"AM"}}}
execute if score $forecEnd twsc.data matches 6..17 run data merge storage thewii:calendar/data {display:{forecast:{endNoon:"PM"}}}
execute if score $forecEnd twsc.data matches 18.. run data merge storage thewii:calendar/data {display:{forecast:{endNoon:"AM"}}}

execute if score $forecEnd twsc.data matches 7.. run scoreboard players remove $forecEnd twsc.data 12
execute if score $forecEnd twsc.data matches 7.. run scoreboard players remove $forecEnd twsc.data 12
scoreboard players add $forecEnd twsc.data 6

# Match forecast times with daytime
scoreboard players operation #forecStart twsc.data *= #1000 twsc.math
scoreboard players operation #forecEnd twsc.data *= #1000 twsc.math

# Subtract by 1 if forecast end = 24000 (daytime 24000 can't be detected)
execute if score #forecEnd twsc.data matches 24000 run scoreboard players remove #forecEnd twsc.data 1
