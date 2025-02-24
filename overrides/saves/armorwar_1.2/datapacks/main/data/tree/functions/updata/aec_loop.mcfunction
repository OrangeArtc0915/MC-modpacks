summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"],Duration:2147483647}
execute as @e[tag=tmp,limit=1] run function tree:updata/aec_tag

scoreboard players remove temp int 1
data remove block 0 0 0 Items[0].tag.ctmp[0]
execute if score temp int matches 1.. run function tree:updata/aec_loop