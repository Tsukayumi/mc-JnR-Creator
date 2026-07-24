# Teleport to last checkpoint using Carrot on a Stick
# No item removal needed - Carrot on a Stick has no disruptive effects

# Find armor stand with AbsorptionAmount value of last checkpoint
# Mark player temporarily
tag @s add teleporting_player

# fail sound
execute as @a[tag=teleporting_player] at @s run playsound minecraft:entity.player.death player @s ~ ~ ~ 1 1

# Teleport directly to marker
execute as @e[type=marker,tag=checkpoint] if score @s JnR.checkpointID = @a[tag=teleporting_player,limit=1] JnR.checkpointID at @s run tp @a[tag=teleporting_player,limit=1] ~ ~-0.2 ~ ~ ~
execute as @e[type=marker,tag=checkpoint] if score @s JnR.checkpointID = @a[tag=teleporting_player,limit=1] JnR.checkpointID run data modify entity @a[tag=teleporting_player,limit=1] Rotation set from entity @s Rotation

# add Fails +1
execute as @e[type=marker,tag=checkpoint] if score @s JnR.checkpointID = @a[tag=teleporting_player,limit=1] JnR.checkpointID run scoreboard players add @a[tag=teleporting_player,limit=1] JnR.fails 1

# remove temporary tag
tag @s remove teleporting_player