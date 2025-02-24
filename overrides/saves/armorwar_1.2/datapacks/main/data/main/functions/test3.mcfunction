#发射aec
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","ray_test"],Duration:1000}
tp @e[tag=tmp,limit=1] ~ ~1 ~ -20.0 0.0
tag @e remove tmp