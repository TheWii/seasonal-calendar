execute store result score $gamerule twsc.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal twsc.data Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"\n"},{"text":"                  "},{"text":"RESET SEASONAL CALENDAR","color":"red","strikethrough":false,"bold":true}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"\n"},{"text":" This option will reset your calendar progress(season and day) and restart on Spring, 1st again. Are you sure you want to proceed?","color":"white","strikethrough":false,"bold":false}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                  "},{"text":"[BACK]","color":"green","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/show"}},{"text":"                "},{"text":"[RESET]","color":"red","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/calendar_reset"}}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

playsound minecraft:block.note_block.hat ambient @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 0.5 0.8

execute if score $gamerule twsc.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append