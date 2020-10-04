#> thewii:calendar/core/install

# Add scoreboards
scoreboard objectives add twsc.data dummy

scoreboard objectives add twsc.cfg_display dummy
scoreboard objectives add twsc.cfg_title dummy
scoreboard objectives add twsc.cfg_pos dummy

scoreboard objectives add twsc.athmos dummy
scoreboard objectives add twsc.outside dummy

scoreboard objectives add SeasonalCalendar trigger
scoreboard players enable @a SeasonalCalendar

# Vanilla+ Lib modules
execute unless data storage thewii:calendar/data installed run function thewii:vp_library/math/add

# Load math scores
scoreboard players set #6 twvp.math 6
scoreboard players set #7 twvp.math 7
scoreboard players set #12 twvp.math 12
scoreboard players set #24 twvp.math 24
scoreboard players set #60 twvp.math 60
scoreboard players set #1000 twvp.math 1000
scoreboard players set #16667 twvp.math 16667


# Set default settings
scoreboard players set #weather_generation twsc.data 2
scoreboard players set #interactions twsc.data 0
scoreboard players set #crops_growth twsc.data 0

scoreboard players set @a twsc.cfg_display 2
scoreboard players set @a twsc.cfg_title 2
scoreboard players set @a twsc.cfg_pos 1

gamerule doWeatherCycle false


# Load saved data
execute if data storage thewii:calendar/data saved.day store result score $day twsc.data run data get storage thewii:calendar/data saved.day
execute if data storage thewii:calendar/data saved.season store result score $season twsc.data run data get storage thewii:calendar/data saved.season
execute if data storage thewii:calendar/data saved.year store result score $year twsc.data run data get storage thewii:calendar/data saved.year
execute if data storage thewii:calendar/data saved.weather store result score $weather twsc.data run data get storage thewii:calendar/data saved.weather
execute if data storage thewii:calendar/data saved.forecast.start store result score #ForecStart twsc.data run data get storage thewii:calendar/data saved.forecast.start
execute if data storage thewii:calendar/data saved.forecast.end store result score #ForecEnd twsc.data run data get storage thewii:calendar/data saved.forecast.end
data remove storage thewii:calendar/data saved


# Set scores
execute unless score $day twsc.data matches 1.. run scoreboard players set $day twsc.data 1
execute unless score $season twsc.data matches 1.. run scoreboard players set $season twsc.data 1


# Title and call weather generation function
schedule function thewii:calendar/title/title 60t
schedule function thewii:calendar/weather/generate 1t


# Versioning

## Set installed
data modify storage thewii:calendar/data installed set value 1b
scoreboard players set $installed twsc.data 1

## Semantic version
function thewii:calendar/core/version

## Minecraft versions
scoreboard players set #1.16 thewii.load 0 
function thewii:calendar/core/detect_1.16


# Set calendar
function thewii:calendar/time/week

# Schedule
schedule function thewii:calendar/core/main_3 1t


# Installed message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Seasonal Calendar v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twsc.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twsc.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twsc.data"},"color":"white","bold":false},{"text":" was installed!","color":"white","bold":false}]