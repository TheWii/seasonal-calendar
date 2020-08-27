data modify storage thewii:calendar/data Version set value "2.0.2"
data modify storage thewii:calendar/data NumericVersion set value 20002

tellraw @a ["",{"text":"[Datapack]: ","color":"yellow","bold":true},{"text":"Seasonal Calendar was updated to v","color":"white","bold":false},{"nbt":"Version","storage":"thewii:calendar/data","color":"white","bold":false},{"text":"!","color":"white","bold":false},{"text":"[SETTINGS]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 1"}}]