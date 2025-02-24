scoreboard players set stop int 0
execute as @e[tag=stop_as] run function main:stop_as1
tag @e remove stop_as
scoreboard players set @a[tag=decision_maker] tower_gui -100