scoreboard players remove @s pnp.pop 1
execute if score @s pnp.pop matches 10 run function pnp:card/pop/move
execute if score @s pnp.pop matches 0 run function pnp:card/pop/end
