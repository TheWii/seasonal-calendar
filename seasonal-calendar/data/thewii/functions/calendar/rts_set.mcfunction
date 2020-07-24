execute if score $season twsc.data matches 1 unless score $weather twsc.data matches 111 run gamerule randomTickSpeed 3
execute if score $season twsc.data matches 1 if score $weather twsc.data matches 111 run gamerule randomTickSpeed 4

execute if score $season twsc.data matches 2 run gamerule randomTickSpeed 5

execute if score $season twsc.data matches 3 run gamerule randomTickSpeed 2

execute if score $season twsc.data matches 4 unless score $weather twsc.data matches 141 run gamerule randomTickSpeed 1
execute if score $season twsc.data matches 4 if score $weather twsc.data matches 141 run gamerule randomTickSpeed 0