scoreboard players operation temp int = @s vist_self
scoreboard players operation temp int *= -1 int
execute as @e[tag=map_end] if score @s int = temp int run tag @s add tmp
execute at @e[tag=tmp,limit=1] facing entity @e[tag=map_path,limit=1,sort=nearest] feet run tp @s ~ ~0.5 ~ ~ 0.0
tellraw @s [{"text":""},{"text":"这里是","color":"gray"},{"text":"<己方据点","color":"aqua"},{"score":{"name":"temp","objective":"int"},"color":"aqua"},{"text":">","color":"aqua"}]
tag @e remove tmp

execute store result score temp int if entity @e[tag=map_end]
scoreboard players add @s vist_self 1
scoreboard players operation @s vist_self %= temp int