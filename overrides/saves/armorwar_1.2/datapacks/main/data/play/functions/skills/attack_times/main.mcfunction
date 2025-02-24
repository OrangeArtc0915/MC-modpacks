execute at @s run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1.5 1
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float 0.0001 run scoreboard players get @s rotation_0
execute store result entity @e[tag=math_marker,limit=1] Rotation[1] float 0.0001 run scoreboard players get @s rotation_1

execute at @s rotated as @e[tag=math_marker,limit=1] run tp @s ^ ^ ^0.5
execute at @s run particle minecraft:sweep_attack ~ ~0.7 ~
execute at @s run tp @s ~ ~ ~ ~44.0 0.0
tag @s add tmp
execute at @s as @e[tag=monster,distance=..1.5] unless score @s pdamage matches 1.. run scoreboard players operation @s from = @e[tag=tmp,limit=1] int
execute at @s as @e[tag=monster,distance=..1.5] unless score @s pdamage matches 1.. run scoreboard players operation @s pdamage = @e[tag=tmp,limit=1] pdamage
execute at @s as @e[tag=monster,distance=..1.5] unless score @s pdamage matches 1.. run scoreboard players set @s blood_count 0
execute at @s run scoreboard players set @e[tag=monster,distance=..1.5] true_damage 1
tag @s remove tmp