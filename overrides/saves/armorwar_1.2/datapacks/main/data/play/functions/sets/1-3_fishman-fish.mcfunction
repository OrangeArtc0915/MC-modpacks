scoreboard players set @s int 0
tag @e[tag=monster,distance=..5,tag=!fly_mob,limit=1,sort=random] add tmp
tag @e[tag=tmp,limit=1] remove monster
data modify entity @e[tag=tmp,limit=1] NoAI set value 0b
execute at @s run playsound minecraft:entity.fishing_bobber.throw player @a[tag=player] ~ ~ ~ 5.0 0.1
execute at @e[tag=tmp,limit=1] facing entity @s feet rotated ~ -25.0 positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^2.5
execute as @e[tag=tmp,limit=1] at @s run tp @s ~ ~2.0 ~
data modify entity @e[tag=tmp,limit=1] Motion set from entity @e[tag=math_marker,limit=1] Pos
scoreboard players operation temp int = @e[tag=tmp,limit=1] muid
execute as @e[tag=mon_model] if score @s int = temp int run kill @s
scoreboard players set @e[tag=tmp,limit=1] killtime 10
tag @e remove tmp