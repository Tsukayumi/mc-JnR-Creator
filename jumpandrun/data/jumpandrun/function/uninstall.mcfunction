# Uninstall Jump and Run Datapack
# Remove all scoreboards and entities created by the datapack

# Remove all scoreboards
scoreboard objectives remove checkpointCount
scoreboard objectives remove checkpointCooldown
scoreboard objectives remove carrotStickUsed
scoreboard objectives remove temp_checkpoint
scoreboard objectives remove temp_AbsorptionAmount
scoreboard objectives remove fails

# Remove all checkpoint and end armor stands
kill @e[type=armor_stand,tag=checkpoint]
kill @e[type=armor_stand,tag=end]

# Reset gamerules
gamerule keepInventory false

# Confirmation message
tellraw @a {"text":"Jump and Run Datapack successfully uninstalled!","color":"red","bold":true}
tellraw @a {"text":"All scoreboards and entities have been removed.","color":"gray"}