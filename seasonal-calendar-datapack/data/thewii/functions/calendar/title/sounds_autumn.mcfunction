scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:item.elytra.flying master @p ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 3 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.1 0.0
execute if score #title twsc.data matches 4 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.1 0.0
execute if score #title twsc.data matches 13 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.1 1.7
execute if score #title twsc.data matches 15 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.composter.ready master @p ~ ~ ~ 1.5 0.0
execute if score #title twsc.data matches 23 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.bell.use master @p ~ ~ ~ 0.1 0.8
execute if score #title twsc.data matches 23 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.bell.resonate master @p ~ ~ ~ 0.2 0.0
execute if score #title twsc.data matches 25 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.1 1.7
execute if score #title twsc.data matches 27 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.1 1.7
execute if score #title twsc.data matches 32 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:entity.experience_orb.pickup master @p ~ ~ ~ 0.1 1.4
execute if score #title twsc.data matches 45 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.composter.ready master @p ~ ~ ~ 1.5 0.0
execute if score #title twsc.data matches 65 at @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] run playsound minecraft:block.composter.ready master @p ~ ~ ~ 1.5 0.0
execute if score #title twsc.data matches 99 run stopsound @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] master minecraft:item.elytra.flying

execute if score #title twsc.data matches 99 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_autumn 1t replace