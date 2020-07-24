# Count all clocks and unvalid clocks
execute store result score #clocks twsc.temp if data storage thewii:calendar/temp Array[]
execute store result score #unvalid_clocks twsc.temp if data storage thewii:calendar/temp Array[].tag.CustomModelData

# Subtract unvalid clocks
scoreboard players operation #clocks twsc.temp -= #unvalid_clocks twsc.temp