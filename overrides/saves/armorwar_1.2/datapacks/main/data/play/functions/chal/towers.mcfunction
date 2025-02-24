execute store result score temp int if entity @e[tag=built]
scoreboard players operation chal_towers int > temp int
execute if score chal_towers int > chal_towers_r int run scoreboard players set @s int 0