scoreboard players operation temp int = @s at
scoreboard players operation temp int *= 10 int
scoreboard players operation @e[tag=tmp,limit=1] pdamage += temp int
scoreboard players set min int 1
scoreboard players set max int 5
function math:random
execute if score random int matches 1..2 at @s run playsound minecraft:entity.player.attack.strong player @a
execute if score random int matches 2..4 at @s run playsound minecraft:entity.player.attack.sweep player @a
execute if score random int matches 4..5 at @s run playsound minecraft:entity.player.attack.knockback player @a

execute if entity @s[type=creeper] run function play:mon/creeper