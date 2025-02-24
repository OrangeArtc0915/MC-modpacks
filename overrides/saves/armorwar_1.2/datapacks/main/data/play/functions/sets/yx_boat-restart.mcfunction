scoreboard players set @s int -300
data modify block 0 0 0 Items[0].tag.ctmp set from entity @e[tag=yx_boat_m,limit=1] ArmorItems[3].tag.boat_set
execute positioned 8610.5 24.0 3509.5 as @e[tag=yx_boat_m,limit=1] run function mobs:set
tag @e[tag=yx_boat_m,limit=1] add monster
tag @e[tag=yx_boat_m,limit=1] add yx_boat_m1
tag @e[tag=yx_boat_m,limit=1] remove yx_boat_m