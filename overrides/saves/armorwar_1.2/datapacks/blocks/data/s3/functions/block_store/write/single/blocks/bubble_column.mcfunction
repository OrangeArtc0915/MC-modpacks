data modify storage temp block_store.id set value "minecraft:bubble_column"
execute if block ~ ~ ~ minecraft:bubble_column[drag=true] run data modify storage temp block_store.state.drag set value "true"
execute if block ~ ~ ~ minecraft:bubble_column[drag=false] run data modify storage temp block_store.state.drag set value "false"
