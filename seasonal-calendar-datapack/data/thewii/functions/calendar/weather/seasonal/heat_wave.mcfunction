execute as @a[tag=!global.ignore,tag=!global.ignore.gui] at @s if predicate thewii:calendar/in_overworld run function thewii:calendar/weather/seasonal/effects/heat_wave

execute if score $daytime twsc.data matches 1..13500 as @a[tag=!global.ignore] unless score @s twsc.athmos matches 3000.. run scoreboard players add @s[scores={twsc.outside=0}] twsc.athmos 1
scoreboard players remove @a[tag=!global.ignore,scores={twsc.outside=1..,twsc.athmos=2..}] twsc.athmos 2
execute as @a[tag=!global.ignore] at @s if block ~ ~ ~ water run scoreboard players remove @s[scores={twsc.athmos=10..}] twsc.athmos 10
execute as @a[tag=!global.ignore,scores={twsc.athmos=3000}] at @s run function thewii:calendar/weather/seasonal/sideeffects/heat_sick

execute if score $weather twsc.data matches 121 run schedule function thewii:calendar/weather/seasonal/heat_wave 1t