execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s if predicate thewii:calendar/in_overworld run function thewii:calendar/weather/seasonal/effects/spring_pollen

execute as @a[tag=!global.ignore] unless score @s twsc.athmos matches 6000.. run scoreboard players add @s[scores={twsc.outside=0}] twsc.athmos 1
scoreboard players remove @a[tag=!global.ignore,scores={twsc.outside=1..,twsc.athmos=3..}] twsc.athmos 3
execute as @a[tag=!global.ignore,scores={twsc.athmos=6000}] at @s run function thewii:calendar/weather/seasonal/sideeffects/pollen_sick

scoreboard players reset @a[tag=!global.ignore] twsc.outside

execute if score $weather twsc.data matches 111 run schedule function thewii:calendar/weather/seasonal/spring_pollen 1t