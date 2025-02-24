execute store result score x0 int run data get storage cusfunc savecube[0]
execute store result score y0 int run data get storage cusfunc savecube[1]
execute store result score z0 int run data get storage cusfunc savecube[2]
execute store result score x1 int run data get storage cusfunc savecube[3]
execute store result score y1 int run data get storage cusfunc savecube[4]
execute store result score z1 int run data get storage cusfunc savecube[5]
data remove storage cusfunc savecube
function s3:block_store/write/cube
data modify storage sys cusfunc.block_store.cube set from storage temp blocks