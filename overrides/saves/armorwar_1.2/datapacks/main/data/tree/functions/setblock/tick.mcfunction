execute as @e[tag=tree_block,limit=20] at @s run function tree:setblock/main
execute unless entity @e[tag=tree_block] run function tree:store