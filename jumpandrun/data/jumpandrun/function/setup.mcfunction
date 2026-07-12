gamerule keep_inventory true

# Track carrot on a stick usage for teleportation
scoreboard objectives add JnR.carrotStickUsed minecraft.used:minecraft.carrot_on_a_stick

# Checkpoint
scoreboard objectives add JnR.checkpointCount dummy
scoreboard objectives add JnR.checkpointCooldown dummy
scoreboard objectives add JnR.temp_AbsorptionAmount dummy
scoreboard players set $global JnR.checkpointCount 0
scoreboard objectives add JnR.temp_checkpoint dummy
scoreboard objectives add JnR.fails dummy

# Timer
scoreboard objectives add JnR.timerT dummy
scoreboard objectives add JnR.timerS dummy
scoreboard objectives add JnR.timerM dummy
scoreboard objectives add JnR.timerH dummy

# Team
team add JnR
team modify JnR collisionRule never
team modify JnR friendlyFire false
team modify JnR nametagVisibility never

# Scoreboard sidebar
scoreboard objectives add JnR.Player dummy {"text":"Jump and Run","color":"red","bold":true}
scoreboard objectives setdisplay sidebar JnR.Player
scoreboard players set @a JnR.Player 0

tellraw @a {"text":"------------------------------------------------","color":"yellow"}
tellraw @a {"text":"Jump and Run Datapack loaded!","color":"green"}
tellraw @a {"text":"Use /function jumpandrun:checkpoints:create_checkpoint to create checkpoints (Checkpoints only work in Survival and Adventure Mode)","color":"green"}
tellraw @a {"text":"------------------------------------------------","color":"yellow"}