function main:develop/data_in
scoreboard players set state int 2
execute as @a run function main:lg
tag @s add developer
tag @a[tag=!developer] add spectator
gamemode spectator @a[tag=spectator]
gamemode creative
function main:dpoint
tellraw @a [{"selector":"@s"},{"text":"正在创作自定义地图"}]
function main:develop