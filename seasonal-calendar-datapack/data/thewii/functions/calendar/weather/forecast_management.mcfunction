execute if predicate thewii:calendar/is_sunny if score $daytime twsc.data > #forecStart twsc.data if score $daytime twsc.data < #forecEnd twsc.data run function thewii:calendar/weather/forecast_set

execute if score $weather twsc.data matches 201..299 if score $daytime twsc.data > #forecEnd twsc.data run weather clear
execute if score $weather twsc.data matches 201..299 if score $daytime twsc.data < #forecStart twsc.data run weather clear