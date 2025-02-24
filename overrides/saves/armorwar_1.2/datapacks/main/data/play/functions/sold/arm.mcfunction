scoreboard players operation @s phi_a1 = @s arm
scoreboard players operation @s phi_a1 -= @s arm0
scoreboard players operation @s phi_a1 *= @s arm
scoreboard players operation @s phi_a1 *= arm_A int
scoreboard players remove @s phi_a1 9000
scoreboard players remove @s arm 1

execute if score @s phi_a1 > -5000 int unless entity @s[tag=attack_ed] run function play:sold/attack1
execute if score @s arm matches 0 run tag @s remove attack_ed