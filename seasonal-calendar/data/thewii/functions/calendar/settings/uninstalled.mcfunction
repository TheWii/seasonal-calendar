tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal twsc.data Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"\n"},{"text":"                "},{"text":"SEASONAL CALENDAR UNINSTALLED","color":"red","strikethrough":false,"bold":true}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"\n"},{"text":" Settings are disabled since this datapack is currently uninstalled by your choice.","color":"white","strikethrough":false,"bold":false}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] ["",{"text":"\n\n\n\n\n\n\n\n\n\n\n"}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                            "},{"text":"[RE-INSTALL]","color":"green","strikethrough":false,"bold":true,"clickEvent":{"action":"run_command","value":"/function scalendar:install"}}]
tellraw @s[tag=!global.ignore,tag=!global.ignore.gui] [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

playsound minecraft:block.note_block.hat ambient @s[tag=!global.ignore,tag=!global.ignore.gui] ~ ~ ~ 0.5 0