scoreboard players add raintimer int 1
weather rain
execute if score raintimer int >= 30 int run weather clear
execute if score raintimer int >= 30 int run scoreboard players reset raintimer int