effect give @s[tag=!global.ignore] slowness 50 2 true
effect give @s[tag=!global.ignore] mining_fatigue 50 3 true

title @s[tag=!global.ignore,tag=!global.ignore.gui] times 5 80 10
title @s[tag=!global.ignore,tag=!global.ignore.gui] title {"text":"Heat sick"}
title @s[tag=!global.ignore,tag=!global.ignore.gui] subtitle {"text":"Avoid sun and refresh yourself","color":"yellow"}

playsound minecraft:entity.generic.extinguish_fire ambient @s[tag=!global.ignore.gui] ~ ~ ~ 1 0.65
scoreboard players set @s twsc.athmos 2000