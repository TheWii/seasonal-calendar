scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.snow_golem.hurt master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 13 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 23 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.snow_golem.hurt master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 33 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.snow_golem.hurt master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 43 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.snow_golem.hurt master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 63 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:entity.snow_golem.death master @s ~ ~ ~ 0.3 0.6
execute if score #title twsc.data matches 70 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:block.glass.break master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 83 as @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] at @s run playsound minecraft:block.snow.place master @s ~ ~ ~ 0.3 0.0

execute if score #title twsc.data matches 83 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_winter 1t replace