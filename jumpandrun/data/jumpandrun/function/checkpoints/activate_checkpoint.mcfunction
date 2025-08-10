# Activate checkpoint - only if higher than current progress
# Get checkpoint number from nearest armor stand
execute store result score @s temp_checkpoint run data get entity @e[type=armor_stand,tag=checkpoint,limit=1,sort=nearest] Health

# Only activate if checkpoint number is higher than current
execute if score @s temp_checkpoint > @s checkpointCount run spawnpoint @s ~ ~ ~
execute if score @s temp_checkpoint > @s checkpointCount run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=checkpoint,limit=1,sort=nearest] Rotation
execute if score @s temp_checkpoint > @s checkpointCount run scoreboard players set @s checkpointCooldown 40
execute if score @s temp_checkpoint > @s checkpointCount run particle totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0 20
execute if score @s temp_checkpoint > @s checkpointCount run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if score @s temp_checkpoint > @s checkpointCount run tellraw @s [{"text":"Checkpoint #","color":"green"},{"score":{"name":"@s","objective":"temp_checkpoint"},"color":"yellow"},{"text":" activated!","color":"green"}]
execute if score @s temp_checkpoint > @s checkpointCount run scoreboard players operation @s checkpointCount = @s temp_checkpoint