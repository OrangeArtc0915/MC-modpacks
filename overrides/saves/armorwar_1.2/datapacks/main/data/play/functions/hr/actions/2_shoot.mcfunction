execute at @s run tag @e[type=#minecraft:arrows,limit=1,sort=nearest] add tmp


scoreboard players operation temp int = @s hr
scoreboard players operation temp int *= 10 int
scoreboard players operation @e[tag=tmp,limit=1] type = @s arrow_type
scoreboard players operation @e[tag=tmp,limit=1] type += temp int

scoreboard players operation @e[tag=tmp,limit=1] int = @s muid

data modify entity @e[tag=tmp,limit=1] SoundEvent set value "minecraft:entity.arrow.hit_player"

execute if score @s arrow_type matches 2 run scoreboard players set @s CD4 10
execute if score @s arrow_type matches 3 run scoreboard players set @s CD5 20


tag @e remove tmp

scoreboard players set @s 2_bow 0