particle minecraft:soul_fire_flame ~ ~ ~ 0.3 0.3 0.3 0.0 10
scoreboard players operation temp int = @s target
execute as @e[tag=monster,distance=..20] if score @s muid = temp int run tag @s add tmp
execute unless entity @e[tag=tmp] at @s if entity @e[tag=monster,distance=..20] run scoreboard players operation @s target = @e[tag=monster,distance=..20,limit=1,sort=nearest] muid
execute if entity @e[tag=tmp] at @s facing entity @e[tag=tmp,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute at @s unless entity @e[tag=tmp,distance=..0.5] run tp @s ^ ^ ^0.75
execute at @s if entity @e[tag=tmp,distance=..0.5] run tp @s ^ ^ ^0.2
execute at @s run scoreboard players add @e[tag=tmp,distance=..0.5] mdamage 10
scoreboard players add @s int 1
execute at @s[scores={int=1}] if entity @e[tag=tmp,distance=..0.5] run playsound minecraft:entity.evoker.cast_spell player @a ~ ~ ~ 0.5 2
execute if score @s int matches 3.. run scoreboard players set @s int 0
tag @e remove tmp