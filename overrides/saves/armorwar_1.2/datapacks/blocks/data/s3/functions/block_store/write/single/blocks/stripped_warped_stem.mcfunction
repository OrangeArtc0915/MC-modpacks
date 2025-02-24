data modify storage temp block_store.id set value "minecraft:stripped_warped_stem"
execute if block ~ ~ ~ minecraft:stripped_warped_stem[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:stripped_warped_stem[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:stripped_warped_stem[axis=z] run data modify storage temp block_store.state.axis set value "z"
