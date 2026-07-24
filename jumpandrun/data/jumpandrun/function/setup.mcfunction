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
tellraw @a {"text":"Jump and Run Datapack loaded!","color":"green"}
tellraw @a {"text":"","extra":[{"text":"For Documentation, visit the GitHub repository. ","color":"gray"},{"text":"[GitHub]","color":"red","underlined":true,"hover_event":{"action":"show_text","value":{"text":"Copy GitHub URL"}},"click_event":{"action":"copy_to_clipboard","value":"https://github.com/Tsukayumi/mc-JnR-Creator"}}]}
tellraw @a {"text":"------------------------------------------------","color":"white"}
