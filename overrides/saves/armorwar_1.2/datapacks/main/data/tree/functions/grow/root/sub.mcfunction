scoreboard players set min int -350000
scoreboard players set max int 0
function math:random
scoreboard players operation temp0 int = @s root_main0
execute store result entity @s Rotation[0] float 0.0001 run scoreboard players operation temp0 int += random int

scoreboard players set min int 100000
scoreboard players set max int 350000
function math:random
scoreboard players operation temp1 int = @s root_main1
execute store result entity @s Rotation[1] float 0.0001 run scoreboard players operation temp1 int += random int

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tree_grow","tree_rootma","tree_aec","tree_root","tree_wood","tree_block","tmp"],Duration:2147483647}
execute at @s run tp @e[tag=tmp,limit=1] ^ ^ ^1.0

execute if score temp1 int matches 550000.. run function tree:grow/root/re_r1

scoreboard players operation @e[tag=tmp,limit=1] root_main0 = temp0 int
scoreboard players operation @e[tag=tmp,limit=1] root_main1 = temp1 int
tag @e remove tmp

tag @s add tree_rootsu