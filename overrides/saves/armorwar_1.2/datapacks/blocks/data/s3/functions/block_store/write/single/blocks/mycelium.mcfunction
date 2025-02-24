data modify storage temp block_store.id set value "minecraft:mycelium"
execute if block ~ ~ ~ minecraft:mycelium[snowy=true] run data modify storage temp block_store.state.snowy set value "true"
execute if block ~ ~ ~ minecraft:mycelium[snowy=false] run data modify storage temp block_store.state.snowy set value "false"
