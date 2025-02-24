scoreboard players operation temp int = @s builtid
execute as @e[tag=built] if score @s int = temp int run tag @s add built1
kill @s