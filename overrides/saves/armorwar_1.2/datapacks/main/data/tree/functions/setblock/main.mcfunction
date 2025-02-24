tag @s remove tree_aec
function tree:kill_test
tag @s add tree_aec
execute if entity @s[tag=tree_sapling,tag=!killed] run setblock ~ ~ ~ minecraft:jungle_sapling
execute if entity @s[tag=tree_log,tag=!killed] run function tree:setblock/log
execute if entity @s[tag=tree_wood,tag=!killed] run setblock ~ ~ ~ minecraft:jungle_wood
execute if entity @s[tag=tree_fence,tag=!killed] run setblock ~ ~ ~ jungle_fence
execute if entity @s[tag=tree_leave,tag=!killed] run function tree:setblock/leave
tag @s remove tree_block