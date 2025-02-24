data modify storage temp block_store.id set value "minecraft:bone_block"
execute if block ~ ~ ~ minecraft:bone_block[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:bone_block[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:bone_block[axis=z] run data modify storage temp block_store.state.axis set value "z"
