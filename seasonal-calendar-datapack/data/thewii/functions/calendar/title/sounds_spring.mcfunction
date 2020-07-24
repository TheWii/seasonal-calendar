scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.grass.fall master @p ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 13 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:item.hoe.till master @p ~ ~ ~ 0.4 0.6
execute if score #title twsc.data matches 23 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.grass.fall master @p ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 33 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:item.hoe.till master @p ~ ~ ~ 0.4 0.6
execute if score #title twsc.data matches 33 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.chorus_flower.death master @p ~ ~ ~ 5.0 0.0
execute if score #title twsc.data matches 45 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.grass.fall master @p ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 63 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.grass.fall master @p ~ ~ ~ 0.4 0.0
execute if score #title twsc.data matches 70 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.chorus_flower.death master @p ~ ~ ~ 5.0 0.0

execute if score #title twsc.data matches 70 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_spring 1t replace