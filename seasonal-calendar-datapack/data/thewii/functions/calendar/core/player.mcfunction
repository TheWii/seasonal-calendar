#> thewii:calendar/core/player

# Display clock in actionbar
execute if score @s twsc.cfg_display matches 2.. if entity @s[tag=!global.ignore.gui] run function thewii:calendar/display/player


# Triggered settings
execute unless score @s SeasonalCalendar matches 0 run function thewii:calendar/settings/triggered