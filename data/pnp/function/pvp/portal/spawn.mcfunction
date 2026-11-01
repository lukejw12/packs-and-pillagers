$execute in pnp:board positioned $(x).5 65.01 $(z) run function pnp:card/spawn {card:"player_portal"}
$execute in pnp:board positioned $(x).5 65.01 $(z) as @e[type=item_display,tag=pnp.c.player_portal,distance=..0.6,limit=1,sort=nearest] unless score @s pnp.pown matches 1.. run function pnp:pvp/portal/set {q:$(q)}
