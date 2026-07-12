# Activate end point - Jump and Run completed!
scoreboard players set @s JnR.checkpointCount 999
# Set spawnpoint at end
spawnpoint @s ~ ~ ~

# Transfer rotation from end armor stand
data modify entity @s Rotation set from entity @e[type=armor_stand,tag=end,limit=1,sort=nearest] Rotation

# Set cooldown
scoreboard players set @s JnR.checkpointCooldown 40

# Spectacular goal effects
particle firework ~ ~1 ~ 1 1 1 0.3 50
particle totem_of_undying ~ ~1 ~ 1 1 1 0.2 30
playsound entity.player.levelup player @s ~ ~ ~ 1 1.0
playsound ui.toast.challenge_complete player @s ~ ~ ~ 1 1.2

# Success message
tellraw @a {"text":"","bold":false}
tellraw @a [{"color":"gold","text":"🎉 "},{"color":"gold","selector":"@s"},{"color":"gold","hover_event":{"action":"show_text","value":[{"text":"","bold":false}]},"text":" has finished the Jump and Run"}]
tellraw @a [{"color":"gray","text":"🎉 "},{"text":"Time: ","color":"gray","bold":false},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.timerH"}},{"color":"gray","text":"h "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.timerM"}},{"color":"gray","text":"m "},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.timerS"}},{"color":"gray","text":"s"},{"text":" | Fails: ","color":"gray","bold":false},{"bold":false,"color":"gray","score":{"name":"@s","objective":"JnR.fails"}}]
tellraw @a {"text":"","bold":false}
gamemode spectator @s