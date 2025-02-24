# 强加载区块
# 参数：
#   x_min 起始x坐标，倍率为10
#   z_min 起始z坐标，倍率为10
#   x_max 终止x坐标，倍率为10
#   x_max 终止z坐标，倍率为10
#   xdcf.remove 如果是1，则为移除；如果不是1，则为添加

scoreboard players operation xdcf.align.input int = x_min int
function xdcf:align
scoreboard players operation xdcf.x.min int = xdcf.align.output int
scoreboard players operation xdcf.align.input int = x_max int
function xdcf:align
scoreboard players operation xdcf.x.max int = xdcf.align.output int
scoreboard players operation xdcf.align.input int = z_min int
function xdcf:align
scoreboard players operation xdcf.z.min int = xdcf.align.output int
scoreboard players operation xdcf.align.input int = z_max int
function xdcf:align
scoreboard players operation xdcf.z.max int = xdcf.align.output int

summon area_effect_cloud ~ ~ ~ {Tags:['xdcf.marker'],Duration:1}
execute as @e[type=area_effect_cloud,tag=xdcf.marker,limit=1] at @s run function xdcf:execute
