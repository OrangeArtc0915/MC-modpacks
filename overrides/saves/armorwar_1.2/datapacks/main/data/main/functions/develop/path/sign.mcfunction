setblock 0 10 0 air
scoreboard players operation temp int = @s int
setblock 0 10 0 oak_sign{Text1:'[{"text":"path"},{"score":{"name":"temp","objective":"int"}}]'}
data modify entity @s CustomName set from block 0 10 0 Text1