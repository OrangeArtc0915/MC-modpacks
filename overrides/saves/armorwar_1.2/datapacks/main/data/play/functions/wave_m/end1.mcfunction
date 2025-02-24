scoreboard players remove wave_wait int 500
scoreboard players operation wave_wait int *= -1 int
scoreboard players operation min int = wave_wait int
scoreboard players operation min int /= 5 int
scoreboard players operation max int = wave_wait int
scoreboard players operation max int /= 3 int
function math:random
execute if score wave int matches 1.. if score random int matches 1.. run function play:wave_m/coin_add0

execute as @a[tag=player] at @s run playsound minecraft:entity.blaze.hurt player @s ~ ~ ~ 5 0.1
execute as @a[tag=player] at @s run playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 5 0.4

execute store result score wave_time int run data get block 0 0 0 Items[0].tag.playing.waves[0].time 20
scoreboard players add wave int 1
tellraw @a[tag=player] [{"text":"第","color":"red","bold":"true"},{"score":{"name":"wave","objective":"int"}},{"text":"/"},{"score":{"name":"wavec","objective":"int"}},{"text":"倒计时中"}]
tag @s remove waved
scoreboard players set wave_waiting int 0
scoreboard players set wave_wait int 0