#count p time


execute store result score min int run data get entity @s Item.tag.mob.min
execute store result score max int run data get entity @s Item.tag.mob.max

execute store result score input1 int store result score input int if entity @a[tag=player,scores={spectating=0}]
function math:2lg
scoreboard players operation result int *= λ set
execute store result score input int run data get entity @s Item.tag.mob.health 1000
execute store result entity @s Item.tag.mob.health float 0.001 run scoreboard players operation input int += result int

#b-(b-a)*(1+k)/(x+k)
execute store result score temp int run scoreboard players operation @s mtsncount = max int
scoreboard players operation @s mtsncount *= 100 int
scoreboard players operation temp int -= min int
execute store result score temp2 int run scoreboard players operation temp1 int = k set
scoreboard players operation input1 int *= 10 int
scoreboard players operation temp2 int += input1 int
scoreboard players add temp1 int 10
scoreboard players operation temp1 int *= 100 int
scoreboard players operation temp1 int /= temp2 int
scoreboard players operation temp int *= temp1 int
scoreboard players operation @s mtsncount -= temp int

execute store result score rew int run data get entity @s Item.tag.rew
scoreboard players operation temp int = i set
scoreboard players operation temp int *= rew int
scoreboard players set temp1 int 10
scoreboard players operation temp1 int -= i set
scoreboard players operation temp1 int *= 100 int
scoreboard players operation temp1 int /= @s mtsncount
execute store result entity @s Item.tag.rew int 0.1 run scoreboard players operation temp1 int += temp int

scoreboard players operation @s mtsncount /= 100 int

execute store result score temp int store result score @s mtsntime run data get entity @s Item.tag.mob.time 20

scoreboard players operation temp int /= @s mtsncount
execute store result score @s mtsnp run scoreboard players operation temp int > 1 int

scoreboard players set temp int 6000
execute store result entity @s Age short 1 run scoreboard players operation temp int -= @s mtsntime

tag @s add inited

scoreboard players operation @s mtsntimer = @s mtsnp
scoreboard players remove @s mtsntimer 1