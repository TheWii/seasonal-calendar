scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:block.water.ambient master @s ~ ~ ~ 0.3 0.6
execute if score #title twsc.data matches 3 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:ambient.underwater.enter ambient @s ~ ~ ~ 0.2 0.0
execute if score #title twsc.data matches 5 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.player.splash.high_speed master @s ~ ~ ~ 0.3 1
execute if score #title twsc.data matches 14 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 0.3 0.8
execute if score #title twsc.data matches 34 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 0.3 0.7
execute if score #title twsc.data matches 54 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.player.swim master @s ~ ~ ~ 0.3 1
execute if score #title twsc.data matches 90 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:ambient.underwater.exit ambient @s ~ ~ ~ 0.3 0.8

execute if score #title twsc.data matches 90 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_summer 1t replace