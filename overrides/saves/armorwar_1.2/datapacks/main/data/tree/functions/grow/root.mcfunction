execute if entity @s[tag=tree_rooted] run function tree:grow/root/gen

scoreboard players set min int 1
scoreboard players set max int 100
function math:random

execute unless entity @s[tag=tree_rootma] if score random int matches 1..75 run function tree:grow/root/main
execute unless entity @s[tag=tree_rootsu] if score random int matches 76..100 run function tree:grow/root/sub

scoreboard players set min int 1
scoreboard players set max int 100
function math:random
execute if score random int matches 1..5 run function tree:grow/root/live

execute if score @s root_main1 matches ..150000 run scoreboard players add @s root_main1 450000
execute if score @s root_main1 matches 850000.. run scoreboard players remove @s root_main1 450000