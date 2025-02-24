#随机种子
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:0,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:1,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:2,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:3,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:4,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:5,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:6,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:7,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:8,Duration:10}
summon area_effect_cloud ~ ~ ~ {Tags:["RInt"],Age:9,Duration:10}
execute as @e[tag=RInt] store result score @s int run data get entity @s Age
#求百位数 十位数 个位数取值范围
scoreboard players operation Rmax2 int = Rmax int
scoreboard players operation Rmax1 int = Rmax int
scoreboard players operation Rmax0 int = Rmax int
scoreboard players operation Rmin2 int = Rmin int
scoreboard players operation Rmin1 int = Rmin int
scoreboard players operation Rmin0 int = Rmin int
scoreboard players operation Rmax2 int /= 100 int
scoreboard players operation Rmin2 int /= 100 int
scoreboard players operation Rmax1 int /= 10 int
scoreboard players operation Rmin1 int /= 10 int
scoreboard players operation Rmax2o int = Rmax2 int
scoreboard players operation Rmin2o int = Rmin2 int
scoreboard players operation Rmax2o int *= 10 int
scoreboard players operation Rmin2o int *= 10 int
scoreboard players operation Rmax1 int -= Rmax2o int
scoreboard players operation Rmin1 int -= Rmin2o int
scoreboard players operation Rmax0 int %= 100 int
scoreboard players operation Rmin0 int %= 100 int
#生成百位数
execute as @e[tag=RInt] if score @s int <= Rmax2 int if score @s int >= Rmin2 int run tag @s add Random2
tag @e[tag=Random2,limit=1,sort=random] add R2
#生成十位数
execute if score Rmax2 int = Rmin2 int as @e[tag=RInt] if score @s int >= Rmin1 int if score @s int <= Rmax1 int run tag @s add Random1
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmax2 int as @e[tag=RInt] if score @s int <= Rmax1 int run tag @s add Random1
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int < Rmax2 int if score @e[tag=R2,limit=1] int > Rmin2 int as @e[tag=RInt] run tag @s add Random1
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmin2 int as @e[tag=RInt] if score @s int >= Rmin1 int run tag @s add Random1
tag @e[tag=Random1,limit=1,sort=random] add R1
#生成个位数
execute if score Rmax2 int = Rmin2 int if score Rmax1 int = Rmin1 int as @e[tag=RInt] if score @s int <= Rmax0 int if score @s int >= Rmin0 int run tag @s add Random0
execute if score Rmax2 int = Rmin2 int if score Rmax1 int > Rmin1 int as @e[tag=RInt] if score @e[tag=R1,limit=1] int = Rmax1 int if score @s int <= Rmax0 int run tag @s add Random0
execute if score Rmax2 int = Rmin2 int if score Rmax1 int > Rmin1 int as @e[tag=RInt] if score @e[tag=R1,limit=1] int < Rmax1 int if score @e[tag=R1,limit=1] int > Rmin1 int run tag @s add Random0
execute if score Rmax2 int = Rmin2 int if score Rmax1 int > Rmin1 int as @e[tag=RInt] if score @e[tag=R1,limit=1] int = Rmin1 int if score @s int >= Rmin0 int run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmax2 int if score Rmax1 int = Rmin1 int as @e[tag=RInt] if score @s int <= Rmax0 int run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmax2 int if score Rmax1 int > Rmin1 int if score @e[tag=R1,limit=1] int = Rmax1 int as @e[tag=RInt] if score @s int <= Rmax0 int run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmax2 int if score Rmax1 int > Rmin1 int if score @e[tag=R1,limit=1] int < Rmax1 int if score @e[tag=R1,limit=1] int > Rmin1 int as @e[tag=RInt] run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmax2 int if score Rmax1 int > Rmin1 int if score @e[tag=R1,limit=1] int = Rmin1 int as @e[tag=RInt] if score @s int >= Rmin0 int run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int < Rmax2 int if score @e[tag=R2,limit=1] int > Rmin2 int as @e[tag=RInt] run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmin2 int if score Rmax1 int = Rmin1 int as @e[tag=RInt] if score @s int >= Rmin0 int run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmin2 int if score Rmax1 int > Rmin1 int if score @e[tag=R1,limit=1] int = Rmax1 int as @e[tag=RInt] run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmin2 int if score Rmax1 int > Rmin1 int if score @e[tag=R1,limit=1] int < Rmax1 int if score @e[tag=R1,limit=1] int > Rmin1 int as @e[tag=RInt] run tag @s add Random0
execute if score Rmax2 int > Rmin2 int if score @e[tag=R2,limit=1] int = Rmin2 int if score Rmax1 int > Rmin1 int if score @e[tag=R1,limit=1] int = Rmin1 int as @e[tag=RInt] if score @s int >= Rmin0 int run tag @s add Random0
tag @e[tag=Random0,limit=1,sort=random] add R0
#百位数 十位数 个位数相加
scoreboard players operation @e[tag=R2,limit=1] int2 = @e[tag=R2,limit=1] int
scoreboard players operation @e[tag=R1,limit=1] int1 = @e[tag=R1,limit=1] int
scoreboard players operation @e[tag=R2,limit=1] int2 *= 100 int
scoreboard players operation @e[tag=R1,limit=1] int1 *= 10 int
scoreboard players operation @e[tag=R2,limit=1] int2 += @e[tag=R1,limit=1] int1
scoreboard players operation @e[tag=R2,limit=1] int2 += @e[tag=R0,limit=1] int
#输出结果
scoreboard players operation random int = @e[tag=R2,limit=1] int2
kill @e[tag=RInt]