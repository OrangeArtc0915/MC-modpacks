data modify storage temp block_store.id set value "minecraft:stripped_acacia_log"
execute if block ~ ~ ~ minecraft:stripped_acacia_log[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:stripped_acacia_log[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:stripped_acacia_log[axis=z] run data modify storage temp block_store.state.axis set value "z"
