tellraw @s [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal twsc.data Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s [{"text":"\n"},{"text":"                "},{"text":"SEASONAL CALENDAR UNINSTALLED","color":"red","strikethrough":false,"bold":true}]
tellraw @s [{"text":"\n"},{"text":" Settings are disabled since this datapack is currently uninstalled by your choice.","color":"white","strikethrough":false,"bold":false}]
tellraw @s ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s [{"text":"                            "},{"text":"[RE-INSTALL]","color":"green","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function scalendar:install"}}]
tellraw @s [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

execute at @s run playsound minecraft:block.note_block.hat ambient @s ~ ~ ~ 0.5 0