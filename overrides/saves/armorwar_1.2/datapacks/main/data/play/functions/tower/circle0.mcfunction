scoreboard players operation temp int = @s int
execute as @e[tag=tower_circle] if score @s int = temp int run kill @s
tag @s remove circle0