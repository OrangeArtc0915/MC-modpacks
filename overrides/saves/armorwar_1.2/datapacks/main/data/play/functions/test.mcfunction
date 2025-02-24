scoreboard players add @s timer 1
execute if score @s timer matches ..10 run say ---
execute if score @s timer matches ..10 run tellraw @a {"nbt":"Rotation","entity":"@s"}