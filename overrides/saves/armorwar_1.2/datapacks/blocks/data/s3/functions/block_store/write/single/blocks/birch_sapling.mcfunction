data modify storage temp block_store.id set value "minecraft:birch_sapling"
execute if block ~ ~ ~ minecraft:birch_sapling[stage=0] run data modify storage temp block_store.state.stage set value "0"
execute if block ~ ~ ~ minecraft:birch_sapling[stage=1] run data modify storage temp block_store.state.stage set value "1"
