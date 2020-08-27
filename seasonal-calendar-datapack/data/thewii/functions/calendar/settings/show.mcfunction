# Gamerule
execute store result score $gamerule twsc.temp run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

execute at @s run playsound minecraft:block.note_block.hat ambient @s ~ ~ ~ 0.5 0

# Top
tellraw @s [{"text":"                  ","strikethrough":true,"color":"green"},{"text":" Seasonal Calendar Settings ","color":"white","strikethrough":false,"bold":true},{"text":"                  ","strikethrough":true,"color":"green"}]
tellraw @s [{"text":"       "},{"text":"[Uninstall]","color":"red","clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/uninstall_warning"},"hoverEvent":{"action":"show_text","value":["",{"text":"Uninstall datapack","color":"red"}]}},{"text":"  "},{"text":"[Reset Calendar]","color":"red","clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/calendar_reset_warning"},"hoverEvent":{"action":"show_text","value":["",{"text":"Reset calendar progress","color":"red"}]}},{"text":"  "},{"text":"[Jump Through Time]","color":"red","clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/jump_time"},"hoverEvent":{"action":"show_text","value":["",{"text":"Select any day or season","color":"red"}]}}]
tellraw @s [{"text":"\n"},{"text":"Global:","color":"white","strikethrough":false,"bold":true}]

# Weather generation
execute if score #weather_generation twsc.data matches 2 run tellraw @s ["",{"text":"Weather Generation: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"How the weather should be generated","color":"white"}]}},{"text":"[No-Custom Seasonal]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/weather_generation"},"hoverEvent":{"action":"show_text","value":["",{"text":"Custom generation, but no custom weather like Heat Waves, Spring Pollen..","color":"white"}]}}]
execute if score #weather_generation twsc.data matches 1 run tellraw @s ["",{"text":"Weather Generation: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"How the weather should be generated","color":"white"}]}},{"text":"[Seasonal]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/weather_generation"},"hoverEvent":{"action":"show_text","value":["",{"text":"Weather is daily and generated depending on the current season","color":"white"}]}}]
execute if score #weather_generation twsc.data matches 0 run tellraw @s ["",{"text":"Weather Generation: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"How the weather should be generated","color":"white"}]}},{"text":"[Vanilla]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/weather_generation"},"hoverEvent":{"action":"show_text","value":["",{"text":"The vanilla way of weather","color":"white"}]}}]

# Interactions
execute if score #interactions twsc.data matches 1 run tellraw @s ["",{"text":"Environment Interactions: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether special events happens","color":"white"}]}},{"text":"[Enabled]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/interactions"},"hoverEvent":{"action":"show_text","value":["",{"text":"Player can receive boosts and special events happen","color":"white"}]}}]
execute if score #interactions twsc.data matches 0 run tellraw @s ["",{"text":"Environment Interactions: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether special events happens","color":"white"}]}},{"text":"[Disabled]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/interactions"},"hoverEvent":{"action":"show_text","value":["",{"text":"No interactions","color":"white"}]}}]

# Crops growth
execute if score #crops_growth twsc.data matches 1 run tellraw @s ["",{"text":"Plants Growth Change: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether seasons interfere on plants growing rate","color":"white"}]}},{"text":"[Enabled]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/crops_growth"},"hoverEvent":{"action":"show_text","value":["",{"text":"Different growth rates depending on the season","color":"white"}]}}]
execute if score #crops_growth twsc.data matches 0 run tellraw @s ["",{"text":"Plants Growth Change: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether seasons interfere on plants growing rate","color":"white"}]}},{"text":"[Disabled]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/function thewii:calendar/settings/switches/crops_growth"},"hoverEvent":{"action":"show_text","value":["",{"text":"Seasons won't interfere at growth rates","color":"white"}]}}]

tellraw @s [{"text":"\n\n\n"},{"text":"Your personal preferences:","color":"white","strikethrough":false,"bold":true}]

