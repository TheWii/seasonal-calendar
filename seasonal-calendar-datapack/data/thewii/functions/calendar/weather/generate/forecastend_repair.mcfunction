scoreboard players operation #offLimit twsc.temp = #forecEnd twsc.data
scoreboard players remove #offLimit twsc.temp 24

scoreboard players operation #forecEnd twsc.data -= #offLimit twsc.temp
scoreboard players operation #forecStart twsc.data -= #offLimit twsc.temp