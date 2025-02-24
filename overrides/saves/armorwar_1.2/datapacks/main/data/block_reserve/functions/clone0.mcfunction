scoreboard players operation @s int = duration int
execute store result score @s int1 store result score @s y store result score @s z run scoreboard players add block_reserve int 1
execute store result entity @s Pos[1] double 1 run scoreboard players operation @s y /= 256 int
execute store result score @s x run scoreboard players operation @s z %= 256 int
scoreboard players operation @s z /= 16 int
scoreboard players operation @s x %= 16 int
execute store result entity @s Pos[0] double 1 run scoreboard players remove @s x 33
execute store result entity @s Pos[2] double 1 run scoreboard players add @s z 16
clone ~ ~ ~ ~ ~ ~ 0 11 0
execute at @s run kill @e[type=falling_block,tag=,distance=..30.0]
execute at @s run clone 0 11 0 0 11 0 ~ ~ ~
tp @s ~ ~ ~
execute if block ~ ~ ~ grass_path run tag @s add grass_path
execute if block ~ ~ ~ sand run tag @s add sand
execute if block ~ ~ ~ air run tag @s add air