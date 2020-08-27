scoreboard players add #title twsc.data 1

execute if score #title twsc.data matches 3 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:item.elytra.flying master @s ~ ~ ~ 0.3 0.0
execute if score #title twsc.data matches 3 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.0
execute if score #title twsc.data matches 4 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 0.0
execute if score #title twsc.data matches 13 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.7
execute if score #title twsc.data matches 15 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.composter.ready master @s ~ ~ ~ 1.5 0.0
execute if score #title twsc.data matches 23 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 0.1 0.8
execute if score #title twsc.data matches 23 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.bell.resonate master @s ~ ~ ~ 0.2 0.0
execute if score #title twsc.data matches 25 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.7
execute if score #title twsc.data matches 27 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.7
execute if score #title twsc.data matches 32 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.1 1.4
execute if score #title twsc.data matches 45 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.composter.ready master @s ~ ~ ~ 1.5 0.0
execute if score #title twsc.data matches 65 as @a[scores={twsc.cfg_title=1..2}] at @s run playsound minecraft:block.composter.ready master @s ~ ~ ~ 1.5 0.0
execute if score #title twsc.data matches 99 as @a[scores={twsc.cfg_title=1..2}] at @s run stopsound @s master minecraft:item.elytra.flying

execute if score #title twsc.data matches 99 run scoreboard players reset #title twsc.data
execute if score #title twsc.data matches 1.. run schedule function thewii:calendar/title/sounds_autumn 1t replace