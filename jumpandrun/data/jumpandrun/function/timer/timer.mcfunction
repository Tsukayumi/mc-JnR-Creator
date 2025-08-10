scoreboard players add @s timerT 1

execute if score @s timerT matches 20 run scoreboard players add @s timerS 1
execute if score @s timerT matches 20 run scoreboard players set @s timerT 0

execute if score @s timerS matches 60 run scoreboard players add @s timerM 1
execute if score @s timerS matches 60 run scoreboard players set @s timerS 0

execute if score @s timerM matches 60 run scoreboard players add @s timerH 1
execute if score @s timerM matches 60 run scoreboard players set @s timerM 0