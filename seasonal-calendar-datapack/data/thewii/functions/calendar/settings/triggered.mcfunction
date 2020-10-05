#> thewii:calendar/settings/triggered

# Detect if player triggered using /trigger
execute store success score #triggered twvp.temp run scoreboard players enable @s SeasonalCalendar

# Check if installed
execute unless data storage thewii:calendar/data {installed:1b} run scoreboard players set @s SeasonalCalendar 0


# Cheats off

# Show settings
execute if score @s SeasonalCalendar matches 1 run function thewii:calendar/settings/show

# Player changed personal settings
execute if score @s SeasonalCalendar matches 2 run function thewii:calendar/settings/switches/display_method
execute if score @s SeasonalCalendar matches 3 run function thewii:calendar/settings/switches/day_title
execute if score @s SeasonalCalendar matches 4 run function thewii:calendar/settings/switches/display_pos


## Cheats on
execute if score #triggered twvp.temp matches 1 run scoreboard players set @s SeasonalCalendar 0

# Jump time
execute if score @s SeasonalCalendar matches 5 run function thewii:calendar/settings/switches/jump_time

# Reset calendar
execute if score @s SeasonalCalendar matches 6 run function thewii:calendar/settings/calendar_reset_warning
execute if score @s SeasonalCalendar matches 7 run function thewii:calendar/settings/calendar_reset

# Uninstall
execute if score @s SeasonalCalendar matches 8 run function thewii:calendar/settings/uninstall_warning
execute if score @s SeasonalCalendar matches 9 run function thewii:calendar/uninstall

execute if score @s SeasonalCalendar matches 10 run function thewii:calendar/settings/switches/weather_generation
execute if score @s SeasonalCalendar matches 11 run function thewii:calendar/settings/switches/interactions
execute if score @s SeasonalCalendar matches 12 run function thewii:calendar/settings/switches/crops_growth

# Player changing time
execute if score @s SeasonalCalendar matches 101..204 run function thewii:calendar/settings/switches/jump_time


# Reset triggers
scoreboard players reset @s SeasonalCalendar
scoreboard players enable @s SeasonalCalendar