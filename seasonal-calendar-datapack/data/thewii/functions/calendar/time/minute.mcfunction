scoreboard players operation $minute twsc.data = $daytime twsc.data

scoreboard players operation $minute twsc.data %= #1000 twvp.math

scoreboard players operation $minute twsc.data *= #1000 twvp.math
scoreboard players operation $minute twsc.data /= #16667 twvp.math

scoreboard players operation $minuteSub twsc.data = $daytime twsc.data
scoreboard players operation $minuteSub twsc.data /= #1000 twvp.math
scoreboard players operation $minuteSub twsc.data *= #1000 twvp.math