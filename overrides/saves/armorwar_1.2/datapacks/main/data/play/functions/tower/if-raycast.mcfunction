summon area_effect_cloud 0 0 0 {Tags:["stmp"]}
scoreboard players set @s result 0
tp @e[tag=stmp,limit=1] ~ ~1.62 ~ 
execute store result score stempx0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempy0 int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempz0 int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
execute positioned 0.0 0.0 0.0 run tp @e[tag=stmp,limit=1] ^ ^ ^1
execute store result score stempi int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempj int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempk int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
kill @e[tag=stmp]
execute store result score stempx1 int run data get entity @s Pos[0] 1000
execute store result score stempy1 int run data get entity @s Pos[1] 1000
execute store result score stempz1 int run data get entity @s Pos[2] 1000
scoreboard players operation stempy1 int -= stempy0 int
execute if score stempj int matches ..-70 if score stempy1 int matches -150000..0 run function play:tower/if-raycast1