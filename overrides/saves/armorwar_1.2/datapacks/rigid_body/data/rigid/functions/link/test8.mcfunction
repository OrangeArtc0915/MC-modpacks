scoreboard players add temp int 1
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation tempx int += @s motion0
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation tempy int += @s motion1
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation tempz int += @s motion2
execute at @s positioned ^ ^ ^-1.5 as @e[type=zombie,limit=1,sort=nearest] run function math:hit_test
execute if score result int matches 1 at @s positioned ^ ^ ^-1.5 run data modify entity @e[type=zombie,limit=1,sort=nearest] Fire set value 1000s
execute if score result int matches 1 at @s positioned ^ ^ ^-1.5 run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 4.0 0.6
execute if score temp int matches ..10 run function rigid:link/test8