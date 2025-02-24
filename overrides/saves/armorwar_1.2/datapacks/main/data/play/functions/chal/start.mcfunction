summon armor_stand 0 15 0 {NoGravity:1b,Marker:1b,ArmorItems:[{},{},{},{id:"minecraft:stone",Count:1b,tag:{}}],Tags:["play_set","chal","tmp"]}
execute as @e[tag=tmp,limit=1] run function play:chal/set
tag @e remove tmp