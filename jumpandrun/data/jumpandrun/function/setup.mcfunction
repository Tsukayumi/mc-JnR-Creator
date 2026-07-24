gamerule keep_inventory true

# Track carrot on a stick usage for teleportation
scoreboard objectives add JnR.carrotStickUsed minecraft.used:minecraft.carrot_on_a_stick

# Checkpoint
scoreboard objectives add JnR.checkpointID dummy
scoreboard players add $global JnR.checkpointID 0
scoreboard players add $temp JnR.checkpointID 0
scoreboard objectives add JnR.displayID dummy
scoreboard players add $global JnR.displayID 0
scoreboard players add $temp JnR.displayID 0
scoreboard objectives add JnR.checkpointCooldown dummy
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


tellraw @a {"text":"------------------------------------------------","color":"white"}
tellraw @a {"text":"Jump and Run Datapack loaded! \n","color":"green"}
tellraw @a {"text":"text \n","color":"gray"}
tellraw @a {"text":"[HELP]  [GET COMMAND BOOK]","color":"red"}
tellraw @a {"text":"------------------------------------------------","color":"white"}


execute as @a unless entity @s[tag=JnR_book] run loot give @s loot jumpandrun:admin_book
execute as @a unless entity @s[tag=JnR_book] run tag @s add JnR_book