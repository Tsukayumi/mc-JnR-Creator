# Uninstall Jump and Run Datapack
# Remove all scoreboards and entities created by the datapack

# Remove all checkpoint and end armor stands
kill @e[type=marker,tag=checkpoint]
kill @e[type=text_display,tag=display]

# Remove all scoreboards
scoreboard objectives remove JnR.checkpointID
scoreboard objectives remove JnR.displayID
scoreboard objectives remove JnR.checkpointCooldown
scoreboard objectives remove JnR.carrotStickUsed
scoreboard objectives remove JnR.temp_checkpoint
scoreboard objectives remove JnR.fails
scoreboard objectives remove JnR.timerT
scoreboard objectives remove JnR.timerS
scoreboard objectives remove JnR.timerM
scoreboard objectives remove JnR.timerH
scoreboard objectives remove JnR.Player

# Remove team
team remove JnR

# Reset gamerules
gamerule keep_inventory false

# Confirmation message
tellraw @a {"text":"------------------------------------------------","color":"white"}
tellraw @a {"text":"Jump and Run Datapack successfully uninstalled!","color":"red","bold":true}
tellraw @a {"text":"All scoreboards, teams and entities have been removed.","color":"gray"}
tellraw @a {"text":"------------------------------------------------","color":"white"}