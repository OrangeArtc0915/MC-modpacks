#main:test1
execute if data entity @s Rotation run say 1
tellraw @a {"nbt":"Rotation","entity":"@s"}
scoreboard players add @s timer 1
execute if score @s timer matches 20.. run kill @s