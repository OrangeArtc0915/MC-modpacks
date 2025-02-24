data modify storage temp block_store.id set value "minecraft:podzol"
execute if block ~ ~ ~ minecraft:podzol[snowy=true] run data modify storage temp block_store.state.snowy set value "true"
execute if block ~ ~ ~ minecraft:podzol[snowy=false] run data modify storage temp block_store.state.snowy set value "false"
