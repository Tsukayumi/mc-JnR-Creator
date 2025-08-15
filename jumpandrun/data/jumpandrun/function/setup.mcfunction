gamerule keepInventory true

# Track carrot on a stick usage for teleportation
scoreboard objectives add carrotStickUsed minecraft.used:minecraft.carrot_on_a_stick

# Checkpoint
scoreboard objectives add checkpointCount dummy
scoreboard objectives add checkpointCooldown dummy
scoreboard objectives add temp_AbsorptionAmount dummy
scoreboard players add $global checkpointCount 0
scoreboard objectives add temp_checkpoint dummy
scoreboard objectives add fails dummy

# Timer
scoreboard objectives add timerT dummy
scoreboard objectives add timerS dummy
scoreboard objectives add timerM dummy
scoreboard objectives add timerH dummy

# Team
team add JnR 
team modify JnR collisionRule never
team modify JnR friendlyFire false
team modify JnR nametagVisibility never

# Scoreboard sidbar
scoreboard objectives add Player dummy {"text":"Jump and Run","color":"red","bold":true}
scoreboard objectives setdisplay sidebar Player
scoreboard players add @a Player 0


tellraw @a {"text":"Jump and Run Datapack loaded! Use /function jumpandrun:checkpoints:create_checkpoint to create checkpoints (Checkpoints only work in Survival and Adventure Mode)","color":"green"}