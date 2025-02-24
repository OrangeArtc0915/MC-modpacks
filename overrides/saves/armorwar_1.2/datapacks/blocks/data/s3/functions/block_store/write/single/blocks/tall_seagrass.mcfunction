data modify storage temp block_store.id set value "minecraft:tall_seagrass"
execute if block ~ ~ ~ minecraft:tall_seagrass[half=upper] run data modify storage temp block_store.state.half set value "upper"
execute if block ~ ~ ~ minecraft:tall_seagrass[half=lower] run data modify storage temp block_store.state.half set value "lower"
