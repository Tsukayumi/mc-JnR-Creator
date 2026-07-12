scoreboard players add @s JnR.timerT 1

execute if score @s JnR.timerT matches 20 run scoreboard players add @s JnR.timerS 1
execute if score @s JnR.timerT matches 20 run scoreboard players set @s JnR.timerT 0

execute if score @s JnR.timerS matches 60 run scoreboard players add @s JnR.timerM 1
execute if score @s JnR.timerS matches 60 run scoreboard players set @s JnR.timerS 0

execute if score @s JnR.timerM matches 60 run scoreboard players add @s JnR.timerH 1
execute if score @s JnR.timerM matches 60 run scoreboard players set @s JnR.timerM 0