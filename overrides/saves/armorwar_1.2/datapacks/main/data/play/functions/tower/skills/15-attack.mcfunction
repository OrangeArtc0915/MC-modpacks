tag @e[tag=monster,distance=..20.0] add tmp
function play:tower/nearest
tp @s ~ ~10.0 ~
execute at @s run function play:tower/skills/15-ray/summon
tp @s ~ ~ ~