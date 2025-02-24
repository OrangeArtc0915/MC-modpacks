scoreboard players operation @s from = @e[tag=tmp,limit=1] int

execute as @a[tag=hero] at @s run playsound minecraft:entity.arrow.hit_player player @s ~ ~ ~ 1 0.5

execute if score arrow_type int matches 21 run scoreboard players add @s pdamage 435
execute if score arrow_type int matches 22 run function play:mon/arrow_damage/22
execute if score arrow_type int matches 23 run function play:mon/arrow_damage/23

kill @e[tag=tmp,type=#minecraft:arrows]