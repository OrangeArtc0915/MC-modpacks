data modify storage temp block_store.id set value "minecraft:sunflower"
execute if block ~ ~ ~ minecraft:sunflower[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:sunflower[half=lower] run data modify storage temp block_store.state.half set value "lower"
