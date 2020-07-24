scoreboard players set $day twsc.data 1
scoreboard players add $season twsc.data 1

execute if score $season twsc.data matches 5.. run scoreboard players add $year twsc.data 1
execute if score $season twsc.data matches 5.. run scoreboard players set $season twsc.data 1