# TEMP THUNDER
execute if score $weather twsc.data matches 98..100 run scoreboard players set $weather twsc.data 202

# ALL THUNDER
execute if score $weather twsc.data matches 0 run scoreboard players set $weather twsc.data 302

# TEMP RAIN
execute if score $weather twsc.data matches 86..96 run scoreboard players set $weather twsc.data 201

# ALL RAIN
execute if score $weather twsc.data matches 97 run scoreboard players set $weather twsc.data 301

# SUN
execute if score $weather twsc.data matches 1..75 run scoreboard players set $weather twsc.data 100

# BLIZZARD
execute if score $weather twsc.data matches 76..85 run scoreboard players set $weather twsc.data 141
execute if score $weather twsc.data matches 141 if score #weather_generation twsc.data matches 2 run scoreboard players set $weather twsc.data 100