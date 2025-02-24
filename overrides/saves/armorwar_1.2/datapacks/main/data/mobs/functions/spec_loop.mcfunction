scoreboard players remove temp int 1
data modify entity @s Tags append from block 0 0 0 Items[0].tag.ctmp.spec[0]
data remove block 0 0 0 Items[0].tag.ctmp.spec[0]
execute if score temp int matches 1.. run function mobs:spec_loop