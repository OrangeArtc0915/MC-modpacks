scoreboard players set chal_stars int 0
scoreboard players set game_end1 int 1
scoreboard players set gaming int 0
scoreboard players set game_end int 0
gamemode spectator @a[tag=player]
title @a[tag=player] title {"text":"victory","color":"gold"}
scoreboard players set game_win int 1
tellraw @a[tag=player] {"text":"护卫军取得胜利！","color":"gold","bold":"true"}
tag @a[tag=player] add firework_shooter
function main:fireworks_shoot
effect give @a[tag=player] minecraft:resistance 15 4 true

scoreboard players set reward_tower int 0
scoreboard players set reward_hero int 0
execute store result score temp int run data get block 0 0 0 Items[0].tag.playing.rewards
execute if score played int matches 0 if score temp int matches 1.. run function play:rewards
execute if score reward_tower int matches 1 as @a run function notices:tower
execute if score reward_hero int matches 1 as @a run function notices:hero

execute if score played int matches 0 run function play:not_played

function play:reward_stars
execute if score g_hp int matches 1.. run schedule function play:star1 1s

schedule function play:end1 15s
scoreboard objectives setdisplay sidebar
bossbar set minecraft:game visible false