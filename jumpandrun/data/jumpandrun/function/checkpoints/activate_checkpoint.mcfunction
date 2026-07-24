# Activate checkpoint - only if higher than current progress
# Get checkpoint number from nearest Checkpoint
execute as @s store result score @s JnR.temp_checkpoint run scoreboard players get @e[type=marker,tag=checkpoint,limit=1,sort=nearest] JnR.checkpointID

# Only activate if checkpoint number is higher than current
scoreboard players operation $temp JnR.checkpointID = $global JnR.checkpointID
scoreboard players remove $temp JnR.checkpointID 1


# Start / Checkpoint
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run spawnpoint @s ~ ~ ~
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run data modify entity @s Rotation set from entity @e[type=armor_stand,tag=checkpoint,limit=1,sort=nearest] Rotation
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run scoreboard players set @s JnR.checkpointCooldown 40
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run particle totem_of_undying ~ ~1 ~ 0.8 0.8 0.8 0 20
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run playsound entity.experience_orb.pickup player @s ~ ~ ~ 1 1.5
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run tellraw @s [{"text":"Checkpoint #","color":"green"},{"score":{"name":"@s","objective":"JnR.temp_checkpoint"},"color":"yellow"},{"text":" activated!","color":"green"}]
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID unless score @s JnR.checkpointID = $temp JnR.checkpointID run scoreboard players operation @s JnR.checkpointID = @s JnR.temp_checkpoint



# End Success message + effects
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run tellraw @a {"text":"","bold":false}
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run tellraw @a [{"color":"gold","text":"🎉 "},{"color":"gold","selector":"@s"},{"color":"gold","hover_event":{"action":"show_text","value":[{"text":"","bold":false}]},"text":" has finished the Jump and Run"}]
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run tellraw @a [{"color":"gray","text":"🎉 "},{"text":"Time: ","color":"gray","bold":false},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.timerH"}},{"color":"gray","text":"h "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.timerM"}},{"color":"gray","text":"m "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.timerS"}},{"color":"gray","text":"s"},{"text":" | Fails: ","color":"gray","bold":false},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.fails"}}]
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run tellraw @a {"text":"","bold":false}
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run particle firework ~ ~1 ~ 1 1 1 0.3 50
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run particle totem_of_undying ~ ~1 ~ 1 1 1 0.2 30
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run playsound entity.player.levelup player @s ~ ~ ~ 1 1.0
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run playsound ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2

# End 
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run gamemode spectator @s
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run scoreboard players set @s JnR.checkpointCooldown 40
execute if score @s JnR.temp_checkpoint > @s JnR.checkpointID if score @s JnR.checkpointID = $temp JnR.checkpointID run scoreboard players operation @s JnR.checkpointID = @s JnR.temp_checkpoint