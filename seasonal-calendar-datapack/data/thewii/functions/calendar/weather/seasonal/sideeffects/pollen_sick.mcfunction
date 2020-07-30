effect give @s poison 12 0 true
effect give @s nausea 16 0 true

title @s[tag=!global.ignore.gui] times 5 80 10
title @s[tag=!global.ignore.gui] title {"text":"Pollen Allergy"}
title @s[tag=!global.ignore.gui] subtitle {"text":"Avoid outdoors","color":"light_purple"}

playsound minecraft:entity.bee.hurt ambient @s[tag=!global.ignore.gui] ~ ~ ~ 1 0.8
scoreboard players set @s twsc.athmos 4000