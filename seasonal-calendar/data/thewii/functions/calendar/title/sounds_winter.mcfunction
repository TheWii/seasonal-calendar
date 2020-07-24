scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.snow_golem.hurt master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 13 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.glass.break master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 23 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.snow_golem.hurt master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 33 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.snow_golem.hurt master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 43 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.snow_golem.hurt master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 63 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.snow_golem.death master @p ~ ~ ~ 0.3 0.6
execute if score #title twsc.data matches 70 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.glass.break master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 83 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.snow.place master @p ~ ~ ~ 0.3 0.0

execute if score #title twsc.data matches 83 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_winter 1t replace