# Display
execute if score @s twsc.cfg_display matches 1 run tellraw @s ["",{"text":"Displaying when: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"When time should be displayed","color":"white"}]}},{"text":"[Disabled]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 2"},"hoverEvent":{"action":"show_text","value":["",{"text":"Calendar is not displayed","color":"white"}]}}]
execute if score @s twsc.cfg_display matches 2 run tellraw @s ["",{"text":"Displaying when: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"When time should be displayed","color":"white"}]}},{"text":"[Always]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 2"},"hoverEvent":{"action":"show_text","value":["",{"text":"Always displaying","color":"white"}]}}]
execute if score @s twsc.cfg_display matches 3 run tellraw @s ["",{"text":"Displaying when: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"When time should be displayed","color":"white"}]}},{"text":"[Clock in inventory]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 2"},"hoverEvent":{"action":"show_text","value":["",{"text":"Displayed when there's a clock in inventory","color":"white"}]}}]
execute if score @s twsc.cfg_display matches 4 run tellraw @s ["",{"text":"Displaying when: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"When time should be displayed","color":"white"}]}},{"text":"[Clock in mainhand]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 2"},"hoverEvent":{"action":"show_text","value":["",{"text":"Displayed when holding a clock in mainhand","color":"white"}]}}]

# Position
execute if score @s twsc.cfg_pos matches 1 run tellraw @s ["",{"text":"Displaying at: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Where in the screen time should be displayed","color":"white"}]}},{"text":"[Above hotbar (1.15+)]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 4"},"hoverEvent":{"action":"show_text","value":["",{"text":"Incovenient, but it doesn't require a resource pack and it's 1.15 compatible.","color":"white"}]}}]
execute if score @s twsc.cfg_pos matches 2 run tellraw @s ["",{"text":"Displaying at: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Where in the screen time should be displayed","color":"white"}]}},{"text":"[Bottom left (1.16+)]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 4"},"hoverEvent":{"action":"show_text","value":["",{"text":"Positioned in the left of the hotbar. Requires a resource pack and only works 1.16+.","color":"white"}]}},{"translate":" (Resource Pack missing)","color":"red"}]
execute if score @s twsc.cfg_pos matches 3 run tellraw @s ["",{"text":"Displaying at: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Where in the screen time should be displayed","color":"white"}]}},{"text":"[Bottom right (1.16+)]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 4"},"hoverEvent":{"action":"show_text","value":["",{"text":"Positioned in the right of the hotbar. Requires a resource pack and only works 1.16+.","color":"white"}]}},{"translate":" (Resource Pack missing)","color":"red"}]

# Title
execute if score @s twsc.cfg_title matches 0 run tellraw @s ["",{"text":"Announce Day: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether a announcement is showed when beginning a new day","color":"white"}]}},{"text":"[Disabled]","color":"red","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 3"},"hoverEvent":{"action":"show_text","value":["",{"text":"No sunrise announcements","color":"white"}]}}]
execute if score @s twsc.cfg_title matches 1 run tellraw @s ["",{"text":"Announce Day: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether a announcement is showed when beginning a new day","color":"white"}]}},{"text":"[Title only]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 3"},"hoverEvent":{"action":"show_text","value":["",{"text":"It's announced everyday at sunrise as a title only","color":"white"}]}}]
execute if score @s twsc.cfg_title matches 2 run tellraw @s ["",{"text":"Announce Day: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether a announcement is showed when beginning a new day","color":"white"}]}},{"text":"[Title and Chat]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 3"},"hoverEvent":{"action":"show_text","value":["",{"text":"It's announced everyday at sunrise as a title and in the chat","color":"white"}]}}]
execute if score @s twsc.cfg_title matches 3 run tellraw @s ["",{"text":"Announce Day: ","color":"gray","bold":false,"hoverEvent":{"action":"show_text","value":["",{"text":"Whether a announcement is showed when beginning a new day","color":"white"}]}},{"text":"[Chat only]","color":"white","bold":false,"clickEvent":{"action":"run_command","value":"/trigger SeasonalCalendar set 3"},"hoverEvent":{"action":"show_text","value":["",{"text":"It's announced everyday at sunrise in the chat only","color":"white"}]}}]

tellraw @s ["",{"text":"\n\n\n\n"}]
tellraw @s [{"text":"                                                                                ","strikethrough":true,"color":"green"}]

execute if score $gamerule twsc.temp matches 1 run schedule function thewii:calendar/settings/sendcommandfeedback 1t append