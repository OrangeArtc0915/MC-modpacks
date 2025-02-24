scoreboard players set min int 1
scoreboard players set max int 17
function math:random
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.mobs
execute if score random int matches 1.. run function mobs:boss1/actions/zomb_lp
data modify block 0 0 0 Items[0].tag.ctmp set from block 0 0 0 Items[0].tag.ctmp[0].entity
data modify block 0 0 0 Items[0].tag.ctmp.spawn.paths set value [[10,12,0]]
execute store result entity @s Pos[1] double 0.1 run scoreboard players get soldier_y int
execute at @s run function mobs:spawn