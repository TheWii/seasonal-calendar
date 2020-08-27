execute if score $season twsc.data matches 1 run tellraw @s [{"text":"[Calendar]: ","color":"light_purple"},{"text":"A new day begins. ","color":"white","bold":false},{"nbt":"display.weekday.all","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":", day ","bold":false,"color":"white"},{"score":{"name":"$day","objective":"twsc.data"},"bold":false,"color":"white"},{"text":"."}]
execute if score $season twsc.data matches 2 run tellraw @s [{"text":"[Calendar]: ","color":"yellow"},{"text":"A new day begins. ","color":"white","bold":false},{"nbt":"display.weekday.all","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":", day ","bold":false,"color":"white"},{"score":{"name":"$day","objective":"twsc.data"},"bold":false,"color":"white"},{"text":"."}]
execute if score $season twsc.data matches 3 run tellraw @s [{"text":"[Calendar]: ","color":"gold"},{"text":"A new day begins. ","color":"white","bold":false},{"nbt":"display.weekday.all","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":", day ","bold":false,"color":"white"},{"score":{"name":"$day","objective":"twsc.data"},"bold":false,"color":"white"},{"text":"."}]
execute if score $season twsc.data matches 4 run tellraw @s [{"text":"[Calendar]: ","color":"aqua"},{"text":"A new day begins. ","color":"white","bold":false},{"nbt":"display.weekday.all","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":", day ","bold":false,"color":"white"},{"score":{"name":"$day","objective":"twsc.data"},"bold":false,"color":"white"},{"text":"."}]


execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 100 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Sunny all day","color":"white","bold":false}]

execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 111 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Spring pollen","color":"white","bold":false}]
execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 121 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Heat wave","color":"white","bold":false}]
execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 131 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Windy","color":"white","bold":false}]
execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 141 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Snowy","color":"white","bold":false}]

execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 201 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Rainy (","bold":false,"color":"white"},{"score":{"name":"$forecStart","objective":"twsc.data"},"bold":false,"color":"white"},{"text":" ","bold":false,"color":"white"},{"nbt":"display.forecast.startNoon","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":" - ","bold":false,"color":"white"},{"score":{"name":"$forecEnd","objective":"twsc.data"},"bold":false,"color":"white"},{"text":" ","bold":false,"color":"white"},{"nbt":"display.forecast.endNoon","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":")","bold":false,"color":"white"}]
execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 202 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Stormy (","bold":false,"color":"white"},{"score":{"name":"$forecStart","objective":"twsc.data"},"bold":false,"color":"white"},{"text":" ","bold":false,"color":"white"},{"nbt":"display.forecast.startNoon","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":" - ","bold":false,"color":"white"},{"score":{"name":"$forecEnd","objective":"twsc.data"},"bold":false,"color":"white"},{"text":" ","bold":false,"color":"white"},{"nbt":"display.forecast.endNoon","storage":"thewii:calendar/data","bold":false,"color":"white"},{"text":")","bold":false,"color":"white"}]

execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 301 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Rainy all day","color":"white","bold":false}]
execute if score #weather_generation twsc.data matches 1.. if score $weather twsc.data matches 302 run tellraw @s [{"text":"[Forecast]: ","color":"gray"},{"text":"Stormy all day","color":"white","bold":false}]
