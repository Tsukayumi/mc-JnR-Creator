# Increase global checkpoint counter
scoreboard players add $global JnR.checkpointID 1
scoreboard players add $global JnR.displayID 1

# Place golden pressure plate
setblock ~ ~ ~ minecraft:light_weighted_pressure_plate

# Create Marker and Display
execute align xyz run summon marker ~0.5 ~0.2 ~0.5 {Tags:["checkpoint","checkpoint_new"]}
execute align xyz run summon text_display ~0.5 ~0.3 ~0.5 {Tags:["display","display_new"],billboard:"center",background:0,text:{text:"-"}}

# Store checkpoint number
scoreboard players operation @e[type=marker,tag=checkpoint_new,limit=1] JnR.checkpointID = $global JnR.checkpointID
scoreboard players operation @e[type=text_display,tag=display_new,limit=1] JnR.displayID = $global JnR.displayID

# Modify tags
execute as @e[type=marker,tag=checkpoint_new,limit=1] if score @s JnR.checkpointID matches 1 run tag @s add start
execute as @e[type=marker,tag=checkpoint_new,limit=1] if score @s JnR.checkpointID matches 2.. run tag @s add end
execute as @e[type=marker,tag=checkpoint_new,limit=1] if score @s JnR.checkpointID matches 3.. run scoreboard players operation $temp JnR.checkpointID = @s JnR.checkpointID
execute as @e[type=marker,tag=checkpoint_new,limit=1] if score @s JnR.checkpointID matches 3.. run scoreboard players remove $temp JnR.checkpointID 1
execute as @e[type=marker,tag=end,limit=1] if score @s JnR.checkpointID = $temp JnR.checkpointID run tag @s remove end
execute as @e[type=text_display,tag=display_new,limit=1] if score @s JnR.displayID matches 1 run tag @s add start
execute as @e[type=text_display,tag=display_new,limit=1] if score @s JnR.displayID matches 2.. run tag @s add end
execute as @e[type=text_display,tag=display_new,limit=1] if score @s JnR.displayID matches 3.. run scoreboard players operation $temp JnR.displayID = @s JnR.displayID
execute as @e[type=text_display,tag=display_new,limit=1] if score @s JnR.displayID matches 3.. run scoreboard players remove $temp JnR.displayID 1
execute as @e[type=text_display,tag=end,limit=1] if score @s JnR.displayID = $temp JnR.displayID run tag @s remove end


# Save player's view direction in armor stand
data modify entity @e[type=marker,tag=checkpoint_new,limit=1] Rotation set from entity @s Rotation

# Remove temporary tag
tag @e[type=marker,tag=checkpoint_new] remove checkpoint_new
tag @e[type=text_display,tag=display_new] remove display_new
# Confirmation message
tellraw @s [{"text":"Checkpoint ","color":"green"},{"score":{"name":"$global","objective":"JnR.checkpointID"},"color":"yellow"},{"text":" created!","color":"green"}]