data modify storage temp block_store.id set value "minecraft:rose_bush"
execute if block ~ ~ ~ minecraft:rose_bush[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:rose_bush[half=lower] run data modify storage temp block_store.state.half set value "lower"
