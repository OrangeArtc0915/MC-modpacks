function math:eyepos
execute at @e[tag=result,limit=1] run function rigid:rotate_uvw
kill @e[tag=result]