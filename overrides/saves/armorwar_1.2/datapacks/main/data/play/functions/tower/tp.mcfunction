execute store result entity @s Pos[0] double 0.0001 run scoreboard players get @a[tag=tmp1,limit=1] dmx
execute store result entity @s Pos[1] double 0.0001 run scoreboard players get @a[tag=tmp1,limit=1] dmy
execute store result entity @s Pos[2] double 0.0001 run scoreboard players get @a[tag=tmp1,limit=1] dmz
execute at @s run tp @a[tag=tmp1,limit=1] ~ ~1.0 ~
kill @s