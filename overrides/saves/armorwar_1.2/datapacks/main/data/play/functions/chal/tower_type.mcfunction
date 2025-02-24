scoreboard players operation temp int = @e[tag=built,limit=1,sort=random] build
scoreboard players operation temp int %= 4 int
execute unless score temp int = chal_towert_r int run scoreboard players set @s int 0