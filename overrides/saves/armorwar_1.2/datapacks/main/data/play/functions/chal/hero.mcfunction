scoreboard players set chal_hero int 0
execute if entity @a[tag=player,tag=hero] run scoreboard players set chal_hero int 1
execute unless score chal_hero int = chal_hero_r int run scoreboard players set @s int 0