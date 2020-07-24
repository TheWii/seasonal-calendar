scoreboard objectives add twsc.temp dummy
scoreboard objectives add twsc.data dummy
scoreboard objectives add twsc.math dummy

scoreboard players set $1.16 twsc.temp 0 
function thewii:calendar/detect_1.16

scoreboard players operation $1.15 twsc.data = $1.15 twsc.temp
scoreboard players operation $1.16 twsc.data = $1.16 twsc.temp

scoreboard objectives add twsc.cfg_display dummy
scoreboard objectives add twsc.cfg_title dummy
scoreboard objectives add twsc.cfg_pos dummy

scoreboard objectives add twsc.athmos dummy
scoreboard objectives add twsc.outside dummy

scoreboard objectives add SeasonalCalendar trigger
scoreboard players enable @a SeasonalCalendar

gamerule commandBlockOutput false
gamerule doWeatherCycle false

execute unless score $daytime twsc.data matches 0.. run scoreboard players set $daytime twsc.data 0
execute unless score $day twsc.data matches 0.. run scoreboard players set $day twsc.data 1
execute unless score $hour twsc.data matches 0.. run scoreboard players set $hour twsc.data 0
execute unless score $minute twsc.data matches 0.. run scoreboard players set $minute twsc.data 0
execute unless score $minuteSub twsc.data matches 0.. run scoreboard players set $minuteSub twsc.data 0
execute unless score $season twsc.data matches 0.. run scoreboard players set $season twsc.data 1
execute unless score $weekday twsc.data matches 0.. run scoreboard players set $weekday twsc.data 0
execute unless score $weather twsc.data matches 0.. run scoreboard players set $weather twsc.data 0

function thewii:calendar/rng/init

scoreboard players set #1000 twsc.math 1000
scoreboard players set #16667 twsc.math 16667
scoreboard players set #60 twsc.math 60
scoreboard players set #12 twsc.math 12
scoreboard players set #6 twsc.math 6
scoreboard players set #7 twsc.math 7
scoreboard players set #1 twsc.math 1

scoreboard players set #24 twsc.math 24

scoreboard players set #weather_generation twsc.data 2
scoreboard players set #interactions twsc.data 0
scoreboard players set #crops_growth twsc.data 0

scoreboard players set @a twsc.cfg_display 2
scoreboard players set @a twsc.cfg_title 1
scoreboard players set @a twsc.cfg_pos 1

execute if data storage thewii:calendar/data {FirstReload:true} store result score $day twsc.data run data get storage thewii:calendar/data Saved.Day
execute if data storage thewii:calendar/data {FirstReload:true} store result score $season twsc.data run data get storage thewii:calendar/data Saved.Season
execute if data storage thewii:calendar/data {FirstReload:true} store result score $weather twsc.data run data get storage thewii:calendar/data Saved.Weather
execute if data storage thewii:calendar/data {FirstReload:true} store result score #ForecStart twsc.data run data get storage thewii:calendar/data Saved.Forecast.Start
execute if data storage thewii:calendar/data {FirstReload:true} store result score #ForecEnd twsc.data run data get storage thewii:calendar/data Saved.Forecast.End
data remove storage thewii:calendar/data Saved

execute unless data storage thewii:calendar/data {FirstReload:true} run schedule function thewii:calendar/title/title 60t
execute unless data storage thewii:calendar/data {FirstReload:true} run schedule function thewii:calendar/weather/generate 1t

data merge storage thewii:calendar/data {FirstReload:true,Installed:true,Version:"2.0.1"}
scoreboard players set $installed twsc.data 1

function thewii:calendar/time/week
function thewii:calendar/display/weekday_rename

function thewii:calendar/settings/triggered