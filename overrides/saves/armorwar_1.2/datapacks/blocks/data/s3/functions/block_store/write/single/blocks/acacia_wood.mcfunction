data modify storage temp block_store.id set value "minecraft:acacia_wood"
execute if block ~ ~ ~ minecraft:acacia_wood[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:acacia_wood[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:acacia_wood[axis=z] run data modify storage temp block_store.state.axis set value "z"
