scoreboard players operation #range twsc.math = #max twsc.math
scoreboard players operation #range twsc.math -= #min twsc.math
scoreboard players add #range twsc.math 1

scoreboard players operation #lcg twsc.math *= #lcg.constant twsc.math
scoreboard players add #lcg twsc.math 12345
scoreboard players operation #result twsc.math = #lcg twsc.math

scoreboard players operation #result twsc.math %= #range twsc.math
scoreboard players operation #result twsc.math += #min twsc.math