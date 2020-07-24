# Reset
data remove storage thewii:calendar/temp Array
scoreboard players set #clocks twsc.temp 0
scoreboard players set #unvalid_clocks twsc.temp 0

# Get clocks
execute if score @s twsc.cfg_display matches 3 run data modify storage thewii:calendar/temp Array append from entity @s Inventory[{id:"minecraft:clock"}]
execute if score @s twsc.cfg_display matches 4 run data modify storage thewii:calendar/temp Array append from entity @s SelectedItem{id:"minecraft:clock"}

# Validate
execute if data storage thewii:calendar/temp Array run function thewii:calendar/display/validate_clocks

# Display if #clocks >= 1
execute if score @s twsc.cfg_display matches 2 run function thewii:calendar/display/identify_position
execute if score @s twsc.cfg_display matches 3..4 if score #clocks twsc.temp matches 1.. run function thewii:calendar/display/identify_position