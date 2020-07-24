# Player is striked by a thunder if flying with an elytra during a storm
execute if predicate thewii:calendar/is_thundering as @a[tag=!global.ignore,nbt={FallFlying:1b}] at @s if predicate thewii:calendar/in_overworld if predicate thewii:calendar/chances/elytra_on_storm run function thewii:calendar/interactions/success/elytra_during_storm

# Player receives a swimming boost if it's summer
execute if score $season twsc.data matches 2 as @a[predicate=thewii:calendar/is_swimming,tag=!global.ignore,nbt=!{ActiveEffects:[{Id:30b}]}] at @s if predicate thewii:calendar/in_overworld if predicate thewii:calendar/chances/summer_swim_boost run function calendar:interactions/success/summer_swim_boost

# Player receives a speed boost if it's next to a bee during spring time
execute if score $season twsc.data matches 1 as @a[tag=!global.ignore,nbt=!{ActiveEffects:[{Id:1b}]}] at @s if predicate thewii:calendar/in_overworld if entity @e[type=bee,distance=..15] if predicate thewii:calendar/chances/bee_spring_boost run function calendar:interactions/success/bee_spring_boost

# Player receives night vision if it's near a bat when it's autumn
execute if score $season twsc.data matches 3 as @a[tag=!global.ignore,nbt=!{ActiveEffects:[{Id:16b}]}] at @s if predicate thewii:calendar/in_overworld if entity @e[type=bat,distance=..20] if predicate thewii:calendar/chances/bat_vision_boost run function calendar:interactions/success/bat_vision_boost

execute if score #interactions twsc.data matches 1 run schedule function thewii:calendar/interactions/main 20t replace