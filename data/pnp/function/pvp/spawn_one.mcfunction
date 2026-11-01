$execute in pnp:board positioned $(x) 65.01 4 positioned ~$(o) ~ ~ run function pnp:card/spawn {card:"$(c)"}
$execute in pnp:board positioned $(x) 65.01 4 positioned ~$(o) ~ ~ as @e[type=item_display,tag=pnp.k.enemy,tag=!pnp.inv,distance=..0.6,limit=1,sort=nearest] run function pnp:pvp/set_invaders {hp:$(hp),atk:$(atk)}
