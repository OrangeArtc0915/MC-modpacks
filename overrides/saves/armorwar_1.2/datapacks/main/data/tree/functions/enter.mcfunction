tag @s remove inhall
forceload add 23 313 -24 360
tp @s 0 7 320 0 0
execute unless entity @a[tag=treeing] run function tree:updata
tag @s add treeing
scoreboard players set treeing int 1