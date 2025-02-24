tag @s add tmp

execute store result score x int run data get block 0 0 0 Items[0].tag.playing.tag.map_pos[0] 10
execute store result score y int run data get block 0 0 0 Items[0].tag.playing.tag.map_pos[1] 10
execute store result score z int run data get block 0 0 0 Items[0].tag.playing.tag.map_pos[2] 10

scoreboard players set min int -30
scoreboard players set max int 30
function math:uuid-random
scoreboard players operation x int += random int
function math:uuid-random
scoreboard players operation z int += random int

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp1"]}
data modify entity @e[tag=tmp1,limit=1] Rotation set from block 0 0 0 Items[0].tag.playing.rotation
execute as @e[tag=tmp1] run function play:tp1
kill @e[tag=tmp1]

tag @s remove tmp