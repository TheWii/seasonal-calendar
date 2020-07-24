# Identify pos
execute if score @s twsc.cfg_pos matches 1 run function thewii:calendar/display/pos/above_hotbar
execute if score @s twsc.cfg_pos matches 2 run function thewii:calendar/display/pos/bottom_left
execute if score @s twsc.cfg_pos matches 3 run function thewii:calendar/display/pos/bottom_right

# Display
title @s[tag=!global.ignore,tag=!global.ignore.gui] actionbar [{"nbt":"pos","storage":"thewii:calendar/temp","interpret":true},{"nbt":"start","storage":"thewii:calendar/temp","interpret":true},{"nbt":"minute","storage":"thewii:calendar/temp","interpret":true},{"nbt":"season","storage":"thewii:calendar/temp","interpret":true}]
