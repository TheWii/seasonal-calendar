# TEMP THUNDER
execute if score $weather twsc.data matches 91..98 run scoreboard players set $weather twsc.data 202

# ALL THUNDER
execute if score $weather twsc.data matches 99..100 run scoreboard players set $weather twsc.data 302

# TEMP RAIN
execute if score $weather twsc.data matches 41..87 run scoreboard players set $weather twsc.data 201

# ALL RAIN
execute if score $weather twsc.data matches 88..90 run scoreboard players set $weather twsc.data 301

# SUN
execute if score $weather twsc.data matches 1..30 run scoreboard players set $weather twsc.data 100

# HEAT WAVE
execute if score $weather twsc.data matches 31..40 run scoreboard players set $weather twsc.data 121
execute if score $weather twsc.data matches 121 if score #weather_generation twsc.data matches 2 run scoreboard players set $weather twsc.data 100