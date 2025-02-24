scoreboard players operation r int = @s radius
function math:120_radius
execute at @e[tag=result] run summon minecraft:falling_block ~ ~ ~ {BlockState:{Name:"minecraft:red_carpet"},NoGravity:1b,Time:100,Tags:["tmp7"]}
scoreboard players set @e[tag=tmp7] killtime 3
tag @e remove tmp7