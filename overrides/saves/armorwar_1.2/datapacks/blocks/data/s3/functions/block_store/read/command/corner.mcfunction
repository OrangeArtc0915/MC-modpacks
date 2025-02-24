summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
execute as @e[type=area_effect_cloud,tag=tmp] run function s3:block_store/read/command/corner-as
tag @e[type=area_effect_cloud,distance=..0.1] remove tmp
function s3:block_store/read/cube