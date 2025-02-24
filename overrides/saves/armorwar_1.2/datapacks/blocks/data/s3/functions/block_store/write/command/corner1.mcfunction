summon area_effect_cloud ~ ~ ~ {Tags:["tmp"]}
execute as @e[type=area_effect_cloud,tag=tmp] run function s3:block_store/write/command/corner1-as
tag @e[type=area_effect_cloud,distance=..0.1] remove tmp
function s3:block_store/write/cube