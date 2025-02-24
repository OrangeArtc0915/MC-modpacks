tp @e[tag=math_marker,limit=1] 0.0 0.0 0.0
#旋转的三角函数值
execute as @e[tag=math_marker,limit=1] store result entity @s Rotation[0] float -0.0001 run scoreboard players get θ int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000

#由已知u轴向量和θ、n计算旋转后的u轴向量
#----------------
scoreboard players operation par0 int = u0 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation par1 int = u1 int
scoreboard players operation par1 int *= n1 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par2 int = u2 int
scoreboard players operation par2 int *= n2 int
scoreboard players operation par2 int /= 10000 int

scoreboard players operation par0 int += par1 int
scoreboard players operation par0 int += par2 int

scoreboard players operation par2 int = n2 int
scoreboard players operation par2 int *= par0 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par1 int = n1 int
scoreboard players operation par1 int *= par0 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation ver0 int = u0 int
scoreboard players operation ver0 int -= par0 int
scoreboard players operation ver1 int = u1 int
scoreboard players operation ver1 int -= par1 int
scoreboard players operation ver2 int = u2 int
scoreboard players operation ver2 int -= par2 int

scoreboard players operation t int = ver1 int
scoreboard players operation t int *= n2 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t0 int = ver2 int
scoreboard players operation t0 int *= n1 int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t0 int -= t int
scoreboard players operation t int = ver2 int
scoreboard players operation t int *= n0 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t1 int = ver0 int
scoreboard players operation t1 int *= n2 int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t1 int -= t int
scoreboard players operation t int = ver0 int
scoreboard players operation t int *= n1 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t2 int = ver1 int
scoreboard players operation t2 int *= n0 int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation t2 int -= t int
scoreboard players operation ver0 int *= cos int
scoreboard players operation ver0 int /= 10000 int
scoreboard players operation ver1 int *= cos int
scoreboard players operation ver1 int /= 10000 int
scoreboard players operation ver2 int *= cos int
scoreboard players operation ver2 int /= 10000 int
scoreboard players operation t0 int *= sin int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t1 int *= sin int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t2 int *= sin int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation ver0 int += t0 int
execute store result score u0 int run scoreboard players operation ver0 int += par0 int
scoreboard players operation ver1 int += t1 int
execute store result score u1 int run scoreboard players operation ver1 int += par1 int
scoreboard players operation ver2 int += t2 int
execute store result score u2 int run scoreboard players operation ver2 int += par2 int


#由已知v轴向量和θ、n计算旋转后的v轴向量
#-------------
scoreboard players operation par0 int = v0 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation par1 int = v1 int
scoreboard players operation par1 int *= n1 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par2 int = v2 int
scoreboard players operation par2 int *= n2 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par0 int += par1 int
scoreboard players operation par0 int += par2 int

scoreboard players operation par2 int = n2 int
scoreboard players operation par2 int *= par0 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par1 int = n1 int
scoreboard players operation par1 int *= par0 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int

scoreboard players operation ver0 int = v0 int
scoreboard players operation ver0 int -= par0 int
scoreboard players operation ver1 int = v1 int
scoreboard players operation ver1 int -= par1 int
scoreboard players operation ver2 int = v2 int
scoreboard players operation ver2 int -= par2 int

scoreboard players operation t int = ver1 int
scoreboard players operation t int *= n2 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t0 int = ver2 int
scoreboard players operation t0 int *= n1 int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t0 int -= t int
scoreboard players operation t int = ver2 int
scoreboard players operation t int *= n0 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t1 int = ver0 int
scoreboard players operation t1 int *= n2 int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t1 int -= t int
scoreboard players operation t int = ver0 int
scoreboard players operation t int *= n1 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t2 int = ver1 int
scoreboard players operation t2 int *= n0 int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation t2 int -= t int

scoreboard players operation ver0 int *= cos int
scoreboard players operation ver0 int /= 10000 int
scoreboard players operation ver1 int *= cos int
scoreboard players operation ver1 int /= 10000 int
scoreboard players operation ver2 int *= cos int
scoreboard players operation ver2 int /= 10000 int
scoreboard players operation t0 int *= sin int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t1 int *= sin int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t2 int *= sin int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation ver0 int += t0 int
execute store result score v0 int run scoreboard players operation ver0 int += par0 int
scoreboard players operation ver1 int += t1 int
execute store result score v1 int run scoreboard players operation ver1 int += par1 int
scoreboard players operation ver2 int += t2 int
execute store result score v2 int run scoreboard players operation ver2 int += par2 int

