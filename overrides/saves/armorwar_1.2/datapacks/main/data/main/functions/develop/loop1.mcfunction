summon minecraft:shulker 0 11 0 {Invulnerable:1b,Tags:["map_point","map_path","map_pathed","tmp1"],NoAI:1b,CustomNameVisible:1b}
execute store result score @e[tag=tmp1,limit=1] int run scoreboard players add path int 1
execute store result entity @e[tag=tmp1,limit=1] Color byte 1 run scoreboard players get temp int
execute as @e[tag=tmp1] run function main:develop/loop1-1
data remove entity @s Item.tag.pathp[0]
execute if data entity @s Item.tag.pathp[0] run function main:develop/loop1