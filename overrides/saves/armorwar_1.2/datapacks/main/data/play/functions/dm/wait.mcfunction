execute unless entity @s[tag=dmwait] run function play:dm/wait1
execute store result score tempy int run data get entity @s Pos[1]
execute unless score tempy int = @s dmwaity run function play:dm/wait2

scoreboard players add @s dmwait 1
execute if score @s dmwait matches 150 run function