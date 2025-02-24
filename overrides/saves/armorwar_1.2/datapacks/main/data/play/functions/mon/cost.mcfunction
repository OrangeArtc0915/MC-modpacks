scoreboard players set temp1 int 10240
execute store result score temp int run data get entity @s Health 10
execute store result score temp int run scoreboard players operation temp1 int -= temp int
scoreboard players operation temp1 int *= 8 int
scoreboard players set temp7 int 100
scoreboard players operation temp7 int -= @s dp
scoreboard players operation temp1 int *= temp7 int
scoreboard players operation temp1 int /= 100 int
scoreboard players operation @s hp -= temp1 int
data modify entity @s Health set value 1024.0f
execute at @s run function phb:refresh
execute at @s run title @a[scores={att=1..},limit=1,sort=nearest] actionbar {"score":{"name":"@s","objective":"hp"},"extra":[{"text":"♥","color":"red"}]}
scoreboard players set @s blood_count 0
execute at @s run function play:mon/hurt