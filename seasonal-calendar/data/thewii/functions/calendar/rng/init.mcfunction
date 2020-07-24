scoreboard objectives add twsc.math dummy

scoreboard players set #-1 twsc.math -1
scoreboard players set #lcg.constant twsc.math 1103515245

execute unless score #lcg twsc.math matches -2146473648.. run function thewii:calendar/rng/uuid_reset