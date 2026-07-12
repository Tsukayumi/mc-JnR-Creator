# Activate checkpoint - only if higher than current progress
# Get checkpoint number from nearest armor stand
execute store result score @s JnR.temp_checkpoint run data get entity @e[type=armor_stand,tag=checkpoint,limit=1,sort=nearest] AbsorptionAmount

# Only activate if checkpoint number is higher than current
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run spawnpoint @s ~ ~ ~
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=checkpoint,limit=1,sort=nearest] Rotation
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run scoreboard players set @s JnR.checkpointCooldown 40
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run particle totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0 20
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run tellraw @s [{"text":"Checkpoint #","color":"green"},{"score":{"name":"@s","objective":"JnR.temp_checkpoint"},"color":"yellow"},{"text":" activated!","color":"green"}]
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointCount run scoreboard players operation @s JnR.checkpointCount = @s JnR.temp_checkpoint