data modify storage temp block_store.id set value "minecraft:polished_basalt"
execute if block ~ ~ ~ minecraft:polished_basalt[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:polished_basalt[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:polished_basalt[axis=z] run data modify storage temp block_store.state.axis set value "z"
