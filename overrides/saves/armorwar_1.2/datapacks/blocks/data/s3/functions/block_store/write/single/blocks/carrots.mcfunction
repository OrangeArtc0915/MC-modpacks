data modify storage temp block_store.id set value "minecraft:carrots"
execute if block ~ ~ ~ minecraft:carrots[age=0] run data modify storage temp block_store.state.age set value "0"
execute if block ~ ~ ~ minecraft:carrots[age=1] run data modify storage temp block_store.state.age set value "1"
execute if block ~ ~ ~ minecraft:carrots[age=2] run data modify storage temp block_store.state.age set value "2"
execute if block ~ ~ ~ minecraft:carrots[age=3] run data modify storage temp block_store.state.age set value "3"
execute if block ~ ~ ~ minecraft:carrots[age=4] run data modify storage temp block_store.state.age set value "4"
execute if block ~ ~ ~ minecraft:carrots[age=5] run data modify storage temp block_store.state.age set value "5"
execute if block ~ ~ ~ minecraft:carrots[age=6] run data modify storage temp block_store.state.age set value "6"
execute if block ~ ~ ~ minecraft:carrots[age=7] run data modify storage temp block_store.state.age set value "7"
