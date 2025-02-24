execute at @s[tag=!missile_3] run summon creeper ~ ~512 ~ {Tags:["tmp"],Fuse:0}
execute at @s run tp @e[tag=tmp,limit=1] ~ ~ ~
tag @e remove tmp
tag @s add tmp
execute store result score tempx int run data get entity @s Pos[0] 1000
execute store result score tempy int run data get entity @s Pos[1] 1000
execute store result score tempz int run data get entity @s Pos[2] 1000
execute at @s[tag=!missile_3] as @e[tag=monster,distance=..18.0] run function items:missile_0/e_da
execute at @s[tag=missile_3] as @e[tag=soldier,distance=..18.0] run function items:missile_0/e_da
execute at @s[tag=missile_3] run playsound minecraft:entity.zombie.attack_wooden_door player @a ~ ~ ~ 3.5 0.8
tag @s remove tmp

execute if entity @s[tag=14-blast] run function items:missile_0/14-blast
execute if entity @s[tag=missile_z] run function items:missile_0/z

kill @s