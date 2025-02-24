scoreboard players operation @e[tag=sort] sortscore += -1 int
execute if entity @e[tag=sort,scores={sortscore=0}] run scoreboard players add @e[tag=sort,scores={sortscore=..0}] sort 1
execute if entity @e[tag=sort,scores={sortscore=1..}] run function main:sort1