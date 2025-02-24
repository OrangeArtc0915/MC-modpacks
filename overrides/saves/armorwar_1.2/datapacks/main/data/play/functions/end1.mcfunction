tag @a[tag=player] add music_cleared
gamemode spectator @a[tag=player]
worldborder set 214748
scoreboard players set gaming int 0
scoreboard players set gaming1 int 0
tag @a remove firework_shooter
replaceitem entity @a[tag=!parkour] weapon.offhand barrier{back:true}
time set 18500
scoreboard objectives setdisplay sidebar
kill @e[tag=builder]
kill @e[tag=dmrc]
kill @e[tag=wave_spawning]
kill @e[tag=monster]
kill @e[tag=mon_model]
kill @e[tag=game_set]
kill @e[tag=boss_set]
kill @e[tag=soldier_point]
kill @e[tag=play_set]
kill @e[tag=mob_fighter,type=!player]
kill @e[tag=map_point]
scoreboard players set #muid muid 0
execute if score test int matches -1 run scoreboard players set test int 0
bossbar set minecraft:game visible false
setblock 196 48 27 minecraft:smooth_stone_slab[type=top]
setblock 196 48 26 minecraft:smooth_stone_slab[type=top]

setblock 178 48 26 minecraft:smooth_stone_slab[type=top]
setblock 178 48 27 minecraft:smooth_stone_slab[type=top]
setblock 178 48 28 minecraft:smooth_stone_slab[type=top]

scoreboard players set xdcf.remove int 1
function xdcf:main