execute unless entity @s[tag=tree_crowned] run scoreboard players add @s grow_level 1
execute unless entity @s[tag=tree_crowned] if score @s grow_level matches 4.. run function tree:grow/crown/or
execute if score @s y matches 12.. if entity @s[tag=tree_crowned,tag=tree_wood,tag=!tree_bra] run function tree:grow/crown/bra