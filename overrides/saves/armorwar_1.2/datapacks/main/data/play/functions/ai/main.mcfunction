scoreboard players add @s int 1

execute if score @s int matches 1 run data modify block 0 0 0 Items[0].tag.ai_pool set value []
execute if score @s int matches 5 if score enable_skill int matches 1 if entity @e[tag=monster] run function play:ai/skill_add
execute if score @s int matches 9 as @e[tag=map_tower,tag=!built,limit=1,sort=random] run function play:ai/tower_add
execute if score @s int matches 10 as @e[tag=map_tower,tag=built,limit=5,sort=random] run function play:ai/tower_set
execute if score @s int matches 15 run function play:ai/rdaction
execute if score @s int matches 20 run function play:ai/action_test

execute if score @s int matches 20.. run function play:ai/rdtime