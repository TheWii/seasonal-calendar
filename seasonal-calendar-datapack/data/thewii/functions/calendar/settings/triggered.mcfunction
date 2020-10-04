#> thewii:calendar/settings/triggered

# Detect if player triggered using /trigger
execute store success score #triggered twvp.temp run scoreboard players enable @s SeasonalCalendar

# Show settings
execute if data storage thewii:calendar/data {installed:1b} unless score @s SeasonalCalendar matches 2.. run function thewii:calendar/settings/show

# Player changed personal settings
execute if data storage thewii:calendar/data {installed:1b} if score @s SeasonalCalendar matches 2 run function thewii:calendar/settings/switches/display_method
execute if data storage thewii:calendar/data {installed:1b} if score @s SeasonalCalendar matches 3 run function thewii:calendar/settings/switches/day_title
execute if data storage thewii:calendar/data {installed:1b} if score @s SeasonalCalendar matches 4 run function thewii:calendar/settings/switches/display_pos

# Player changing time
execute if data storage thewii:calendar/data {installed:1b} if score @s SeasonalCalendar matches 101..204 if score #triggered twvp.temp matches 0 run function thewii:calendar/settings/switches/jump_time

# Reset triggers
scoreboard players reset @s SeasonalCalendar
scoreboard players enable @s SeasonalCalendar