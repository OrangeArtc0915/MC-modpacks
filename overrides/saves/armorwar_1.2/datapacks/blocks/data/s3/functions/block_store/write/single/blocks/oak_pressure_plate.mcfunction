data modify storage temp block_store.id set value "minecraft:oak_pressure_plate"
execute if block ~ ~ ~ minecraft:oak_pressure_plate[powered=true] run data modify storage temp block_store.state.powered set value "true"
execute if block ~ ~ ~ minecraft:oak_pressure_plate[powered=false] run data modify storage temp block_store.state.powered set value "false"
