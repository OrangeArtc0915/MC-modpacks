execute store result score result int run data get entity @s FallDistance 10
execute if score result int matches 1.. run function play:hr/crit

scoreboard players set @s chop_test 1