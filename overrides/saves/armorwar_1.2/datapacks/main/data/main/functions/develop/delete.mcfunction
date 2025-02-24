execute if score temp int matches 0 run data remove block 0 0 0 Items[0].tag.making[0]
execute if score temp int matches 1 run data remove block 0 0 0 Items[0].tag.making[1]
execute if score temp int matches 2 run data remove block 0 0 0 Items[0].tag.making[2]
execute if score temp int matches 3 run data remove block 0 0 0 Items[0].tag.making[3]
execute if score temp int matches 4 run data remove block 0 0 0 Items[0].tag.making[4]
execute if score temp int matches 5 run data remove block 0 0 0 Items[0].tag.making[5]
execute if score temp int matches 6 run data remove block 0 0 0 Items[0].tag.making[6]
data modify block 0 0 0 Items[0].tag.making append value {}
kill @e[tag=button_dhall]
function main:develop/load