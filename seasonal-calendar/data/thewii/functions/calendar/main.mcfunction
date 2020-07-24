# Get daytime
execute store result score $daytime twsc.data run time query daytime

# Sunrise functions
execute if score $daytime twsc.data matches 1 run function thewii:calendar/time/sunrise

# Clock
function thewii:calendar/time/minute
execute unless score #hourUpdate twsc.data = $minuteSub twsc.data run function thewii:calendar/time/hour

# Forecast management
execute if score $weather twsc.data matches 201..299 run function thewii:calendar/weather/forecast_management
