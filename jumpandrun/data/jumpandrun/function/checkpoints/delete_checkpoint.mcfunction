execute as @e[type=marker,tag=checkpoint] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run scoreboard players operation $temp JnR.checkpointID = @s JnR.checkpointID
execute as @e[type=text_display,tag=display] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run scoreboard players operation $temp JnR.displayID = @s JnR.displayID

execute as @e[type=marker,tag=checkpoint] if score @s JnR.checkpointID > $temp JnR.checkpointID run scoreboard players remove @s JnR.checkpointID 1
execute as @e[type=text_display,tag=display] if score @s JnR.displayID > $temp JnR.displayID run scoreboard players remove @s JnR.displayID 1

scoreboard players remove $global JnR.checkpointID 1
scoreboard players remove $global JnR.displayID 1

execute as @e[type=marker,tag=checkpoint] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run kill @s
execute as @e[type=text_display,tag=display] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run kill @s