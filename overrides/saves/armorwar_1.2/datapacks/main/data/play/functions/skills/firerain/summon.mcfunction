summon area_effect_cloud ~ ~ ~ {Tags:["tmp","firerain_area"],Duration:2147483647}
scoreboard players set @e[tag=tmp,limit=1] killtime 10
tag @e remove tmp

scoreboard players set firerain int 48
scoreboard players set firerain1 int -1

replaceitem entity @s weapon.offhand air