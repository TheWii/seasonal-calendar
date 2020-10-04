# Reset
data remove storage thewii:vp_library/temp array
scoreboard players set #clocks twvp.temp 0
scoreboard players set #unvalid_clocks twvp.temp 0


# Get clocks
execute if score @s twsc.cfg_display matches 3 run data modify storage thewii:vp_library/temp array append from entity @s Inventory[{id:"minecraft:clock"}]
execute if score @s twsc.cfg_display matches 4 run data modify storage thewii:vp_library/temp array append from entity @s SelectedItem{id:"minecraft:clock"}


# Validate
execute if data storage thewii:vp_library/temp array run function thewii:calendar/display/validate_clocks


# Display if #clocks >= 1
execute if score @s twsc.cfg_display matches 2 run function thewii:calendar/display/identify_position
execute if score @s twsc.cfg_display matches 3..4 if score #clocks twvp.temp matches 1.. run function thewii:calendar/display/identify_position