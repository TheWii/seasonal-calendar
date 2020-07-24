scoreboard players operation $weekday twsc.data = $day twsc.data

execute if score $day twsc.data matches 8.. run scoreboard players operation $weekday twsc.data -= #7 twsc.math
execute if score $day twsc.data matches 15.. run scoreboard players operation $weekday twsc.data -= #7 twsc.math

scoreboard players operation #dayUpdate twsc.data = $day twsc.data

function thewii:calendar/display/display_names