scoreboard players set x int 0
scoreboard players set y int -30000
scoreboard players set z int 0
execute at @s positioned ~ ~6 ~ run function math:vector1
execute at @s run summon snowball ~ ~5 ~ {Tags:["tmp1"],Motion:[0.0d,-10.0d,0.0d],Item:{id:"minecraft:redstone",Count:1b}}
data modify entity @e[tag=tmp1,limit=1] Owner set from entity @e[tag=tmp,limit=1] UUID
tag @e remove tmp1
tag @s add attacking1