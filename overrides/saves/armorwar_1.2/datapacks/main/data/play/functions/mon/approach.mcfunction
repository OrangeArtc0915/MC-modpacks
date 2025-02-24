#获取被攻击者
scoreboard players operation temp int = @s target
execute as @e[tag=mob_fighter,tag=!dead] if score @s muid = temp int run tag @s add tmp
scoreboard players operation @e[tag=tmp,scores={target=0}] target = @s muid
#移动
execute at @e[tag=tmp,limit=1] facing entity @s eyes run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~180.0 0.0
data modify entity @s Rotation set from entity @e[tag=math_marker,limit=1] Rotation
scoreboard players set @s speed 0
#攻击范围检测
scoreboard players set temp int 1
execute unless entity @e[tag=tmp,tag=attacking] run scoreboard players set temp int 0
execute unless entity @e[tag=tmp] run function play:mon/dattack
#移除临时标签
tag @e remove tmp
#进入攻击状态
execute if score temp int matches 1 run function play:mon/iattack