#> thewii:calendar/core/version

# Reset scores
scoreboard players set $version.merged twsc.data 0
scoreboard players set $version.major twsc.data 0
scoreboard players set $version.minor twsc.data 0
scoreboard players set $version.patch twsc.data 0


# Merged 010203
scoreboard players operation $version.merged twsc.data = $seasonal_calendar thewii.load

# Major 01XXXX
scoreboard players operation $version.major twsc.data = $seasonal_calendar thewii.load
scoreboard players operation $version.major twsc.data /= #10000 twvp.math

# Minor XX02XX
scoreboard players operation $version.minor twsc.data = $seasonal_calendar thewii.load
scoreboard players operation $version.minor twsc.data /= #100 twvp.math
scoreboard players operation $version.minor twsc.data %= #100 twvp.math

# Patch XXXX03
scoreboard players operation $version.patch twsc.data = $seasonal_calendar thewii.load
scoreboard players operation $version.patch twsc.data %= #100 twvp.math


# Store integers to storage
execute store result storage thewii:calendar/data version.merged int 1 run scoreboard players get $version.merged twsc.data
execute store result storage thewii:calendar/data version.major int 1 run scoreboard players get $version.major twsc.data
execute store result storage thewii:calendar/data version.minor int 1 run scoreboard players get $version.minor twsc.data
execute store result storage thewii:calendar/data version.patch int 1 run scoreboard players get $version.patch twsc.data
