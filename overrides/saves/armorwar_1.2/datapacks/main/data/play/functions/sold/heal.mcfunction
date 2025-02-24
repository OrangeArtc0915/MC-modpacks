execute at @s run particle minecraft:heart ~ ~2.0 ~
execute at @s run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1 2
data modify entity @s HurtTime set value 10s
scoreboard players set min int 40
scoreboard players set max int 60
function math:random
scoreboard players operation @s heal_timer = random int
scoreboard players add @s hp 100
scoreboard players operation @s hp < @s mhp
function phb:refresh1