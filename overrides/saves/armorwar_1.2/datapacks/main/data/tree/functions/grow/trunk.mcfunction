execute unless entity @s[tag=trunk_uped] run function tree:grow/trunk/up_test
execute if score @s y matches ..10 unless entity @s[tag=trunk_outed] at @s run function tree:grow/trunk/out_test
execute if score @s y matches 11..15 unless entity @s[tag=trunk_outed] at @s run function tree:grow/trunk/out_test1
execute if entity @s[tag=tree_fence] run function tree:grow/trunk/wood_test