scoreboard players operation temp int = @s target
execute as @e[tag=monster] if score @s muid = temp int run tag @s add tmp
scoreboard players operation @s hp -= @s pdamage
scoreboard players operation @s pdamage *= 5 int
scoreboard players operation @e[tag=tmp,limit=1] pdamage += @s pdamage
scoreboard players operation @e[tag=tmp,limit=1] from = @s int
tag @e remove tmp

tag @s remove triggered

data modify entity @s Glowing set value 1b
scoreboard players set @s CD 0
tag @s add glowing

execute at @s run particle minecraft:end_rod ~ ~ ~ 0.08 0.08 0.08 0.5 5 force
execute at @s run playsound minecraft:item.shield.block player @a

execute if score @s hp matches ..0 run kill @s