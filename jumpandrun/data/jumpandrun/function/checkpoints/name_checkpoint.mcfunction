# Zahl speichern
execute store result storage jnr:data id int 1 run scoreboard players get @s JnR.displayID

# Start
execute if score @s JnR.displayID matches 1 run data modify storage jnr:data text set value {"text":"Start ","color":"gold","bold":true,"extra":[{"nbt":"id","storage":"jnr:data","color":"yellow"}]}

# Checkpoint
execute if score @s JnR.displayID matches 2.. if score @s JnR.displayID < $global JnR.displayID run data modify storage jnr:data text set value {"text":"Checkpoint ","color":"gold","bold":true,"extra":[{"nbt":"id","storage":"jnr:data","color":"yellow"}]}

# Ende
execute if score @s JnR.displayID = $global JnR.displayID run data modify storage jnr:data text set value {"text":"End ","color":"gold","bold":true,"extra":[{"nbt":"id","storage":"jnr:data","color":"yellow"}]}

# Text übernehmen
data modify entity @s text set from storage jnr:data text