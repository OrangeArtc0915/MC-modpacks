scoreboard players set duration int 3
function block_reserve:keep
execute positioned ~ ~-1.0 ~ run function block_reserve:keep
setblock ~ ~ ~ anvil