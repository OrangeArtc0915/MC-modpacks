#motion
data modify entity @s Pos set from entity @e[tag=motion1,limit=1] Pos
kill @e[tag=motion1,limit=1]
tag @s remove motion