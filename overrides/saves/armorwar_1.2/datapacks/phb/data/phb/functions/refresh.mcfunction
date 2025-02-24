# execute store result score @s hp run data get entity @s Health 10
# execute store result score @s mhp run attribute @s generic.max_health get 10

scoreboard players operation percentage phbVar = @s hp
scoreboard players operation percentage phbVar *= multiplier phbVar
scoreboard players operation percentage phbVar /= @s mhp
execute if score percentage phbVar matches 1.. run function phb:enum/1_27
execute if score percentage phbVar matches ..0 run function phb:dead
