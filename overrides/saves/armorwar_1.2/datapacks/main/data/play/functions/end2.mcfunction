gamemode spectator @a[tag=player]
scoreboard players set game_end1 int 1
scoreboard players set gaming int 0
scoreboard players set game_end int 0
tellraw @a[tag=player] {"text":"主城沦陷！","color":"gray","bold":"true"}
execute as @a[tag=player] at @s run playsound minecraft:entity.wither.death player @s ~ ~ ~ 1 1
effect give @a[tag=player] minecraft:slowness 15 255 true
effect give @a[tag=player] minecraft:resistance 15 4 true
schedule function play:end1 15s
scoreboard players set g_hp int -2000
kill @e[tag=wave_spawning]
kill @e[tag=monster]
scoreboard objectives setdisplay sidebar
bossbar set minecraft:game visible false