execute if entity @s[tag=attacking,tag=16-shield] run function play:sold/16-shield-test
scoreboard players operation @s hp > 0 int
data modify entity @s HurtTime set value 10s
playsound minecraft:block.ladder.step player @a ~ ~ ~ 1 2
execute if score temp int matches 60.. anchored eyes run particle minecraft:block minecraft:red_glazed_terracotta ^ ^-0.3 ^ 0.2 0.2 0.2 0.05 50
execute if score temp int matches 100.. anchored eyes run particle minecraft:block minecraft:red_glazed_terracotta ^ ^-0.3 ^ 0.2 0.2 0.2 0.05 80
execute if score temp int matches 100.. anchored eyes run playsound minecraft:block.anvil.land player @a ~ ~ ~ 0.3 2
execute if score temp int matches 120.. anchored eyes run playsound minecraft:entity.armor_stand.hit player @a
execute if score @s hp matches ..0 run function play:sold/die
function phb:refresh1