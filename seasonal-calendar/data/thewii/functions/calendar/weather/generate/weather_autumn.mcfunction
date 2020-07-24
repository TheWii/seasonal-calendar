# TEMP THUNDER
execute if score $weather twsc.data matches 96..98 run scoreboard players set $weather twsc.data 202

# ALL THUNDER
execute if score $weather twsc.data matches 99..100 run scoreboard players set $weather twsc.data 302

# TEMP RAIN
execute if score $weather twsc.data matches 61..93 run scoreboard players set $weather twsc.data 201

# ALL RAIN
execute if score $weather twsc.data matches 94..95 run scoreboard players set $weather twsc.data 301

# SUN
execute if score $weather twsc.data matches 1..50 run scoreboard players set $weather twsc.data 100

# WINDY
execute if score $weather twsc.data matches 51..60 run scoreboard players set $weather twsc.data 131
execute if score $weather twsc.data matches 131 if score #weather_generation twsc.data matches 2 run scoreboard players set $weather twsc.data 100

