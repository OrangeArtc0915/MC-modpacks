scoreboard players set min int 10
scoreboard players set max int 15
function math:random
scoreboard players operation @s arm0 = random int
scoreboard players operation @s arm = @s arm0
tag @s remove attack_ed