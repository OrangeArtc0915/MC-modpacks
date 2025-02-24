scoreboard players add mhigh_light int 1
scoreboard players operation mhigh_light int %= 2 int
execute if score mhigh_light int matches 0 as @e[tag=monster] run data modify entity @s Glowing set value 0b
execute if score mhigh_light int matches 1 as @e[tag=monster] run data modify entity @s Glowing set value 1b

execute at @s run playsound minecraft:block.glass.break player @a ~ ~ ~ 4.0 1.5
replaceitem entity @s weapon.mainhand air