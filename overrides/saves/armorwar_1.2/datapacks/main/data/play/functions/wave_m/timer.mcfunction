execute store result score temp int store result score temp1 int run scoreboard players remove wave_time int 1

scoreboard players operation temp int /= 20 int
scoreboard players operation temp1 int %= 20 int

execute if score temp1 int matches 0 run title @a[tag=player] title [{"text":"倒计时 "},{"score":{"name":"temp","objective":"int"},"color":"yellow"}]