execute if data storage thewii:calendar/data {Installed:1b} as @s unless score @s SeasonalCalendar matches 2.. run function thewii:calendar/settings/show

execute if data storage thewii:calendar/data {Installed:1b} as @s if score @s SeasonalCalendar matches 2 run function thewii:calendar/settings/switches/display_method
execute if data storage thewii:calendar/data {Installed:1b} as @s if score @s SeasonalCalendar matches 3 run function thewii:calendar/settings/switches/day_title
execute if data storage thewii:calendar/data {Installed:1b} as @s if score @s SeasonalCalendar matches 4 run function thewii:calendar/settings/switches/display_pos

execute if data storage thewii:calendar/data {Installed:1b} as @s if score @s SeasonalCalendar matches 101..204 run function thewii:calendar/settings/switches/jump_time

scoreboard players reset @s SeasonalCalendar
scoreboard players enable @s SeasonalCalendar