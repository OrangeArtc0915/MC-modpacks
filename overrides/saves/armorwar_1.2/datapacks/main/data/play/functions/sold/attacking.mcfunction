scoreboard players set temp9 int 0

scoreboard players set @s speed 0
scoreboard players operation temp int = @s target
tag @s add tmp7
execute as @e[tag=soldier,tag=!tmp7] if score @s target = temp int run scoreboard players set temp9 int 1
tag @s remove tmp7
execute at @s as @e[tag=monster,distance=..10] if score @s muid = temp int run tag @s add tmp
execute at @s facing entity @e[tag=tmp,limit=1] eyes run tp @s ~ ~ ~ ~ 0.0

execute at @s if entity @e[tag=tmp,limit=1,distance=..0.5] run tp @s ^ ^ ^-1.2

scoreboard players set result int 1
execute at @s positioned ^ ^ ^1.2 as @e[tag=tmp,limit=1,tag=!boss] run function math:hit_test

scoreboard players add @s CD 1
execute if score @s CD >= @s at_cd if score result int matches 1 if entity @e[tag=tmp] run function play:sold/attack
execute if score @s CD >= @s at_cd run scoreboard players set @s CD 0

execute if entity @e[tag=tmp] if score result int matches 0 unless score @s arm matches 1.. run function play:sold/dattack
execute unless entity @e[tag=tmp] unless score @s arm matches 1.. run function play:sold/dattack1


tag @e remove tmp

execute if score temp9 int matches 1 at @e[tag=tmp33,limit=1] if entity @e[tag=monster,scores={target=0},distance=..8.5,tag=!fly_mob] run function play:sold/target1