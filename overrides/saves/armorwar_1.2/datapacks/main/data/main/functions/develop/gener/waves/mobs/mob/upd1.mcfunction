data modify block 0 0 0 Items[0].tag.ctmp.spawn.pos set from entity @s Pos
execute store result score temp int run data get entity @s Pos[1] 10000
execute store result block 0 0 0 Items[0].tag.ctmp.spawn.pos[1] double 0.0001 run scoreboard players add temp int 5000
function mobs:spawn
tag @e[tag=result] add map_mob_display
data modify entity @s CustomName set from block 0 0 0 Items[0].tag.ctmp.id
scoreboard players operation @e[tag=result] making = temp1 int