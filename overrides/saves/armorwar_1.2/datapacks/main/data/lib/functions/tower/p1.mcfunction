execute as @a[tag=libing] at @s run playsound minecraft:entity.horse.armor player @s ~ ~ ~
scoreboard players add lib_tower_p1 int 1
scoreboard players operation lib_tower_p1 int %= 4 int
scoreboard players set lib_tower_p2 int 0
function lib:tower/updata