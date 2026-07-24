# Delete Checkpoint if no pressure plate is present
execute as @e[type=marker,tag=checkpoint] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run function jumpandrun:checkpoints/delete_checkpoint
# Check for player walking on a checkpoint
execute as @a at @s run function jumpandrun:checkpoints/activate_checkpoint

# Modify display text
execute as @e[type=text_display,tag=display] at @s run function jumpandrun:checkpoints/name_checkpoint

execute as @a[gamemode=!spectator,gamemode=!creative,scores={JnR.checkpointCooldown=0}] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if entity @e[type=marker,tag=checkpoint,distance=..2] run function jumpandrun:checkpoints/activate_checkpoint

# Timer
function jumpandrun:timer/timer