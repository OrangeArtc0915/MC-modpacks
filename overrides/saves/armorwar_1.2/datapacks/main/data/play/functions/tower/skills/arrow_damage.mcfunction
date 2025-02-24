execute if entity @s[tag=arrow0] run scoreboard players add @e[tag=monster,limit=1,sort=nearest] pdamage 125
execute if entity @s[tag=arrow1] run scoreboard players add @e[tag=monster,limit=1,sort=nearest] pdamage 65
execute if entity @s[tag=arrow5] run scoreboard players add @e[tag=monster,limit=1,sort=nearest] pdamage 4565
execute if entity @s[tag=arrow5] run scoreboard players add @e[tag=boss,tag=monster,limit=1,sort=nearest,distance=..5] pdamage 125650
execute if score @s poison_damage matches 1.. run scoreboard players set @e[tag=monster,limit=1,sort=nearest] poison_times 15
execute if score @s poison_damage matches 1.. run scoreboard players operation @e[tag=monster,limit=1,sort=nearest] poison_damage = @s poison_damage
playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 1.5
kill @s