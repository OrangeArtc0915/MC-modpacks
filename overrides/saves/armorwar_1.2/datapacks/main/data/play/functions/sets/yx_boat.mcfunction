execute as @e[tag=yx_boat] run data modify entity @s Motion set value [0.0d,0.0d,0.5d]
scoreboard players operation temp int = @s int
scoreboard players operation temp int %= 10 int
execute if score temp int matches 1 at @e[tag=yx_boat] run playsound minecraft:entity.boat.paddle_water player @a ~ ~ ~ 20.0

scoreboard players add @s int 1

scoreboard players operation temp int = wave int
scoreboard players operation temp int %= 2 int
execute if score @s int matches 1 if score wave int matches 3.. if score temp int matches 1 if entity @e[tag=monster] unless entity @e[tag=yx_boat_m1] at @s run function play:sets/yx_boat-spawn
execute if score @s int matches 115.. run kill @e[tag=yx_boat]
execute if score @s int matches 120.. run function play:sets/yx_boat-restart