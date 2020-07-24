data modify storage thewii:calendar/temp pos set value '{"text":""}'

data modify storage thewii:calendar/temp start set value '[{"text":"(","color":"white"},{"nbt":"display.weekday.abv","storage":"thewii:calendar/data","color":"white"},{"text":") ","color":"white"},{"score":{"name":"$hour","objective":"twsc.data"},"color":"white"},{"text":":","color":"white"}]'

execute if score $minute twsc.data matches ..9 run data modify storage thewii:calendar/temp minute set value '[{"text":"0","color":"white"},{"score":{"name":"$minute","objective":"twsc.data"},"color":"white"},{"text":" ","color":"white"},{"nbt":"display.12_hour","storage":"thewii:calendar/data","color":"white"},{"text":"  ","color":"white"}]'
execute if score $minute twsc.data matches 10.. run data modify storage thewii:calendar/temp minute set value '[{"score":{"name":"$minute","objective":"twsc.data"},"color":"white"},{"text":" ","color":"white"},{"nbt":"display.12_hour","storage":"thewii:calendar/data","color":"white"},{"text":"  ","color":"white"}]'

data modify storage thewii:calendar/temp season set value '[{"nbt":"display.season","storage":"thewii:calendar/data","interpret":true}]'