gamerule keepInventory true

# Track carrot on a stick usage for teleportation
scoreboard objectives add carrotStickUsed minecraft.used:minecraft.carrot_on_a_stick

# Checkpoint
scoreboard objectives add checkpointCount dummy
scoreboard objectives add checkpointCooldown dummy
scoreboard objectives add temp_health dummy
scoreboard players add $global checkpointCount 0
scoreboard objectives add temp_checkpoint dummy
scoreboard objectives add fails dummy

# Timer
scoreboard objectives add timerT dummy
scoreboard objectives add timerS dummy
scoreboard objectives add timerM dummy
scoreboard objectives add timerH dummy

tellraw @a {"text":"Jump and Run Datapack loaded! Use /function jumpandrun:checkpoints:create_checkpoint to create checkpoints","color":"green"}