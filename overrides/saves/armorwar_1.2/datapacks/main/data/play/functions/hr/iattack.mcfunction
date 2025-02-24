tag @s add attacking
tag @e[tag=monster,distance=..7.0,tag=!fly_mob,nbt={HurtTime:10s},limit=1,sort=nearest] add tmp
scoreboard players operation @s target = @e[tag=tmp,limit=1] muid
execute if score @e[tag=tmp,limit=1] target matches 0 run scoreboard players operation @e[tag=tmp,limit=1] target = @s muid
scoreboard players operation @e[tag=tmp,limit=1] from = @s muid
tag @e remove tmp

scoreboard players set @s attacking 0
scoreboard players set @s att 0