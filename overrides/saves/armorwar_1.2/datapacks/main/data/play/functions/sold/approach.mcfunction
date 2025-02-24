#获取被攻击者
scoreboard players operation temp int = @s target
execute at @s as @e[tag=mob_fighter,distance=..10] if score @s muid = temp int run tag @s add tmp
scoreboard players operation @e[tag=tmp,scores={target=0}] target = @s muid
#移动
execute facing entity @e[tag=tmp,limit=1] eyes rotated ~ 0.0 run tp @s ~ ~ ~ ~ 0.0
function play:sold/move
#攻击范围检测
execute at @s if entity @e[tag=tmp,limit=1,distance=..0.5] run tp @s ^ ^ ^-1.2
scoreboard players set temp int 1
execute at @s positioned ^ ^ ^1.2 as @e[tag=tmp,limit=1] run function math:hit_test
execute at @s if entity @e[tag=tmp,tag=boss,distance=..7.0,limit=1] run function play:sold/boss_appr
execute if score result int matches 0 run scoreboard players set temp int 0
#移除临时标签
execute unless entity @e[tag=tmp] run scoreboard players set temp int 1
tag @e remove tmp
#进入攻击状态
execute if score temp int matches 1 run function play:sold/iattack