data modify storage temp block_store.id set value "minecraft:purpur_pillar"
execute if block ~ ~ ~ minecraft:purpur_pillar[axis=x] run data modify storage temp block_store.state.axis set value "x"
execute if block ~ ~ ~ minecraft:purpur_pillar[axis=y] run data modify storage temp block_store.state.axis set value "y"
execute if block ~ ~ ~ minecraft:purpur_pillar[axis=z] run data modify storage temp block_store.state.axis set value "z"
