#静止
function main:stop

#目标
scoreboard players operation temp int = @s target
execute as @e[tag=monster] if score @s muid = temp int run tag @s add tmp

#特殊攻击
execute if score @s chop_test matches 1 run function play:hr/chop_test
execute if score @s att matches 1.. run function play:hr/attack_test

#视角
execute store result score @s rotation_0 run data get entity @s Rotation[0] 10000
execute store result score @s rotation_1 run data get entity @s Rotation[1] 10000

#计时
scoreboard players add @s attacking 1

#结束战斗
execute unless entity @e[tag=tmp] run function play:hr/dattack


tag @e remove tmp