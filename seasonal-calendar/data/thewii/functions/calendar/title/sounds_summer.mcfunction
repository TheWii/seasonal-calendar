scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.water.ambient master @p ~ ~ ~ 0.3 0.6
execute if score #title twsc.data matches 3 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:ambient.underwater.enter ambient @p ~ ~ ~ 0.2 0.0
execute if score #title twsc.data matches 5 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.player.splash.high_speed master @p ~ ~ ~ 0.3 1
execute if score #title twsc.data matches 14 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.player.swim master @p ~ ~ ~ 0.3 0.8
execute if score #title twsc.data matches 34 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.bubble_column.upwards_inside master @p ~ ~ ~ 0.3 0.7
execute if score #title twsc.data matches 54 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.player.swim master @p ~ ~ ~ 0.3 1
execute if score #title twsc.data matches 90 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:ambient.underwater.exit ambient @p ~ ~ ~ 0.3 0.8

execute if score #title twsc.data matches 90 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_summer 1t replace