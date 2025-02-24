execute as @a[tag=libing] at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 2 2.0
scoreboard players add lib_tower_p2 int 1
scoreboard players operation lib_tower_p2 int %= lib_tower_m2 int
function lib:tower/updata