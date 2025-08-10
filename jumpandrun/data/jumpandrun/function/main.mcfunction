scoreboard players add @a checkpointCount 0
# Set spawnpoint when player steps on golden pressure plate
execute as @a[scores={checkpointCooldown=0}] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if entity @e[type=armor_stand,tag=checkpoint,distance=..2] run function jumpandrun:checkpoints/activate_checkpoint

# Goal reached
execute as @a[scores={checkpointCooldown=0},gamemode=!spectator] at @s if block ~ ~ ~ minecraft:light_weighted_pressure_plate if entity @e[type=armor_stand,tag=end,distance=..2] run function jumpandrun:checkpoints/activate_end

# Cooldown System for Checkpoints
scoreboard players remove @a[scores={checkpointCooldown=1..}] checkpointCooldown 1
execute as @a at @s unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run scoreboard players set @s checkpointCooldown 0

# Teleport to last checkpoint using Carrot on a Stick
execute as @a[scores={carrotStickUsed=1..,checkpointCount=1..}] run function jumpandrun:checkpoints/teleport_to_checkpoint
scoreboard players reset @a[scores={carrotStickUsed=1..}] carrotStickUsed


# Timer
execute as @a[scores={checkpointCount=1..998}] run function jumpandrun:timer/timer
scoreboard players add @a timerS 0
scoreboard players add @a timerM 0
scoreboard players add @a timerH 0
scoreboard players add @a fails 0
# Timer in Actionbar
execute as @a run function jumpandrun:timer/actionbar

#auto tp at y=0
execute as @a at @s if entity @s[y=0,dy=-64] run function jumpandrun:checkpoints/teleport_to_checkpoint