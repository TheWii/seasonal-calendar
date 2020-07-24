execute if score $daytime twsc.data matches ..5999 run data modify storage thewii:calendar/data display.12_hour set value "AM"
execute if score $daytime twsc.data matches 6000..17999 run data modify storage thewii:calendar/data display.12_hour set value "PM"
execute if score $daytime twsc.data matches 18000.. run data modify storage thewii:calendar/data display.12_hour set value "AM"

execute if score $season twsc.data matches 1 run data modify storage thewii:calendar/data display.season set value '[{"text":"Spring, ","color":"light_purple"},{"score":{"name":"$day","objective":"twsc.data"},"color":"light_purple"}]'
execute if score $season twsc.data matches 2 run data modify storage thewii:calendar/data display.season set value '[{"text":"Summer, ","color":"yellow"},{"score":{"name":"$day","objective":"twsc.data"},"color":"yellow"}]'
execute if score $season twsc.data matches 3 run data modify storage thewii:calendar/data display.season set value '[{"text":"Autumn, ","color":"gold"},{"score":{"name":"$day","objective":"twsc.data"},"color":"gold"}]'
execute if score $season twsc.data matches 4 run data modify storage thewii:calendar/data display.season set value '[{"text":"Winter, ","color":"aqua"},{"score":{"name":"$day","objective":"twsc.data"},"color":"aqua"}]'

execute if score $weekday twsc.data matches 1 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"MONDAY",abvCapslock:"MON",abv:"Mon"}}}
execute if score $weekday twsc.data matches 2 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"TUESDAY",abvCapslock:"TUE",abv:"Tue"}}}
execute if score $weekday twsc.data matches 3 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"WEDNESDAY",abvCapslock:"WED",abv:"Wed"}}}
execute if score $weekday twsc.data matches 4 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"THURSDAY",abvCapslock:"THU",abv:"Thu"}}}
execute if score $weekday twsc.data matches 5 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"FRIDAY",abvCapslock:"FRI",abv:"Fri"}}}
execute if score $weekday twsc.data matches 6 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"SATURDAY",abvCapslock:"SAT",abv:"Sat"}}}
execute if score $weekday twsc.data matches 7 run data merge storage thewii:calendar/data {display:{weekday:{allCapslock:"SUNDAY",abvCapslock:"SUN",abv:"Sun"}}}