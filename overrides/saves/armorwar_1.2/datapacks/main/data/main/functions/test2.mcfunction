#碰撞计算
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud 1.0 0.0 0.0 {Tags:["tmp","tmpx"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud -1.0 0.0 0.0 {Tags:["tmp","tmpx"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud 0.0 1.0 0.0 {Tags:["tmp","tmpy"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud 0.0 -1.0 0.0 {Tags:["tmp","tmpy"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud 0.0 0.0 1.0 {Tags:["tmp","tmpz"]}
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud 0.0 0.0 -1.0 {Tags:["tmp","tmpz"]}

execute align xyz positioned ~0.5 ~0.5 ~0.5 facing entity @s feet positioned 0.0 0.0 0.0 positioned ^ ^ ^0.5 run tag @e[tag=tmp,limit=1,sort=nearest] add tmp1

execute positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute if entity @e[tag=tmp1,tag=tmpx] store result entity @s Pos[0] double -0.0001 run data get entity @s Pos[0] 10000
execute if entity @e[tag=tmp1,tag=tmpy] store result entity @s Pos[1] double -0.0001 run data get entity @s Pos[1] 10000
execute if entity @e[tag=tmp1,tag=tmpz] store result entity @s Pos[2] double -0.0001 run data get entity @s Pos[2] 10000
execute positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
execute rotated as @s run tp @s ^ ^ ^0.02

kill @e[tag=tmp]