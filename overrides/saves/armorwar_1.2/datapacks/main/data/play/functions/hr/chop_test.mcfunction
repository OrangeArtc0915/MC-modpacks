scoreboard players set @s chop_test 0

execute store result score rotation_0 int run data get entity @s Rotation[0] 10000
execute store result score rotation_1 int run data get entity @s Rotation[1] 10000

scoreboard players operation rotation_0 int %= 3600000 int
scoreboard players operation rotation_1 int %= 3600000 int
scoreboard players operation @s rotation_0 %= 3600000 int
scoreboard players operation @s rotation_1 %= 3600000 int

scoreboard players operation rotation_0 int -= @s rotation_0
scoreboard players operation rotation_1 int -= @s rotation_1

#tellraw @a [{"score":{"name":"rotation_0","objective":"int"}},{"text":","},{"score":{"name":"rotation_1","objective":"int"}}]

execute unless score rotation_0 int matches -50000..50000 unless score rotation_1 int matches -30000..30000 run function play:hr/chop
execute unless score rotation_0 int matches -50000..50000 if score rotation_1 int matches -30000..30000 run function play:hr/sweep
execute unless score rotation_1 int matches -50000..50000 if score rotation_0 int matches -50000..50000 run function play:hr/cut