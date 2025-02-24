execute if entity @s[tag=marrow0] run scoreboard players operation @e[tag=soldier,limit=1,sort=nearest] pdamage += @s rat
playsound minecraft:entity.player.hurt player @a ~ ~ ~ 1 0.6
kill @s