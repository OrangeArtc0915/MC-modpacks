scoreboard players operation temp int = @s vist_enmy
scoreboard players operation temp int += 1 int
execute as @e[tag=map_spoint] if score @s int = temp int run tag @s add tmp
execute at @e[tag=tmp,limit=1] facing entity @e[tag=map_path,limit=1,sort=nearest] feet run tp @s ~ ~0.5 ~ ~ 0.0
tellraw @s [{"text":""},{"text":"这里是","color":"gray"},{"text":"<敌方据点","color":"red"},{"score":{"name":"temp","objective":"int"},"color":"red"},{"text":">","color":"red"}]
tag @e remove tmp

execute store result score temp int if entity @e[tag=map_spoint]
scoreboard players add @s vist_enmy 1
scoreboard players operation @s vist_enmy %= temp int