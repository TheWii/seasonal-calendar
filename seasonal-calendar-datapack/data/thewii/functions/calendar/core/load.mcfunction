#> thewii:calendar/core/load

# Clear schedules
schedule clear thewii:calendar/core/main_3
schedule clear thewii:calendar/interactions/main


# Check dependencies
scoreboard players set #load thewii.load 1

# Vanilla+ Lib Modules
execute unless score $vplib.math thewii.load matches 010000 run scoreboard players set #load thewii.load -1
#execute unless score $vplib.loaded_chunk thewii.load matches 010000 run scoreboard players set #load thewii.load -1

# 1.15
scoreboard players set #1.15 thewii.load 0
function thewii:calendar/core/detect_1.15
execute unless score #1.15 thewii.load matches 1 run scoreboard players set #load thewii.load 0


# Success load
execute if score #load thewii.load matches 1 run function thewii:calendar/core/load2

# Fail load messages
execute if score #load thewii.load matches 0 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Seasonal Calendar failed to load. It requires Minecraft 1.15 or above.","color":"white","bold":false}]
execute if score #load thewii.load matches -1 run tellraw @a [{"text":"[Datapack]: ","color":"red","bold":true},{"text":"Seasonal Calendar failed to load. Library files are either missing or there are incompatibilities between installed datapacks. Please, download the ","color":"white","bold":false},{"text":"latest version.","color":"white","bold":false,"underlined":true,"clickEvent": {"action": "open_url","value": "https://github.com/TheWii/improved-apiculture/releases/latest"}}]
