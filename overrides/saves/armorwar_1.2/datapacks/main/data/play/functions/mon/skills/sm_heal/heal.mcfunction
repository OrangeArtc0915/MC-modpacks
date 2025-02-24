scoreboard players operation temp int = @s mhp
scoreboard players operation temp int /= 2 int
scoreboard players operation @s hp += temp int
scoreboard players operation @s hp < @s mhp
function phb:refresh