title @a[tag=!global.ignore,tag=!global.ignore.gui,tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] times 5 60 20
title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] title [{"text":"FORECAST","color":"white","bold":true}]

execute if score $weather twsc.data matches 100 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"SUNNY ALL DAY","color":"gold","bold":true}]

execute if score $weather twsc.data matches 111 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"SPRING POLLEN","color":"light_purple","bold":true}]
execute if score $weather twsc.data matches 121 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"HEAT WAVE","color":"red","bold":true}]
execute if score $weather twsc.data matches 131 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"WINDY","color":"gray","bold":true}]
execute if score $weather twsc.data matches 141 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"SNOWY","color":"aqua","bold":true}]

execute if score $weather twsc.data matches 201 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"RAINY (","bold":true,"color":"dark_aqua"},{"score":{"name":"$forecStart","objective":"twsc.data"},"bold":true,"color":"dark_aqua"},{"text":" ","bold":true,"color":"dark_aqua"},{"nbt":"display.forecast.startNoon","storage":"thewii:calendar/data","bold":true,"color":"dark_aqua"},{"text":" - ","bold":true,"color":"dark_aqua"},{"score":{"name":"$forecEnd","objective":"twsc.data"},"bold":true,"color":"dark_aqua"},{"text":" ","bold":true,"color":"dark_aqua"},{"nbt":"display.forecast.endNoon","storage":"thewii:calendar/data","bold":true,"color":"dark_aqua"},{"text":")","bold":true,"color":"dark_aqua"}]
execute if score $weather twsc.data matches 202 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"STORMY (","bold":true,"color":"dark_gray"},{"score":{"name":"$forecStart","objective":"twsc.data"},"bold":true,"color":"dark_gray"},{"text":" ","bold":true,"color":"dark_gray"},{"nbt":"display.forecast.startNoon","storage":"thewii:calendar/data","bold":true,"color":"dark_gray"},{"text":" - ","bold":true,"color":"dark_gray"},{"score":{"name":"$forecEnd","objective":"twsc.data"},"bold":true,"color":"dark_gray"},{"text":" ","bold":true,"color":"dark_gray"},{"nbt":"display.forecast.endNoon","storage":"thewii:calendar/data","bold":true,"color":"dark_gray"},{"text":")","bold":true,"color":"dark_gray"}]

execute if score $weather twsc.data matches 301 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"RAINY ALL DAY","color":"dark_aqua","bold":true}]
execute if score $weather twsc.data matches 302 run title @a[tag=!global.ignore,tag=!global.ignore.gui,scores={twsc.cfg_title=1}] subtitle [{"text":"STORMY ALL DAY","color":"dark_gray","bold":true}]































































































