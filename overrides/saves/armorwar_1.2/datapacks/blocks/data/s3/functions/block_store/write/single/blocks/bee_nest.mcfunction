data modify storage temp block_store.id set value "minecraft:bee_nest"
execute if block ~ ~ ~ minecraft:bee_nest[facing=north] run data modify storage temp block_store.state.facing set value "north"
execute if block ~ ~ ~ minecraft:bee_nest[facing=south] run data modify storage temp block_store.state.facing set value "south"
execute if block ~ ~ ~ minecraft:bee_nest[facing=west] run data modify storage temp block_store.state.facing set value "west"
execute if block ~ ~ ~ minecraft:bee_nest[facing=east] run data modify storage temp block_store.state.facing set value "east"
execute if block ~ ~ ~ minecraft:bee_nest[honey_level=0] run data modify storage temp block_store.state.honey_level set value "0"
execute if block ~ ~ ~ minecraft:bee_nest[honey_level=1] run data modify storage temp block_store.state.honey_level set value "1"
execute if block ~ ~ ~ minecraft:bee_nest[honey_level=2] run data modify storage temp block_store.state.honey_level set value "2"
execute if block ~ ~ ~ minecraft:bee_nest[honey_level=3] run data modify storage temp block_store.state.honey_level set value "3"
execute if block ~ ~ ~ minecraft:bee_nest[honey_level=4] run data modify storage temp block_store.state.honey_level set value "4"
execute if block ~ ~ ~ minecraft:bee_nest[honey_level=5] run data modify storage temp block_store.state.honey_level set value "5"
