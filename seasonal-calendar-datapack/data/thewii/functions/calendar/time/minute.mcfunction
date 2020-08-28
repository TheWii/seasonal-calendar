scoreboard players operation $minute twsc.data = $daytime twsc.data

scoreboard players operation $minute twsc.data %= #1000 twsc.math

scoreboard players operation $minute twsc.data *= #1000 twsc.math
scoreboard players operation $minute twsc.data /= #16667 twsc.math

scoreboard players operation $minuteSub twsc.data = $daytime twsc.data
scoreboard players operation $minuteSub twsc.data /= #1000 twsc.math
scoreboard players operation $minuteSub twsc.data *= #1000 twsc.math