#由已知v轴向量和θ、n计算旋转后的w轴向量
#-------------
scoreboard players operation par0 int = w0 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int
scoreboard players operation par1 int = w1 int
scoreboard players operation par1 int *= n1 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par2 int = w2 int
scoreboard players operation par2 int *= n2 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par0 int += par1 int
scoreboard players operation par0 int += par2 int

scoreboard players operation par2 int = n2 int
scoreboard players operation par2 int *= par0 int
scoreboard players operation par2 int /= 10000 int
scoreboard players operation par1 int = n1 int
scoreboard players operation par1 int *= par0 int
scoreboard players operation par1 int /= 10000 int
scoreboard players operation par0 int *= n0 int
scoreboard players operation par0 int /= 10000 int

scoreboard players operation ver0 int = w0 int
scoreboard players operation ver0 int -= par0 int
scoreboard players operation ver1 int = w1 int
scoreboard players operation ver1 int -= par1 int
scoreboard players operation ver2 int = w2 int
scoreboard players operation ver2 int -= par2 int

scoreboard players operation t int = ver1 int
scoreboard players operation t int *= n2 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t0 int = ver2 int
scoreboard players operation t0 int *= n1 int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t0 int -= t int
scoreboard players operation t int = ver2 int
scoreboard players operation t int *= n0 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t1 int = ver0 int
scoreboard players operation t1 int *= n2 int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t1 int -= t int
scoreboard players operation t int = ver0 int
scoreboard players operation t int *= n1 int
scoreboard players operation t int /= 10000 int
scoreboard players operation t2 int = ver1 int
scoreboard players operation t2 int *= n0 int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation t2 int -= t int

scoreboard players operation ver0 int *= cos int
scoreboard players operation ver0 int /= 10000 int
scoreboard players operation ver1 int *= cos int
scoreboard players operation ver1 int /= 10000 int
scoreboard players operation ver2 int *= cos int
scoreboard players operation ver2 int /= 10000 int
scoreboard players operation t0 int *= sin int
scoreboard players operation t0 int /= 10000 int
scoreboard players operation t1 int *= sin int
scoreboard players operation t1 int /= 10000 int
scoreboard players operation t2 int *= sin int
scoreboard players operation t2 int /= 10000 int
scoreboard players operation ver0 int += t0 int
execute store result score w0 int run scoreboard players operation ver0 int += par0 int
scoreboard players operation ver1 int += t1 int
execute store result score w1 int run scoreboard players operation ver1 int += par1 int
scoreboard players operation ver2 int += t2 int
execute store result score w2 int run scoreboard players operation ver2 int += par2 int

#单位模长矫正
#--------
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get u0 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.0001 run scoreboard players get u1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get u2 int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score u0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score u1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score u2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get v0 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.0001 run scoreboard players get v1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get v2 int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score v0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score v1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score v2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get w0 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.0001 run scoreboard players get w1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get w2 int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score w0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score w1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score w2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

