# Get daytime
execute store result score $daytime twsc.data run time query daytime

# Sunrise functions
execute if score $daytime twsc.data matches 1 run function thewii:calendar/time/sunrise


# Weather management
function thewii:calendar/weather/seasonal


# Clock
function thewii:calendar/time/minute
execute unless score #hourUpdate twsc.data = $minuteSub twsc.data run function thewii:calendar/time/hour
