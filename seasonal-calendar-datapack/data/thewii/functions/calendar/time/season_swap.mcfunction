# Set day to 1 and move to next season
scoreboard players set $day twsc.data 1
scoreboard players add $season twsc.data 1

# Year switch
execute if score $season twsc.data matches 5.. run scoreboard players add $year twsc.data 1
execute if score $season twsc.data matches 5.. run scoreboard players set $season twsc.data 1