data modify storage temp block_store.id set value "minecraft:stripped_birch_log"
execute if block ~ ~ ~ minecraft:stripped_birch_log[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:stripped_birch_log[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:stripped_birch_log[axis=z] run data modify storage temp block_store.state.axis set value "z"
