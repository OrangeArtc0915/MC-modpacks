#(-0.3,0.3)  (0.0,1.8)  (-0.3,0.3)
#(-0.7,0.3)∩(-0.3,0.7) (-0.2,1.8)∩(0.0,2.0) (-0.7,0.3)∩(-0.3,0.7)

execute positioned ~-0.7 ~-0.2 ~-0.7 run tag @e[tag=bullet,dx=0,dy=1,dz=0] add hit_test0
execute positioned ~-0.3 ~0.0 ~-0.3 run tag @e[tag=bullet,dx=0,dy=1,dz=0] add hit_test1

tag @e[tag=hit_test0,tag=hit_test1] add hit

tag @e remove hit_test0
tag @e remove hit_test1

execute if entity @e[tag=hit] run say @e[tag=hit]

kill @e[tag=hit]