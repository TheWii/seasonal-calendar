scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.grass.fall master @s ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 13 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:item.hoe.till master @s ~ ~ ~ 0.4 0.6
execute if score #title twsc.data matches 23 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.grass.fall master @s ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 33 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:item.hoe.till master @s ~ ~ ~ 0.4 0.6
execute if score #title twsc.data matches 33 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.chorus_flower.death master @s ~ ~ ~ 5.0 0.0
execute if score #title twsc.data matches 45 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.grass.fall master @s ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 63 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.grass.fall master @s ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 70 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.chorus_flower.death master @s ~ ~ ~ 5.0 0.0

execute if score #title twsc.data matches 70 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_spring 1t replace