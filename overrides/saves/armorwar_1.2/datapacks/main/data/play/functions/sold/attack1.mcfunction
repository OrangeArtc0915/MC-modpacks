scoreboard players operation temp int = @s target
execute as @e[tag=monster] if score @s muid = temp int run tag @s add tmp
scoreboard players operation temp int = @s at
scoreboard players operation temp int *= 30 int
scoreboard players operation @e[tag=tmp,limit=1] pdamage += temp int
tag @e remove tmp
scoreboard players set min int 1
scoreboard players set max int 5
function math:random
execute if score random int matches 1..2 at @s run playsound minecraft:entity.player.attack.strong player @a
execute if score random int matches 2..4 at @s run playsound minecraft:entity.player.attack.sweep player @a
execute if score random int matches 4..5 at @s run playsound minecraft:entity.player.attack.knockback player @a
tag @s add attack_ed