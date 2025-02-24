scoreboard players set @e[tag=sort] sort 0
scoreboard players add @e[tag=sort,scores={sortscore=0}] sort 1
function main:sort1
tag @e remove sort