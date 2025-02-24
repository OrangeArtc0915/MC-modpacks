execute as @a[tag=firework_shooter] at @s run function main:firework_shoot

execute if entity @a[tag=firework_shooter] run schedule function main:fireworks_shoot 10t