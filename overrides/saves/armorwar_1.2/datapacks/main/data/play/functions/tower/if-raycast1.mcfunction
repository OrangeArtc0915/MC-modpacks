scoreboard players operation stempy1 int *= 1000 int
scoreboard players operation stempy1 int /= stempj int
scoreboard players operation stempi int *= stempy1 int
scoreboard players operation stempk int *= stempy1 int
scoreboard players operation stempi int /= 1000 int
scoreboard players operation stempk int /= 1000 int
scoreboard players operation stempx0 int += stempi int
scoreboard players operation stempz0 int += stempk int
scoreboard players operation stempx0 int -= stempx1 int
scoreboard players operation stempz0 int -= stempz1 int
execute if score stempx0 int matches -5500..5500 if score stempz0 int matches -8500..8500 run scoreboard players set @s result 1