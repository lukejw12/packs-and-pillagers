scoreboard players set @s pnp.mgap 0
execute if score @s pnp.mcat matches 1 run return run function pnp:music/pick {cat:"table"}
execute if score @s pnp.mcat matches 2 run return run function pnp:music/pick {cat:"night"}
execute if score @s pnp.mcat matches 3 run return run function pnp:music/pick {cat:"raid"}
execute if score @s pnp.mcat matches 4 run return run function pnp:music/pick {cat:"miniboss"}
execute if score @s pnp.mcat matches 5 run return run function pnp:music/pick {cat:"boss"}
execute if score @s pnp.mcat matches 6 run return run function pnp:music/pick {cat:"pigstep"}
