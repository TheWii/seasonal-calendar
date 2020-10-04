execute store result score $gamerule twvp.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

tellraw @s [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal Calendar Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s [{"text":"\n"},{"text":"                "},{"text":"UNINSTALL SEASONAL CALENDAR","color":"red","strikethrough":false,"bold":true}]
tellraw @s [{"text":"\n"},{"text":" Uninstalling this datapack, you ","color":"white","strikethrough":false,"bold":false},{"text":"won't lose your calendar progress","color":"red"},{"text":", being able to return from where you stopped when reinstalling!","color":"white"}]
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s [{"text":"                  "},{"text":"[BACK]","color":"green","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/triggered"}},{"text":"                "},{"text":"[UNINSTALL]","color":"red","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/uninstall"}}]
tellraw @s [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

execute at @s run playsound minecraft:block.note_block.hat ambient @s ~ ~ ~ 0.5 0.8

execute if score $gamerule twvp.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append