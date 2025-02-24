# input: int (x0,y0,z0) (x1,y1,z1)
# 存储到storage temp blocks
data remove storage temp blocks
# 修正顺序
execute if score x0 int > x1 int run scoreboard players operation x0 int >< x1 int
execute if score y0 int > y1 int run scoreboard players operation y0 int >< y1 int
execute if score z0 int > z1 int run scoreboard players operation z0 int >< z1 int
# 确定位移
scoreboard players operation dx int = x1 int
scoreboard players operation dx int -= x0 int
scoreboard players operation dy int = y1 int
scoreboard players operation dy int -= y0 int
scoreboard players operation dz int = z1 int
scoreboard players operation dz int -= z0 int

scoreboard players operation len tmp = dx int
scoreboard players operation len tmp *= dy int
scoreboard players operation len tmp *= dz int
execute store result score max_len tmp run gamerule maxCommandChainLength
scoreboard players operation max_len tmp /= #200 int
execute if score max_len tmp <= len tmp run say [s3:block_store/write/cube]:执行数可能超过连锁上限！已终止执行！
# say a

# 确定执行点
execute unless score max_len tmp <= len tmp run summon area_effect_cloud ~ ~ ~ {Tags:["tmp","s3.block_store"]}
execute unless score max_len tmp <= len tmp as @e[tag=tmp,tag=s3.block_store] run function s3:block_store/write/cube/as_marker
