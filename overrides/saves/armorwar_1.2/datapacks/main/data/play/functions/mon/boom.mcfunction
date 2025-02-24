execute at @s run summon creeper ~ ~512 ~ {Tags:["tmp10"],Fuse:0}
execute at @s run tp @e[tag=tmp10,limit=1] ~ ~ ~
tag @e remove tmp10
scoreboard players operation @s at *= 250 int
execute at @s run scoreboard players operation @e[tag=soldier,distance=..8.0] pdamage = @s at
tp @s 0 -1000 0
kill @s