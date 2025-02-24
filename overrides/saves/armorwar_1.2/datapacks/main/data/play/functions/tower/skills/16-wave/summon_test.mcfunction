scoreboard players operation temp int = @s int
execute as @e[tag=soldier,tag=attacking,type=armor_stand] if score @s int = temp int run tag @s add tmp
tag @e[tag=tmp,limit=1,sort=random] add tmp1
execute at @e[tag=tmp1,limit=1] run function play:tower/skills/16-wave/summon
tag @e remove tmp
tag @e remove tmp1