# Create end point for Jump and Run
# Place golden pressure plate
setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

# Create armor stand for end point
execute align xyz run summon armor_stand ~0.5 ~0.2 ~0.5 {CustomNameVisible:1b,NoGravity:1b,Marker:1b,Invisible:1b,Small:1b,Tags:["end"],Health:999f,CustomName:{"text":"End","color":"gold","bold":true}}

# Set armor stand rotation to player rotation
data modify entity @e[type=armor_stand,tag=end,limit=1,sort=nearest] Rotation set from entity @s Rotation

# Confirmation message
tellraw @s [{"text":"Created End!","color":"green","bold":true}]
particle end_rod ~ ~1 ~ 0.5 0.5 0.5 0.1 20
playsound block.note_block.bell player @s ~ ~ ~ 1 2.0
