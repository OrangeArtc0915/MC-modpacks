gamemode adventure @a[x=0,y=5,z=0,distance=..5]
tag @a[x=0,y=5,z=0,distance=..5] remove play-watch
clear @a[x=0,y=5,z=0,distance=..5]
xp set @a[x=0,y=5,z=0,distance=..5] 0 levels
xp set @a[x=0,y=5,z=0,distance=..5] 0 points
scoreboard players reset @a[x=0,y=5,z=0,distance=..5] spectate
scoreboard players reset @a[x=0,y=5,z=0,distance=..5] parkour
scoreboard players reset @a[x=0,y=5,z=0,distance=..5] making
scoreboard players reset @a[x=0,y=5,z=0,distance=..5] damaget
scoreboard players reset @a[x=0,y=5,z=0,distance=..5] clock
execute as @a[x=0,y=5,z=0,distance=..5] run attribute @s minecraft:generic.max_health base set 20.0
tag @a[x=0,y=5,z=0,distance=..5] remove libing
tag @a[x=0,y=5,z=0,distance=..5] remove treeing
tag @a[x=0,y=5,z=0,distance=..5] remove selecting_tower
tag @a[x=0,y=5,z=0,distance=..5] remove selecting_tower2
tag @a[x=0,y=5,z=0,distance=..5] remove decision_maker
tag @a[x=0,y=5,z=0,distance=..5] remove attacking
tag @a[x=0,y=5,z=0,distance=..5] remove mob_fighter
tag @a[x=0,y=5,z=0,distance=..5] remove dead
tag @a[x=0,y=5,z=0,distance=..5] remove soldier
tag @a[x=0,y=5,z=0,distance=..5] remove hero
tag @a[x=0,y=5,z=0,distance=..5] remove develop_mobs
tag @a[x=0,y=5,z=0,distance=..5] remove developing
tag @a[x=0,y=5,z=0,distance=..5] remove inworld
tag @a[x=0,y=5,z=0,distance=..5] remove parkour
tag @a[x=0,y=5,z=0,distance=..5] remove marked
tag @a[x=0,y=5,z=0,distance=..5] remove hhp
tag @a[x=0,y=5,z=0,distance=..5] add nohunger
tag @a[x=0,y=5,z=0,distance=..5] remove all
tag @a[x=0,y=5,z=0,distance=..5] remove flyer
tag @a[x=0,y=5,z=0,distance=..5] remove ingame
tag @a[x=0,y=5,z=0,distance=..5] remove player
tag @a[x=0,y=5,z=0,distance=..5] remove waiting
tag @a[x=0,y=5,z=0,distance=..5] remove hring
tag @a[x=0,y=5,z=0,distance=..5] remove choice_maker
team leave @a[x=0,y=5,z=0,distance=..10]
scoreboard players reset @a[x=0,y=5,z=0,distance=..5] spawn
spawnpoint @a[x=0,y=5,z=0,distance=..5] 0 5 0
scoreboard players set @a[x=0,y=5,z=0,distance=..5] pkpoint 0
tag @a[x=0,y=5,z=0,distance=..10] add inhall
execute as @a[x=0,y=5,z=0,distance=..10] run function main:ad_remove
execute as @a[x=0,y=5,z=0,distance=..10] unless score @s tower_ad matches 1.. run function main:tower_ad
execute as @a[x=0,y=5,z=0,distance=..10] run function hall:items

scoreboard players add @a[x=0,y=5,z=0,distance=..5] skull 0
execute as @a[x=0,y=5,z=0,distance=..5,scores={skull=0}] run function main:skull
execute as @a[x=0,y=5,z=0,distance=..5] unless score @s tutor0 matches -1.. run function tutor:init
execute if score gaming int matches 0 as @a[x=0,y=5,z=0,distance=..5] if score @s tutor0 matches 1 run function tutor:load0

execute as @a[x=0,y=5,z=0,distance=..10] if score @s music_box matches 1 if entity @s[tag=music_cleared] run function hall:music_on

tp @a[x=0,y=5,z=0,distance=..5] 188 49 27.0 -90.0 0.0
clear @a[x=0,y=5,z=0,distance=..5,scores={hall=2}] minecraft:barrier{back:true}

execute unless score gaming int matches 1 run kill @e[tag=wave_spawning]
execute unless entity @a[tag=developing] run kill @e[tag=button_dhall]

execute if score gaming int matches 0 run function main:refresh