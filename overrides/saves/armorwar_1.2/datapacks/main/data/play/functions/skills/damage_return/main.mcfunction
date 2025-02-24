#传送
scoreboard players operation temp int = @s int
execute as @a[tag=soldier] if score @s muid = temp int run tag @s add tmp

tag @s add tmp1
execute as @a[tag=tmp,limit=1,tag=!attacking,nbt={Motion:[0.0d,0.0d,0.0d],OnGround:1b}] at @s rotated ~ 0.0 run tp @e[tag=tmp1,limit=1] ^0.5 ^0.3 ^1.5 ~-20.0 ~
execute as @a[tag=tmp,limit=1,tag=attacking,nbt={Motion:[0.0d,0.0d,0.0d],OnGround:1b}] at @s rotated ~ 0.0 run tp @e[tag=tmp1,limit=1] ^0.5 ^0.3 ^0.8 ~-30.0 ~
tag @s remove tmp1
tag @a remove tmp

#盾反
execute if entity @s[tag=triggered] run function play:skills/damage_return/trigger

#发光
execute if entity @s[tag=glowing] run function play:skills/damage_return/glow