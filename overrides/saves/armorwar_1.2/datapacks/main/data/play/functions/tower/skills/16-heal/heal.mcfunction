execute at @s run particle minecraft:heart ~ ~2.0 ~
scoreboard players operation @s hp += temp int
scoreboard players operation @s hp < @s mhp
function phb:refresh1