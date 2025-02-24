scoreboard players add @s skill_1 1
scoreboard players set @s value_1 3
scoreboard players set @s CD4 1
execute as @a at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2.0
scoreboard players remove coin int 220

scoreboard players operation temp int = @s int
execute as @e[tag=soldier] if score @s int = temp int run tag @s add tmp

tag @e[tag=tmp] add 16-shield

tag @e remove tmp