scoreboard players operation #offLimit twvp.temp = #forecEnd twsc.data
scoreboard players remove #offLimit twvp.temp 24

scoreboard players operation #forecEnd twsc.data -= #offLimit twvp.temp
scoreboard players operation #forecStart twsc.data -= #offLimit twvp.temp