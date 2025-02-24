execute positioned ~ ~10.0 ~ run playsound xiaodou:magic.tp player @a ~ ~ ~ 3.0
execute as @e[tag=monster,distance=..20.0,tag=!fly_mob,tag=!boss] at @s store result score @s temp if entity @e[tag=monster,distance=..3.0,tag=!fly_mob,tag=!boss]
scoreboard players set temp int -2147483648
scoreboard players operation temp int > @e[tag=monster,distance=..20.0,tag=!fly_mob,tag=!boss] temp
execute as @e[tag=monster,distance=..20.0,tag=!fly_mob,tag=!boss] if score @s temp = temp int run tag @s add tmp9
execute at @e[tag=tmp9,limit=1,sort=nearest] as @e[tag=monster,distance=..8.0,tag=!fly_mob,tag=!boss] run function play:tower/skills/15-tp/back
execute as @e[tag=tmp9,limit=1,sort=nearest] at @s run function play:tower/skills/15-tp/tpm
tag @e remove tmp9
scoreboard players set @s timer4 0