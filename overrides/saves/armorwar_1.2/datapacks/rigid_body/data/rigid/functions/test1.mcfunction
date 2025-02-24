scoreboard players set u0 int 10000
scoreboard players set u1 int 0
scoreboard players set u2 int 0
scoreboard players set v0 int 0
scoreboard players set v1 int 10000
scoreboard players set v2 int 0
scoreboard players set w0 int 0
scoreboard players set w1 int 0
scoreboard players set w2 int 10000
scoreboard players set n0 int 10000
scoreboard players set n1 int 0
scoreboard players set n2 int 0
scoreboard players set θ int -300000
tellraw @a [{"score":{"name":"u0","objective":"int"}},{"text":", "},{"score":{"name":"u1","objective":"int"}},{"text":", "},{"score":{"name":"u2","objective":"int"}}]
tellraw @a [{"score":{"name":"v0","objective":"int"}},{"text":", "},{"score":{"name":"v1","objective":"int"}},{"text":", "},{"score":{"name":"v2","objective":"int"}}]
tellraw @a [{"score":{"name":"w0","objective":"int"}},{"text":", "},{"score":{"name":"w1","objective":"int"}},{"text":", "},{"score":{"name":"w2","objective":"int"}}]
say ---
function rigid:run_rotate
say ---
tellraw @a [{"score":{"name":"u0","objective":"int"}},{"text":", "},{"score":{"name":"u1","objective":"int"}},{"text":", "},{"score":{"name":"u2","objective":"int"}}]
tellraw @a [{"score":{"name":"v0","objective":"int"}},{"text":", "},{"score":{"name":"v1","objective":"int"}},{"text":", "},{"score":{"name":"v2","objective":"int"}}]
tellraw @a [{"score":{"name":"w0","objective":"int"}},{"text":", "},{"score":{"name":"w1","objective":"int"}},{"text":", "},{"score":{"name":"w2","objective":"int"}}]