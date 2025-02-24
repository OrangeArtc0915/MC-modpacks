scoreboard players add @s skill_2 1
scoreboard players set @s value_2 120
scoreboard players set @s CD5 40
execute as @a at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2.0
scoreboard players remove coin int 150