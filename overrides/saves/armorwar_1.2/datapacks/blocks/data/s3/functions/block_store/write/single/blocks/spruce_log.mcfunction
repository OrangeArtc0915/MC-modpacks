data modify storage temp block_store.id set value "minecraft:spruce_log"
execute if block ~ ~ ~ minecraft:spruce_log[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:spruce_log[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:spruce_log[axis=z] run data modify storage temp block_store.state.axis set value "z"
