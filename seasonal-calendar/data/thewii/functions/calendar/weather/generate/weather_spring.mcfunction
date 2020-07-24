# TEMP THUNDER
execute if score $weather twsc.data matches 92..97 run scoreboard players set $weather twsc.data 202

# ALL THUNDER
execute if score $weather twsc.data matches 98..100 run scoreboard players set $weather twsc.data 302

# TEMP RAIN
execute if score $weather twsc.data matches 51..88 run scoreboard players set $weather twsc.data 201

# ALL RAIN
execute if score $weather twsc.data matches 89..91 run scoreboard players set $weather twsc.data 301

# SUN
execute if score $weather twsc.data matches 1..40 run scoreboard players set $weather twsc.data 100

# SPRING POLLEN
execute if score $weather twsc.data matches 41..50 run scoreboard players set $weather twsc.data 111
execute if score $weather twsc.data matches 111 if score #weather_generation twsc.data matches 2 run scoreboard players set $weather twsc.data 100