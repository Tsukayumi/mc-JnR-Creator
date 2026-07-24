# Activate checkpoint - only if higher than current progress
# Get checkpoint number from nearest Checkpoint
execute store result score @s JnR.temp_checkpoint run scoreboard players get @e[type=marker,tag=checkpoint,limit=1,sort=nearest] JnR.checkpointID

# Only activate if checkpoint number is higher than current

# Start / Checkpoint
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run spawnpoint @s ~ ~ ~
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=checkpoint,limit=1,sort=nearest] Rotation
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run scoreboard players set @s JnR.checkpointCooldown 40
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run particle totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0 20
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run tellraw @s [{"text":"Checkpoint #","color":"green"},{"score":{"name":"@s","objective":"JnR.temp_checkpoint"},"color":"yellow"},{"text":" activated!","color":"green"}]
execute as @s[tag=!end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run scoreboard players operation @s JnR.checkpointID = @s JnR.temp_checkpoint

# End
execute as @s[tag=end] if score @s JnR.temp_checkpoint > @s JnR.checkpointID run say hi