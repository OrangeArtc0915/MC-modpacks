# input: int (x,y,z) 向正半轴拓展
#        storage temp blocks

# 确定执行点
summon area_effect_cloud ~ ~ ~ {Tags:["tmp","s3.block_store"]}
execute as @e[tag=tmp,tag=s3.block_store] run function s3:block_store/read/cube/as_marker
