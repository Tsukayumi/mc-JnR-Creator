# Teleport to last checkpoint using Carrot on a Stick
# No item removal needed - Carrot on a Stick has no disruptive effects

# Find armor stand with Health value of last checkpoint
# Mark player temporarily for multiplayer safety
tag @s add teleporting_player

# Play fail sound
execute as @a[tag=teleporting_player] at @s run playsound minecraft:entity.player.death player @s ~ ~ ~ 1 1

# Teleport directly to this armor stand
execute as @e[type=armor_stand,tag=checkpoint] store result score @s temp_health run data get entity @s Health
execute as @e[type=armor_stand,tag=checkpoint] if score @s temp_health = @a[tag=teleporting_player,limit=1] checkpointCount at @s run tp @a[tag=teleporting_player,limit=1] ~ ~-0.2 ~ ~ ~
execute as @e[type=armor_stand,tag=checkpoint] if score @s temp_health = @a[tag=teleporting_player,limit=1] checkpointCount run data modify entity @a[tag=teleporting_player,limit=1] Rotation set from entity @s Rotation

#fails add +1
scoreboard players add @a[tag=teleporting_player,limit=1] fails 1

# Remove temporary tag
tag @s remove teleporting_player