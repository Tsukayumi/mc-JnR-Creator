# Create checkpoint at player position
# Increase global checkpoint counter
scoreboard players add $global checkpointCount 1

# Place golden pressure plate
setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

# Create small armor stand for checkpoint display (centered in block)
execute align xyz run summon armor_stand ~0.5 ~0.2 ~0.5 {CustomName:{"text":"Checkpoint","color":"gold","bold":true},CustomNameVisible:1b,Health:20f,NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["checkpoint","checkpoint_new"]}

# Save player's view direction in armor stand
data modify entity @e[type=armor_stand,tag=checkpoint_new,limit=1] Rotation set from entity @s Rotation

# Set armor stand checkpointCount score
scoreboard players operation @e[type=armor_stand,tag=checkpoint_new,limit=1] checkpointCount = $global checkpointCount

# Save checkpoint number in NBT data
execute store result entity @e[type=armor_stand,tag=checkpoint_new,limit=1] AbsorptionAmount int 1 run scoreboard players get $global checkpointCount

# Remove temporary tag
tag @e[type=armor_stand,tag=checkpoint_new] remove checkpoint_new

# Confirmation message
tellraw @s [{"text":"Checkpoint #","color":"green"},{"score":{"name":"$global","objective":"checkpointCount"},"color":"yellow"},{"text":" created!","color":"green"}]
