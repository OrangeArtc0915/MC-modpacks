data remove storage temp block_store
data modify storage temp block_store set from storage temp blocks[0][0][0]
function s3:block_store/read/single
data remove storage temp blocks[0][0][0]
execute if data storage temp blocks[0][0][0] positioned ~1 ~ ~ run function s3:block_store/read/cube/x_loop