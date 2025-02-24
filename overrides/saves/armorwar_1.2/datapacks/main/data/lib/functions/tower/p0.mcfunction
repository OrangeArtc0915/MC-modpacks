execute as @a[tag=libing] at @s run playsound minecraft:block.wood.place player @s ~ ~ ~ 1 0.6
scoreboard players add lib_tower_p0 int 1
scoreboard players operation lib_tower_p0 int %= 4 int
execute if score lib_tower_p0 int matches 0 run scoreboard players set lib_tower_p0 int 4
scoreboard players set lib_tower_p2 int 0
function lib:tower/updata