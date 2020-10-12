# Count all clocks and unvalid clocks
execute store result score #clocks twvp.temp if data storage thewii:vp_library/temp array[]
execute store result score #unvalid_clocks twvp.temp if data storage thewii:vp_library/temp array[].tag.CustomModelData


# Subtract unvalid clocks
scoreboard players operation #clocks twvp.temp -= #unvalid_clocks twvp.temp