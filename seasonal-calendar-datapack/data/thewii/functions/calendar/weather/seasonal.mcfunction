execute if score $weather twsc.data matches 111 run function thewii:calendar/weather/seasonal/spring_pollen
execute if score $weather twsc.data matches 121 run function thewii:calendar/weather/seasonal/heat_wave
execute if score $weather twsc.data matches 131 run function thewii:calendar/weather/seasonal/windy
execute if score $weather twsc.data matches 141 run function thewii:calendar/weather/seasonal/snowy

execute if score $weather twsc.data matches 111 run function thewii:calendar/weather/seasonal/sfx/spring_pollen
execute if score $weather twsc.data matches 121 run function thewii:calendar/weather/seasonal/sfx/heat_wave
execute if score $weather twsc.data matches 131 run function thewii:calendar/weather/seasonal/sfx/windy
execute if score $weather twsc.data matches 141 run function thewii:calendar/weather/seasonal/sfx/snowy