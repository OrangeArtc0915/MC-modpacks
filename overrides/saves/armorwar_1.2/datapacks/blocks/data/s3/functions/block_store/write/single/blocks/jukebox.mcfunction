data modify storage temp block_store.id set value "minecraft:jukebox"
execute if block ~ ~ ~ minecraft:jukebox[has_record=true] run data modify storage temp block_store.state.has_record set value "true"
execute if block ~ ~ ~ minecraft:jukebox[has_record=false] run data modify storage temp block_store.state.has_record set value "false"
