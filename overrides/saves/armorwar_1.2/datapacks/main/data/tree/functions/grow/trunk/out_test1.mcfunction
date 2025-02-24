scoreboard players set temp int 1
execute if entity @s[tag=tree_fence] run scoreboard players set temp int 0
execute if score @s grow_level matches 1 run scoreboard players set temp int 0
scoreboard players set min int 1
scoreboard players set max int 100
function math:random
execute if score random int matches 1..48 run scoreboard players set temp int 0

execute at @s run summon area_effect_cloud ~1.0 ~ ~ {Tags:["tmp5"]}
execute at @s run summon area_effect_cloud ~ ~ ~1.0 {Tags:["tmp5"]}
execute at @s run summon area_effect_cloud ~-1.0 ~ ~ {Tags:["tmp5"]}
execute at @s run summon area_effect_cloud ~ ~ ~-1.0 {Tags:["tmp5"]}
tp @s @e[tag=tmp5,limit=1,sort=random]
kill @e[tag=tmp5]

execute at @s unless block ~ ~ ~ air run scoreboard players set temp int 0

execute unless entity @s[tag=main_trunk] run scoreboard players set temp int 0

execute if score temp int matches 1 at @s run function tree:grow/trunk/out

tp @s ~ ~ ~