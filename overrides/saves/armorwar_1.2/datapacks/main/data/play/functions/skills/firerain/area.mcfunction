execute as @e[type=minecraft:fireball] run data modify entity @s Motion set value [0.0d,-3.0d,0.0d]
execute if entity @s[tag=!fire_floor] run function play:skills/firerain/spawn
execute if entity @s[tag=fire_floor] run function play:skills/firerain/damage