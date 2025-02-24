data modify storage temp blocks set from storage sys cusfunc.block_store.cube
execute store result score x int run data get storage cusfunc loadcube[0]
execute store result score y int run data get storage cusfunc loadcube[1]
execute store result score z int run data get storage cusfunc loadcube[2]
data remove storage cusfunc loadcube
function s3:block_store/read/cube