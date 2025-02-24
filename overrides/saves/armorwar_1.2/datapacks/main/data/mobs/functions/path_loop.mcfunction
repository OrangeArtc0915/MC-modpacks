scoreboard players remove temp3 int 1
data remove block 0 0 0 Items[0].tag.ctmp.spawn.paths[0]
data remove block 0 0 0 Items[0].tag.ctmp.spawn.poses[0]
execute if score temp3 int matches 2.. run function mobs:path_loop