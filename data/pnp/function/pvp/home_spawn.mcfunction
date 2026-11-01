$execute in pnp:board positioned $(x) 65.01 22 run function pnp:card/spawn {card:"$(c)"}
$execute in pnp:board positioned $(x) 65.01 22 as @e[type=item_display,tag=pnp.c.$(c),tag=!pnp.pvback,distance=..0.6,limit=1,sort=nearest] run function pnp:pvp/home_set {hp:$(nhp)}
