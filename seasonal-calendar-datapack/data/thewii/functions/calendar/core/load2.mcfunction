#> thewii:calendar/core/load2

# Datapack version
scoreboard players set $seasonal_calendar thewii.load 020003

# Install
execute unless data storage thewii:calendar/data installed run function thewii:calendar/core/install

# Confirm if Vanilla+ Library modules are installed
execute unless data storage thewii:vp_library/data modules.math run function thewii:vp_library/math/add


# Update
execute store result score $version.merged twsc.data run data get storage thewii:calendar/data version.merged
execute if score $seasonal_calendar thewii.load > $version.merged twia.data run function thewii:calendar/core/update


# Versions
scoreboard players set $1.15 twsc.data 1
execute if score $mc_version thewii.load matches 011600.. run scoreboard players set $1.16 twsc.data 1

# Schedule
execute if score #interactions twsc.data matches 1 run schedule function thewii:calendar/interactions/main 1t replace
schedule function thewii:calendar/core/main_3 1t replace