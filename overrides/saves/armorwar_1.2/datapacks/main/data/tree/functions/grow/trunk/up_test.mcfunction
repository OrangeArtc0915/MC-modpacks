scoreboard players set temp int 1
execute if score @s y matches 19.. run scoreboard players set temp int 0
execute if entity @s[tag=tree_fence] run scoreboard players set temp int 0
scoreboard players set min int 1
scoreboard players set max int 100
function math:random
execute if score random int matches 1..18 run scoreboard players set temp int 0
execute unless entity @s[tag=main_trunk] if score @s grow_level matches 3.. if score random int matches 19..89 run scoreboard players set temp int 0
execute if score temp int matches 1 run function tree:grow/trunk/up