#phi0
scoreboard players operation cos int = w2 int
scoreboard players operation cos int -= v0 int
scoreboard players operation sin int = v2 int
scoreboard players operation sin int *= -1 int
scoreboard players operation sin int -= w0 int
function math:4atan
scoreboard players operation phi0 int = result int
#phi1
scoreboard players operation cos int = w2 int
scoreboard players operation cos int += v0 int
scoreboard players operation sin int = w0 int
scoreboard players operation sin int -= v2 int
function math:4atan
scoreboard players operation phi1 int = result int
#theta
scoreboard players operation theta int = phi0 int
scoreboard players operation theta int += phi1 int
execute store result entity @s Pose.Head[0] float 0.0001 run scoreboard players operation theta int /= 2 int
execute as @e[tag=math_marker,limit=1] store result entity @s Rotation[0] float -0.0001 run scoreboard players get theta int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score c0 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score s0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
#beta
scoreboard players operation beta int = phi0 int
scoreboard players operation beta int -= phi1 int
execute store result entity @s Pose.Head[2] float 0.0001 run scoreboard players operation beta int /= 2 int
execute as @e[tag=math_marker,limit=1] store result entity @s Rotation[0] float -0.0001 run scoreboard players get beta int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score c2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score s2 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
#alpha
scoreboard players operation cos int = v1 int
execute if score c0 int matches ..-1 run scoreboard players operation cos int *= -1 int
execute if score s0 int matches 0.. run scoreboard players operation cos int += w1 int
execute if score s0 int matches ..-1 run scoreboard players operation cos int -= w1 int
scoreboard players operation temp7 int = c0 int
execute if score c0 int matches ..-1 run scoreboard players operation temp7 int *= -1 int
execute if score s0 int matches 0.. run scoreboard players operation temp7 int += s0 int
execute if score s0 int matches ..-1 run scoreboard players operation temp7 int -= s0 int
scoreboard players operation cos int *= 10000 int
scoreboard players operation cos int /= temp7 int
scoreboard players operation sin int = u1 int
scoreboard players operation sin int *= -1 int
function math:4atan
execute store result entity @s Pose.Head[1] float 0.0001 run scoreboard players operation alpha int = result int
execute as @e[tag=math_marker,limit=1] store result entity @s Rotation[0] float -0.0001 run scoreboard players get alpha int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score c1 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score s1 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000


#重新计算旋转后u轴
scoreboard players operation u0 int = c1 int
scoreboard players operation u0 int *= c2 int
scoreboard players operation u0 int /= 10000 int
scoreboard players operation u1 int = s1 int
scoreboard players operation u1 int *= -1 int
scoreboard players operation u1 int /= 10000 int
scoreboard players operation u2 int = c1 int
scoreboard players operation u2 int *= s2 int
scoreboard players operation u2 int /= 10000 int

#重新计算旋转后v轴
scoreboard players operation v0 int = c0 int
scoreboard players operation v0 int *= s1 int
scoreboard players operation v0 int /= 10000 int
scoreboard players operation v0 int *= c2 int
scoreboard players operation t int = s0 int
scoreboard players operation t int *= s2 int
scoreboard players operation v0 int += t int
scoreboard players operation v0 int /= 10000 int
scoreboard players operation v1 int = c0 int
scoreboard players operation v1 int *= c1 int
scoreboard players operation v1 int /= 10000 int
scoreboard players operation v2 int = c0 int
scoreboard players operation v2 int *= s1 int
scoreboard players operation v2 int /= 10000 int
scoreboard players operation v2 int *= s2 int
scoreboard players operation t int = s0 int
scoreboard players operation t int *= c2 int
scoreboard players operation v2 int -= t int
scoreboard players operation v2 int /= 10000 int

#重新计算旋转后w轴
scoreboard players operation w0 int = s0 int
scoreboard players operation w0 int *= s1 int
scoreboard players operation w0 int /= 10000 int
scoreboard players operation w0 int *= c2 int
scoreboard players operation t int = c0 int
scoreboard players operation t int *= s2 int
scoreboard players operation w0 int -= t int
scoreboard players operation w0 int /= 10000 int
scoreboard players operation w1 int = s0 int
scoreboard players operation w1 int *= c1 int
scoreboard players operation w1 int /= 10000 int
scoreboard players operation w2 int = s0 int
scoreboard players operation w2 int *= s1 int
scoreboard players operation w2 int /= 10000 int
scoreboard players operation w2 int *= s2 int
scoreboard players operation t int = c0 int
scoreboard players operation t int *= c2 int
scoreboard players operation w2 int += t int
scoreboard players operation w2 int /= 10000 int
#再次单位模长矫正
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get u0 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.0001 run scoreboard players get u1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get u2 int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score u0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score u1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score u2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get v0 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.0001 run scoreboard players get v1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get v2 int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score v0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score v1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score v2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[0] double 0.0001 run scoreboard players get w0 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[1] double 0.0001 run scoreboard players get w1 int
execute as @e[tag=math_marker,limit=1] store result entity @s Pos[2] double 0.0001 run scoreboard players get w2 int
execute as @e[tag=math_marker,limit=1] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1.0
execute store result score w0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score w1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score w2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000