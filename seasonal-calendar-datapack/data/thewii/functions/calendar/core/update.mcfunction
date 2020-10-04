#> thewii:calendar/core/update

# Version
function thewii:calendar/core/version

# Convert
data remove storage thewii:calendar/data Installed
data remove storage thewii:calendar/data FirstReload
data remove storage thewii:calendar/data NumericVersion
data remove storage thewii:calendar/data Version

# Updated message
tellraw @a [{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Seasonal Calendar was updated to v","color":"white","bold":false},{"score":{"name":"$version.major","objective":"twsc.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.minor","objective":"twsc.data"},"color":"white","bold":false},{"text":".","color":"white","bold":false},{"score":{"name":"$version.patch","objective":"twsc.data"},"color":"white","bold":false},{"text":"!","color":"white","bold":false}]