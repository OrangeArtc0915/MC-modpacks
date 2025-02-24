scoreboard players operation temp int = @s target
execute as @e[tag=monster] if score @s muid = temp int run tag @s add tmp

scoreboard players operation temp1 int = temp int
scoreboard players operation temp1 int /= 3 int
scoreboard players operation @e[tag=tmp] pdamage += temp1 int

function play:sold/actions/leftarm_up

execute at @s run playsound minecraft:item.shield.block player @a

tag @e remove tmp