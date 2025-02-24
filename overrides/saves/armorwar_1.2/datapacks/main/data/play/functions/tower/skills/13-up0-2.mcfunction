scoreboard players add @s skill_0 1
scoreboard players set @s value_0 100
execute as @a at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2.0
scoreboard players remove coin int 150