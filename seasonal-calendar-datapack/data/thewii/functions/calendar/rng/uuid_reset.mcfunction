execute store result score #forceloaded twsc.temp run forceload add 0 0


summon minecraft:area_effect_cloud 0 0 0 {Duration:1,Tags:["twsc.uuid"]}
execute if score $1.16 twsc.data matches 1 store result score #lcg twsc.math run data get entity @e[type=area_effect_cloud,tag=twsc.uuid,limit=1] UUID[0]
execute if score $1.16 twsc.data matches 0 store result score #lcg twsc.math run data get entity @e[type=area_effect_cloud,tag=twsc.uuid,limit=1] UUIDMost 0.00000000023283064365386962890625
kill @e[type=area_effect_cloud,tag=twsc.uuid,limit=1]

execute if score #lcg twsc.math matches ..-1 run scoreboard players operation #lcg twsc.math *= #-1 twsc.math


execute if score #forceloaded twsc.temp matches 1 run forceload remove 0 0