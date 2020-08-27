playsound minecraft:block.note_block.hat ambient @s ~ ~ ~ 1 0

tellraw @s [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal Calendar Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s [{"text":"\n"},{"text":"                "},{"text":"SEASONAL CALENDAR UNINSTALLED","color":"red","strikethrough":false,"bold":true}]
tellraw @s [{"text":"\n"},{"text":" This datapack was successfuly uninstalled! It's still activated, meaning you can use ","color":"white","strikethrough":false,"bold":false},{"text":"/function thewii:calendar/install ","color":"white","strikethrough":false,"bold":false,"italic":true},{"text":"to install it again.","color":"white","strikethrough":false,"bold":false}]
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s [{"text":"                             "},{"text":"[RE-INSTALL]","color":"green","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/install"}}]
tellraw @s [{"text":"                                                                                ","strikethrough":true,"color":"green"}]