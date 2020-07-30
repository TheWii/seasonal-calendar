title @s times 5 60 5
title @s title [{"nbt":"display.weekday.allCapslock","storage":"thewii:calendar/data","bold":true,"color":"white"},{"text":", DAY ","bold":true,"color":"white"},{"score":{"name":"$day","objective":"twsc.data"},"bold":true,"color":"white"}]
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.15 0.9

execute if score $season twsc.data matches 1 run title @s subtitle [{"text":"SPRING","color":"light_purple","bold":true}]
execute if score $season twsc.data matches 2 run title @s subtitle ["",{"text":"SUMMER","color":"yellow","bold":true}]
execute if score $season twsc.data matches 3 run title @s subtitle ["",{"text":"AUTUMN","color":"gold","bold":true}]
execute if score $season twsc.data matches 4 run title @s subtitle ["",{"text":"WINTER","color":"aqua","bold":true}]