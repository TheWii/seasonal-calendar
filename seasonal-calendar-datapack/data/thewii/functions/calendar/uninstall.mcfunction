execute store result score $gamerule twsc.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false
execute if score $gamerule twsc.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append

execute if score #weather_generation twsc.data matches 1 run gamerule doWeatherCycle true
weather clear

tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal Calendar Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"\n"},{"text":"                "},{"text":"SEASONAL CALENDAR UNINSTALLED","color":"red","strikethrough":false,"bold":true}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"\n"},{"text":" This datapack was successfuly uninstalled! It's still activated, meaning you can use ","color":"white","strikethrough":false,"bold":false},{"text":"/function thewii:calendar/install ","color":"white","strikethrough":false,"bold":false,"italic":true},{"text":"to install it again.","color":"white","strikethrough":false,"bold":false}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                             "},{"text":"[RE-INSTALL]","color":"green","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/install"}}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

execute store result storage thewii:calendar/data Saved.Day int 1 run scoreboard players get $day twsc.data
execute store result storage thewii:calendar/data Saved.Season int 1 run scoreboard players get $season twsc.data
execute store result storage thewii:calendar/data Saved.Weather int 1 run scoreboard players get $weather twsc.data
execute store result storage thewii:calendar/data Saved.Forecast.Start int 1 run scoreboard players get #ForecStart twsc.data
execute store result storage thewii:calendar/data Saved.Forecast.End int 1 run scoreboard players get #ForecEnd twsc.data

scoreboard objectives remove twsc.temp
scoreboard objectives remove twsc.data
scoreboard objectives remove twsc.math

scoreboard objectives remove twsc.cfg_display
scoreboard objectives remove twsc.cfg_title
scoreboard objectives remove twsc.cfg_pos

scoreboard objectives remove SeasonalCalendar

data remove storage thewii:calendar/data display
data remove storage thewii:calendar/temp Array
data remove storage thewii:calendar/temp pos
data remove storage thewii:calendar/temp start
data remove storage thewii:calendar/temp minute
data remove storage thewii:calendar/temp season

data merge storage thewii:calendar/data {Installed:false,FirstReload:true}

playsound minecraft:block.note_block.hat ambient @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 1 0