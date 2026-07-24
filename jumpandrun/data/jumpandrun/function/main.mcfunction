##########################################################################################################
#                                            MAIN FUNCTION                                               #
##########################################################################################################

# Timer
execute as @a if score @s JnR.checkpointID matches 1.. if score @s JnR.checkpointID < $global JnR.checkpointID run function jumpandrun:timer/timer
# Timer in Actionbar
function jumpandrun:timer/actionbar
scoreboard players add @a JnR.timerS 0
scoreboard players add @a JnR.timerM 0
scoreboard players add @a JnR.timerH 0
scoreboard players add @a JnR.fails 0
# Scoreboard sidbar
execute as @a store result score @s JnR.Player run scoreboard players get @s JnR.checkpointID


# Modify display text
execute as @e[type=text_display,tag=display] at @s run function jumpandrun:checkpoints/name_checkpoint


# Delete Checkpoint if no pressure plate is present
execute as @e[type=marker,tag=checkpoint] at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run function jumpandrun:checkpoints/delete_checkpoint


# Check for player walking on a checkpoint
scoreboard players add @a JnR.checkpointID 0
execute as @a[gamemode=!spectator,gamemode=!creative,scores={JnR.checkpointCooldown=0}] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if entity @e[type=marker,tag=checkpoint,distance=..2] run function jumpandrun:checkpoints/activate_checkpoint


# Cooldown System for Checkpoints
scoreboard players remove @a[scores={JnR.checkpointCooldown=1..}] JnR.checkpointCooldown 1
execute as @a at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run scoreboard players set @s JnR.checkpointCooldown 0


# Teleport to last checkpoint using Carrot on a Stick
execute as @a[gamemode=!spectator,gamemode=!creative,scores={JnR.carrotStickUsed=1..,JnR.checkpointID=1..}] run function jumpandrun:checkpoints/teleport_to_checkpoint
scoreboard players reset @a[scores={JnR.carrotStickUsed=1..}] JnR.carrotStickUsed