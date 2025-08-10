execute at @e[type=armor_stand,tag=checkpoint,sort=nearest,limit=1] run setblock ~ ~ ~ air
kill @e[type=armor_stand,tag=checkpoint,sort=nearest,limit=1]
scoreboard players remove $global checkpointCount 1