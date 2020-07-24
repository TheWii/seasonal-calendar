scoreboard players operation $hour twsc.data = $daytime twsc.data
scoreboard players operation $hour twsc.data /= #1000 twsc.math

execute if score $daytime twsc.data matches 7001.. run scoreboard players operation $hour twsc.data -= #12 twsc.math
execute if score $daytime twsc.data matches 19000.. run scoreboard players operation $hour twsc.data -= #12 twsc.math
scoreboard players add $hour twsc.data 6

scoreboard players operation #hourUpdate twsc.data = $minuteSub twsc.data

function thewii:calendar/display/display_names